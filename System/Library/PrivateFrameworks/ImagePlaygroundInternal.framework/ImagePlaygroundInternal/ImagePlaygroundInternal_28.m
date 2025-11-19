uint64_t sub_1D258BD90(uint64_t a1)
{
  v2 = type metadata accessor for DisplayableImage();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED8B0058;
  sub_1D2876668();
  sub_1D258F0B8(a1, v4, type metadata accessor for DisplayableImage);
  sub_1D258F070(&qword_1EC6E0FD0, type metadata accessor for DisplayableImage);
  return sub_1D2874788();
}

uint64_t sub_1D258BF5C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotoGridView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1D258F0B8(a2, v9, type metadata accessor for PhotoGridView);
  sub_1D2878568();
  sub_1D2870F68();
  v14 = sub_1D2878558();
  v15 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v14;
  *(v17 + 24) = v18;
  *(v17 + 32) = a1;
  sub_1D258EF8C(v9, v17 + v15, type metadata accessor for PhotoGridView);
  *(v17 + v16) = a3;
  sub_1D22AE01C(0, 0, v12, &unk_1D2894F70, v17);
}

uint64_t sub_1D258C24C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(type metadata accessor for PhotoGridView() + 24));
  v12 = *v10;
  v11 = v10[1];
  v15[2] = v12;
  v15[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0D0);
  sub_1D2877308();
  v13 = v15[1];
  (*(v7 + 16))(v9, *(a2 + 16) + *(**(a2 + 16) + 160), v6);
  LOBYTE(a2) = sub_1D25A5DDC(v9, v13);

  result = (*(v7 + 8))(v9, v6);
  *a3 = a2 & 1;
  return result;
}

_BYTE *sub_1D258C3B0(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    type metadata accessor for PhotoGridView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0D0);
    return sub_1D2877318();
  }

  return result;
}

double sub_1D258C42C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for PhotoGridView();
  type metadata accessor for PhotoGridViewModel();
  sub_1D258F070(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D2877638();
  v4 = (a2 + v3[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFC0);
  sub_1D28772F8();
  *v4 = v15;
  v4[1] = v16;
  v5 = (a2 + v3[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFC8);
  sub_1D28772F8();
  *v5 = v15;
  v5[1] = v16;
  v6 = v3[8];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v3[9];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = a2 + v3[10];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = v3[11];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v10 = a2 + v3[12];
  type metadata accessor for HomeAnimationCoordinator();
  sub_1D258F070(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  *v10 = sub_1D28744C8();
  v10[8] = v11 & 1;
  v12 = v3[13];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFD0);
  swift_storeEnumTagMultiPayload();
  v13 = a2 + v3[14];
  result = 12.0;
  *v13 = xmmword_1D2894AA0;
  *(v13 + 2) = 0x406A400000000000;
  return result;
}

uint64_t sub_1D258C6B4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1D258F0B8(v1, &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PhotoGridView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1D258EF8C(&v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for PhotoGridView);
  v13 = sub_1D258D540;
  v14 = v5;
  v10 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFE0);
  sub_1D22BB9D8(&qword_1EC6D7958, &qword_1EC6DDFD8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDFE8);
  v7 = sub_1D258D5C8();
  v11 = v6;
  v12 = v7;
  swift_getOpaqueTypeConformance2();
  sub_1D2876F08();
}

uint64_t sub_1D258C8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1D28771B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0D8);
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for PlaygroundImage();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D270C724(a1 + *(*a1 + 160), 0, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D22BD238(v13, &unk_1EC6DE5A0);
    v18 = 1;
    v19 = v41;
    v20 = v39;
  }

  else
  {
    sub_1D258EF8C(v13, v17, type metadata accessor for PlaygroundImage);
    sub_1D262D4E8();
    sub_1D2877188();
    (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
    v21 = sub_1D2877228();

    (*(v4 + 8))(v6, v3);
    v22 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC400) + 36)];
    v23 = sub_1D2875188();
    v24 = *(v23 + 20);
    v25 = *MEMORY[0x1E697F468];
    v26 = sub_1D2875868();
    v27 = *(*(v26 - 8) + 104);
    v27(&v22[v24], v25, v26);
    __asm { FMOV            V0.2D, #16.0 }

    v38 = _Q0;
    *v22 = _Q0;
    *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410) + 36)] = 256;
    *v10 = v21;
    *(v10 + 1) = 0;
    *(v10 + 8) = 1;
    v33 = v39;
    v34 = &v10[*(v39 + 36)];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE0E0);
    sub_1D2875228();
    sub_1D258EF2C(v17, type metadata accessor for PlaygroundImage);
    v27(&v34[*(v23 + 20)], v25, v26);
    *v34 = v38;
    v34[*(v35 + 36)] = 0;
    v36 = v41;
    sub_1D22EC9BC(v10, v41, &qword_1EC6DE0D8);
    v18 = 0;
    v19 = v36;
    v20 = v33;
  }

  return (*(v40 + 56))(v19, v18, 1, v20);
}

void (*FocusedValues.photoGridActions.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x218uLL);
  }

  *a1 = v3;
  *(v3 + 520) = v1;
  *(v3 + 528) = sub_1D2587C8C();
  sub_1D28749B8();
  return sub_1D258CDC4;
}

void sub_1D258CDC4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[4];
    v4 = v2[5];
    v2[17] = v3;
    v2[18] = v4;
    v5 = *(v2 + 12);
    *(v2 + 38) = v5;
    v6 = *v2;
    v7 = v2[1];
    v2[13] = *v2;
    v2[14] = v7;
    v9 = v2[2];
    v8 = v2[3];
    v2[15] = v9;
    v2[16] = v8;
    *(v2 + 312) = v6;
    *(v2 + 328) = v7;
    *(v2 + 51) = v5;
    *(v2 + 376) = v3;
    *(v2 + 392) = v4;
    *(v2 + 344) = v9;
    *(v2 + 360) = v8;
    sub_1D22BD1D0((v2 + 13), (v2 + 26), &qword_1EC6DDFA8);
    sub_1D28749C8();
    v10 = v2[2];
    *(v2 + 152) = v2[3];
    v11 = v2[5];
    *(v2 + 168) = v2[4];
    *(v2 + 184) = v11;
    *(v2 + 25) = *(v2 + 12);
    v12 = v2[1];
    *(v2 + 104) = *v2;
    *(v2 + 120) = v12;
    *(v2 + 136) = v10;
    sub_1D22BD238(v2 + 104, &qword_1EC6DDFA8);
  }

  else
  {
    v13 = v2[2];
    *(v2 + 152) = v2[3];
    v14 = v2[5];
    *(v2 + 168) = v2[4];
    *(v2 + 184) = v14;
    v15 = v2[1];
    *(v2 + 104) = *v2;
    *(v2 + 120) = v15;
    *(v2 + 25) = *(v2 + 12);
    *(v2 + 136) = v13;
    sub_1D28749C8();
  }

  free(v2);
}

uint64_t PhotoGridActions.deselectAll.getter()
{
  v1 = *v0;
  sub_1D2870F78();
  return v1;
}

uint64_t PhotoGridActions.open.getter()
{
  v1 = *(v0 + 16);
  sub_1D2870F78();
  return v1;
}

uint64_t PhotoGridActions.edit.getter()
{
  v1 = *(v0 + 32);
  sub_1D2870F78();
  return v1;
}

uint64_t PhotoGridActions.addCaption.getter()
{
  v1 = *(v0 + 48);
  sub_1D2870F78();
  return v1;
}

uint64_t PhotoGridActions.duplicate.getter()
{
  v1 = *(v0 + 64);
  sub_1D2870F78();
  return v1;
}

uint64_t PhotoGridActions.shareOnPresentationChange.getter()
{
  v1 = *(v0 + 88);
  sub_1D2870F78();
  return v1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D258D070(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D258D0B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for PhotoGridView()
{
  result = qword_1EC6D88F8;
  if (!qword_1EC6D88F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D258D194()
{
  sub_1D258D4B0(319, &qword_1EC6D7600, type metadata accessor for PhotoGridViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1D258D44C(319, &qword_1EC6D7710, &qword_1EC6DDFC0, &unk_1D2894BA8, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1D258D44C(319, &qword_1EC6D7718, &qword_1EC6DDFC8, &unk_1D2894BB0, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1D258D4B0(319, &qword_1ED89DFD0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D258D4B0(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1D24BFA5C();
            if (v5 <= 0x3F)
            {
              sub_1D258D44C(319, &qword_1ED89DFC0, &qword_1EC6D99B8, &unk_1D287E890, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1D258D4B0(319, &qword_1ED89E020, type metadata accessor for HomeAnimationCoordinator, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1D258D4B0(319, &qword_1EC6D7ED0, MEMORY[0x1E697C7D8], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
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

void sub_1D258D44C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D258D4B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D258D540@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoGridView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D25841E4(a1, v6, a2);
}

unint64_t sub_1D258D5C8()
{
  result = qword_1EC6D7818;
  if (!qword_1EC6D7818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDFE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDFF0);
    sub_1D258D688();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7818);
  }

  return result;
}

unint64_t sub_1D258D688()
{
  result = qword_1EC6D7820;
  if (!qword_1EC6D7820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDFF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDFF8);
    sub_1D22BB9D8(&qword_1EC6D7E98, &qword_1EC6DDFF8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7820);
  }

  return result;
}

unint64_t sub_1D258D794()
{
  result = qword_1EC6D7990;
  if (!qword_1EC6D7990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE050);
    sub_1D258D84C();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7990);
  }

  return result;
}

unint64_t sub_1D258D84C()
{
  result = qword_1EC6D79A8;
  if (!qword_1EC6D79A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE058);
    sub_1D258D960(&qword_1EC6D79D8, &qword_1EC6DE060, &unk_1D2894D48, sub_1D258D930);
    sub_1D22BB9D8(&qword_1EC6D7908, &qword_1EC6DE088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D79A8);
  }

  return result;
}

uint64_t sub_1D258D960(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D258D9E4()
{
  result = qword_1EC6D7B00;
  if (!qword_1EC6D7B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE070);
    sub_1D258DA9C();
    sub_1D22BB9D8(&qword_1ED89D3A0, &qword_1EC6DA6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B00);
  }

  return result;
}

unint64_t sub_1D258DA9C()
{
  result = qword_1EC6D7C00;
  if (!qword_1EC6D7C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE078);
    sub_1D22BB9D8(&qword_1EC6D75E8, &qword_1EC6DE080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C00);
  }

  return result;
}

uint64_t sub_1D258DB54(double *a1, CGFloat *a2)
{
  type metadata accessor for PhotoGridView();

  return sub_1D2586FBC(a1, a2);
}

unint64_t sub_1D258DBD4()
{
  result = qword_1EC6D7CE0;
  if (!qword_1EC6D7CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE010);
    type metadata accessor for CGRect(255);
    sub_1D22BB9D8(&qword_1EC6D7ED8, &qword_1EC6DE010);
    sub_1D258F070(&qword_1ED89CCE8, type metadata accessor for CGRect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7CE0);
  }

  return result;
}

uint64_t sub_1D258DD5C()
{
  sub_1D2875008();

  return sub_1D2587E54();
}

uint64_t objectdestroy_39Tm()
{
  v1 = sub_1D2875008();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D258DEBC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_1D258DF44()
{
  v1 = *(type metadata accessor for PhotoGridView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1D25886D4(v2);
}

uint64_t sub_1D258DFA4()
{
  sub_1D2874578();
  sub_1D2875008();
  return sub_1D2874548();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D258E098(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F70);
    sub_1D258F070(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D258E134(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D25E52A8(a1, v4, v5, v6, v7);
}

unint64_t sub_1D258E200()
{
  result = qword_1EC6D7608;
  if (!qword_1EC6D7608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE0A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE0A8);
    sub_1D22BB9D8(&unk_1EC6D7698, &qword_1EC6DE0A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7608);
  }

  return result;
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for PhotoGridView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D2874EA8();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_1D22EE66C(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  v7 = v1[11];
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

  v10 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D2875D78();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D258E6AC()
{
  type metadata accessor for PhotoGridView();

  return sub_1D2589800();
}

uint64_t sub_1D258E750(void (*a1)(uint64_t))
{
  v3 = *(type metadata accessor for PhotoGridView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_1D258A014(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t objectdestroy_89Tm(void (*a1)(void))
{
  v3 = type metadata accessor for PhotoGridView();
  v4 = (*(*(v3 - 1) + 80) + 16) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = v1 + v4;
  v7 = v3[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  (*(*(v8 - 8) + 8))(v1 + v4 + v7, v8);

  v9 = v3[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D2874EA8();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  sub_1D22EE66C(*(v6 + v3[10]), *(v6 + v3[10] + 8));
  v11 = v3[11];
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

  v14 = v3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1D2875D78();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
  }

  a1(*(v1 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1D258EB28(char a1)
{
  v3 = *(type metadata accessor for PhotoGridView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D258BF5C(a1, v1 + v4, v5);
}

uint64_t sub_1D258EBC4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for PhotoGridView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D258C24C(v1 + v4, v5, a1);
}

_BYTE *sub_1D258EC64(_BYTE *a1)
{
  type metadata accessor for PhotoGridView();

  return sub_1D258C3B0(a1);
}

uint64_t sub_1D258ECE4(uint64_t a1)
{
  v4 = *(type metadata accessor for PhotoGridView() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D258A46C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1D258EE14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D27F7CB8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D258EF2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D258EF8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_65Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D258F070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D258F0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D258F120()
{
  result = qword_1EC6DE110;
  if (!qword_1EC6DE110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE118);
    sub_1D258F1A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE110);
  }

  return result;
}

unint64_t sub_1D258F1A4()
{
  result = qword_1EC6DE120;
  if (!qword_1EC6DE120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE0D8);
    sub_1D24A092C();
    sub_1D22BB9D8(&qword_1EC6DE128, &qword_1EC6DE0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE120);
  }

  return result;
}

unint64_t sub_1D258F25C()
{
  result = qword_1EC6DE130;
  if (!qword_1EC6DE130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE108);
    sub_1D258F314();
    sub_1D22BB9D8(&unk_1ED89D2A0, &qword_1EC6DEB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE130);
  }

  return result;
}

unint64_t sub_1D258F314()
{
  result = qword_1EC6DE138;
  if (!qword_1EC6DE138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE0F0);
    sub_1D22BB9D8(&qword_1EC6DE140, &qword_1EC6DE0E8);
    sub_1D22BB9D8(&qword_1EC6D7798, &qword_1EC6DE148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE138);
  }

  return result;
}

uint64_t sub_1D258F3F8()
{
  swift_getKeyPath();
  sub_1D258F9FC();
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D2870F68();
}

uint64_t sub_1D258F480(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_1D2870F68();
  v4 = sub_1D233944C(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D258F9FC();
    sub_1D28719D8();
  }
}

uint64_t sub_1D258F598(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D258F998(a1, v7);
  swift_getKeyPath();
  v14 = v2;
  sub_1D258F9FC();
  sub_1D28719E8();

  v14 = v2;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  v8 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1D27CCD88(0, v8[2] + 1, 1, v8);
    *(v2 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1D27CCD88(v10 > 1, v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  sub_1D22BCF0C(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11);
  *(v2 + 16) = v8;
  swift_endAccess();
  v14 = v2;
  swift_getKeyPath();
  sub_1D28719F8();
}

uint64_t sub_1D258F7A4()
{
  swift_getKeyPath();
  sub_1D258F9FC();
  sub_1D28719E8();

  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];

  swift_getKeyPath();
  sub_1D28719F8();
}

uint64_t sub_1D258F8A0()
{

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal22GeneratedPreviewsStore___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GeneratedPreviewsStore()
{
  result = qword_1ED8A0FC0;
  if (!qword_1ED8A0FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D258F998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGeneration.PreviewImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D258F9FC()
{
  result = qword_1ED8A0FD0;
  if (!qword_1ED8A0FD0)
  {
    type metadata accessor for GeneratedPreviewsStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0FD0);
  }

  return result;
}

uint64_t sub_1D258FA54@<X0>(_BYTE *a1@<X8>)
{
  sub_1D25940B8();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t GenmojiComposingView.init(viewModel:generationContext:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = 0;
  type metadata accessor for HomeAnimationCoordinator();
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  v7 = sub_1D2871818();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
  v8 = (v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
  *v9 = 0xD000000000000025;
  v9[1] = 0x80000001D28B37F0;
  sub_1D2871A18();
  sub_1D28772F8();
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  if (qword_1ED8A0600 != -1)
  {
    swift_once();
  }

  type metadata accessor for ObservableDebugSettings(0);
  sub_1D2870F78();
  sub_1D28772F8();
  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  sub_1D28772F8();
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 104) = 5;
  type metadata accessor for GenmojiComposingViewModel();
  result = sub_1D28772F8();
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 88) = v3;
  *(a2 + 96) = v4;
  return result;
}

uint64_t GenmojiComposingView.init(delegate:generationContext:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  *a3 = 0;
  type metadata accessor for HomeAnimationCoordinator();
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  v9 = sub_1D2871818();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
  v10 = (v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
  *v11 = 0xD000000000000025;
  v11[1] = 0x80000001D28B37F0;
  sub_1D2871A18();
  sub_1D28772F8();
  v12 = v19;
  *(a3 + 8) = v18;
  *(a3 + 16) = v12;
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  if (qword_1ED8A0600 != -1)
  {
    swift_once();
  }

  type metadata accessor for ObservableDebugSettings(0);
  sub_1D2870F78();
  sub_1D28772F8();
  v13 = v19;
  *(a3 + 56) = v18;
  *(a3 + 64) = v13;
  sub_1D28772F8();
  v14 = v19;
  *(a3 + 72) = v18;
  *(a3 + 80) = v14;
  *(a3 + 104) = 5;
  LOBYTE(v18) = 5;
  type metadata accessor for GenmojiComposingViewModel();
  swift_allocObject();
  v15 = swift_unknownObjectRetain();
  sub_1D27DF2EC(v15, a1, &v18);
  swift_unknownObjectRelease();
  sub_1D2870F78();
  sub_1D28772F8();

  result = swift_unknownObjectRelease();
  v17 = v19;
  *(a3 + 40) = v18;
  *(a3 + 48) = v17;
  *(a3 + 88) = v5;
  *(a3 + 96) = v6;
  return result;
}

uint64_t sub_1D258FF38@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v51 = sub_1D2875DE8();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2875EE8();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9078);
  v7 = *(v6 - 8);
  v45 = v6;
  v46 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v41 = v39 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE210);
  MEMORY[0x1EEE9AC00](v47);
  v42 = v39 - v9;
  v10 = v1[5];
  v66 = v1[4];
  v67[0] = v10;
  *(v67 + 9) = *(v1 + 89);
  v11 = v1[1];
  v63 = *v1;
  v64 = v11;
  v12 = v1[3];
  v65[0] = v1[2];
  v65[1] = v12;
  v13 = swift_allocObject();
  v14 = v1[5];
  v13[5] = v1[4];
  v13[6] = v14;
  *(v13 + 105) = *(v1 + 89);
  v15 = v1[1];
  v13[1] = *v1;
  v13[2] = v15;
  v16 = v1[3];
  v13[3] = v1[2];
  v13[4] = v16;
  sub_1D2593AB0(&v63, &v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE880);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D99E8);
  v18 = sub_1D2875718();
  v19 = sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  v20 = sub_1D259478C(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  *&v56 = v17;
  *(&v56 + 1) = v18;
  *&v57 = v19;
  *(&v57 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  sub_1D2877368();
  v54 = *(v65 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
  sub_1D2877328();
  v21 = v56;
  v22 = v57;
  swift_getKeyPath();
  v54 = v21;
  v55 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE218);
  sub_1D2877508();

  v39[1] = v52;
  v40 = v53;

  v23 = swift_allocObject();
  v24 = v67[0];
  v23[5] = v66;
  v23[6] = v24;
  *(v23 + 105) = *(v67 + 9);
  v25 = v64;
  v23[1] = v63;
  v23[2] = v25;
  v26 = v65[1];
  v23[3] = v65[0];
  v23[4] = v26;
  sub_1D2593AB0(&v63, &v56);
  *v5 = sub_1D2877348();
  v27 = v43;
  v28 = v44;
  (*(v43 + 104))(v5, *MEMORY[0x1E697C8C0], v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9080);
  sub_1D22BB9D8(&qword_1ED89D148, &qword_1EC6D9078);
  sub_1D22BB9D8(&qword_1EC6D7790, &qword_1EC6D9080);
  v29 = v45;
  v30 = v42;
  v31 = v41;
  sub_1D2876848();

  (*(v27 + 8))(v5, v28);
  (*(v46 + 8))(v31, v29);
  sub_1D2877848();
  sub_1D2875208();
  v32 = v48;
  v33 = (v30 + *(v47 + 36));
  v34 = v61;
  v35 = v62;
  v33[4] = v60;
  v33[5] = v34;
  v33[6] = v35;
  v36 = v57;
  *v33 = v56;
  v33[1] = v36;
  v37 = v59;
  v33[2] = v58;
  v33[3] = v37;
  sub_1D2875DD8();
  sub_1D25941D0();
  sub_1D2876D88();
  (*(v49 + 8))(v32, v51);
  return sub_1D22BD238(v30, &qword_1EC6DE210);
}

uint64_t sub_1D25905E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
  sub_1D2877308();
  swift_getKeyPath();
  sub_1D259478C(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel);
  sub_1D28719E8();

  swift_getKeyPath();
  sub_1D2871A08();

  *(v1 + 48) = (*(v1 + 48) & 1) == 0;
  swift_getKeyPath();
  sub_1D28719F8();
}

uint64_t sub_1D2590724()
{
  v0 = sub_1D2875718();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = sub_1D2875798();
  v10 = v9;
  v12 = v11;
  if (qword_1ED89E0E8 != -1)
  {
    v18 = v8;
    swift_once();
    v8 = v18;
  }

  MEMORY[0x1EEE9AC00](v8);
  *(&v17 - 8) = v13;
  *(&v17 - 7) = v10;
  *(&v17 - 48) = v14 & 1;
  *(&v17 - 5) = v12;
  *(&v17 - 4) = 0;
  *(&v17 - 3) = 0;
  *(&v17 - 2) = v15;
  MEMORY[0x1EEE9AC00](v13);
  *(&v17 - 2) = 7630433;
  *(&v17 - 1) = 0xE300000000000000;
  sub_1D2877248();

  sub_1D2875708();
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D259478C(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  sub_1D2876768();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D2590A64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE220);
  sub_1D2594344();
  return sub_1D2876508();
}

uint64_t sub_1D2590AD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE238);
  sub_1D25943D4();
  return sub_1D28775E8();
}

uint64_t sub_1D2590B44(_OWORD *a1)
{
  v8[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
  sub_1D2877308();
  v2 = sub_1D27DB594();

  v9 = v2;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = a1[5];
  v3[5] = a1[4];
  v3[6] = v4;
  *(v3 + 105) = *(a1 + 89);
  v5 = a1[1];
  v3[1] = *a1;
  v3[2] = v5;
  v6 = a1[3];
  v3[3] = a1[2];
  v3[4] = v6;
  sub_1D2593AB0(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE900);
  sub_1D22BB9D8(&qword_1EC6DE258, &unk_1EC6DE910);
  sub_1D2594490();
  sub_1D259478C(&qword_1EC6DE940, type metadata accessor for TapToRadarManager.LogItem);
  return sub_1D2874728();
}

uint64_t sub_1D2590CDC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = sub_1D28750E8();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE8E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE260);
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE950);
  MEMORY[0x1EEE9AC00](v42);
  v15 = &v37 - v14;
  v16 = *a1;
  type metadata accessor for TapToRadarManager.LogReason();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    v39 = a3;
    v19 = *(v17 + 24);
    v48 = *(v17 + 16);
    v49 = v19;
    v20 = swift_allocObject();
    v38 = v11;
    v21 = a2[5];
    *(v20 + 80) = a2[4];
    *(v20 + 96) = v21;
    *(v20 + 105) = *(a2 + 89);
    v22 = a2[1];
    *(v20 + 16) = *a2;
    *(v20 + 32) = v22;
    v23 = a2[3];
    *(v20 + 48) = a2[2];
    *(v20 + 64) = v23;
    *(v20 + 128) = v18;
    sub_1D2870F78();
    sub_1D2870F68();
    sub_1D2593AB0(a2, &v44);
    sub_1D22BD06C();
    sub_1D2877398();
    *&v10[*(v8 + 36)] = sub_1D2875D98();
    sub_1D28750D8();
    v24 = sub_1D25945A8();
    v25 = sub_1D259478C(&qword_1ED89D748, MEMORY[0x1E697C248]);
    v26 = v43;
    sub_1D28767A8();
    (*(v40 + 8))(v7, v26);
    sub_1D22BD238(v10, &unk_1EC6DE8E0);
    v27 = v41;
    v28 = v38;
    (*(v41 + 16))(v15, v13, v38);
    swift_storeEnumTagMultiPayload();
    v44 = v8;
    v45 = v26;
    v46 = v24;
    v47 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    return (*(v27 + 8))(v13, v28);
  }

  else
  {
    v30 = *(v16 + 16);
    v31 = *(v16 + 24);
    v44 = v30;
    v45 = v31;
    sub_1D22BD06C();
    sub_1D2870F68();
    *v15 = sub_1D2876698();
    *(v15 + 1) = v32;
    v15[16] = v33 & 1;
    *(v15 + 3) = v34;
    swift_storeEnumTagMultiPayload();
    v35 = sub_1D25945A8();
    v36 = sub_1D259478C(&qword_1ED89D748, MEMORY[0x1E697C248]);
    v44 = v8;
    v45 = v43;
    v46 = v35;
    v47 = v36;
    swift_getOpaqueTypeConformance2();
    return sub_1D2875AF8();
  }
}

uint64_t sub_1D25911B0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
  sub_1D2877308();
  sub_1D27DB798(a2);
}

uint64_t GenmojiComposingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE150);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v3 = &v53 - v2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE158);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE160);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v53 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE168);
  MEMORY[0x1EEE9AC00](v57);
  v9 = &v53 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE170);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v58 = &v53 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE178) - 8;
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE180);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v53 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE188) - 8;
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v53 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE190) - 8;
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v53 - v16;
  v17 = v1[5];
  *&v77[32] = v1[4];
  *&v77[48] = v17;
  *&v77[57] = *(v1 + 89);
  v18 = v1[1];
  *v76 = *v1;
  *&v76[16] = v18;
  v19 = v1[3];
  *v77 = v1[2];
  *&v77[16] = v19;
  v71 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE198);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE1A0);
  v21 = sub_1D23D4344();
  v22 = sub_1D22BB9D8(&unk_1EC6D78D0, &qword_1EC6DE1A0);
  *&v72 = &type metadata for UnavailableOrComposingView;
  *(&v72 + 1) = v20;
  v73 = v21;
  v74 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1D2874F78();
  v72 = *&v77[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
  sub_1D2877308();
  v23 = v75;
  swift_getKeyPath();
  *&v72 = v23;
  sub_1D259478C(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel);
  sub_1D28719E8();

  v24 = *(v23 + 72);

  if (v24)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 1.0;
  }

  (*(v54 + 32))(v5, v3, v56);
  *&v5[*(v53 + 36)] = v25;
  v75 = *&v77[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877328();
  type metadata accessor for DebugSettingsView(0);
  sub_1D25938A4();
  sub_1D259478C(&qword_1ED8A3090, type metadata accessor for DebugSettingsView);
  v26 = v55;
  sub_1D2876E48();

  sub_1D22BD238(v5, &qword_1EC6DE158);
  KeyPath = swift_getKeyPath();
  (*(v59 + 32))(v9, v26, v60);
  v28 = &v9[*(v57 + 36)];
  *v28 = KeyPath;
  v28[8] = 1;
  v72 = *&v76[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB10);
  sub_1D2877308();
  type metadata accessor for HomeAnimationCoordinator();
  sub_1D259395C();
  sub_1D259478C(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  v29 = v58;
  sub_1D28767E8();

  sub_1D22BD238(v9, &qword_1EC6DE168);
  v30 = swift_getKeyPath();
  v72 = *&v77[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1B0);
  sub_1D2877308();
  v31 = v75;
  v32 = v62;
  (*(v66 + 32))(v62, v29, v68);
  v33 = &v32[*(v63 + 44)];
  *v33 = v30;
  v33[1] = v31;
  LOBYTE(v30) = v77[72];
  v34 = swift_getKeyPath();
  v35 = v32;
  v36 = v61;
  sub_1D22EC9BC(v35, v61, &qword_1EC6DE178);
  v37 = v36 + *(v13 + 44);
  *v37 = v34;
  *(v37 + 8) = v30;
  v38 = swift_allocObject();
  v39 = *&v77[48];
  v38[5] = *&v77[32];
  v38[6] = v39;
  *(v38 + 105) = *&v77[57];
  v40 = *&v76[16];
  v38[1] = *v76;
  v38[2] = v40;
  v41 = *&v77[16];
  v38[3] = *v77;
  v38[4] = v41;
  v42 = v64;
  sub_1D22EC9BC(v36, v64, &qword_1EC6DE180);
  v43 = (v42 + *(v65 + 44));
  *v43 = sub_1D2593AA0;
  v43[1] = v38;
  v43[2] = 0;
  v43[3] = 0;
  v44 = swift_allocObject();
  v45 = *&v77[48];
  v44[5] = *&v77[32];
  v44[6] = v45;
  *(v44 + 105) = *&v77[57];
  v46 = *&v76[16];
  v44[1] = *v76;
  v44[2] = v46;
  v47 = *&v77[16];
  v44[3] = *v77;
  v44[4] = v47;
  v48 = v42;
  v49 = v67;
  sub_1D22EC9BC(v48, v67, &qword_1EC6DE188);
  v50 = v70;
  v51 = (v49 + *(v69 + 44));
  *v51 = 0;
  v51[1] = 0;
  v51[2] = sub_1D2593AA8;
  v51[3] = v44;
  sub_1D22EC9BC(v49, v50, &qword_1EC6DE190);
  sub_1D2593AB0(v76, &v72);
  return sub_1D2593AB0(v76, &v72);
}

uint64_t sub_1D2591B80(uint64_t a1)
{
  v8[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
  sub_1D2877308();
  sub_1D27DA794();

  v1 = sub_1D28779E8();
  KeyPath = swift_getKeyPath();
  sub_1D28772F8();
  v3 = swift_getKeyPath();
  type metadata accessor for ComposingViewModel(0);
  sub_1D28772F8();
  *&v5 = v1;
  *(&v5 + 1) = KeyPath;
  LOBYTE(v6) = 0;
  BYTE8(v6) = v8[0];
  *&v7 = *(&v8[0] + 1);
  *(&v7 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A0);
  sub_1D23D4344();
  sub_1D22BB9D8(&unk_1EC6D78D0, &qword_1EC6DE1A0);
  sub_1D2876F08();
  v8[2] = v6;
  v8[3] = v7;
  v9 = 0;
  v8[1] = v5;
  return sub_1D2594114(v8);
}

uint64_t sub_1D2591D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1C8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v74 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1D0);
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v74 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1D8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1E0);
  v94 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA40);
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v74 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1E8);
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v74 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1F0);
  v78 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v77 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1F8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v74 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE200);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74 - v21;
  v23 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC370);
  v92 = *(v24 - 8);
  v93 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v74 - v25;
  sub_1D2875BC8();
  v27 = a1;
  v102 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D30);
  sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30);
  v91 = v26;
  sub_1D28745C8();
  has_internal_ui = os_variant_has_internal_ui();
  v101 = v22;
  if (has_internal_ui)
  {
    v75 = v19;
    v76 = v7;
    v103 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
    sub_1D2877308();
    v29 = a1;
    if (os_variant_has_internal_diagnostics())
    {
      if (qword_1ED8A4928 != -1)
      {
        swift_once();
      }

      sub_1D22BCFD0(0, &qword_1ED89CDA0);
      v30 = sub_1D2878A58();
      v31 = sub_1D2878068();
      v32 = [v30 BOOLForKey_];

      v34 = v84;
      if ((v32 & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v33);
        *(&v74 - 2) = a1;
        sub_1D2875BE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE208);
        v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE210);
        v36 = sub_1D25941D0();
        *&v103 = v35;
        *(&v103 + 1) = v36;
        swift_getOpaqueTypeConformance2();
        v37 = v77;
        sub_1D28745C8();
        v38 = sub_1D22BB9D8(&qword_1EC6D7EB0, &qword_1EC6DE1F0);
        v39 = v79;
        v40 = v82;
        MEMORY[0x1D389E720](v37, v82, v38);
        v41 = v81;
        v42 = v80;
        v43 = v83;
        (*(v81 + 16))(v80, v39, v83);
        (*(v41 + 56))(v42, 0, 1, v43);
        *&v103 = v40;
        *(&v103 + 1) = v38;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        MEMORY[0x1D389E750](v42, v43, OpaqueTypeConformance2);
        sub_1D22BD238(v42, &qword_1EC6DE1F8);
        (*(v41 + 8))(v39, v43);
        v45 = (*(v78 + 8))(v37, v40);
LABEL_10:
        MEMORY[0x1EEE9AC00](v45);
        v27 = v29;
        *(&v74 - 2) = v29;
        sub_1D2875BE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998);
        sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
        v51 = v86;
        sub_1D28745C8();
        v52 = *(v87 + 48);
        v53 = v85;
        sub_1D22BD1D0(v34, v85, &qword_1EC6DE1F8);
        v54 = v34;
        v56 = v88;
        v55 = v89;
        (*(v88 + 16))(v53 + v52, v51, v89);
        v57 = v90;
        sub_1D28759C8();
        v58 = v94;
        v59 = v75;
        v60 = v76;
        (*(v94 + 16))(v75, v57, v76);
        (*(v58 + 56))(v59, 0, 1, v60);
        v61 = sub_1D22BB9D8(&unk_1EC6D78B8, &qword_1EC6DE1E0);
        MEMORY[0x1D389E750](v59, v60, v61);
        sub_1D22BD238(v59, &qword_1EC6DE200);
        (*(v58 + 8))(v57, v60);
        (*(v56 + 8))(v51, v55);
        sub_1D22BD238(v54, &qword_1EC6DE1F8);
        goto LABEL_11;
      }
    }

    else
    {

      v34 = v84;
    }

    v47 = v80;
    v48 = v83;
    (*(v81 + 56))(v80, 1, 1, v83);
    v49 = sub_1D22BB9D8(&qword_1EC6D7EB0, &qword_1EC6DE1F0);
    *&v103 = v82;
    *(&v103 + 1) = v49;
    v50 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D389E750](v47, v48, v50);
    v45 = sub_1D22BD238(v47, &qword_1EC6DE1F8);
    goto LABEL_10;
  }

  (*(v94 + 56))(v19, 1, 1, v7);
  v46 = sub_1D22BB9D8(&unk_1EC6D78B8, &qword_1EC6DE1E0);
  MEMORY[0x1D389E750](v19, v7, v46);
  sub_1D22BD238(v19, &qword_1EC6DE200);
LABEL_11:
  v62 = sub_1D2875BD8();
  MEMORY[0x1EEE9AC00](v62);
  *(&v74 - 2) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0A0);
  sub_1D2401FBC();
  v63 = v95;
  sub_1D28745C8();
  v64 = v98;
  v65 = *(v99 + 48);
  v66 = *(v99 + 64);
  v67 = v91;
  v68 = v92;
  v69 = v93;
  (*(v92 + 16))(v98, v91, v93);
  v70 = v101;
  sub_1D22BD1D0(v101, &v64[v65], &qword_1EC6DE200);
  v72 = v96;
  v71 = v97;
  (*(v96 + 16))(&v64[v66], v63, v97);
  sub_1D28759C8();
  (*(v72 + 8))(v63, v71);
  sub_1D22BD238(v70, &qword_1EC6DE200);
  return (*(v68 + 8))(v67, v69);
}

uint64_t sub_1D2592B18(_OWORD *a1)
{
  v2 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2874268();
  v5 = swift_allocObject();
  v6 = a1[5];
  v5[5] = a1[4];
  v5[6] = v6;
  *(v5 + 105) = *(a1 + 89);
  v7 = a1[1];
  v5[1] = *a1;
  v5[2] = v7;
  v8 = a1[3];
  v5[3] = a1[2];
  v5[4] = v8;
  sub_1D2593AB0(a1, v10);
  return MEMORY[0x1D389FDF0](v4, sub_1D2594784, v5);
}

uint64_t sub_1D2592C00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
  sub_1D2877308();
  v0 = sub_1D23C7CA8();
  v1 = sub_1D2878068();
  v2 = sub_1D2878068();
  v3 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v0 + 48))
  {
    sub_1D2870F68();
    v4 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v4, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v6 = sub_1D2878068();
  v7 = sub_1D2418030(v3);

  if (v7)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D259478C(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v8 = sub_1D2877E78();
  }

  else
  {
    v8 = 0;
  }

  [objc_opt_self() asyncSendSignal:v2 toChannel:v1 withNullableUniqueStringID:v6 withPayload:v8];

  swift_getKeyPath();
  sub_1D259478C(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v12 + 40);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D2592EC0(_OWORD *a1)
{
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = swift_allocObject();
  v3 = a1[5];
  v2[5] = a1[4];
  v2[6] = v3;
  *(v2 + 105) = *(a1 + 89);
  v4 = a1[1];
  v2[1] = *a1;
  v2[2] = v4;
  v5 = a1[3];
  v2[3] = a1[2];
  v2[4] = v5;
  MEMORY[0x1EEE9AC00](v2);
  sub_1D2593AB0(a1, v7);
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D2877368();
}

uint64_t sub_1D25930A4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D30);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  sub_1D2874278();
  v14 = swift_allocObject();
  v15 = a1[5];
  v14[5] = a1[4];
  v14[6] = v15;
  *(v14 + 105) = *(a1 + 89);
  v16 = a1[1];
  v14[1] = *a1;
  v14[2] = v16;
  v17 = a1[3];
  v14[3] = a1[2];
  v14[4] = v17;
  sub_1D2593AB0(a1, v24);
  MEMORY[0x1D389FDF0](v9, sub_1D2594700, v14);
  v24[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
  sub_1D2877308();
  sub_1D27DA794();
  sub_1D23015FC(v6);

  v18 = type metadata accessor for ImageGeneration.PreviewImage(0);
  LOBYTE(v9) = (*(*(v18 - 8) + 48))(v6, 1, v18) == 1;
  sub_1D22BD238(v6, &qword_1EC6D9490);
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  (*(v11 + 32))(a2, v13, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0A0);
  v22 = (a2 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_1D22C03D8;
  v22[2] = v20;
  return result;
}

uint64_t sub_1D2593398()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
  sub_1D2877308();
  sub_1D27DD8D4();
}

double sub_1D25933F4@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE8A0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for DebugSettingsView(0);
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v4 = a1 + v2[6];
  sub_1D28772F8();
  *v4 = v7;
  *(v4 + 1) = *(&v7 + 1);
  v5 = a1 + v2[7];
  sub_1D28772F8();
  result = *&v7;
  *v5 = v7;
  *(v5 + 2) = v8;
  return result;
}

void sub_1D25934E4(uint64_t a1)
{
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
  sub_1D2877308();
  v6 = v13[8];
  sub_1D2870F78();

  BYTE8(v14) = *(a1 + 32);
  v7 = *(a1 + 24);
  *&v14 = v7;
  if (BYTE8(v14) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v11 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22BD238(&v14, &qword_1EC6DAB38);
    (*(v3 + 8))(v5, v2);
    v7 = v13;
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v8 = v7;
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v9 removeAllActions];
  v10 = *(v6 + 16);
LABEL_6:
  *(v6 + 16) = v7;
}

uint64_t sub_1D25936C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE1A8);
  sub_1D2877308();
  sub_1D27DA794();
  sub_1D22F7E14();

  sub_1D27567B0();
}

uint64_t GPImageGlyph.init(identifier:stickerUUID:emojiString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for GPImageGlyph();
  result = sub_1D24B832C(a3, a6 + *(v10 + 20));
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t sub_1D25937CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D259478C(&qword_1EC6D8350, type metadata accessor for GenmojiComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 72);
  return result;
}

unint64_t sub_1D25938A4()
{
  result = qword_1EC6D7D88;
  if (!qword_1EC6D7D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE158);
    sub_1D22BB9D8(&qword_1EC6D7970, &qword_1EC6DE150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D88);
  }

  return result;
}

unint64_t sub_1D259395C()
{
  result = qword_1EC6D7CB0;
  if (!qword_1EC6D7CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE158);
    type metadata accessor for DebugSettingsView(255);
    sub_1D25938A4();
    sub_1D259478C(&qword_1ED8A3090, type metadata accessor for DebugSettingsView);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D2C0, &qword_1EC6D9CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7CB0);
  }

  return result;
}

uint64_t type metadata accessor for GPImageGlyph()
{
  result = qword_1EC6DE1B8;
  if (!qword_1EC6DE1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2593B50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1D2593B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2593C04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D2593C60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1D2593D74()
{
  sub_1D24FEC8C();
  if (v0 <= 0x3F)
  {
    sub_1D238DF94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D2593E08(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2593EBC()
{
  result = qword_1EC6D7B70;
  if (!qword_1EC6D7B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE180);
    sub_1D2593F74();
    sub_1D22BB9D8(&qword_1ED89D348, &unk_1EC6E1DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B70);
  }

  return result;
}

unint64_t sub_1D2593F74()
{
  result = qword_1EC6D7D00;
  if (!qword_1EC6D7D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE168);
    type metadata accessor for HomeAnimationCoordinator();
    sub_1D259395C();
    sub_1D259478C(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D340, &qword_1EC6DB5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D00);
  }

  return result;
}

unint64_t sub_1D25940B8()
{
  result = qword_1ED8A1790;
  if (!qword_1ED8A1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A1790);
  }

  return result;
}

unint64_t sub_1D25941D0()
{
  result = qword_1EC6D7CA8;
  if (!qword_1EC6D7CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9080);
    sub_1D22BB9D8(&qword_1ED89D148, &qword_1EC6D9078);
    sub_1D22BB9D8(&qword_1EC6D7790, &qword_1EC6D9080);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7CA8);
  }

  return result;
}

unint64_t sub_1D2594344()
{
  result = qword_1EC6DE228;
  if (!qword_1EC6DE228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE220);
    sub_1D25943D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE228);
  }

  return result;
}

unint64_t sub_1D25943D4()
{
  result = qword_1EC6DE230;
  if (!qword_1EC6DE230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE238);
    sub_1D2594490();
    sub_1D22BB9D8(&qword_1EC6DE248, &qword_1EC6DE250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE230);
  }

  return result;
}

unint64_t sub_1D2594490()
{
  result = qword_1EC6DE240;
  if (!qword_1EC6DE240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE900);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE8E0);
    sub_1D28750E8();
    sub_1D25945A8();
    sub_1D259478C(&qword_1ED89D748, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE240);
  }

  return result;
}

unint64_t sub_1D25945A8()
{
  result = qword_1EC6DE920;
  if (!qword_1EC6DE920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE8E0);
    sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
    sub_1D22BB9D8(&qword_1ED89D388, &unk_1EC6DE930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE920);
  }

  return result;
}

uint64_t objectdestroyTm_20()
{

  sub_1D23C6A84(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D259478C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MagicPaperPreviewsView()
{
  result = qword_1EC6DE268;
  if (!qword_1EC6DE268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2594848()
{
  sub_1D2594B1C(319, &qword_1ED89D060, type metadata accessor for PreviewsViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1D2594B1C(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1D2594ACC(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1D2594B1C(319, &qword_1ED89E020, type metadata accessor for HomeAnimationCoordinator, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D2594ACC(319, &qword_1ED89D078, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
          if (v4 <= 0x3F)
          {
            sub_1D2594ACC(319, &qword_1ED89D180, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1D2594ACC(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1D2594B1C(319, &qword_1ED89D1C0, type metadata accessor for KeyboardEventListener, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
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

void sub_1D2594ACC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D2594B1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D2594B9C@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v88 = sub_1D2875628();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D28747E8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v95 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1D2874808();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF98);
  v110 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v118 = (&v86 - v6);
  v113 = type metadata accessor for MagicPaperPreviewsView();
  v7 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v9 = v8;
  v10 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2874CC8();
  v12 = *(v11 - 8);
  v120 = v11;
  v121 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA668);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v15 = &v86 - v14;
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA670);
  v94 = *(OpaqueTypeConformance2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeConformance2);
  v90 = &v86 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE278);
  MEMORY[0x1EEE9AC00](v115);
  v18 = &v86 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE280);
  v99 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v116 = &v86 - v19;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE288);
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v117 = &v86 - v20;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE290);
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v103 = &v86 - v21;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE298);
  MEMORY[0x1EEE9AC00](v101);
  v108 = &v86 - v22;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE2A0);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v86 - v23;
  v93 = v18;
  v89 = v1;
  sub_1D2595EC4(v18);
  sub_1D2874C98();
  v24 = v10;
  sub_1D259DE28(v1, v10, type metadata accessor for MagicPaperPreviewsView);
  v25 = *(v7 + 80);
  v26 = (v25 + 16) & ~v25;
  v27 = v9;
  v28 = swift_allocObject();
  sub_1D259DD60(v24, v28 + v26, type metadata accessor for MagicPaperPreviewsView);
  sub_1D259E0D4(&qword_1ED89DE90, MEMORY[0x1E697C080]);
  sub_1D259E0D4(&qword_1ED89DE98, MEMORY[0x1E697C068]);
  v29 = v120;
  v30 = v119;
  sub_1D28775B8();

  (*(v121 + 8))(v30, v29);
  v31 = v89;
  sub_1D259DE28(v89, v24, type metadata accessor for MagicPaperPreviewsView);
  v121 = v27;
  v119 = v25;
  v32 = v24;
  v33 = swift_allocObject();
  v120 = v26;
  sub_1D259DD60(v24, v33 + v26, type metadata accessor for MagicPaperPreviewsView);
  sub_1D22BB9D8(&qword_1ED89D758, &qword_1EC6DA668);
  v34 = v90;
  v35 = v91;
  sub_1D28775A8();

  (*(v92 + 8))(v15, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v36 = *(v123 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v123 = v36;
  sub_1D259E0D4(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v37 = *(v36 + 16);
  sub_1D2870F68();

  v38 = *(v37 + 16);

  if (v38 && (sub_1D2877618(), v39 = v123, swift_getKeyPath(), v123 = v39, sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel), sub_1D28719E8(), , v40 = *(v39 + 16), , v40))
  {
    sub_1D28744D8();
  }

  else
  {
    sub_1D28744E8();
  }

  v41 = sub_1D259C814();
  v42 = sub_1D22BB9D8(&qword_1ED89DED8, &qword_1EC6DA670);
  v43 = v34;
  v44 = OpaqueTypeConformance2;
  v92 = v41;
  v45 = v93;
  sub_1D2876BC8();
  (*(v94 + 8))(v43, v44);
  sub_1D22BD238(v45, &qword_1EC6DE278);
  sub_1D28747D8();
  v46 = v96;
  sub_1D28747F8();
  sub_1D259DE28(v31, v32, type metadata accessor for MagicPaperPreviewsView);
  v47 = v120;
  v48 = swift_allocObject();
  sub_1D259DD60(v32, v48 + v47, type metadata accessor for MagicPaperPreviewsView);
  sub_1D259E0D4(&unk_1ED89DF20, MEMORY[0x1E697BF50]);
  v49 = v98;
  sub_1D28775A8();

  (*(v97 + 8))(v46, v49);
  sub_1D2877618();
  LOBYTE(v41) = sub_1D25A3F44();

  v50 = v31;
  if (v41 & 1) != 0 || (sub_1D2877618(), v51 = *(v123 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore), swift_getKeyPath(), v123 = v51, sub_1D28719E8(), , swift_beginAccess(), v52 = *(v51 + 16), sub_1D2870F68(), , v53 = *(v52 + 16), , !v53) || (sub_1D2877618(), v54 = v123, swift_getKeyPath(), v123 = v54, sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel), sub_1D28719E8(), , v55 = *(v54 + 17), , (v55) || (sub_1D2877618(), v56 = v123, swift_getKeyPath(), v123 = v56, sub_1D28719E8(), , v57 = *(v56 + 18), , (v57))
  {
    sub_1D28744E8();
  }

  else
  {
    sub_1D28744D8();
  }

  v123 = v115;
  v124 = v44;
  v125 = v92;
  v126 = v42;
  v115 = MEMORY[0x1E6981348];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = sub_1D22BB9D8(&qword_1ED89DEE8, &qword_1EC6DCF98);
  v59 = v118;
  v60 = v102;
  v61 = v109;
  v62 = v116;
  sub_1D2876BC8();
  (*(v110 + 8))(v59, v61);
  (*(v99 + 8))(v62, v60);
  v63 = v50;
  sub_1D2877618();
  v64 = sub_1D25A3F44();

  v122 = v64 & 1;
  sub_1D259DE28(v63, v32, type metadata accessor for MagicPaperPreviewsView);
  v65 = v120;
  v66 = swift_allocObject();
  v118 = type metadata accessor for MagicPaperPreviewsView;
  sub_1D259DD60(v32, v66 + v65, type metadata accessor for MagicPaperPreviewsView);
  v123 = v60;
  v124 = v61;
  v125 = OpaqueTypeConformance2;
  v126 = v58;
  swift_getOpaqueTypeConformance2();
  v67 = v103;
  v68 = v106;
  v69 = v117;
  sub_1D2876F48();

  (*(v104 + 8))(v69, v68);
  sub_1D259DE28(v63, v32, type metadata accessor for MagicPaperPreviewsView);
  v70 = swift_allocObject();
  v71 = v118;
  sub_1D259DD60(v32, v70 + v65, v118);
  v72 = v108;
  (*(v105 + 32))(v108, v67, v107);
  v73 = (v72 + *(v101 + 36));
  *v73 = sub_1D259CBA4;
  v73[1] = v70;
  v73[2] = 0;
  v73[3] = 0;
  sub_1D259DE28(v63, v32, type metadata accessor for MagicPaperPreviewsView);
  v74 = v63;
  v75 = v32;
  v76 = swift_allocObject();
  sub_1D259DD60(v32, v76 + v65, v71);
  v77 = v112;
  sub_1D22EC9BC(v72, v112, &qword_1EC6DE298);
  v78 = (v77 + *(v111 + 36));
  *v78 = 0;
  v78[1] = 0;
  v78[2] = sub_1D259CBBC;
  v78[3] = v76;
  v79 = v63 + *(v113 + 24);
  v80 = *v79;
  if (*(v79 + 8) == 1)
  {
    LOBYTE(v123) = *v79;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v81 = sub_1D28762E8();
    sub_1D2873BE8();

    v82 = v86;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v80, 0);
    (*(v87 + 8))(v82, v88);
    LOBYTE(v80) = v123;
  }

  v122 = v80;
  sub_1D259DE28(v74, v75, type metadata accessor for MagicPaperPreviewsView);
  v83 = v120;
  v84 = swift_allocObject();
  sub_1D259DD60(v75, v84 + v83, type metadata accessor for MagicPaperPreviewsView);
  sub_1D259CC54(&qword_1EC6DE2F8, &qword_1EC6DE2A0, &unk_1D2895798, sub_1D259CCD8);
  sub_1D22EBCFC();
  sub_1D2876F48();

  return sub_1D22BD238(v77, &qword_1EC6DE2A0);
}

uint64_t sub_1D2595EC4@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = sub_1D2875628();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MagicPaperPreviewsView();
  v5 = *(v4 - 8);
  v63 = v4 - 8;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1D28743C8();
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE2D8);
  v11 = *(v10 - 8);
  v61 = v10;
  v62 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE2D0);
  MEMORY[0x1EEE9AC00](v59);
  v15 = (&v49 - v14);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE2B0);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v49 - v16;
  *v15 = sub_1D2877848();
  v15[1] = v17;
  v18 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE308) + 44);
  v52 = v1;
  sub_1D2598320(v1, v18);
  sub_1D28743B8();
  v57 = type metadata accessor for MagicPaperPreviewsView;
  v19 = v1;
  v20 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v20;
  sub_1D259DE28(v19, v20, type metadata accessor for MagicPaperPreviewsView);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v53 = v21;
  v22 = v21 + v6;
  v23 = swift_allocObject();
  v56 = type metadata accessor for MagicPaperPreviewsView;
  sub_1D259DD60(v20, v23 + v21, type metadata accessor for MagicPaperPreviewsView);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D259D1B4;
  *(v24 + 24) = v23;
  sub_1D28775A8();
  v25 = v22;

  (*(v60 + 8))(v9, v7);
  sub_1D28744D8();
  sub_1D22BB9D8(&qword_1EC6DE2E0, &qword_1EC6DE2D0);
  sub_1D22BB9D8(&qword_1EC6D7E38, &qword_1EC6DE2D8);
  v26 = v55;
  v27 = v61;
  sub_1D2876EC8();
  v28 = v13;
  v29 = v26;
  (*(v62 + 8))(v28, v27);
  v30 = v52;
  v31 = v15;
  v32 = v58;
  sub_1D22BD238(v31, &qword_1EC6DE2D0);
  v33 = sub_1D2877838();
  v35 = v34;
  v36 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE2C8) + 36);
  sub_1D259A30C(v30, v36);
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE2F0) + 36));
  v38 = v54;
  *v37 = v33;
  v37[1] = v35;
  sub_1D259DE28(v30, v38, v57);
  v39 = v25;
  v40 = swift_allocObject();
  v41 = v53;
  sub_1D259DD60(v38, v40 + v53, v56);
  v42 = (v29 + *(v32 + 36));
  *v42 = sub_1D259D1CC;
  v42[1] = v40;
  v42[2] = 0;
  v42[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v43 = v66;
  swift_getKeyPath();
  v66 = v43;
  sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  LOBYTE(v35) = *(v43 + 20);

  v65 = v35;
  LOBYTE(v35) = *(v30 + *(v63 + 36) + 8);
  sub_1D2870F78();
  if ((v35 & 1) == 0)
  {
    sub_1D2878A28();
    v44 = sub_1D28762E8();
    sub_1D2873BE8();

    v45 = v49;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v50 + 8))(v45, v51);
  }

  v46 = swift_allocObject();
  swift_weakInit();

  sub_1D259DE28(v30, v38, type metadata accessor for MagicPaperPreviewsView);
  v47 = swift_allocObject();
  sub_1D259DD60(v38, v47 + v41, type metadata accessor for MagicPaperPreviewsView);
  *(v47 + ((v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
  sub_1D259CC54(&qword_1EC6DE2B8, &qword_1EC6DE2B0, &unk_1D28957F0, sub_1D259C91C);
  sub_1D2876F48();

  return sub_1D22BD238(v29, &qword_1EC6DE2B0);
}

void *sub_1D25966D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MagicPaperPreviewsView();
  v4 = (a2 + *(v3 + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v21 = *v4;
  v22 = v6;
  v23 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  MEMORY[0x1D389FF60](&v20);
  v9.n128_f64[0] = v20;
  if (v20 >= 1.0 && (sub_1D2874CA8(), v9.n128_f64[0] <= 1.0) || (v21 = v5, v22 = v6, v23 = v7, result = MEMORY[0x1D389FF60](&v20, v8, v9), v20 < 1.0))
  {
    sub_1D2874CA8();
    v12 = v11 + -1.0;
    v13 = (a2 + *(v3 + 36));
    v14 = *v13;
    v15 = v13[1];
    v21 = *v13;
    v22 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
    sub_1D2877308();
    if (1.0 - v20 < v12)
    {
      v12 = 1.0 - v20;
    }

    v21 = v14;
    v22 = v15;
    sub_1D2877308();
    if (v12 <= 0.0 - v20)
    {
      v12 = 0.0 - v20;
    }

    v21 = v14;
    v22 = v15;
    sub_1D2877308();
    v16 = v12 + v20;
    v21 = v5;
    v22 = v6;
    v23 = v7;
    v20 = v16;
    sub_1D28774F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
    sub_1D2877618();
    sub_1D25A79AC(v16);

    sub_1D2877618();
    v17 = v21;
    swift_getKeyPath();
    v21 = v17;
    sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    v18 = *(v17 + 18);

    if ((v18 & 1) == 0)
    {
      v19 = sub_1D28778F8();
      MEMORY[0x1EEE9AC00](v19);
      sub_1D2874BE8();
    }
  }

  return result;
}

uint64_t sub_1D25969A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  if (*(v2 + 18) == 1)
  {
    *(v2 + 18) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2596AF0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  if (*(v12 + 18))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v12 + 18) = 0;
  }

  v4 = type metadata accessor for MagicPaperPreviewsView();
  v13 = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877318();
  v5 = *(a2 + *(v4 + 32));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  MEMORY[0x1D389FF60](&v13);
  sub_1D2877318();
  MEMORY[0x1D389FF60](&v13, v6);
  if (v13 <= 0.5)
  {
    sub_1D2877618();
    v9 = sub_1D25A3F44();

    if ((v9 & 1) == 0)
    {
      v8 = 0;
      return sub_1D2596E98(v8);
    }

    sub_1D2877618();
    if (*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) == 1)
    {
      v10 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v10);
      sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
      sub_1D28719D8();
    }

    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 0;
  }

  else
  {
    sub_1D2877618();
    v7 = sub_1D25A3F44();

    if (v7)
    {
      v8 = 1;
      return sub_1D2596E98(v8);
    }

    sub_1D2877618();
    sub_1D25A4614();
  }
}

uint64_t sub_1D2596E98(char a1)
{
  if (a1)
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  type metadata accessor for MagicPaperPreviewsView();
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D2877308();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  MEMORY[0x1D389FF60](&v3);
  sub_1D25A4768(v1 != v3);

  v3 = v1;
  return sub_1D28774F8();
}

void sub_1D2596FF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A3F44();

  type metadata accessor for MagicPaperPreviewsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877318();
  sub_1D2877618();
  sub_1D25A3F44();

  sub_1D2877318();
  sub_1D2877618();
  v0 = sub_1D25A3F44();

  if (v0)
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  sub_1D28774F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB8);
  sub_1D2877308();
  v2 = swift_allocObject();
  sub_1D2877618();
  swift_weakInit();

  v3 = (*&v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow);
  v4 = *(*&v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow);
  *v3 = sub_1D259CED8;
  v3[1] = v2;
  sub_1D2870F78();
  sub_1D22A576C(v4);

  sub_1D2877308();
  v5 = swift_allocObject();
  sub_1D2877618();
  swift_weakInit();

  v6 = (*&v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow);
  v7 = *(*&v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow);
  *v6 = sub_1D259CEE0;
  v6[1] = v5;
  sub_1D2870F78();
  sub_1D22A576C(v7);

  sub_1D2877308();
  v8 = swift_allocObject();
  sub_1D2877618();
  swift_weakInit();

  v9 = (*&v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide);
  v10 = *(*&v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide);
  *v9 = sub_1D259CF2C;
  v9[1] = v8;
  sub_1D2870F78();
  sub_1D22A576C(v10);

  sub_1D2877308();
  v11 = swift_allocObject();
  sub_1D2877618();
  swift_weakInit();

  v12 = (*&v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide);
  v13 = *(*&v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide);
  *v12 = sub_1D259CF34;
  v12[1] = v11;
  sub_1D2870F78();
  sub_1D22A576C(v13);

  sub_1D2877308();
  sub_1D2744D50();
}

uint64_t sub_1D2597458()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D25AA428();
    sub_1D28778F8();
    sub_1D2874BE8();
  }

  return result;
}

uint64_t sub_1D25974FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D2879328();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1D2878568();
  v4[6] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D25975F0, v7, v6);
}

uint64_t sub_1D25975F0()
{
  v1 = sub_1D2879908();
  v3 = v2;
  sub_1D2879718();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D25976D0;

  return sub_1D233BA38(v1, v3, 0, 0, 1);
}

uint64_t sub_1D25976D0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1D259E324;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1D2597864;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D2597864()
{

  sub_1D25AA704();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D25978D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D25AA428();
    sub_1D28778F8();
    sub_1D2874BE8();
  }

  return result;
}

uint64_t sub_1D2597978(uint64_t result)
{
  if (*(result + 21) == 1)
  {
    *(result + 21) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2597A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1D28778F8();
    sub_1D2874BE8();

    v10 = sub_1D28785F8();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1D2878568();
    sub_1D2870F78();
    v11 = sub_1D2878558();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v9;
    sub_1D22AE01C(0, 0, v7, a4, v12);
  }

  return result;
}

uint64_t sub_1D2597C20(uint64_t result)
{
  if (*(result + 21))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(result + 21) = 0;
  }

  return result;
}

uint64_t sub_1D2597D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D2879328();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1D2878568();
  v4[6] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2597E24, v7, v6);
}

uint64_t sub_1D2597E24()
{
  v1 = sub_1D2879908();
  v3 = v2;
  sub_1D2879718();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D2597F04;

  return sub_1D233BA38(v1, v3, 0, 0, 1);
}

uint64_t sub_1D2597F04()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {
  }

  (*(v5 + 8))(v4, v6);
  v7 = v3[7];
  v8 = v3[8];

  return MEMORY[0x1EEE6DFA0](sub_1D259E324, v7, v8);
}

void sub_1D2598098()
{
  type metadata accessor for MagicPaperPreviewsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB8);
  sub_1D2877308();
  sub_1D2744EE8();
  v0 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v1 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  *v0 = 0;
  *(v0 + 1) = 0;
  sub_1D22A576C(v1);
  v2 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  v3 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  *v2 = 0;
  *(v2 + 1) = 0;
  sub_1D22A576C(v3);
  v4 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  v5 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  *v4 = 0;
  *(v4 + 1) = 0;
  sub_1D22A576C(v5);
  v6 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  v7 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_1D22A576C(v7);
}

uint64_t sub_1D2598174(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v3 = *(v6 + 16);

  if (v2 != v3)
  {
    sub_1D2877618();
    if (*(v6 + 16) != v2)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D28719D8();
    }
  }

  return result;
}

uint64_t sub_1D2598320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1D2875628();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE330);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE338);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v39 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE340);
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v39 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE348);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v44 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  sub_1D25988F8(&v39 - v20);
  sub_1D2598CF8(a1, v8);
  v22 = sub_1D2877848();
  v24 = v23;
  v25 = &v8[*(v6 + 36)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE350);
  sub_1D2599F8C((v25 + *(v26 + 36)));
  *v25 = v22;
  v25[1] = v24;
  LOBYTE(v24) = *(a1 + *(type metadata accessor for MagicPaperPreviewsView() + 28) + 8);
  sub_1D2870F78();
  if ((v24 & 1) == 0)
  {
    sub_1D2878A28();
    v27 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v39 + 8))(v5, v40);
  }

  v28 = 1;
  v29 = sub_1D25E272C(1);
  v31 = v30;

  v49 = v29;
  v50 = v31;
  sub_1D259D640();
  sub_1D2876CD8();

  sub_1D22BD238(v8, &qword_1EC6DE330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v32 = v49;
  swift_getKeyPath();
  v49 = v32;
  sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  if (*(v32 + 16))
  {
    v28 = sub_1D25ABCF4();
  }

  (*(v42 + 32))(v14, v48, v43);
  v14[*(v41 + 36)] = v28 & 1;
  v33 = v45;
  sub_1D22EC9BC(v14, v45, &qword_1EC6DE340);
  v34 = v44;
  sub_1D22BD1D0(v21, v44, &qword_1EC6DE348);
  v35 = v46;
  sub_1D22BD1D0(v33, v46, &qword_1EC6DE340);
  v36 = v47;
  sub_1D22BD1D0(v34, v47, &qword_1EC6DE348);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE3D8);
  sub_1D22BD1D0(v35, v36 + *(v37 + 48), &qword_1EC6DE340);
  sub_1D22BD238(v33, &qword_1EC6DE340);
  sub_1D22BD238(v21, &qword_1EC6DE348);
  sub_1D22BD238(v35, &qword_1EC6DE340);
  return sub_1D22BD238(v34, &qword_1EC6DE348);
}

uint64_t sub_1D25988F8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_1D28758D8();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE348);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v30 - v14;
  v34 = 0x3FF0000000000000;
  v35 = 0;
  v36 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE498);
  sub_1D259E170();
  sub_1D2876B58();
  sub_1D2875798();
  v15 = sub_1D2876668();
  v17 = v16;
  v19 = v18;
  sub_1D2874F08();
  sub_1D22ED6E0(v15, v17, v19 & 1);

  sub_1D22BD238(v6, &qword_1EC6DE348);
  sub_1D28758B8();
  sub_1D2874F38();
  (*(v30 + 8))(v3, v31);
  sub_1D22BD238(v9, &qword_1EC6DE348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D287F500;
  sub_1D2875798();
  *(v20 + 32) = sub_1D2876668();
  *(v20 + 40) = v21;
  *(v20 + 48) = v22 & 1;
  *(v20 + 56) = v23;
  v24 = v32;
  sub_1D2874F58();

  sub_1D22BD238(v12, &qword_1EC6DE348);
  sub_1D2875798();
  v25 = sub_1D2876668();
  v27 = v26;
  LOBYTE(v17) = v28;
  sub_1D2874EE8();
  sub_1D22ED6E0(v25, v27, v17 & 1);

  return sub_1D22BD238(v24, &qword_1EC6DE348);
}

uint64_t sub_1D2598CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v77 = type metadata accessor for MagicPaperPreviewsView();
  v63 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v66 = v3;
  v67 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v57 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE3B8);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v57 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE3B0);
  MEMORY[0x1EEE9AC00](v64);
  v70 = &v57 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE3A0);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v57 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE390);
  MEMORY[0x1EEE9AC00](v75);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v57 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE3F0);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v57 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE380);
  MEMORY[0x1EEE9AC00](v73);
  v14 = (&v57 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v57 - v16;
  v18 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  sub_1D2877618();
  v23 = v81;
  swift_getKeyPath();
  v81 = v23;
  sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v24 = *(v23 + 20);

  if ((v24 & 1) != 0 || (v25 = a1 + *(v77 + 44), v26 = *v25, v27 = *(v25 + 8), LOBYTE(v81) = v26, v82 = v27, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890), sub_1D2877308(), v79 == 1))
  {
    sub_1D2877618();
    sub_1D25A719C(v17);

    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_1D259DD60(v17, v21, type metadata accessor for ImageGeneration.PreviewImage);
      *v14 = sub_1D2877848();
      v14[1] = v55;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE3F8);
      sub_1D259AE7C(v21, a1, v14 + *(v56 + 44));
      sub_1D22BD1D0(v14, v74, &qword_1EC6DE380);
      swift_storeEnumTagMultiPayload();
      sub_1D22BB9D8(&qword_1EC6D7638, &qword_1EC6DE380);
      sub_1D259D834();
      sub_1D2875AF8();
      sub_1D22BD238(v14, &qword_1EC6DE380);
      return sub_1D259DDC8(v21, type metadata accessor for ImageGeneration.PreviewImage);
    }

    sub_1D22BD238(v17, &qword_1EC6D9490);
  }

  v28 = v22;
  sub_1D2877618();
  v29 = *(v81 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v81 = v29;
  sub_1D259E0D4(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v58 = *(v29 + 16);
  sub_1D2870F68();

  v30 = v59;
  sub_1D2877628();
  swift_getKeyPath();
  v31 = v61;
  v32 = v65;
  sub_1D2877648();

  (*(v60 + 8))(v30, v28);
  v33 = *(a1 + *(v77 + 64)) * 0.02;
  v57 = a1;
  v34 = v67;
  sub_1D259DE28(a1, v67, type metadata accessor for MagicPaperPreviewsView);
  v35 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v36 = swift_allocObject();
  sub_1D259DD60(v34, v36 + v35, type metadata accessor for MagicPaperPreviewsView);
  *v32 = v58;
  *(v32 + v31[16]) = 0;
  *(v32 + v31[17]) = v33;
  v37 = (v32 + v31[18]);
  *v37 = sub_1D259DAE4;
  v37[1] = v36;
  v38 = (v32 + v31[19]);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v32 + v31[20]);
  *v39 = CGRectMake;
  v39[1] = 0;
  *(v32 + v31[21]) = 0;
  v40 = v32 + v31[22];
  v78 = 0;
  sub_1D28772F8();
  v41 = v80;
  *v40 = v79;
  *(v40 + 1) = v41;
  sub_1D259DE28(a1, v34, type metadata accessor for MagicPaperPreviewsView);
  v42 = swift_allocObject();
  sub_1D259DD60(v34, v42 + v35, type metadata accessor for MagicPaperPreviewsView);
  sub_1D22BB9D8(&qword_1EC6DE3C0, &qword_1EC6DE3B8);
  v43 = v70;
  sub_1D2876B98();

  sub_1D22BD238(v32, &qword_1EC6DE3B8);
  v44 = sub_1D2877848();
  v46 = v45;
  v47 = v43 + *(v64 + 36);
  sub_1D25999FC(v47);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE3D0) + 36));
  *v48 = v44;
  v48[1] = v46;
  if (sub_1D2599CA4())
  {
    v49 = 1.0;
  }

  else
  {
    v49 = 0.0;
  }

  v50 = v68;
  sub_1D22EC9BC(v43, v68, &qword_1EC6DE3B0);
  *(v50 + *(v69 + 36)) = v49;
  v51 = sub_1D2599CA4();
  v52 = v62;
  sub_1D22EC9BC(v50, v62, &qword_1EC6DE3A0);
  *(v52 + *(v75 + 36)) = v51 & 1;
  v53 = v71;
  sub_1D22EC9BC(v52, v71, &qword_1EC6DE390);
  sub_1D22BD1D0(v53, v74, &qword_1EC6DE390);
  swift_storeEnumTagMultiPayload();
  sub_1D22BB9D8(&qword_1EC6D7638, &qword_1EC6DE380);
  sub_1D259D834();
  sub_1D2875AF8();
  return sub_1D22BD238(v53, &qword_1EC6DE390);
}

uint64_t sub_1D2599838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1D2877848();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE3F8);
  return sub_1D259AE7C(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_1D2599898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v0 = sub_1D2874598() & 1;
  v1 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase);
  if (v0 == v1)
  {
    *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase) = v0;
    sub_1D25AEE2C(v1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D25999FC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE460);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v6 = sub_1D25AAA0C();

  if (v6)
  {
    v25 = sub_1D2877098();
    v15[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE468);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE470);
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE478);
    v16 = a1;
    v9 = v8;
    v10 = sub_1D22BB9D8(&qword_1EC6DE480, &qword_1EC6DE470);
    v11 = sub_1D259E11C();
    v12 = sub_1D22BB9D8(&qword_1EC6DE490, &qword_1EC6DE478);
    v17 = v7;
    v18 = &type metadata for MagicPaperPreviewsView.AnimationPhase;
    v19 = v9;
    v20 = MEMORY[0x1E69815C0];
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = MEMORY[0x1E6981580];
    swift_getOpaqueTypeConformance2();
    a1 = v16;
    sub_1D2876868();

    (*(v3 + 32))(a1, v5, v2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v3 + 56))(a1, v13, 1, v2);
}

uint64_t sub_1D2599CA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v0 = v10[16];

  if (v0)
  {
    sub_1D2877618();
    v1 = sub_1D25A3F44();

    if (v1 & 1) == 0 || (sub_1D2877618(), swift_getKeyPath(), sub_1D28719E8(), , v2 = v10[18], , (v2) || (sub_1D2877618(), swift_getKeyPath(), sub_1D28719E8(), , v3 = v10[17], , (v3))
    {
      v4 = 0;
    }

    else
    {
      sub_1D2877618();
      swift_getKeyPath();
      sub_1D28719E8();

      v9 = v10[21];

      v4 = v9 ^ 1;
    }
  }

  else
  {
    sub_1D2877618();
    v5 = *&v10[OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore];
    swift_getKeyPath();
    sub_1D259E0D4(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    swift_beginAccess();
    v6 = *(v5 + 16);
    sub_1D2870F68();

    v7 = *(v6 + 16);

    v4 = v7 != 0;
  }

  return v4 & 1;
}

uint64_t sub_1D2599F8C@<X0>(double *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MagicPaperPreviewsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = *(v1 + *(v7 + 72));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v9 = *(v26[1] + 16);

  if (v9)
  {
    if (qword_1EC6D8940 != -1)
    {
      swift_once();
    }

    v10 = qword_1EC6E3B90;
    sub_1D2870F78();
  }

  else
  {
    v10 = 0;
  }

  sub_1D2877618();
  v11 = sub_1D25A8BD4();

  sub_1D259C284(v11 & 1);
  v13 = v12;
  v14 = v8 * 0.5 + v8 * 0.119999997 - v8 * 0.5;
  v15 = *(sub_1D2875188() + 20);
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1D2875868();
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  *a1 = v14;
  a1[1] = v14;
  *(a1 + *(sub_1D2875178() + 20)) = v13;
  v18 = sub_1D28770A8();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA288);
  *(a1 + *(v19 + 52)) = v18;
  *(a1 + *(v19 + 56)) = 256;
  sub_1D259DE28(v2, v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicPaperPreviewsView);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_1D259DD60(v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for MagicPaperPreviewsView);
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE3E0) + 36));
  *v22 = sub_1D259DA74;
  v22[1] = v21;
  sub_1D2877618();
  v23 = sub_1D25A8BD4();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE3E8);
  v25 = a1 + *(result + 36);
  *v25 = v10;
  v25[8] = v23 & 1;
  return result;
}

double sub_1D259A30C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for MagicPaperPreviewsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD030);
  v55 = *(v6 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v47 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD068) - 8;
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v47 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE310);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE318);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v47 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE320);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v47 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v49 = sub_1D25A8EC8();

  sub_1D259DE28(a1, &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicPaperPreviewsView);
  sub_1D2878568();
  v15 = sub_1D2878558();
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_1D259DD60(&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for MagicPaperPreviewsView);
  v19 = v48;
  sub_1D259DE28(a1, &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicPaperPreviewsView);
  v20 = sub_1D2878558();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = MEMORY[0x1E69E85E0];
  sub_1D259DD60(&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v16, type metadata accessor for MagicPaperPreviewsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD060);
  v22 = v51;
  sub_1D2877528();
  v23 = v50;
  v24 = v19 + *(v50 + 52);
  *v24 = sub_1D28742D8() & 1;
  *(v24 + 8) = v25;
  *(v24 + 16) = v26 & 1;
  swift_getKeyPath();
  sub_1D28746D8();
  v27 = (v19 + v23[15]);
  sub_1D24C9220(v62);
  v28 = v62[3];
  v27[2] = v62[2];
  v27[3] = v28;
  v29 = v62[5];
  v27[4] = v62[4];
  v27[5] = v29;
  v30 = v62[1];
  *v27 = v62[0];
  v27[1] = v30;
  v31 = v49;
  *(v19 + v23[11]) = v49;
  sub_1D22BD1D0(v22, v19 + v23[12], &qword_1EC6DD030);
  v32 = v53;
  sub_1D22BD1D0(v22, v53, &qword_1EC6DD030);
  v33 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  sub_1D22EC9BC(v32, v34 + v33, &qword_1EC6DD030);
  sub_1D2870F68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD070);
  sub_1D2874328();
  sub_1D22BD238(v22, &qword_1EC6DD030);
  sub_1D2877618();
  LOBYTE(v27) = sub_1D25A8BD4();

  v35 = 0.0;
  if (v27)
  {
    sub_1D2877618();
    v36 = v63;
    swift_getKeyPath();
    *&v63 = v36;
    sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    if (*(v36 + 16))
    {
      v37 = sub_1D25ABCF4();

      if (v37)
      {
        v35 = 1.0;
      }

      else
      {
        v35 = 0.4;
      }
    }

    else
    {

      v35 = 1.0;
    }
  }

  v38 = v59;
  sub_1D22EC9BC(v19, v59, &qword_1EC6DD068);
  *(v38 + *(v56 + 36)) = v35;
  sub_1D2875798();
  sub_1D259D588();
  v39 = v60;
  sub_1D2876AA8();

  sub_1D22BD238(v38, &qword_1EC6DE310);
  sub_1D2877848();
  sub_1D28748C8();
  v40 = v57;
  sub_1D22EC9BC(v39, v57, &qword_1EC6DE318);
  v41 = (v40 + *(v58 + 36));
  v42 = v64;
  *v41 = v63;
  v41[1] = v42;
  v41[2] = v65;
  v43 = v40;
  v44 = v61;
  sub_1D22EC9BC(v43, v61, &qword_1EC6DE320);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE328);
  result = 0.0;
  *(v44 + *(v45 + 36)) = xmmword_1D288F9C0;
  return result;
}

uint64_t sub_1D259AB40(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A9FE0(a1);
}

void sub_1D259AB9C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for MagicPaperPreviewsView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  if (*a2 == 1)
  {
    v9 = a3 + *(v8 + 44);
    v10 = *v9;
    v11 = *(v9 + 8);
    v19 = v10;
    v20 = v11;
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
    sub_1D2877318();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_1D259DE28(a3, &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MagicPaperPreviewsView);
      v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v15 = swift_allocObject();
      sub_1D259DD60(&v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for MagicPaperPreviewsView);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v17[-32] = v13;
      *&v17[-24] = sub_1D259D290;
      *&v17[-16] = v15;
      v18 = v13;
      sub_1D259E0D4(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
      sub_1D28719D8();
    }
  }
}

uint64_t sub_1D259AE0C()
{
  type metadata accessor for MagicPaperPreviewsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  return sub_1D2877318();
}

uint64_t sub_1D259AE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a2;
  v111 = a3;
  v112 = a1;
  v3 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v4 = v3 - 8;
  v90 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v91 = v5;
  v92 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for MagicPaperPreviewsView();
  v87 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v88 = v6;
  v89 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE400);
  v94 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v93 = &v84 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE408);
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v84 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD188);
  MEMORY[0x1EEE9AC00](v100);
  v86 = (&v84 - v9);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE410);
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v99 = &v84 - v10;
  v97 = sub_1D2875628();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE418);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v109 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v84 - v15;
  v16 = sub_1D28771B8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE420);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE428);
  v103 = *(v23 - 8);
  v104 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v26 = type metadata accessor for PlaygroundImage();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE430);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v106 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v84 - v33;
  v36 = *(v112 + *(v4 + 36));
  if (*(v36 + 16))
  {
    sub_1D259DE28(v36 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v29, type metadata accessor for PlaygroundImage);
    sub_1D262D4E8();
    sub_1D2877188();
    (*(v17 + 104))(v19, *MEMORY[0x1E6981630], v16);
    v37 = sub_1D2877228();

    (*(v17 + 8))(v19, v16);
    v114 = v37;
    v115 = 0;
    v116 = 257;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD9C0);
    sub_1D22F587C();
    sub_1D2876CC8();

    sub_1D2875798();
    sub_1D2874EF8();

    sub_1D22BD238(v22, &qword_1EC6DE420);
    v85 = sub_1D2877848();
    v39 = v38;
    v40 = v104;
    v41 = &v25[*(v104 + 36)];
    v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE438) + 36));
    v43 = v105;
    v44 = *(v105 + *(v113 + 64));
    v45 = round(v44 * 0.02);
    v46 = v45 + v44 * 0.5 + v44 * 0.119999997 - v44 * 0.5;
    v47 = *(sub_1D2875188() + 20);
    v48 = *MEMORY[0x1E697F468];
    v49 = sub_1D2875868();
    (*(*(v49 - 8) + 104))(v42 + v47, v48, v49);
    *v42 = v46;
    v42[1] = v46;
    *(v42 + *(sub_1D2875178() + 20)) = v45 * 1.8;
    v50 = sub_1D28770A8();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA288);
    *(v42 + *(v51 + 52)) = v50;
    *(v42 + *(v51 + 56)) = 256;
    v52 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA290) + 36));
    *v52 = v45 * 0.8;
    *(v52 + 8) = 0;
    sub_1D259DDC8(v29, type metadata accessor for PlaygroundImage);
    *v41 = v85;
    v41[1] = v39;
    sub_1D22EC9BC(v25, v35, &qword_1EC6DE428);
    (*(v103 + 56))(v35, 0, 1, v40);
    v53 = v43;
  }

  else
  {
    (*(v103 + 56))(&v84 - v33, 1, 1, v104, v34);
    v53 = v105;
  }

  v54 = v53 + *(v113 + 20);
  v55 = v107;
  if (*(v54 + 8) == 1)
  {
    v114 = *v54;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v56 = sub_1D28762E8();
    sub_1D2873BE8();

    v57 = v95;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v96 + 8))(v57, v97);
  }

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v114 = off_1ED8A4930;
  sub_1D259E0D4(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D23B7BB8();
  sub_1D2870F78();
  v58 = sub_1D2878A58();
  v59 = sub_1D2878068();
  v60 = [v58 BOOLForKey_];

  if (v60)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
    sub_1D2877618();
    v61 = v112;
    v62 = sub_1D25A7DEC(v112);

    if (v62)
    {
      v63 = sub_1D2877198();
      v64 = v86;
      v65 = (v86 + *(v100 + 36));
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE8) + 28);
      v67 = *MEMORY[0x1E69816C0];
      v68 = sub_1D2877218();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      *v65 = swift_getKeyPath();
      *v64 = v63;
      sub_1D22BD1D0(v64, v101, &qword_1EC6DD188);
      swift_storeEnumTagMultiPayload();
      sub_1D2519488();
      sub_1D22BB9D8(&qword_1EC6DE458, &qword_1EC6DE400);
      v69 = v99;
      sub_1D2875AF8();
      sub_1D22BD238(v64, &qword_1EC6DD188);
    }

    else
    {
      v71 = v89;
      sub_1D259DE28(v53, v89, type metadata accessor for MagicPaperPreviewsView);
      v72 = v92;
      sub_1D259DE28(v61, v92, type metadata accessor for ImageGeneration.PreviewImage);
      v73 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v74 = (v88 + *(v90 + 80) + v73) & ~*(v90 + 80);
      v75 = swift_allocObject();
      sub_1D259DD60(v71, v75 + v73, type metadata accessor for MagicPaperPreviewsView);
      sub_1D259DD60(v72, v75 + v74, type metadata accessor for ImageGeneration.PreviewImage);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE448);
      sub_1D259DF5C();
      v76 = v93;
      sub_1D2877368();
      v77 = v94;
      v78 = v102;
      (*(v94 + 16))(v101, v76, v102);
      swift_storeEnumTagMultiPayload();
      sub_1D2519488();
      sub_1D22BB9D8(&qword_1EC6DE458, &qword_1EC6DE400);
      v69 = v99;
      sub_1D2875AF8();
      (*(v77 + 8))(v76, v78);
    }

    sub_1D22EC9BC(v69, v55, &qword_1EC6DE410);
    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  (*(v108 + 56))(v55, v70, 1, v110);
  v79 = v106;
  sub_1D22BD1D0(v35, v106, &qword_1EC6DE430);
  v80 = v109;
  sub_1D22BD1D0(v55, v109, &qword_1EC6DE418);
  v81 = v111;
  sub_1D22BD1D0(v79, v111, &qword_1EC6DE430);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE440);
  sub_1D22BD1D0(v80, v81 + *(v82 + 48), &qword_1EC6DE418);
  sub_1D22BD238(v55, &qword_1EC6DE418);
  sub_1D22BD238(v35, &qword_1EC6DE430);
  sub_1D22BD238(v80, &qword_1EC6DE418);
  return sub_1D22BD238(v79, &qword_1EC6DE430);
}

uint64_t sub_1D259BEB0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2875718();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = sub_1D2875798();
  v12 = v11;
  v14 = v13;
  if (qword_1ED89E0E8 != -1)
  {
    v24 = v10;
    swift_once();
    v10 = v24;
  }

  MEMORY[0x1EEE9AC00](v10);
  *(&v23 - 8) = v15;
  *(&v23 - 7) = v12;
  *(&v23 - 48) = v16 & 1;
  *(&v23 - 5) = v14;
  *(&v23 - 4) = 0;
  *(&v23 - 3) = 0;
  *(&v23 - 2) = v17;
  MEMORY[0x1EEE9AC00](v15);
  *(&v23 - 2) = 0x7571732E72617473;
  *(&v23 - 1) = 0xEB00000000657261;
  sub_1D2877248();

  sub_1D2875708();
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D259E0D4(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  sub_1D2876768();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE448) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE8) + 28);
  v20 = *MEMORY[0x1E69816C0];
  v21 = sub_1D2877218();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  result = swift_getKeyPath();
  *v18 = result;
  return result;
}

uint64_t sub_1D259C284(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v2 = *(v4 + 16);

  if (!v2)
  {
    if (a1)
    {
      return type metadata accessor for MagicPaperPreviewsView();
    }

    else
    {
      sub_1D2877618();
      swift_getKeyPath();
      sub_1D28719E8();
    }
  }

  return result;
}

uint64_t sub_1D259C420()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D259E0D4(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v0 = *(v2 + 18);

  if (v0 == 1)
  {
    return sub_1D2874608();
  }

  return result;
}

uint64_t sub_1D259C530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE478);
  sub_1D22BB9D8(&qword_1EC6DE480, &qword_1EC6DE470);
  sub_1D259E11C();
  sub_1D22BB9D8(&qword_1EC6DE490, &qword_1EC6DE478);
  return sub_1D2876938();
}

uint64_t sub_1D259C684@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D2877028();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v3);
  sub_1D28770F8();
  v6 = sub_1D28770C8();

  *a1 = v6;
  return result;
}

unint64_t sub_1D259C814()
{
  result = qword_1EC6DE2A8;
  if (!qword_1EC6DE2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE2B0);
    sub_1D259CC54(&qword_1EC6DE2B8, &qword_1EC6DE2B0, &unk_1D28957F0, sub_1D259C91C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE2A8);
  }

  return result;
}

unint64_t sub_1D259C91C()
{
  result = qword_1EC6DE2C0;
  if (!qword_1EC6DE2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE2C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE2D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE2D8);
    sub_1D22BB9D8(&qword_1EC6DE2E0, &qword_1EC6DE2D0);
    sub_1D22BB9D8(&qword_1EC6D7E38, &qword_1EC6DE2D8);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6DE2E8, &qword_1EC6DE2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE2C0);
  }

  return result;
}

uint64_t sub_1D259CABC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MagicPaperPreviewsView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1D259CBD4(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for MagicPaperPreviewsView();

  return sub_1D2598174(a1, a2);
}

uint64_t sub_1D259CC54(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D259CCD8()
{
  result = qword_1EC6DE300;
  if (!qword_1EC6DE300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCF98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA670);
    sub_1D259C814();
    sub_1D22BB9D8(&qword_1ED89DED8, &qword_1EC6DA670);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89DEE8, &qword_1EC6DCF98);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE300);
  }

  return result;
}

uint64_t sub_1D259CFB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2597D30(a1, v4, v5, v6);
}

uint64_t sub_1D259D0E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D25974FC(a1, v4, v5, v6);
}

void sub_1D259D1E4(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for MagicPaperPreviewsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1D259AB9C(a1, a2, v6);
}

uint64_t sub_1D259D2A8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MagicPaperPreviewsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D259D31C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MagicPaperPreviewsView();

  return sub_1D2516DB4(a1);
}

uint64_t objectdestroy_90Tm()
{
  v1 = (type metadata accessor for MagicPaperPreviewsView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1D22EE66C(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D259D514(uint64_t a1)
{
  type metadata accessor for MagicPaperPreviewsView();

  return sub_1D259AB40(a1);
}

unint64_t sub_1D259D588()
{
  result = qword_1ED89DDE8;
  if (!qword_1ED89DDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE310);
    sub_1D22BB9D8(qword_1ED8A0E08, &qword_1EC6DD068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDE8);
  }

  return result;
}

unint64_t sub_1D259D640()
{
  result = qword_1EC6DE358;
  if (!qword_1EC6DE358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE330);
    sub_1D259D6F8();
    sub_1D22BB9D8(&qword_1EC6D7830, &qword_1EC6DE350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE358);
  }

  return result;
}

unint64_t sub_1D259D6F8()
{
  result = qword_1EC6DE360;
  if (!qword_1EC6DE360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE368);
    sub_1D259D77C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE360);
  }

  return result;
}

unint64_t sub_1D259D77C()
{
  result = qword_1EC6DE370;
  if (!qword_1EC6DE370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE378);
    sub_1D22BB9D8(&qword_1EC6D7638, &qword_1EC6DE380);
    sub_1D259D834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE370);
  }

  return result;
}

unint64_t sub_1D259D834()
{
  result = qword_1EC6DE388;
  if (!qword_1EC6DE388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE390);
    sub_1D259D8C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE388);
  }

  return result;
}

unint64_t sub_1D259D8C0()
{
  result = qword_1EC6DE398;
  if (!qword_1EC6DE398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE3A0);
    sub_1D259D94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE398);
  }

  return result;
}

unint64_t sub_1D259D94C()
{
  result = qword_1EC6DE3A8;
  if (!qword_1EC6DE3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE3B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE3B8);
    sub_1D22BB9D8(&qword_1EC6DE3C0, &qword_1EC6DE3B8);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6DE3C8, &qword_1EC6DE3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE3A8);
  }

  return result;
}

uint64_t sub_1D259DA74()
{
  type metadata accessor for MagicPaperPreviewsView();

  return sub_1D259C420();
}

uint64_t sub_1D259DAE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MagicPaperPreviewsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D2599838(a1, v6, a2);
}

uint64_t objectdestroyTm_21()
{
  v1 = (type metadata accessor for MagicPaperPreviewsView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  (*(*(v3 - 8) + 8))(v2, v3);

  sub_1D22EE66C(*(v2 + v1[8]), *(v2 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D259DCE0()
{
  type metadata accessor for MagicPaperPreviewsView();

  return sub_1D2599898();
}

uint64_t sub_1D259DD60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D259DDC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D259DE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D259DE90()
{
  v1 = *(type metadata accessor for MagicPaperPreviewsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D2513C5C(v0 + v2, v5);
}

unint64_t sub_1D259DF5C()
{
  result = qword_1EC6DE450;
  if (!qword_1EC6DE450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D99E8);
    sub_1D2875718();
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
    sub_1D259E0D4(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D2D0, &qword_1EC6D9FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE450);
  }

  return result;
}

uint64_t sub_1D259E0D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D259E11C()
{
  result = qword_1EC6DE488;
  if (!qword_1EC6DE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE488);
  }

  return result;
}

unint64_t sub_1D259E170()
{
  result = qword_1EC6D7A50;
  if (!qword_1EC6D7A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE498);
    sub_1D259E228();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A50);
  }

  return result;
}

unint64_t sub_1D259E228()
{
  result = qword_1EC6D7AF8;
  if (!qword_1EC6D7AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE4A0);
    sub_1D2519770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7AF8);
  }

  return result;
}

uint64_t sub_1D259E328@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v78 = type metadata accessor for ImageDescriptionView();
  v71 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v72 = v2;
  v73 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D2875F78();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE5B8);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v6 = &v61 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE5C0);
  MEMORY[0x1EEE9AC00](v85);
  v77 = &v61 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE5C8);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v61 - v8;
  v79 = sub_1D28760F8();
  v64 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE5D0);
  v69 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v67 = &v61 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE5D8);
  v74 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v70 = &v61 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5E0);
  v76 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v75 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v61 - v15;
  v17 = type metadata accessor for PlaygroundImage();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);
  v21 = v1;
  sub_1D2877308();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D22BD238(v16, &unk_1EC6DE5A0);
    sub_1D2874738();
    sub_1D2875818();
    sub_1D22BB9D8(&qword_1EC6D7E88, &qword_1EC6DE5B8);
    v22 = v77;
    v23 = v65;
    v24 = v68;
    sub_1D2876B18();
    (*(v66 + 8))(v4, v24);
    (*(v63 + 8))(v6, v23);
    v25 = sub_1D2876338();
    sub_1D2874298();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE5F0) + 36);
    *v34 = v25;
    *(v34 + 8) = v27;
    *(v34 + 16) = v29;
    *(v34 + 24) = v31;
    *(v34 + 32) = v33;
    *(v34 + 40) = 0;
    v35 = v73;
    sub_1D25A2800(v21, v73);
    v36 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v37 = swift_allocObject();
    sub_1D25A2B50(v35, v37 + v36, type metadata accessor for ImageDescriptionView);
    v38 = (v22 + *(v85 + 36));
    sub_1D2874BC8();
    sub_1D2878588();
    *v38 = &unk_1D2895FA8;
    v38[1] = v37;
    sub_1D228E79C(v22, v84);
    swift_storeEnumTagMultiPayload();
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE5F8);
    v40 = sub_1D22BB9D8(&qword_1EC6DE600, &qword_1EC6DE5F8);
    *&v97 = v79;
    *(&v97 + 1) = MEMORY[0x1E697CA70];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v97 = v39;
    *(&v97 + 1) = v80;
    *&v98 = v40;
    *(&v98 + 1) = OpaqueTypeConformance2;
    v42 = swift_getOpaqueTypeConformance2();
    *&v97 = v81;
    *(&v97 + 1) = v42;
    swift_getOpaqueTypeConformance2();
    sub_1D25A2930();
    sub_1D2875AF8();
    return sub_1D228E80C(v22);
  }

  else
  {
    v62 = v20;
    sub_1D25A2B50(v16, v20, type metadata accessor for PlaygroundImage);
    v44 = sub_1D2875918();
    v87 = 1;
    v61 = v1;
    sub_1D259EF38(v20, v1, &v97);
    v93 = v99;
    v94[0] = *v100;
    *(v94 + 9) = *&v100[9];
    v91 = v97;
    v92 = v98;
    v95[2] = v99;
    v96[0] = *v100;
    *(v96 + 9) = *&v100[9];
    v95[0] = v97;
    v95[1] = v98;
    sub_1D22BD1D0(&v91, &v88, &unk_1EC6DE620);
    sub_1D22BD238(v95, &unk_1EC6DE620);
    *(v90 + 7) = v91;
    v90[4] = *(v94 + 9);
    *(&v90[3] + 7) = v94[0];
    *(&v90[2] + 7) = v93;
    *(&v90[1] + 7) = v92;
    *&v89[17] = v90[1];
    *&v89[33] = v90[2];
    *&v89[49] = v90[3];
    *&v89[65] = v90[4];
    v88 = v44;
    v89[0] = v87;
    *&v89[1] = v90[0];
    sub_1D2875828();
    v45 = MEMORY[0x1E697CA70];
    v46 = v67;
    v47 = v79;
    sub_1D2875858();
    (*(v64 + 8))(v10, v47);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE5F8);
    v49 = sub_1D22BB9D8(&qword_1EC6DE600, &qword_1EC6DE5F8);
    *&v97 = v47;
    *(&v97 + 1) = v45;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = v70;
    v52 = v80;
    sub_1D2876B18();
    (*(v69 + 8))(v46, v52);
    *&v100[16] = *&v89[48];
    v101 = *&v89[64];
    v102 = v89[80];
    v97 = v88;
    v98 = *v89;
    v99 = *&v89[16];
    *v100 = *&v89[32];
    sub_1D22BD238(&v97, &qword_1EC6DE5F8);
    v53 = v61 + *(v78 + 20);
    v54 = *v53;
    v55 = *(v53 + 8);
    LOBYTE(v53) = *(v53 + 16);
    LOBYTE(v88) = v54;
    *(&v88 + 1) = v55;
    v89[0] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC718);
    sub_1D28742C8();
    *&v88 = v48;
    *(&v88 + 1) = v52;
    *v89 = v49;
    *&v89[8] = v50;
    v56 = swift_getOpaqueTypeConformance2();
    v57 = v75;
    v58 = v81;
    sub_1D2876EB8();

    (*(v74 + 8))(v51, v58);
    v59 = v76;
    v60 = v83;
    (*(v76 + 16))(v84, v57, v83);
    swift_storeEnumTagMultiPayload();
    *&v88 = v58;
    *(&v88 + 1) = v56;
    swift_getOpaqueTypeConformance2();
    sub_1D25A2930();
    sub_1D2875AF8();
    (*(v59 + 8))(v57, v60);
    return sub_1D23D4DFC(v62);
  }
}

id sub_1D259EF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ImageDescriptionView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(a1 + 8) == 2;
  v27 = v7;
  if (v9)
  {
    v10 = *a1;
LABEL_8:
    v14 = v10;
    goto LABEL_9;
  }

  v11 = sub_1D262B684();
  if (!v11)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    goto LABEL_8;
  }

  v12 = v11;
  result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v11 imageOrientation:sub_1D263073C(*(a1 + 24))];
  if (result)
  {
    v14 = result;

LABEL_9:
    v15 = a2 + *(v6 + 32);
    v16 = *v15;
    v17 = *(v15 + 8);
    LOBYTE(v15) = *(v15 + 16);
    v33 = v16;
    v34 = v17;
    LOBYTE(v35) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
    sub_1D2877518();
    v18 = v29;
    v19 = v30;
    v20 = *(a2 + *(v6 + 24));
    sub_1D25A2800(a2, &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v22 = swift_allocObject();
    sub_1D25A2B50(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ImageDescriptionView);
    v23 = objc_allocWithZone(MEMORY[0x1E6988C68]);
    sub_1D2870F78();
    v24 = [v23 init];
    *&v29 = v14;
    *(&v29 + 1) = v24;
    v30 = v18;
    LOBYTE(v31) = v19;
    *(&v31 + 1) = v20;
    *&v32 = sub_1D25A2E08;
    *(&v32 + 1) = v22;
    v33 = v14;
    v28[64] = 0;
    *a3 = v29;
    *(a3 + 16) = v18;
    v25 = v32;
    *(a3 + 32) = v31;
    *(a3 + 48) = v25;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    v34 = v24;
    v35 = v18;
    v36 = v19;
    v37 = v20;
    v38 = sub_1D25A2E08;
    v39 = v22;
    sub_1D25A1F7C(&v29, v28);
    return sub_1D25A2E68(&v33);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D259F1C4()
{
  type metadata accessor for ImageDescriptionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC718);
  return sub_1D28742B8();
}

uint64_t sub_1D259F240(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  sub_1D2878568();
  v1[5] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D259F31C, v3, v2);
}

uint64_t sub_1D259F31C()
{
  v1 = v0[2];
  v2 = *(v1 + *(type metadata accessor for ImageDescriptionView() + 28));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1D259F3E8;
  v4 = v0[4];

  return (sub_1D270BEC8)(v4, v2, 0);
}

uint64_t sub_1D259F3E8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D259F508, v3, v2);
}

uint64_t sub_1D259F508()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_1D22BD1D0(v1, v2, &unk_1EC6DE5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);
  sub_1D2877318();
  sub_1D22BD238(v1, &unk_1EC6DE5A0);

  v3 = v0[1];

  return v3();
}

char *sub_1D259F748()
{
  type metadata accessor for GPImageDescriptionViewController.FakePresentingViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = [v0 presentationController];
  if (!v2 || (v3 = v2, v4 = [v2 traitCollection], v3, !v4))
  {
    v7.receiver = v0;
    v7.super_class = type metadata accessor for GPImageDescriptionViewController();
    v4 = objc_msgSendSuper2(&v7, sel_traitCollection);
  }

  v5 = *&v1[OBJC_IVAR____TtCFC23ImagePlaygroundInternal32GPImageDescriptionViewControllergP33_5475699B788A0A9CD9CC836EEF562C8327fakePresentingVieControllerCSo16UIViewControllerL_28FakePresentingViewController_traits];
  *&v1[OBJC_IVAR____TtCFC23ImagePlaygroundInternal32GPImageDescriptionViewControllergP33_5475699B788A0A9CD9CC836EEF562C8327fakePresentingVieControllerCSo16UIViewControllerL_28FakePresentingViewController_traits] = v4;

  return v1;
}

void sub_1D259F898(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D28714D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED8B0060);
  (*(v9 + 16))(v11, v14, v8);
  sub_1D28718C8();
  sub_1D28714F8();
  sub_1D28780F8();
  v15 = sub_1D2878068();

  [a1 setTitle_];

  v16 = [a1 setHidesTextBackground_];
  v17 = *(v1 + 40);
  if (v17 && (MEMORY[0x1EEE9AC00](v16), sub_1D22BCFD0(0, &qword_1EC6D74E0), swift_getKeyPath(), v28 = v17, sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550), sub_1D28719E8(), , *&v17[*(*v17 + 216) + 8]))
  {
    sub_1D2870F68();
    v18 = sub_1D2878068();

    [a1 setImageDescription_];

    (*(v1 + 48))();
  }

  else
  {
    v19 = sub_1D28785F8();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_1D2878568();
    sub_1D25A1F7C(v1, &v28);
    v20 = a1;
    v21 = sub_1D2878558();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    v24 = v2[1];
    *(v22 + 32) = *v2;
    *(v22 + 48) = v24;
    v25 = v2[3];
    *(v22 + 64) = v2[2];
    *(v22 + 80) = v25;
    *(v22 + 96) = v20;
    sub_1D22AE01C(0, 0, v6, &unk_1D2895DC8, v22);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE548);
  sub_1D28762D8();
  v26 = v28;
  [a1 setDelegate_];
}

uint64_t sub_1D259FDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D2873CB8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1D2878568();
  v5[7] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D259FEC4, v8, v7);
}

uint64_t sub_1D259FEC4()
{
  v1 = **(v0 + 16);
  *(v0 + 80) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1D259FFC8;

    return sub_1D25A0368(v2);
  }

  else
  {

    (*(*(v0 + 16) + 48))(v5);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1D259FFC8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_1D25A01C0;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_1D25A00FC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D25A00FC()
{
  v1 = v0[10];
  v2 = v0[3];

  v3 = sub_1D2878068();

  [v2 setPlaceholderText_];

  (*(v0[2] + 48))();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D25A01C0()
{
  v1 = v0[12];
  v2 = v0[10];

  sub_1D28724B8();
  v3 = v1;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D226E000, v4, v5, "Could not generate image description : %@", v8, 0xCu);
    sub_1D22BD238(v9, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  else
  {
  }

  v12 = (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v0[2] + 48))(v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D25A0368(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = sub_1D2878568();
  v2[7] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D25A0404, v4, v3);
}

uint64_t sub_1D25A0404()
{
  v1 = [*(v0[5] + 8) imageNode];
  v0[10] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithImage_];
    v0[11] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v0[5];
      v6 = sub_1D2878558();
      v0[12] = v6;
      v7 = swift_task_alloc();
      v0[13] = v7;
      v7[2] = v2;
      v7[3] = v4;
      v7[4] = v5;
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_1D25A0624;
      v9 = MEMORY[0x1E69E85E0];
      v10 = MEMORY[0x1E69E6158];

      return MEMORY[0x1EEE6DE38](v0 + 2, v6, v9, 0xD00000000000001ALL, 0x80000001D28BB510, sub_1D25A20C8, v7, v10);
    }

    sub_1D25A2074();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  else
  {

    sub_1D25A2074();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D25A0624()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1D25A07C0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1D25A0748;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D25A0748()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1D25A07C0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D25A084C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  sub_1D2877518();
  sub_1D28774F8();
}

uint64_t sub_1D25A097C(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  v7 = sub_1D28785F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D2878568();
  v8 = a1;
  v9 = a2;
  v10 = sub_1D2878558();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  sub_1D22AE01C(0, 0, v6, &unk_1D2895E28, v11);

  v13 = *&v9[OBJC_IVAR____TtCV23ImagePlaygroundInternal33ImageDescriptionViewRepresentable11Coordinator__showingAddCaptionController + 8];
  v14 = v9[OBJC_IVAR____TtCV23ImagePlaygroundInternal33ImageDescriptionViewRepresentable11Coordinator__showingAddCaptionController + 16];
  v18 = *&v9[OBJC_IVAR____TtCV23ImagePlaygroundInternal33ImageDescriptionViewRepresentable11Coordinator__showingAddCaptionController];
  v19 = v13;
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  sub_1D2877518();
  v18 = v16[0];
  v19 = v16[1];
  v20 = v17;
  LOBYTE(v16[0]) = 0;
  sub_1D28774F8();
}

uint64_t sub_1D25A0B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D2878568();
  v5[4] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D25A0BCC, v7, v6);
}

uint64_t sub_1D25A0BCC()
{
  v1 = [*(v0 + 16) imageDescription];
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = v1;
    v4 = sub_1D28780A8();
    v6 = v5;

    *(v0 + 56) = v6;
    v7 = *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal33ImageDescriptionViewRepresentable11Coordinator_parent + 40);
    *(v0 + 64) = v7;
    if (v7)
    {
      sub_1D2870F78();
      v8 = swift_task_alloc();
      *(v0 + 72) = v8;
      *v8 = v0;
      v8[1] = sub_1D25A0D58;

      return sub_1D23E53F4(v4, v6);
    }

    sub_1D2870F78();
    sub_1D2870F78();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D25A0D58()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D256C334, v3, v2);
}

id sub_1D25A1050()
{
  v1 = [objc_allocWithZone(type metadata accessor for GPImageDescriptionViewController()) initWithContentSnapshot_];
  sub_1D259F898(v1);
  v2 = v1;
  [v2 setModalPresentationStyle_];
  [v2 setModalInPresentation_];

  return v2;
}

id sub_1D25A10EC@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v22 = *v1;
  v23 = v3;
  v4 = v1[3];
  v24 = v1[2];
  v25 = v4;
  v17 = v3;
  v18 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  sub_1D2877518();
  v5 = v19;
  v6 = v20;
  v7 = v21;
  v8 = type metadata accessor for ImageDescriptionViewRepresentable.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV23ImagePlaygroundInternal33ImageDescriptionViewRepresentable11Coordinator_parent];
  v11 = v25;
  v13 = v22;
  v12 = v23;
  *(v10 + 2) = v24;
  *(v10 + 3) = v11;
  *v10 = v13;
  *(v10 + 1) = v12;
  v14 = &v9[OBJC_IVAR____TtCV23ImagePlaygroundInternal33ImageDescriptionViewRepresentable11Coordinator__showingAddCaptionController];
  *v14 = v5;
  *(v14 + 1) = v6;
  v14[16] = v7;
  sub_1D25A1F7C(&v22, &v17);
  v16.receiver = v9;
  v16.super_class = v8;
  result = objc_msgSendSuper2(&v16, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1D25A11DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D25A238C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D25A1240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D25A238C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D25A12A4()
{
  sub_1D25A238C();
  sub_1D2876218();
  __break(1u);
}

void sub_1D25A12CC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE78);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = sub_1D25A20D4();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1D25A22E8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D25A1C5C;
  aBlock[3] = &block_descriptor_26;
  v13 = _Block_copy(aBlock);

  [a2 triggerWithImage:a3 options:v10 cacheKey:0 resultHandler:v13];
  _Block_release(v13);
}

void sub_1D25A14A0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      v12 = [v11 mediaAnalysisImageCaptionFeatures];
      sub_1D22BCFD0(0, &unk_1EC6DE570);
      v13 = sub_1D28783E8();

      if (v13 >> 62)
      {
        if (sub_1D2879368())
        {
          goto LABEL_5;
        }
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1D38A1C30](0, v13);
LABEL_8:
          v15 = v14;

          if ([v15 isLowConfidence])
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        }

        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v14 = *(v13 + 32);
          goto LABEL_8;
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_27:

LABEL_28:
      sub_1D25DA770(MEMORY[0x1E69E7CC0]);
      type metadata accessor for AXMFeatureDescriptionOption(0);
      sub_1D25A2B08(&qword_1EC6D96C0, type metadata accessor for AXMFeatureDescriptionOption);
      v35 = sub_1D2877E78();

      v36 = [v11 detectedSceneClassificationFeatureDescriptionWithOptions_];

      if (v36)
      {
        v32 = sub_1D28780A8();
        v34 = v37;

        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v27 = [v11 captionFeatures];
    sub_1D22BCFD0(0, &unk_1EC6DE570);
    v28 = sub_1D28783E8();

    if (v28 >> 62)
    {
      if (!sub_1D2879368())
      {
        goto LABEL_27;
      }
    }

    else if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1D38A1C30](0, v28);
    }

    else
    {
      if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v29 = *(v28 + 32);
    }

    v15 = v29;

    if ([v15 isLowConfidence])
    {
LABEL_20:

      goto LABEL_28;
    }

LABEL_21:
    sub_1D25DA770(MEMORY[0x1E69E7CC0]);
    type metadata accessor for AXMFeatureDescriptionOption(0);
    sub_1D25A2B08(&qword_1EC6D96C0, type metadata accessor for AXMFeatureDescriptionOption);
    v30 = sub_1D2877E78();

    v31 = [v11 detectedCaptionFeatureDescriptionWithOptions_];

    if (v31)
    {
      v32 = sub_1D28780A8();
      v34 = v33;

LABEL_31:
      sub_1D2870F68();

      v38 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v38 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (!v38)
      {

        sub_1D25A2074();
        v44 = swift_allocError();
        *v45 = 2;
        v47[0] = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE78);
        sub_1D2878508();
        goto LABEL_37;
      }

      v39 = sub_1D2878068();
      v40 = [v39 axCapitalizeFirstLetter];

      if (v40)
      {

        v41 = sub_1D28780A8();
        v43 = v42;

        v47[0] = v41;
        v47[1] = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE78);
        sub_1D2878518();
LABEL_37:

        return;
      }

      goto LABEL_42;
    }

LABEL_30:
    v32 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_31;
  }

  if (!a2)
  {
LABEL_43:
    sub_1D2879398();
    __break(1u);
    return;
  }

  v16 = v8;
  v17 = a2;
  sub_1D28724B8();
  v18 = a2;
  v19 = sub_1D2873CA8();
  v20 = sub_1D2878A18();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v46[1] = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v47[0] = v23;
    *v22 = 136315138;
    swift_getErrorValue();
    v24 = sub_1D2879748();
    v26 = sub_1D23D7C84(v24, v25, v47);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1D226E000, v19, v20, "Image caption error: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1D38A3520](v23, -1, -1);
    MEMORY[0x1D38A3520](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v16);
  v47[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE78);
  sub_1D2878508();
}

void sub_1D25A1C5C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1D2870F78();
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_1D25A1EA8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1D25A1F28()
{
  result = qword_1EC6DE540;
  if (!qword_1EC6DE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE540);
  }

  return result;
}

uint64_t sub_1D25A1FB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D259FDD0(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_1D25A2074()
{
  result = qword_1EC6DE560;
  if (!qword_1EC6DE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE560);
  }

  return result;
}

id sub_1D25A20D4()
{
  v0 = sub_1D28718F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E6988C58]) init];
  v5 = AXRuntimeCheck_MediaAnalysisSupport();
  [v4 setDetectMADCaptions_];
  [v4 setDetectMADScenes_];
  [v4 setDetectScenes_];
  [v4 setDetectObjects_];
  [v4 setDetectProminentObjects_];
  [v4 setDetectCaptions_];
  [v4 setDetectText_];
  v6 = [objc_opt_self() defaultOptions];
  [v4 setTextDetectionOptions_];

  [v4 setDetectTraits_];
  [v4 setDetectModelClassifications_];
  [v4 setIncludeImageInResult_];
  sub_1D28718C8();
  v7 = sub_1D2871888();
  (*(v1 + 8))(v3, v0);
  [v4 setPreferredOutputLocale_];

  return v4;
}

void sub_1D25A22E8(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE78) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1D25A14A0(a1, a2, v6);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D25A238C()
{
  result = qword_1EC6DE580;
  if (!qword_1EC6DE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE580);
  }

  return result;
}

uint64_t sub_1D25A23FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D25A0B34(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for ImageDescriptionView()
{
  result = qword_1EC6DE588;
  if (!qword_1EC6DE588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D25A255C()
{
  sub_1D25A2660();
  if (v0 <= 0x3F)
  {
    sub_1D24C9A34();
    if (v1 <= 0x3F)
    {
      sub_1D25A26C4(319, qword_1EC6D8980, type metadata accessor for _PhotoAsset);
      if (v2 <= 0x3F)
      {
        sub_1D25A26C4(319, &qword_1EC6DCF30, type metadata accessor for _PhotoAsset.ImageType);
        if (v3 <= 0x3F)
        {
          sub_1D25A273C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D25A2660()
{
  if (!qword_1EC6DCF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE5A0);
    v0 = sub_1D2877338();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6DCF20);
    }
  }
}

void sub_1D25A26C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **))
{
  if (!*a2)
  {
    v6 = sub_1D22BCFD0(255, &qword_1EC6D74E0);
    v7 = a3(a1, v6, &protocol witness table for PHAsset);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D25A273C()
{
  if (!qword_1ED89D080)
  {
    v0 = sub_1D2877538();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89D080);
    }
  }
}

unint64_t sub_1D25A2790()
{
  result = qword_1EC6DE5B0;
  if (!qword_1EC6DE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE5B0);
  }

  return result;
}

uint64_t sub_1D25A2800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageDescriptionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D25A2864()
{
  v2 = *(type metadata accessor for ImageDescriptionView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D22BC8FC;

  return sub_1D259F240(v0 + v3);
}

unint64_t sub_1D25A2930()
{
  result = qword_1EC6DE608;
  if (!qword_1EC6DE608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE5C0);
    sub_1D25A29EC();
    sub_1D25A2B08(&qword_1ED89DED0, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE608);
  }

  return result;
}

unint64_t sub_1D25A29EC()
{
  result = qword_1EC6DE610;
  if (!qword_1EC6DE610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE5F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE5B8);
    sub_1D2875F78();
    sub_1D22BB9D8(&qword_1EC6D7E88, &qword_1EC6DE5B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE610);
  }

  return result;
}

uint64_t sub_1D25A2B08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D25A2B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_42Tm_0()
{
  v1 = *(type metadata accessor for ImageDescriptionView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = type metadata accessor for PlaygroundImage();
  if (!(*(*(v3 - 1) + 48))(v2, 1, v3))
  {

    v4 = v3[8];
    v5 = sub_1D2871818();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
    v6 = (v2 + v3[10]);
    v7 = v6[1];
    if (v7 >> 60 != 15)
    {
      sub_1D22D6D60(*v6, v7);
    }

    v8 = v3[11];
    v9 = sub_1D2873AA8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);

  return swift_deallocObject();
}

uint64_t sub_1D25A2E08()
{
  type metadata accessor for ImageDescriptionView();

  return sub_1D259F1C4();
}

unint64_t sub_1D25A2E98()
{
  result = qword_1EC6DE630;
  if (!qword_1EC6DE630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE638);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE5F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE5D0);
    sub_1D22BB9D8(&qword_1EC6DE600, &qword_1EC6DE5F8);
    sub_1D28760F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D25A2930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE630);
  }

  return result;
}

uint64_t sub_1D25A3048()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D25A3140()
{
  sub_1D2877F38();
}

uint64_t sub_1D25A3224()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D25A3318@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D25A35A8();
  *a1 = result;
  return result;
}

void sub_1D25A3348(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEB000000006E6F69;
  v6 = 0x7470697263736564;
  v7 = 0xEC000000656D616ELL;
  v8 = 0x656C69466E6F6369;
  if (v2 != 3)
  {
    v8 = 0xD00000000000001DLL;
    v7 = 0x80000001D28AEE30;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5A494C41434F4C5FLL;
    v3 = 0xED00005F454C4241;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D25A33FC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7470697263736564;
  v4 = 0x656C69466E6F6369;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5A494C41434F4C5FLL;
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

uint64_t sub_1D25A34AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D25A35A8();
  *a1 = result;
  return result;
}

uint64_t sub_1D25A34E0(uint64_t a1)
{
  v2 = sub_1D25A3C04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D25A351C(uint64_t a1)
{
  v2 = sub_1D25A3C04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D25A3558@<Q0>(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D25A35F4(a1, *a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v7[4];
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_1D25A35A8()
{
  v0 = sub_1D2879488();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

void sub_1D25A35F4(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v59 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE640);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D25A3C04();
  sub_1D2879868();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v10 = v7;
    LOBYTE(v49) = 0;
    v49 = sub_1D2879518();
    v11 = sub_1D28795C8();
    v43 = v12;
    LOBYTE(v49) = 2;
    v13 = sub_1D28794E8();
    v41 = a1;
    v49 = v13;
    v50 = v14;
    v15 = sub_1D28782E8();
    v42 = v16;
    v49 = 0xD000000000000017;
    v50 = 0x80000001D28BB620;
    LOBYTE(v44) = 3;
    v40 = 0;
    *&v44 = sub_1D28794E8();
    *(&v44 + 1) = v17;
    v18 = sub_1D28782E8();
    MEMORY[0x1D38A0C50](v18);

    v19 = v49;
    v39 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
    LOBYTE(v44) = 4;
    sub_1D25A3C58();
    sub_1D28794D8();
    v20 = v49;
    if (!v49)
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v38 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
    LOBYTE(v44) = 1;
    sub_1D25A3CD4();
    sub_1D2879528();
    v37 = v9;
    v21 = v49;
    if (*(v49 + 16) && (v22 = sub_1D25D0410(0xD000000000000014, 0x80000001D28BB640), (v23 & 1) != 0))
    {
      v24 = (*(v21 + 56) + 16 * v22);
      v25 = v24[1];
      v40 = *v24;
      sub_1D2870F68();

      (*(v10 + 8))(v37, v6);
      v36 = v11;
      v26 = v43;
      *&v44 = v11;
      *(&v44 + 1) = v43;
      *&v45 = v40;
      *(&v45 + 1) = v25;
      v27 = v42;
      *&v46 = v15;
      *(&v46 + 1) = v42;
      v28 = v39;
      *&v47 = v19;
      *(&v47 + 1) = v39;
      v29 = v38;
      *&v48 = v38;
      *(&v48 + 1) = a2;
      sub_1D25A3DB4(&v44, &v49);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v49 = v36;
      v50 = v26;
      v51 = v40;
      v52 = v25;
      v53 = v15;
      v54 = v27;
      v55 = v19;
      v56 = v28;
      v57 = v29;
      v58 = a2;
      sub_1D25A3DEC(&v49);
      v30 = v47;
      v31 = v59;
      v59[2] = v46;
      v31[3] = v30;
      v31[4] = v48;
      v32 = v45;
      *v31 = v44;
      v31[1] = v32;
    }

    else
    {

      LOBYTE(v49) = 1;
      sub_1D28791F8();
      swift_allocError();
      sub_1D25A3D50();
      v33 = v37;
      sub_1D28791D8();
      swift_willThrow();
      (*(v10 + 8))(v33, v6);
      v34 = v40;
      __swift_destroy_boxed_opaque_existential_0(v41);

      if (!v34)
      {
      }
    }
  }
}

unint64_t sub_1D25A3C04()
{
  result = qword_1ED8A13F0;
  if (!qword_1ED8A13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A13F0);
  }

  return result;
}

unint64_t sub_1D25A3C58()
{
  result = qword_1ED89CE90;
  if (!qword_1ED89CE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CE90);
  }

  return result;
}

unint64_t sub_1D25A3CD4()
{
  result = qword_1ED89CF88;
  if (!qword_1ED89CF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CF88);
  }

  return result;
}

unint64_t sub_1D25A3D50()
{
  result = qword_1EC6DE648;
  if (!qword_1EC6DE648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE648);
  }

  return result;
}

unint64_t sub_1D25A3E40()
{
  result = qword_1EC6DE650;
  if (!qword_1EC6DE650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE650);
  }

  return result;
}

unint64_t sub_1D25A3E98()
{
  result = qword_1ED8A13E0;
  if (!qword_1ED8A13E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A13E0);
  }

  return result;
}

unint64_t sub_1D25A3EF0()
{
  result = qword_1ED8A13E8;
  if (!qword_1ED8A13E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A13E8);
  }

  return result;
}

uint64_t sub_1D25A3F44()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) == 1 && (swift_getKeyPath(), sub_1D28719E8(), , swift_unknownObjectWeakLoadStrong()))
  {
    v1 = off_1F4DD4840;
    type metadata accessor for EffectViewModel();
    v2 = v1();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1D25A40AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  v5 = sub_1D2871818();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v0;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v9, v4, &qword_1EC6D8F70);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(v4, &qword_1EC6D8F70);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
    swift_getKeyPath();
    v15[2] = v11;
    sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    v12 = swift_beginAccess();
    v13 = *(v11 + 16);
    MEMORY[0x1EEE9AC00](v12);
    v15[-2] = v8;
    sub_1D2870F68();
    v14 = sub_1D25A6144(sub_1D25BA3EC, &v15[-4], v13, type metadata accessor for ImageGeneration.PreviewImage);

    (*(v6 + 8))(v8, v5);
    return v14;
  }
}

uint64_t sub_1D25A43F4()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  LOBYTE(v1) = *(v0 + 16);
  if (v1)
  {
    if ((sub_1D25A3F44() & 1) == 0)
    {
      goto LABEL_7;
    }

    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
    swift_getKeyPath();
    sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    swift_beginAccess();
    v1 = *(*(v2 + 16) + 16);
    if (v1)
    {
      swift_getKeyPath();
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = off_1F4DD4840;
        type metadata accessor for EffectViewModel();
        v4 = v3();
        swift_unknownObjectRelease();
        if (v4)
        {
          swift_getKeyPath();
          sub_1D28719E8();

          LOBYTE(v1) = *(v0 + 20) ^ 1;
          return v1 & 1;
        }
      }

LABEL_7:
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_1D25A4614()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  if ((*(v0 + 18) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) == 1)
    {
      *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D28719D8();
    }
  }

  return result;
}

uint64_t sub_1D25A4768(int a1)
{
  v3 = sub_1D2872008();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel___observationRegistrar;
  v29 = v1;
  v8 = sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v25 = v7;
    v26 = v8;
    if (*(v1 + 17) == 1)
    {
      *(v1 + 17) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v21 - 2) = v1;
      *(&v21 - 8) = 1;
      v29 = v1;
      sub_1D28719D8();
    }

    if (sub_1D25A3F44())
    {
      swift_getKeyPath();
      v29 = v1;
      sub_1D28719E8();

      v12 = *(v1 + 16) - 5;
      v13 = swift_allocObject();
      swift_weakInit();
      sub_1D2870F78();
      if (v12 <= 1)
      {
        sub_1D2783150(3uLL, 128, 1, v10, sub_1D25BA09C, v13);
LABEL_14:

        return swift_unknownObjectRelease();
      }

      sub_1D27834E4(2uLL, 128, a1 & 1, v10, sub_1D25BA09C, v13);
    }

    else
    {
      v24 = a1;
      v14 = off_1F4DD4808;
      type metadata accessor for EffectViewModel();
      if (v14())
      {
        return swift_unknownObjectRelease();
      }

      v15 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
      swift_getKeyPath();
      v29 = v15;
      sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
      sub_1D28719E8();

      swift_beginAccess();
      if (!*(*(v15 + 16) + 16))
      {
        sub_1D23C7448();
        swift_getKeyPath();
        v28 = v1;
        sub_1D28719E8();

        v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
        swift_beginAccess();
        v23 = *(v4 + 16);
        v23(v6, v1 + v17, v3);
        v18 = sub_1D2777B18(v6);

        v22 = *(v4 + 8);
        v22(v6, v3);
        swift_getKeyPath();
        v27 = v1;
        sub_1D28719E8();

        v23(v6, v1 + v17, v3);
        v19 = sub_1D2871F78();
        v22(v6, v3);
        v20 = swift_allocObject();
        swift_weakInit();
        sub_1D2870F78();
        sub_1D2783130(*&v18, v19 & 1, v24 & 1, v10, sub_1D25BA09C, v20);
        goto LABEL_14;
      }

      v16 = swift_allocObject();
      swift_weakInit();
      sub_1D2870F78();
      sub_1D2783504(1uLL, 128, v24 & 1, v10, sub_1D25BA09C, v16);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D25A4D3C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_1D25A40AC();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v9 >= 1)
  {
    swift_getKeyPath();
    v26 = v1;
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    v10 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__precomputedGenerationSeeds[0]);
    sub_1D2870F68();
    v11 = sub_1D25A63E0(v9, v10);

    sub_1D25AB238(v11);
  }

  swift_getKeyPath();
  v26 = v2;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = a1 & 1;
    if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__forceOpaque) == (a1 & 1))
    {
      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__forceOpaque) = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = Strong;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v25 - 2) = v14;
      *(&v25 - 8) = v13;
      v26 = v14;
      sub_1D25B554C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
      sub_1D28719D8();
      swift_unknownObjectRelease();
    }
  }

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager), *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager + 24));
  sub_1D23B3A78();
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested))
  {
    v16 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v16);
    *(&v25 - 2) = v2;
    *(&v25 - 8) = 0;
    v26 = v2;
    sub_1D28719D8();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested) = 0;
  }

  v17 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v17);
  *(&v25 - 3) = 0;
  *(&v25 - 2) = 0;
  *(&v25 - 4) = v2;
  *(&v25 - 8) = -4;
  v26 = v2;
  sub_1D28719D8();

  sub_1D258F7A4();
  v18 = sub_1D2871818();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_1D25A8330(v6);
  swift_getKeyPath();
  v26 = v2;
  sub_1D28719E8();

  v19 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v20 + 40))(v2, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  v26 = v2;
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__forceOpaque))
    {
      v23 = result;
      v24 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v24);
      *(&v25 - 2) = v23;
      *(&v25 - 8) = 0;
      v26 = v23;
      sub_1D25B554C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
      sub_1D28719D8();
      swift_unknownObjectRelease();
    }

    else
    {
      *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__forceOpaque) = 0;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D25A533C(uint64_t result)
{
  if (*(v1 + 20) == (result & 1))
  {
    *(v1 + 20) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D25A544C()
{
  v1[3] = v0;
  v1[4] = sub_1D2878568();
  v1[5] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D25A54E8, v3, v2);
}

uint64_t sub_1D25A54E8()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages) == 1)
  {
    __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager), *(v0[3] + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager + 24));
    sub_1D23B3A78();
    v2 = sub_1D2878558();
    v0[8] = v2;
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_1D25A56BC;
    v4 = v0[3];
    v5 = MEMORY[0x1E69E85E0];
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v3, v2, v5, 0xD000000000000012, 0x80000001D28BB9F0, sub_1D25BA094, v4, v6);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D25A56BC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D231C8D8, v3, v2);
}

uint64_t sub_1D25A5800(int a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGenerationCancelledFromBackgrounding))
  {
    KeyPath = swift_getKeyPath();
    v14 = a1;
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v13[-16] = v1;
    v13[-8] = 0;
    v16 = v1;
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();

    LOBYTE(a1) = v14;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGenerationCancelledFromBackgrounding) = 0;
  }

  sub_1D25AADA0(MEMORY[0x1E69E7CD0]);
  swift_getKeyPath();
  v16 = v1;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v9, v4);
  LOBYTE(v9) = sub_1D2871F78();
  (*(v5 + 8))(v7, v4);
  if (v9 & 1) == 0 || (a1)
  {
    return sub_1D25AF9D4();
  }

  swift_getKeyPath();
  v15 = v2;
  sub_1D28719E8();

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested;
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested) == 1)
  {
    swift_getKeyPath();
    v15 = v2;
    sub_1D28719E8();

    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages) == 1)
    {
      if (*(v2 + v11))
      {
        v12 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v12);
        *&v13[-16] = v2;
        v13[-8] = 0;
        v15 = v2;
        sub_1D28719D8();
      }

      else
      {
        *(v2 + v11) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D25A5BC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2872CC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D25B554C(&qword_1EC6D8BB8, MEMORY[0x1E69DFDF0]), v7 = sub_1D2877EF8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1D25B554C(&qword_1EC6D8BB0, MEMORY[0x1E69DFDF0]);
      v15 = sub_1D2877F98();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D25A5DDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D25B554C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]), v7 = sub_1D2877EF8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1D25B554C(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
      v15 = sub_1D2877F98();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D25A5FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D28797D8();
  sub_1D2877F38();
  v6 = sub_1D2879828();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D2879618() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D25A6144(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1D25A62DC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4) - 8);
    v11 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9);
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (v5 == ++v9)
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_1D25A63E0(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a1 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && a1 % v3)
  {
    v13 = a2 + 32;
    v5 = (2 * (a1 % v3)) | 1;
    v14 = a1 % v3;
    v15 = (2 * v3) | 1;
    v6 = sub_1D2870F68();
    sub_1D25B94E0(v6, v2 + 32, 0, v5);
    if ((v15 & 1) == 0)
    {
LABEL_7:
      sub_1D268E700(a2, v13, v14, v15);
      v8 = v7;
      swift_unknownObjectRelease();
      return v8;
    }

    sub_1D2879678();
    swift_unknownObjectRetain_n();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
      swift_unknownObjectRelease();
      v10 = MEMORY[0x1E69E7CC0];
    }

    v11 = *(v10 + 16);

    if (__OFSUB__(v15 >> 1, v14))
    {
      __break(1u);
    }

    else if (v11 == (v15 >> 1) - v14)
    {
      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      if (!v2)
      {
        swift_unknownObjectRelease();
        return MEMORY[0x1E69E7CC0];
      }

      return v2;
    }

    swift_unknownObjectRelease_n();
    goto LABEL_7;
  }

  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D25A653C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1D25B554C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
      v26 = sub_1D2877EF8();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1D25B554C(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
        v31 = sub_1D2877F98();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D25A68EC(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1D28797D8();
    sub_1D2870F68();
    sub_1D2877F38();
    v16 = sub_1D2879828();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1D2879618() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1D25A6AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872CC8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_1D25B554C(&qword_1EC6D8BB8, MEMORY[0x1E69DFDF0]);
        v26 = sub_1D2877EF8();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_1D25B554C(&qword_1EC6D8BB0, MEMORY[0x1E69DFDF0]);
          v31 = sub_1D2877F98();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

id sub_1D25A6E54@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v3 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError;
  v4 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError);
  v5 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;
  return sub_1D2415B78(v4, v5, v6);
}

uint64_t sub_1D25A6F14@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_1D25A6FBC()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  return *(v0 + 20);
}

uint64_t sub_1D25A705C()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  return *(v0 + 17);
}

uint64_t sub_1D25A70FC()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  return *(v0 + 18);
}

uint64_t sub_1D25A719C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v33 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v13 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v1;
  v16 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v51 = v16;
  sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v17 = *(v16 + 16);
  v45 = *(v17 + 16);
  if (v45)
  {
    v49 = v12;
    v32 = a1;
    v42 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel___observationRegistrar;
    v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
    v40 = v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    sub_1D2870F68();
    v41 = v18;
    result = swift_beginAccess();
    v20 = 0;
    v38 = (v4 + 56);
    v39 = (v4 + 16);
    v21 = (v4 + 48);
    v34 = (v4 + 32);
    v37 = (v4 + 8);
    v43 = v13;
    v44 = v17;
    while (1)
    {
      if (v20 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1D25B9FDC(v40 + *(v13 + 72) * v20, v15, type metadata accessor for ImageGeneration.PreviewImage);
      v22 = v49;
      (*v39)(v49, v15, v3);
      (*v38)(v22, 0, 1, v3);
      swift_getKeyPath();
      v23 = v48;
      v50 = v48;
      sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
      sub_1D28719E8();

      v24 = *(v47 + 48);
      sub_1D22BD1D0(v22, v7, &qword_1EC6D8F70);
      sub_1D22BD1D0(v23 + v41, &v7[v24], &qword_1EC6D8F70);
      v25 = *v21;
      if ((*v21)(v7, 1, v3) == 1)
      {
        break;
      }

      v26 = v46;
      sub_1D22BD1D0(v7, v46, &qword_1EC6D8F70);
      if (v25(&v7[v24], 1, v3) == 1)
      {
        sub_1D22BD238(v49, &qword_1EC6D8F70);
        (*v37)(v26, v3);
LABEL_4:
        sub_1D22BD238(v7, &qword_1EC6D94F0);
        v17 = v44;
        goto LABEL_5;
      }

      v27 = v35;
      (*v34)(v35, &v7[v24], v3);
      sub_1D25B554C(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
      v36 = sub_1D2877F98();
      v28 = *v37;
      (*v37)(v27, v3);
      sub_1D22BD238(v49, &qword_1EC6D8F70);
      v28(v46, v3);
      sub_1D22BD238(v7, &qword_1EC6D8F70);
      v17 = v44;
      if (v36)
      {

LABEL_16:
        v31 = v33;
        a1 = v32;
        sub_1D25B9A58(v15, v32, type metadata accessor for ImageGeneration.PreviewImage);
        v29 = 0;
        v30 = v31;
        v13 = v43;
        return (*(v13 + 56))(a1, v29, 1, v30);
      }

LABEL_5:
      ++v20;
      result = sub_1D25B9F7C(v15, type metadata accessor for ImageGeneration.PreviewImage);
      v13 = v43;
      if (v45 == v20)
      {

        v29 = 1;
        a1 = v32;
        goto LABEL_14;
      }
    }

    sub_1D22BD238(v22, &qword_1EC6D8F70);
    if (v25(&v7[v24], 1, v3) == 1)
    {

      sub_1D22BD238(v7, &qword_1EC6D8F70);
      goto LABEL_16;
    }

    goto LABEL_4;
  }

  v29 = 1;
LABEL_14:
  v30 = v33;
  return (*(v13 + 56))(a1, v29, 1, v30);
}

uint64_t sub_1D25A789C(uint64_t result)
{
  if (*(v1 + 19) == (result & 1))
  {
    *(v1 + 19) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D25A79AC(double a1)
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    sub_1D28719E8();

    *&v5 = a1;
    sub_1D277E434(v5 | ((*(v1 + 16) - 5 < 2) << 32), 64, 1, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D25A7ADC(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  return result;
}

unsigned __int8 *sub_1D25A7BEC(unsigned __int8 *result)
{
  if (*(v1 + 16) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D25A7CF4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
  swift_beginAccess();
  v4 = sub_1D2872008();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1D25A7DEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v14[7] = v4;
  sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v5 = *(v4 + 16);
  v14[2] = a1;
  sub_1D2870F68();
  v6 = sub_1D25A6144(sub_1D25BA3EC, v14, v5, type metadata accessor for ImageGeneration.PreviewImage);
  v8 = v7;

  if (v8 & 1) == 0 && (swift_getKeyPath(), v14[3] = v2, sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel), sub_1D28719E8(), , v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__previewIndicesToSavedSeedMap, swift_beginAccess(), v10 = *(v2 + v9), *(v10 + 16)) && (v11 = sub_1D25D0574(v6), (v12))
  {
    return *(*(v10 + 56) + v11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D25A7FC0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1D2872438();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D25A7DEC(a1);
  if ((result & 1) == 0)
  {
    v12 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
    swift_getKeyPath();
    v18[1] = v12;
    sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    v13 = swift_beginAccess();
    v14 = *(v12 + 16);
    MEMORY[0x1EEE9AC00](v13);
    v18[-2] = a1;
    sub_1D2870F68();
    v15 = sub_1D25A6144(sub_1D25BA3EC, &v18[-4], v14, type metadata accessor for ImageGeneration.PreviewImage);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_buildRecipe))(result);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        return sub_1D22BD238(v6, &unk_1EC6DDE30);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        if (qword_1EC6D8C10 != -1)
        {
          swift_once();
        }

        sub_1D2870F78();
        sub_1D23BC238(v10, v15);

        sub_1D25B44C8(v15);
        return (*(v8 + 8))(v10, v7);
      }
    }
  }

  return result;
}

uint64_t sub_1D25A8330(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v9, v8, &qword_1EC6D8F70);
  v10 = sub_1D25B971C(v8, a1);
  sub_1D22BD238(v8, &qword_1EC6D8F70);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  else
  {
    sub_1D22BD1D0(a1, v8, &qword_1EC6D8F70);
    sub_1D22BD1D0(v1 + v9, v6, &qword_1EC6D8F70);
    swift_beginAccess();
    sub_1D22D7384(v8, v1 + v9, &qword_1EC6D8F70);
    swift_endAccess();
    sub_1D25AC140(v6);
    sub_1D22BD238(v6, &qword_1EC6D8F70);
    sub_1D22BD238(v8, &qword_1EC6D8F70);
  }

  return sub_1D22BD238(a1, &qword_1EC6D8F70);
}

uint64_t sub_1D25A8598(void *a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel___observationRegistrar;
  v25 = v1;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v24 = v8;
    v13 = v7;
    v14 = v5;
    v15 = v4;
    v16 = v12;
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    sub_1D2870F78();
    sub_1D2870F78();
    v17 = a1;
    sub_1D2758420(v10, sub_1D25BA3A8, v16);
    swift_unknownObjectRelease();

    v4 = v15;
    v5 = v14;
    v7 = v13;
  }

  swift_getKeyPath();
  v25 = v2;
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    swift_getKeyPath();
    v25 = v2;
    sub_1D28719E8();

    v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v20, v4);
    v21 = sub_1D2871F78();
    (*(v5 + 8))(v7, v4);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21 & 1;
    sub_1D2870F78();
    sub_1D2758420(v19, sub_1D25BA3B0, v23);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D25A88E8(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase) = v2;

    return sub_1D25AEE2C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D25A8A24()
{
  result = sub_1D27D8C8C();
  if ((result & 1) == 0)
  {
    result = sub_1D25ABCF4();
    if (result)
    {
      swift_getKeyPath();
      sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
      sub_1D28719E8();

      v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode;
      if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) & 1) != 0 || (swift_getKeyPath(), sub_1D28719E8(), result = , ((*(v0 + v2) ^ (*(v0 + 16) != 0))))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1D28719D8();
      }

      else
      {
        *(v0 + v2) = *(v0 + 16) != 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D25A8BD4()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v11 = v0;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  if (*(v0 + 16) || (v7 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore), swift_getKeyPath(), v11 = v7, sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore), sub_1D28719E8(), , swift_beginAccess(), !*(*(v7 + 16) + 16)))
  {
    swift_getKeyPath();
    v11 = v0;
    sub_1D28719E8();

    v6 = *(v0 + 16);
    if (v6)
    {
      if ((sub_1D25A3F44() & 1) != 0 && (swift_getKeyPath(), v11 = v0, sub_1D28719E8(), , (*(v0 + 18) & 1) == 0))
      {
        swift_getKeyPath();
        v11 = v0;
        sub_1D28719E8();

        v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
        swift_beginAccess();
        (*(v3 + 16))(v5, v1 + v8, v2);
        LOBYTE(v8) = sub_1D2871F78();
        (*(v3 + 8))(v5, v2);
        v6 = v8 ^ 1;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void *sub_1D25A8EC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v41 - v2;
  v4 = type metadata accessor for LoadingPageControlIndicatorStyle();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D2871818();
  v6 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
  v12 = *(v11 - 8);
  v48 = v11;
  v49 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v46 = v0;
  v18 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v52 = v18;
  sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v19 = *(v18 + 16);
  v20 = *(v19 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v42 = v3;
    v43 = v14;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D8818(0, v20, 0);
    v21 = v51;
    v22 = *(v45 + 80);
    v41 = v19;
    v23 = v19 + ((v22 + 32) & ~v22);
    v24 = *(v45 + 72);
    v45 = v6;
    v25 = (v6 + 16);
    do
    {
      sub_1D25B9FDC(v23, v10, type metadata accessor for ImageGeneration.PreviewImage);
      (*v25)(v17, v10, v50);
      sub_1D25B9F7C(v10, type metadata accessor for ImageGeneration.PreviewImage);
      v26 = *(v48 + 20);
      v27 = sub_1D28785F8();
      (*(*(v27 - 8) + 56))(&v17[v26], 1, 1, v27);
      v51 = v21;
      v29 = v21[2];
      v28 = v21[3];
      if (v29 >= v28 >> 1)
      {
        sub_1D23D8818(v28 > 1, v29 + 1, 1);
        v21 = v51;
      }

      v21[2] = v29 + 1;
      sub_1D25B9A58(v17, v21 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v29, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
      v23 += v24;
      --v20;
    }

    while (v20);

    v3 = v42;
    v14 = v43;
    v6 = v45;
  }

  swift_getKeyPath();
  v30 = v46;
  v51 = v46;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  if (*(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages))
  {
    if (qword_1ED8A2E08 != -1)
    {
      swift_once();
    }

    v31 = v50;
    v32 = __swift_project_value_buffer(v50, qword_1ED8B0180);
    (*(v6 + 16))(v47, v32, v31);
    swift_getKeyPath();
    v51 = v30;
    sub_1D28719E8();

    v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentPreviewGenPriority;
    swift_beginAccess();
    sub_1D22BD1D0(v30 + v33, v3, &qword_1EC6D8E60);
    v34 = sub_1D28785F8();
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    if (v36(v3, 1, v34) == 1)
    {
      v37 = v44;
      sub_1D2878588();
      if (v36(v3, 1, v34) != 1)
      {
        sub_1D22BD238(v3, &qword_1EC6D8E60);
      }
    }

    else
    {
      v37 = v44;
      (*(v35 + 32))(v44, v3, v34);
    }

    (*(v35 + 56))(v37, 0, 1, v34);
    (*(v6 + 32))(v14, v47, v50);
    sub_1D25B9A58(v37, &v14[*(v48 + 20)], type metadata accessor for LoadingPageControlIndicatorStyle);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D27CD338(0, v21[2] + 1, 1, v21);
    }

    v39 = v21[2];
    v38 = v21[3];
    if (v39 >= v38 >> 1)
    {
      v21 = sub_1D27CD338(v38 > 1, v39 + 1, 1, v21);
    }

    v21[2] = v39 + 1;
    sub_1D25B9A58(v14, v21 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v39, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
  }

  return v21;
}

uint64_t sub_1D25A9658@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v47 = sub_1D2873CB8();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v66 = v18;
  sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v19 = *(v18 + 16);
  v20 = v48;
  v60 = *(v19 + 16);
  if (!v60)
  {
LABEL_13:
    v31 = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
    return (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
  }

  v58 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel___observationRegistrar;
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  v56 = v19 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  sub_1D2870F68();
  v61 = v2;
  v57 = v21;
  result = swift_beginAccess();
  v23 = 0;
  v54 = (v5 + 56);
  v55 = (v5 + 16);
  v24 = (v5 + 48);
  v49 = (v5 + 32);
  v52 = (v5 + 8);
  v53 = v15;
  v64 = v13;
  v59 = v19;
  while (1)
  {
    if (v23 >= *(v19 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    sub_1D25B9FDC(v56 + *(v15 + 72) * v23, v17, type metadata accessor for ImageGeneration.PreviewImage);
    (*v55)(v13, v17, v4);
    (*v54)(v13, 0, 1, v4);
    swift_getKeyPath();
    v25 = v61;
    v65 = v61;
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    v26 = *(v63 + 48);
    sub_1D22BD1D0(v13, v8, &qword_1EC6D8F70);
    sub_1D22BD1D0(v25 + v57, &v8[v26], &qword_1EC6D8F70);
    v27 = *v24;
    if ((*v24)(v8, 1, v4) == 1)
    {
      break;
    }

    v28 = v62;
    sub_1D22BD1D0(v8, v62, &qword_1EC6D8F70);
    if (v27(&v8[v26], 1, v4) == 1)
    {
      sub_1D22BD238(v64, &qword_1EC6D8F70);
      sub_1D25B9F7C(v17, type metadata accessor for ImageGeneration.PreviewImage);
      (*v52)(v28, v4);
      goto LABEL_4;
    }

    v29 = v50;
    (*v49)(v50, &v8[v26], v4);
    sub_1D25B554C(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
    v51 = sub_1D2877F98();
    v30 = *v52;
    (*v52)(v29, v4);
    sub_1D22BD238(v64, &qword_1EC6D8F70);
    sub_1D25B9F7C(v17, type metadata accessor for ImageGeneration.PreviewImage);
    v30(v62, v4);
    result = sub_1D22BD238(v8, &qword_1EC6D8F70);
    if (v51)
    {
      goto LABEL_16;
    }

LABEL_5:
    ++v23;
    v19 = v59;
    v15 = v53;
    v13 = v64;
    if (v60 == v23)
    {

      v20 = v48;
      goto LABEL_13;
    }
  }

  sub_1D22BD238(v13, &qword_1EC6D8F70);
  sub_1D25B9F7C(v17, type metadata accessor for ImageGeneration.PreviewImage);
  if (v27(&v8[v26], 1, v4) != 1)
  {
LABEL_4:
    result = sub_1D22BD238(v8, &qword_1EC6D94F0);
    goto LABEL_5;
  }

  sub_1D22BD238(v8, &qword_1EC6D8F70);
LABEL_16:

  v32 = sub_1D25A8EC8()[2];

  if (v23 < v32)
  {
    result = sub_1D25A8EC8();
    v33 = v48;
    if (v23 < *(result + 16))
    {
      v34 = result;
      v35 = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
      v36 = *(v35 - 8);
      sub_1D25B9FDC(v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v23, v33, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);

      return (*(v36 + 56))(v33, 0, 1, v35);
    }

    goto LABEL_24;
  }

  v37 = v45;
  sub_1D2872658();
  sub_1D2870F78();
  v38 = sub_1D2873CA8();
  v39 = sub_1D2878A18();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v48;
  if (v40)
  {
    v42 = swift_slowAlloc();
    *v42 = 134218240;
    *(v42 + 4) = v23;
    *(v42 + 12) = 2048;
    v43 = sub_1D25A8EC8()[2];

    *(v42 + 14) = v43;

    _os_log_impl(&dword_1D226E000, v38, v39, "index %ld is outside of the indicators range - indicators.count = %ld", v42, 0x16u);
    MEMORY[0x1D38A3520](v42, -1, -1);
  }

  else
  {
  }

  (*(v46 + 8))(v37, v47);
  v44 = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
  return (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
}

uint64_t sub_1D25A9FE0(uint64_t a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_1D25A8EC8();
  v31 = a1;
  v11 = sub_1D25A6144(sub_1D25BA044, v30, v10, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    v29 = v3;
    v15 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
    swift_getKeyPath();
    v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal22GeneratedPreviewsStore___observationRegistrar;
    v33 = v15;
    sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    swift_beginAccess();
    if (v11 >= *(*(v15 + 16) + 16))
    {
      v28 = v16;
      sub_1D2872658();
      sub_1D2870F78();
      v22 = sub_1D2873CA8();
      v23 = sub_1D2878A18();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v27 = v4;
        v25 = v24;
        *v24 = 134218240;
        *(v24 + 4) = v11;
        *(v24 + 12) = 2048;
        swift_getKeyPath();
        v32 = v15;
        sub_1D28719E8();

        *(v25 + 14) = *(*(v15 + 16) + 16);

        _os_log_impl(&dword_1D226E000, v22, v23, "indexOfIndicator %ld is outside of the previews range - previews.count = %ld", v25, 0x16u);
        v4 = v27;
        MEMORY[0x1D38A3520](v25, -1, -1);
      }

      else
      {
      }

      return (*(v4 + 8))(v6, v29);
    }

    else
    {
      swift_getKeyPath();
      v32 = v15;
      sub_1D28719E8();

      if (v11 < 0)
      {
        __break(1u);
      }

      else
      {
        v17 = *(v15 + 16);
        if (v11 < *(v17 + 16))
        {
          v18 = *(type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
          v19 = v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v11;
          v20 = sub_1D2871818();
          v21 = *(v20 - 8);
          (*(v21 + 16))(v9, v19, v20);
          (*(v21 + 56))(v9, 0, 1, v20);
          return sub_1D25A8330(v9);
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D25AA428()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  if (*(v0 + 16) - 5 >= 2)
  {
    if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__keyboardIsAnimating) == 1)
    {
      *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__keyboardIsAnimating) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D28719D8();
    }

    swift_getKeyPath();
    sub_1D28719E8();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused) = 1;
      sub_1D275746C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D25AA5F4(uint64_t result)
{
  if (*(v1 + 21) == (result & 1))
  {
    *(v1 + 21) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D25AA704()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  if (*(v0 + 16) - 5 >= 2)
  {
    swift_getKeyPath();
    v13 = v0;
    sub_1D28719E8();

    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__keyboardIsAnimating;
    if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__keyboardIsAnimating))
    {
      goto LABEL_6;
    }

    sub_1D2872658();
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D226E000, v8, v9, "keyboardDidAnimate should not be called. We did not call 'keyboardIsAnimating' before.", v10, 2u);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (*(v1 + v7))
    {
LABEL_6:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v12 - 2) = v1;
      *(&v12 - 8) = 0;
      v13 = v1;
      sub_1D28719D8();
    }

    else
    {
      *(v1 + v7) = 0;
    }

    swift_getKeyPath();
    v13 = v1;
    sub_1D28719E8();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused) = 0;
      sub_1D275746C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

BOOL sub_1D25AAA0C()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  if (*(v0 + 16))
  {
    swift_getKeyPath();
    sub_1D28719E8();

    if (!*(v0 + 16) || (sub_1D25A3F44() & 1) == 0)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase) != 1)
  {
    return 1;
  }

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  return *(*(v1 + 16) + 16) == 0;
}

uint64_t sub_1D25AABF0()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  return *(v0 + 21);
}

uint64_t sub_1D25AAC90(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D25AADA0(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_1D2870F68();
  v4 = sub_1D25A653C(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D25AAEE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentPreviewGenPriority;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &qword_1EC6D8E60);
  v7 = sub_1D25B9BF0(v5, a1);
  sub_1D22BD238(v5, &qword_1EC6D8E60);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D22D7384(a1, v1 + v6, &qword_1EC6D8E60);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D8E60);
}

uint64_t sub_1D25AB134(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D25AB238(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__precomputedGenerationSeeds[0]);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__precomputedGenerationSeeds[0]) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D25AB3C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__previewIndicesToSavedSeedMap;
  swift_beginAccess();
  if (sub_1D255692C(*(v1 + v3), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D25AB500(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__feedbackPresentedMap;
  swift_beginAccess();
  v4 = sub_1D2870F68();
  v5 = sub_1D25A653C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D25AB650(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1D25B554C(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
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
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1D25AB8E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D25AB9C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1D25ABA94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_1D25ABB6C()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  return *(v0 + 19);
}

uint64_t sub_1D25ABC14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 20);
  return result;
}

uint64_t sub_1D25ABCF4()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  if (v0[20] & 1) != 0 || (swift_getKeyPath(), sub_1D28719E8(), , (v0[17]) || (v1 = *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore], swift_getKeyPath(), sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore), sub_1D28719E8(), , swift_beginAccess(), !*(*(v1 + 16) + 16)) || (swift_getKeyPath(), sub_1D28719E8(), , (v0[18]) || (swift_getKeyPath(), sub_1D28719E8(), , !swift_unknownObjectWeakLoadStrong()))
  {
    v3 = 0;
  }

  else
  {
    v2 = off_1F4DD4840;
    type metadata accessor for EffectViewModel();
    v3 = v2();
    swift_unknownObjectRelease();
  }

  return v3 & 1;
}

uint64_t sub_1D25ABF34()
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D2870F68();
}

uint64_t sub_1D25ABFEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  *a2 = *(v3 + 40);
  return sub_1D2870F68();
}

uint64_t sub_1D25AC0D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
  sub_1D2870F68();
}

uint64_t sub_1D25AC140(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v62 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v62 - v13;
  v15 = sub_1D2871818();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v72 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v62 - v22;
  swift_getKeyPath();
  v82 = v1;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  swift_beginAccess();
  v73 = v24;
  sub_1D22BD1D0(v2 + v24, v14, &qword_1EC6D8F70);
  v25 = v16[6];
  if (v25(v14, 1, v15) == 1)
  {
    return sub_1D22BD238(v14, &qword_1EC6D8F70);
  }

  v27 = v16[4];
  v64 = v16 + 4;
  v63 = v27;
  v27(v23, v14, v15);
  v28 = v16[2];
  v29 = v72;
  v68 = v23;
  v28(v72, v23, v15);
  swift_getKeyPath();
  v66 = v25;
  v81 = v2;
  v71 = v16 + 6;
  sub_1D28719E8();

  v81 = v2;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  sub_1D25B59C8(v21, v29);
  v67 = v16[1];
  v65 = v21;
  v30 = (v16 + 1);
  v67(v21, v15);
  swift_endAccess();
  v81 = v2;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  v81 = v2;
  sub_1D28719E8();

  v31 = v75;
  v32 = *(v74 + 48);
  sub_1D22BD1D0(v2 + v73, v75, &qword_1EC6D8F70);
  v33 = v76;
  sub_1D22BD1D0(v76, v31 + v32, &qword_1EC6D8F70);
  v34 = v66;
  v35 = v66(v31, 1, v15);
  v36 = v31;
  v72 = v30;
  if (v35 != 1)
  {
    v42 = v69;
    sub_1D22BD1D0(v31, v69, &qword_1EC6D8F70);
    v43 = v31 + v32;
    v38 = v34;
    if (v34(v43, 1, v15) != 1)
    {
      v47 = v36 + v32;
      v48 = v65;
      v63(v65, v47, v15);
      sub_1D25B554C(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
      v49 = v36;
      v50 = sub_1D2877F98();
      v41 = v67;
      v67(v48, v15);
      v41(v42, v15);
      sub_1D22BD238(v49, &qword_1EC6D8F70);
      v40 = v68;
      if (v50)
      {
        goto LABEL_16;
      }

LABEL_9:
      sub_1D25ACCE8();
      if (v38(v33, 1, v15) != 1)
      {
        sub_1D23C7CA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D287F500;
        *(inited + 32) = 0x646E496567616D49;
        *(inited + 40) = 0xEA00000000007865;
        sub_1D25A40AC();
        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_1D2878808();
        }

        *(inited + 48) = v46;
        v51 = sub_1D25D6F4C(inited);
        swift_setDeallocating();
        sub_1D22BD238(inited + 32, &qword_1EC6DA198);
        sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000011, 0x80000001D28BB9D0, v51, 1);
      }

      goto LABEL_16;
    }

    v41 = v67;
    v67(v42, v15);
    v40 = v68;
LABEL_8:
    sub_1D22BD238(v36, &qword_1EC6D94F0);
    goto LABEL_9;
  }

  v37 = v31 + v32;
  v38 = v34;
  v39 = v34(v37, 1, v15);
  v40 = v68;
  v41 = v67;
  if (v39 != 1)
  {
    goto LABEL_8;
  }

  sub_1D22BD238(v36, &qword_1EC6D8F70);
LABEL_16:
  sub_1D25ADE74();
  v52 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v81 = v52;
  sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  v53 = swift_beginAccess();
  v54 = *(v52 + 16);
  MEMORY[0x1EEE9AC00](v53);
  *(&v62 - 2) = v40;
  sub_1D2870F68();
  v55 = v80;
  sub_1D274B9EC(sub_1D25BA3EC, v54, v80);

  v56 = v77;
  sub_1D22BD1D0(v55, v77, &qword_1EC6D9490);
  v57 = v79;
  if ((*(v78 + 48))(v56, 1, v79) == 1)
  {
    sub_1D22BD238(v55, &qword_1EC6D9490);
    v55 = v56;
  }

  else
  {
    v58 = v70;
    sub_1D25B9A58(v56, v70, type metadata accessor for ImageGeneration.PreviewImage);
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    if (!*(v58 + *(v57 + 32)))
    {
      sub_1D25D73A0(MEMORY[0x1E69E7CC0]);
    }

    sub_1D22BCFD0(0, &qword_1ED89CDA0);
    sub_1D2870F68();
    v59 = sub_1D2878A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
    v60 = sub_1D2877E78();

    v61 = sub_1D2878068();
    [v59 setObject:v60 forKey:v61];

    sub_1D25B9F7C(v58, type metadata accessor for ImageGeneration.PreviewImage);
  }

  sub_1D22BD238(v55, &qword_1EC6D9490);
  return (v41)(v40, v15);
}

uint64_t sub_1D25ACCE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v106 = &v101 - v3;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v114 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v108 = &v101 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v102 = &v101 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v101 - v12;
  v133 = sub_1D2871818();
  v13 = *(v133 - 8);
  v14 = MEMORY[0x1EEE9AC00](v133);
  v105 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v101 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v101 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v131 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v101 - v21;
  v104 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v23 = *(v104 - 8);
  v24 = MEMORY[0x1EEE9AC00](v104);
  v107 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v103 = &v101 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v101 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v111 = &v101 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v113 = &v101 - v33;
  v34 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v138 = v34;
  sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v35 = *(v34 + 16);
  v127 = *(v35 + 16);
  if (!v127)
  {
LABEL_13:
    v53 = v114;
    sub_1D28726D8();
    v54 = sub_1D2873CA8();
    v55 = sub_1D2878A18();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1D226E000, v54, v55, "Failed to find preview by current ID.", v56, 2u);
      MEMORY[0x1D38A3520](v56, -1, -1);
    }

    return (*(v5 + 8))(v53, v4);
  }

  v134 = v22;
  v110 = v4;
  v109 = v5;
  v128 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel___observationRegistrar;
  v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  v122 = v35 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  sub_1D2870F68();
  v129 = v1;
  v123 = v36;
  result = swift_beginAccess();
  v38 = 0;
  v126 = (v13 + 16);
  v121 = (v13 + 56);
  v39 = (v13 + 48);
  v115 = (v13 + 32);
  v117 = (v13 + 8);
  v40 = v133;
  v41 = v23;
  v120 = v23;
  v125 = v30;
  v124 = v35;
  while (1)
  {
    if (v38 >= *(v35 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D25B9FDC(v122 + *(v41 + 72) * v38, v30, type metadata accessor for ImageGeneration.PreviewImage);
    v42 = v39;
    v43 = v134;
    v118 = *v126;
    v118(v134, v30, v40);
    (*v121)(v43, 0, 1, v40);
    swift_getKeyPath();
    v44 = v129;
    v137 = v129;
    v119 = sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    v45 = *(v132 + 48);
    v46 = v130;
    sub_1D22BD1D0(v43, v130, &qword_1EC6D8F70);
    v47 = v44 + v123;
    v40 = v133;
    sub_1D22BD1D0(v47, v46 + v45, &qword_1EC6D8F70);
    v48 = *v42;
    if ((*v42)(v46, 1, v40) == 1)
    {
      break;
    }

    v49 = v131;
    sub_1D22BD1D0(v46, v131, &qword_1EC6D8F70);
    v39 = v42;
    if (v48(v46 + v45, 1, v40) == 1)
    {
      sub_1D22BD238(v134, &qword_1EC6D8F70);
      (*v117)(v49, v40);
      goto LABEL_4;
    }

    v50 = v116;
    (*v115)(v116, v46 + v45, v40);
    sub_1D25B554C(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
    v51 = sub_1D2877F98();
    v52 = *v117;
    (*v117)(v50, v40);
    sub_1D22BD238(v134, &qword_1EC6D8F70);
    v52(v131, v40);
    v39 = v42;
    sub_1D22BD238(v46, &qword_1EC6D8F70);
    if (v51)
    {

      goto LABEL_17;
    }

LABEL_5:
    ++v38;
    v30 = v125;
    result = sub_1D25B9F7C(v125, type metadata accessor for ImageGeneration.PreviewImage);
    v41 = v120;
    v35 = v124;
    if (v127 == v38)
    {

      v5 = v109;
      v4 = v110;
      goto LABEL_13;
    }
  }

  sub_1D22BD238(v43, &qword_1EC6D8F70);
  v39 = v42;
  if (v48(v46 + v45, 1, v40) != 1)
  {
LABEL_4:
    sub_1D22BD238(v46, &qword_1EC6D94F0);
    goto LABEL_5;
  }

  sub_1D22BD238(v46, &qword_1EC6D8F70);
LABEL_17:
  v57 = v111;
  sub_1D25B9A58(v125, v111, type metadata accessor for ImageGeneration.PreviewImage);
  v58 = v113;
  sub_1D25B9A58(v57, v113, type metadata accessor for ImageGeneration.PreviewImage);
  swift_getKeyPath();
  v59 = v129;
  v137 = v129;
  sub_1D28719E8();

  swift_beginAccess();
  v60 = *(v59 + 40);
  sub_1D2870F68();
  v61 = sub_1D25A5DDC(v58, v60);

  v62 = v109;
  v63 = v112;
  if (v61)
  {
    swift_getKeyPath();
    v136 = v59;
    sub_1D28719E8();

    v64 = v59 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v134 = Strong;
      v132 = *(v64 + 8);
      sub_1D28726D8();
      v66 = v103;
      sub_1D25B9FDC(v58, v103, type metadata accessor for ImageGeneration.PreviewImage);
      v67 = sub_1D2873CA8();
      v68 = sub_1D2878A08();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v136 = v70;
        *v69 = 136315138;
        sub_1D25B554C(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
        v71 = sub_1D28795C8();
        v73 = v72;
        sub_1D25B9F7C(v66, type metadata accessor for ImageGeneration.PreviewImage);
        v74 = sub_1D23D7C84(v71, v73, &v136);

        *(v69 + 4) = v74;
        _os_log_impl(&dword_1D226E000, v67, v68, "Donating preview with id: %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        v75 = v70;
        v58 = v113;
        MEMORY[0x1D38A3520](v75, -1, -1);
        MEMORY[0x1D38A3520](v69, -1, -1);
      }

      else
      {

        sub_1D25B9F7C(v66, type metadata accessor for ImageGeneration.PreviewImage);
      }

      (*(v62 + 8))(v63, v110);
      swift_getKeyPath();
      v136 = v59;
      sub_1D28719E8();

      v93 = v59;
      v94 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__feedbackPresentedMap;
      swift_beginAccess();
      v95 = *(v93 + v94);
      sub_1D2870F68();
      LODWORD(v131) = sub_1D25A5DDC(v58, v95);

      v96 = v105;
      v97 = v133;
      v118(v105, v58, v133);
      swift_getKeyPath();
      v135 = v93;
      sub_1D28719E8();

      v135 = v93;
      swift_getKeyPath();
      sub_1D2871A08();

      swift_beginAccess();
      v98 = v116;
      sub_1D25B59C8(v116, v96);
      (*v117)(v98, v97);
      swift_endAccess();
      v135 = v93;
      swift_getKeyPath();
      sub_1D28719F8();

      ObjectType = swift_getObjectType();
      v100 = v106;
      sub_1D25B9FDC(v58, v106, type metadata accessor for ImageGeneration.PreviewImage);
      (*(v120 + 56))(v100, 0, 1, v104);
      (*(v132 + 72))(v100, (v131 & 1) == 0, ObjectType);
      swift_unknownObjectRelease();
      sub_1D22BD238(v100, &qword_1EC6D9490);
    }

    else
    {
      v89 = v102;
      sub_1D28726D8();
      v90 = sub_1D2873CA8();
      v91 = sub_1D2878A18();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_1D226E000, v90, v91, "Not donating because no delegate is set", v92, 2u);
        MEMORY[0x1D38A3520](v92, -1, -1);
      }

      (*(v62 + 8))(v89, v110);
    }

    v88 = v58;
  }

  else
  {
    v76 = v108;
    sub_1D28726D8();
    v77 = v107;
    sub_1D25B9FDC(v58, v107, type metadata accessor for ImageGeneration.PreviewImage);
    v78 = sub_1D2873CA8();
    v79 = sub_1D2878A18();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v136 = v81;
      *v80 = 136315138;
      sub_1D25B554C(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v82 = sub_1D28795C8();
      v83 = v77;
      v84 = v82;
      v86 = v85;
      sub_1D25B9F7C(v83, type metadata accessor for ImageGeneration.PreviewImage);
      v87 = sub_1D23D7C84(v84, v86, &v136);

      *(v80 + 4) = v87;
      _os_log_impl(&dword_1D226E000, v78, v79, "Preview %s has not been shown to the user yet.", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x1D38A3520](v81, -1, -1);
      MEMORY[0x1D38A3520](v80, -1, -1);
    }

    else
    {

      sub_1D25B9F7C(v77, type metadata accessor for ImageGeneration.PreviewImage);
    }

    (*(v62 + 8))(v76, v110);
    v88 = v58;
  }

  return sub_1D25B9F7C(v88, type metadata accessor for ImageGeneration.PreviewImage);
}