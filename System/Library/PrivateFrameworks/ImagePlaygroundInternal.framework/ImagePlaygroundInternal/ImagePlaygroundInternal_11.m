char *sub_1D23C5540(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1D23C5748()
{
  result = sub_1D2878F18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D23C57B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1D23C5938(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1D23C5B68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D2873758();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D28716D8();
  v10 = CGDataProviderCreateWithCFData(v9);

  if (v10)
  {
    v11 = CGImageSourceCreateWithDataProvider(v10, 0);
    if (v11)
    {
      v12 = v11;
      PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v11);
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v12, PrimaryImageIndex, 0);
      sub_1D22D6D60(a1, a2);

      if (ImageAtIndex)
      {
        *v8 = ImageAtIndex;
        (*(v18 + 104))(v8, *MEMORY[0x1E69E0110], v6);
        (*(v18 + 32))(a3, v8, v6);
        return (*(v18 + 56))(a3, 0, 1, v6);
      }
    }

    else
    {
      sub_1D22D6D60(a1, a2);
    }
  }

  else
  {
    sub_1D22D6D60(a1, a2);
  }

  v16 = *(v18 + 56);

  return v16(a3, 1, 1, v6);
}

void *sub_1D23C5D68()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for PickerEditorView() + 28);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v8 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D23C6A84(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t PickerEditorView.init(viewModel:sceneIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for PickerEditorView();
  v7 = &a3[v6[7]];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  *a3 = a1;
  v8 = v6[5];
  v9 = sub_1D2871E48();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&a3[v8], a2, v9);
  sub_1D2870F78();
  v11 = sub_1D2871E28();
  v12 = &a3[v6[6]];
  *v12 = v11 & 1;
  *(v12 + 1) = 0;
  if (*(a1 + 98) == 1)
  {
    *(a1 + 98) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v17 = &v16;
    MEMORY[0x1EEE9AC00](KeyPath);
    v18 = a1;
    sub_1D23C6974(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  if (*(a1 + 99) == 1)
  {
    (*(v10 + 8))(a2, v9);
    *(a1 + 99) = 1;
  }

  else
  {
    v15 = swift_getKeyPath();
    v17 = &v16;
    MEMORY[0x1EEE9AC00](v15);
    v18 = a1;
    sub_1D23C6974(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
    sub_1D28719D8();

    (*(v10 + 8))(a2, v9);
  }
}

uint64_t type metadata accessor for PickerEditorView()
{
  result = qword_1EC6DAA40;
  if (!qword_1EC6DAA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D23C6210@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PickerEditorView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *v1;
  v8 = sub_1D2870F78();
  PlaygroundHomeView.init(viewModel:)(v8, a1);
  swift_getKeyPath();
  v15[1] = v7;
  sub_1D23C6974(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  LOBYTE(v7) = *(v7 + 74);
  KeyPath = swift_getKeyPath();
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA78) + 36);
  *v10 = KeyPath;
  *(v10 + 8) = v7;
  sub_1D23C6A20(v2, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1D23C6A90(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA68);
  v14 = (a1 + *(result + 36));
  *v14 = sub_1D23C6AF4;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
  return result;
}

void sub_1D23C63EC(uint64_t *a1)
{
  v2 = sub_1D23C5D68();
  if (v2)
  {
    v3 = v2;
    [v2 setLevelsOfUndo_];
  }

  v4 = *a1;
  v5 = sub_1D23C5D68();
  v6 = *(v4 + 104);
  v7 = *(v6 + 16);
  if (v7)
  {
    [v7 removeAllActions];
    v7 = *(v6 + 16);
  }

  *(v6 + 16) = v5;
}

uint64_t sub_1D23C6474@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1D389DD80]();
  *a1 = result;
  return result;
}

uint64_t sub_1D23C64A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23C6974(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 98);
  return result;
}

uint64_t sub_1D23C6590@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23C6974(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 99);
  return result;
}

void sub_1D23C66C4()
{
  type metadata accessor for PlaygroundHomeViewModel();
  if (v0 <= 0x3F)
  {
    sub_1D2871E48();
    if (v1 <= 0x3F)
    {
      sub_1D23C6778();
      if (v2 <= 0x3F)
      {
        sub_1D23C67C8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D23C6778()
{
  if (!qword_1EC6DAA50)
  {
    v0 = sub_1D2877338();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6DAA50);
    }
  }
}

void sub_1D23C67C8()
{
  if (!qword_1ED89DFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAA58);
    v0 = sub_1D28744A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89DFA8);
    }
  }
}

unint64_t sub_1D23C682C()
{
  result = qword_1EC6DAA60;
  if (!qword_1EC6DAA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAA68);
    sub_1D23C68B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DAA60);
  }

  return result;
}

unint64_t sub_1D23C68B8()
{
  result = qword_1EC6DAA70;
  if (!qword_1EC6DAA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAA78);
    sub_1D23C6974(&qword_1EC6DAA80, type metadata accessor for PlaygroundHomeView);
    sub_1D23C69BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DAA70);
  }

  return result;
}

uint64_t sub_1D23C6974(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D23C69BC()
{
  result = qword_1ED89D348;
  if (!qword_1ED89D348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E1DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D348);
  }

  return result;
}

uint64_t sub_1D23C6A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickerEditorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D23C6A84(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D23C6A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickerEditorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D23C6AF4()
{
  v1 = *(type metadata accessor for PickerEditorView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1D23C63EC(v2);
}

uint64_t sub_1D23C6B54()
{
  v1 = type metadata accessor for ExternalProviderInfoManager();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, v8);
    sub_1D22D79FC(v8, &v10);
    swift_endAccess();
    sub_1D22D79FC(&v10, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    swift_endAccess();
    swift_allocObject();
    v6 = sub_1D2870F78();
    v5 = sub_1D2750E24(v6);

    v11 = v1;
    v12 = &off_1F4DD2C30;
    *&v10 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v10, v1);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_1D23C6CA0()
{
  v1 = type metadata accessor for _SystemPhotoLibrary();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, v7);
    sub_1D22D79FC(v7, &v9);
    swift_endAccess();
    sub_1D22D79FC(&v9, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v8;
  }

  else
  {
    swift_endAccess();
    v5 = swift_allocObject();
    *(v5 + 16) = 1;
    v10 = v1;
    v11 = &protocol witness table for _SystemPhotoLibrary;
    *&v9 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v9, v1);
    swift_endAccess();
  }

  return v5;
}

id sub_1D23C6DDC()
{
  v1 = type metadata accessor for _PeopleRetrieval();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, v8);
    sub_1D22D79FC(v8, &v10);
    swift_endAccess();
    sub_1D22D79FC(&v10, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    swift_endAccess();
    v6 = objc_allocWithZone(v1);
    sub_1D2870F78();
    v11 = v1;
    v12 = &off_1F4DCA898;
    *&v10 = sub_1D2557E9C();
    swift_beginAccess();
    v7 = v10;
    sub_1D25CDC34(&v10, v1);
    swift_endAccess();
    return v7;
  }
}

uint64_t sub_1D23C6F18()
{
  v1 = type metadata accessor for GenerativePlaygroundProvider();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, &v8);
    swift_endAccess();
    sub_1D22D79FC(&v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v11;
  }

  else
  {
    swift_endAccess();
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v9 = v1;
    v10 = &off_1F4DC52E8;
    *&v8 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v8, v1);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_1D23C7044()
{
  v1 = type metadata accessor for PersonalizationFeatures();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, &v8);
    swift_endAccess();
    sub_1D22D79FC(&v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v11;
  }

  else
  {
    swift_endAccess();
    v5 = swift_allocObject();
    sub_1D2871DF8();
    *(v5 + 16) = sub_1D2871DE8() & 1;
    *(v5 + 17) = 1;
    sub_1D2871A18();
    v9 = v1;
    v10 = &off_1F4DD7110;
    *&v8 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v8, v1);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_1D23C719C()
{
  v1 = type metadata accessor for PromptElementConceptExtractor();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, &v9);
    swift_endAccess();
    sub_1D22D79FC(&v9, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v12;
  }

  else
  {
    swift_endAccess();
    v5 = swift_allocObject();
    type metadata accessor for VisualSummarizationClient();
    v6 = swift_allocObject();
    sub_1D2873DE8();
    swift_allocObject();
    *(v6 + 24) = sub_1D2873DD8();
    *(v6 + 16) = sub_1D27D8C8C() & 1;
    *(v5 + 16) = v6;
    v10 = v1;
    v11 = &protocol witness table for PromptElementConceptExtractor;
    *&v9 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v9, v1);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_1D23C7314()
{
  v1 = v0;
  v2 = type metadata accessor for _ConditioningImageFactory();
  swift_beginAccess();
  v3 = *(v0 + 16);
  if (*(v3 + 16) && (v4 = sub_1D25D0574(v2), (v5 & 1) != 0))
  {
    sub_1D22D7044(*(v3 + 56) + 40 * v4, &v9);
    swift_endAccess();
    sub_1D22D79FC(&v9, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v12;
  }

  else
  {
    swift_endAccess();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = 0;
    v10 = v2;
    v11 = &protocol witness table for _ConditioningImageFactory;
    *&v9 = v6;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D25CDC34(&v9, v2);
    swift_endAccess();
  }

  return v6;
}

uint64_t sub_1D23C7448()
{
  v1 = v0;
  v2 = type metadata accessor for EffectProgressDurationEstimator();
  swift_beginAccess();
  v3 = *(v0 + 16);
  if (*(v3 + 16) && (v4 = sub_1D25D0574(v2), (v5 & 1) != 0))
  {
    sub_1D22D7044(*(v3 + 56) + 40 * v4, &v9);
    swift_endAccess();
    sub_1D22D79FC(&v9, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v12;
  }

  else
  {
    swift_endAccess();
    v6 = swift_allocObject();
    *(v6 + 32) = 0x80000001D28B3020;
    *(v6 + 40) = 0xD000000000000022;
    *(v6 + 48) = 0x80000001D28B3040;
    *(v6 + 56) = 5;
    *(v6 + 64) = xmmword_1D28848D0;
    *(v6 + 16) = v1;
    *(v6 + 24) = 0xD00000000000001DLL;
    v10 = v2;
    v11 = &off_1F4DD44D8;
    *&v9 = v6;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D25CDC34(&v9, v2);
    swift_endAccess();
  }

  return v6;
}

void *sub_1D23C75E0()
{
  v1 = v0;
  v2 = type metadata accessor for GenericCharacterManager();
  swift_beginAccess();
  v3 = *(v0 + 16);
  if (*(v3 + 16) && (v4 = sub_1D25D0574(v2), (v5 & 1) != 0))
  {
    sub_1D22D7044(*(v3 + 56) + 40 * v4, &v9);
    swift_endAccess();
    sub_1D22D79FC(&v9, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v12;
  }

  else
  {
    swift_endAccess();
    swift_allocObject();
    v6 = sub_1D243735C(v1);
    v10 = v2;
    v11 = &off_1F4DC4FF0;
    *&v9 = v6;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D25CDC34(&v9, v2);
    swift_endAccess();
  }

  return v6;
}

uint64_t sub_1D23C771C()
{
  v1 = type metadata accessor for EmojiImageProvider();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, &v8);
    swift_endAccess();
    sub_1D22D79FC(&v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v11;
  }

  else
  {
    swift_endAccess();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1D25D73C8(MEMORY[0x1E69E7CC0]);
    *(v5 + 24) = 0x4074000000000000;
    v9 = v1;
    v10 = &off_1F4DD8D38;
    *&v8 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v8, v1);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_1D23C7858()
{
  v1 = type metadata accessor for _CuratedPromptsManager();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, &v9);
    swift_endAccess();
    sub_1D22D79FC(&v9, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v12;
  }

  else
  {
    swift_endAccess();
    swift_allocObject();
    v6 = sub_1D2870F78();
    v5 = sub_1D26D5DB8(v6);

    v10 = v1;
    v11 = &protocol witness table for _CuratedPromptsManager;
    *&v9 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v9, v1);
    swift_endAccess();
  }

  return v5;
}

void *sub_1D23C7998()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13[-v2 - 8];
  v4 = type metadata accessor for _FeedbackManager();
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (*(v5 + 16) && (v6 = sub_1D25D0574(v4), (v7 & 1) != 0))
  {
    sub_1D22D7044(*(v5 + 56) + 40 * v6, &v14);
    swift_endAccess();
    sub_1D22D79FC(&v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v17;
  }

  else
  {
    swift_endAccess();
    v8 = swift_allocObject();
    v8[2] = MEMORY[0x1E69E7CD0];
    v8[3] = 0;
    v9 = sub_1D2871CC8();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = objc_allocWithZone(sub_1D2877C58());
    v8[4] = sub_1D2877C48();
    v15 = v4;
    v16 = &protocol witness table for _FeedbackManager;
    *&v14 = v8;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v14, v4);
    swift_endAccess();
  }

  return v8;
}

uint64_t sub_1D23C7B7C()
{
  v1 = type metadata accessor for _AppProtectionManager();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, &v8);
    swift_endAccess();
    sub_1D22D79FC(&v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v11;
  }

  else
  {
    swift_endAccess();
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v9 = v1;
    v10 = &off_1F4DBF678;
    *&v8 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v8, v1);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_1D23C7CE0()
{
  v1 = type metadata accessor for ImageConditioningSuggestionsFetcher();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, &v9);
    swift_endAccess();
    sub_1D22D79FC(&v9, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v12;
  }

  else
  {
    swift_endAccess();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = MEMORY[0x1E69E7CC0];
    *(v5 + 24) = MEMORY[0x1E69E7CC0];
    *(v5 + 32) = v6;
    swift_weakAssign();
    v10 = v1;
    v11 = &off_1F4DC65C0;
    *&v9 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v9, v1);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_1D23C7E2C()
{
  v1 = type metadata accessor for ImageConditioningRepresentationsSource();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, &v8);
    swift_endAccess();
    sub_1D22D79FC(&v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v11;
  }

  else
  {
    swift_endAccess();
    v5 = swift_allocObject();
    *(v5 + 16) = MEMORY[0x1E69E7CC0];
    sub_1D2871A18();
    v9 = v1;
    v10 = &off_1F4DC98D0;
    *&v8 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v8, v1);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_1D23C8018(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = a1(0);
  swift_beginAccess();
  v8 = *(v4 + 16);
  if (*(v8 + 16) && (v9 = sub_1D25D0574(v7), (v10 & 1) != 0))
  {
    sub_1D22D7044(*(v8 + 56) + 40 * v9, &v14);
    swift_endAccess();
    sub_1D22D79FC(&v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v17;
  }

  else
  {
    swift_endAccess();
    swift_allocObject();
    v11 = a3();
    v15 = v7;
    v16 = a4;
    *&v14 = v11;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v14, v7);
    swift_endAccess();
  }

  return v11;
}

void *sub_1D23C8180(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = a1(0);
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_1D25D0574(v4), (v7 & 1) != 0))
  {
    sub_1D22D7044(*(v5 + 56) + 40 * v6, &v12);
    swift_endAccess();
    sub_1D22D79FC(&v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v15;
  }

  else
  {
    swift_endAccess();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E7CC0];
    v8[3] = 0;
    v8[4] = 0;
    v8[2] = v9;
    v13 = v4;
    v14 = a2;
    *&v12 = v8;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v12, v4);
    swift_endAccess();
  }

  return v8;
}

uint64_t sub_1D23C82C4()
{
  v1 = type metadata accessor for RecentStickersFetcher();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, &v8);
    swift_endAccess();
    sub_1D22D79FC(&v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v11;
  }

  else
  {
    swift_endAccess();
    v5 = swift_allocObject();
    sub_1D2877D18();
    *(v5 + 16) = sub_1D2877D08();
    v9 = v1;
    v10 = &off_1F4DC6A00;
    *&v8 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v8, v1);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_1D23C8400()
{
  v1 = type metadata accessor for ImageKeyFaceLoader();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, &v9);
    swift_endAccess();
    sub_1D22D79FC(&v9, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v12;
  }

  else
  {
    swift_endAccess();
    v6 = sub_1D23C6DDC();
    sub_1D23C6CA0();
    swift_allocObject();
    v5 = sub_1D260DDB0(v6);

    v10 = v1;
    v11 = &protocol witness table for ImageKeyFaceLoader;
    *&v9 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v9, v1);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_1D23C8560()
{
  v1 = type metadata accessor for TapToRadarManager();
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1D25D0574(v1), (v4 & 1) != 0))
  {
    sub_1D22D7044(*(v2 + 56) + 40 * v3, &v8);
    swift_endAccess();
    sub_1D22D79FC(&v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    return v11;
  }

  else
  {
    swift_endAccess();
    v5 = swift_allocObject();
    v9 = v1;
    v10 = &protocol witness table for TapToRadarManager;
    *&v8 = v5;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(&v8, v1);
    swift_endAccess();
  }

  return v5;
}

uint64_t ObservableDebugSettings.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v4 = off_1ED8A4930;
  v7[0] = off_1ED8A4930;
  sub_1D2341C90();
  sub_1D28719E8();
  v7[4] = v4;
  sub_1D2870F78();
  v5 = swift_readAtKeyPath();
  (*(*(*(v3 + *MEMORY[0x1E69E6F98] + 8) - 8) + 16))(a2);
  v5(v7, 0);
}

id sub_1D23C87CC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23C8848()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23C8910()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1D23C8994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D23CFFE4(a3, v22 - v9);
  v11 = sub_1D28785F8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_1D2870F78();
  if (v13 == 1)
  {
    sub_1D22BD238(v10, &qword_1EC6D8E60);
  }

  else
  {
    sub_1D28785E8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D28784F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D2878138() + 32;
      sub_1D2870F78();
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1D22BD238(a3, &qword_1EC6D8E60);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D22BD238(a3, &qword_1EC6D8E60);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D23C8C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D23CFFE4(a3, v22 - v9);
  v11 = sub_1D28785F8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_1D2870F78();
  if (v13 == 1)
  {
    sub_1D22BD238(v10, &qword_1EC6D8E60);
  }

  else
  {
    sub_1D28785E8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D28784F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D2878138() + 32;
      sub_1D2870F78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA470);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1D22BD238(a3, &qword_1EC6D8E60);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D22BD238(a3, &qword_1EC6D8E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA470);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t ObservableDebugSettings.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1D23CE49C(a1);

  v4 = *(*(*(v3 + *MEMORY[0x1E69E6F98] + 8) - 8) + 8);

  return v4(a1);
}

id sub_1D23C8F8C()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1D23C900C()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    sub_1D23B7BB8();
    v1 = sub_1D2878A58();
    v2 = sub_1D2878068();
    v3 = [v1 BOOLForKey_];

    return v3;
  }

  return result;
}

id sub_1D23C90A8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23C9124()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23C91A0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23C9228()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1D23C92A4()
{
  type metadata accessor for ObservableDebugSettings(0);
  v0 = swift_allocObject();
  result = sub_1D2871A18();
  qword_1ED8A0608 = v0;
  return result;
}

uint64_t sub_1D23C9314(void *a1)
{
  v1 = *(*(*a1 + *MEMORY[0x1E69E6F98] + 8) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v4 = off_1ED8A4930;
  (*(v1 + 16))(v3);
  v6[1] = v4;
  sub_1D2870F78();
  swift_setAtReferenceWritableKeyPath();
}

void (*ObservableDebugSettings.subscript.modify(void *a1, uint64_t *a2))(uint64_t a1, char a2)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v7 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v4)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[4] = v10;
  ObservableDebugSettings.subscript.getter(a2, v10);
  return sub_1D23C95B4;
}

void sub_1D23C95B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1D2870F78();
    sub_1D23CE49C(v3);

    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1D2870F78();
    sub_1D23CE49C(v4);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DebugSettings.servicesFetcher.getter()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_1D2870F78();
  os_unfair_lock_lock(v1 + 7);
  sub_1D23CEC60(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 7);

  return v3;
}

uint64_t DebugSettings.servicesFetcher.setter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 28));
  sub_1D23CEC78((v1 + 16));
  os_unfair_lock_unlock((v1 + 28));
}

Swift::Void __swiftcall ObservableDebugSettings.deleteAllPredictableSeeds()()
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v0 = *(off_1ED8A4930 + 2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2870F78();
  os_unfair_lock_lock(v0 + 7);
  sub_1D23D0A68(&v0[4], &v2);
  os_unfair_lock_unlock(v0 + 7);

  if (v2)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    sub_1D2870F78();

    sub_1D23BCDCC();
  }
}

Swift::Void __swiftcall ObservableDebugSettings.removeAllPhotoLibraryAssets()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v3 = sub_1D28785F8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1D2878568();
  v4 = sub_1D2878558();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_1D22AE01C(0, 0, v2, &unk_1D2884910, v5);
}

Swift::Void __swiftcall ObservableDebugSettings.deleteAllCharacters()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v3 = *(off_1ED8A4930 + 2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v11 - 2) = sub_1D23D0AB4;
  *(&v11 - 1) = v5;
  sub_1D2870F78();
  os_unfair_lock_lock(v3 + 7);
  sub_1D23D0A68(&v3[4], &v12);
  os_unfair_lock_unlock(v3 + 7);

  v6 = v12;
  if (v12)
  {
    v7 = sub_1D28785F8();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    sub_1D2878568();
    sub_1D2870F78();
    v8 = sub_1D2878558();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v6;
    sub_1D22AE01C(0, 0, v2, &unk_1D2884920, v9);
  }
}

Swift::Void __swiftcall DebugSettings.deleteAllCharacters()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-v2];
  v4 = *(v0 + 16);
  KeyPath = swift_getKeyPath();
  v12 = sub_1D23D0AB4;
  v13 = KeyPath;
  sub_1D2870F78();
  os_unfair_lock_lock(v4 + 7);
  sub_1D23D0A68(&v4[4], &v14);
  os_unfair_lock_unlock(v4 + 7);

  v6 = v14;
  if (v14)
  {
    v7 = sub_1D28785F8();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_1D2878568();
    sub_1D2870F78();
    v8 = sub_1D2878558();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v6;
    sub_1D22AE01C(0, 0, v3, &unk_1D2884928, v9);
  }
}

Swift::Void __swiftcall ObservableDebugSettings.purgeFacePickerCache()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v3 = *(off_1ED8A4930 + 2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v11 - 2) = sub_1D23D0AB4;
  *(&v11 - 1) = v5;
  sub_1D2870F78();
  os_unfair_lock_lock(v3 + 7);
  sub_1D23D0A68(&v3[4], &v12);
  os_unfair_lock_unlock(v3 + 7);

  v6 = v12;
  if (v12)
  {
    v7 = sub_1D28785F8();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    sub_1D2878568();
    sub_1D2870F78();
    v8 = sub_1D2878558();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v6;
    sub_1D23C8994(0, 0, v2, &unk_1D28897C0, v9);
  }
}

Swift::Void __swiftcall DebugSettings.purgeFacePickerCache()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-v2];
  v4 = *(v0 + 16);
  KeyPath = swift_getKeyPath();
  v12 = sub_1D23D0AB4;
  v13 = KeyPath;
  sub_1D2870F78();
  os_unfair_lock_lock(v4 + 7);
  sub_1D23D0A68(&v4[4], &v14);
  os_unfair_lock_unlock(v4 + 7);

  v6 = v14;
  if (v14)
  {
    v7 = sub_1D28785F8();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_1D2878568();
    sub_1D2870F78();
    v8 = sub_1D2878558();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v6;
    sub_1D23C8994(0, 0, v3, &unk_1D2884940, v9);
  }
}

Swift::Void __swiftcall DebugSettings.purgeAllPersonsAttributes()()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_1D2870F78();
  os_unfair_lock_lock(v1 + 7);
  sub_1D23D0A68(&v1[4], &v2);
  os_unfair_lock_unlock(v1 + 7);

  if (v2)
  {
    sub_1D23C8018(type metadata accessor for PersonAttributesManager, 48, sub_1D26127E0, &off_1F4DCD0E8);
    sub_1D260F5FC();
  }
}

Swift::Void __swiftcall ObservableDebugSettings.resetCuratedPromptsDatabase()()
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v0 = *(off_1ED8A4930 + 2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2870F78();
  os_unfair_lock_lock(v0 + 7);
  sub_1D23D0A68(&v0[4], &v2);
  os_unfair_lock_unlock(v0 + 7);

  if (v2)
  {
    sub_1D23C7858();

    _CuratedPromptsManager.resetVectorDatabase()();
  }
}

Swift::Void __swiftcall DebugSettings.resetCuratedPromptsDatabase()()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_1D2870F78();
  os_unfair_lock_lock(v1 + 7);
  sub_1D23D0A68(&v1[4], &v2);
  os_unfair_lock_unlock(v1 + 7);

  if (v2)
  {
    sub_1D23C7858();

    _CuratedPromptsManager.resetVectorDatabase()();
  }
}

Swift::Void __swiftcall ObservableDebugSettings.resetFaceQualityThresholds()()
{
  if (qword_1ED8A4928 == -1)
  {
  }

  else
  {
    swift_once();
  }

  sub_1D23CEF98();
}

uint64_t ObservableDebugSettings.deinit()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal23ObservableDebugSettings___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ObservableDebugSettings.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal23ObservableDebugSettings___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D23CA558()
{
  type metadata accessor for DebugSettings(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA98);
  v1 = swift_allocObject();
  *(v1 + 28) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  result = sub_1D2871A18();
  off_1ED8A4930 = v0;
  return result;
}

uint64_t sub_1D23CA5F8(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return sub_1D2870F78();
}

void sub_1D23CA658(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 28));
  sub_1D23D0A80((v2 + 16));
  os_unfair_lock_unlock((v2 + 28));
}

uint64_t sub_1D23CA6B4()
{
  sub_1D2870F78();
  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_1D23CA708@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8));
  *a3 = result;
  return result;
}

uint64_t sub_1D23CA758(void *a1, uint64_t a2)
{
  sub_1D2870F78();

  *a1 = a2;
  return result;
}

uint64_t (*DebugSettings.servicesFetcher.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  swift_getKeyPath();
  sub_1D2870F78();
  os_unfair_lock_lock(v3 + 7);
  sub_1D23D0A68(&v3[4], &v5);
  a1[2] = 0;
  os_unfair_lock_unlock(v3 + 7);

  *a1 = v5;
  return sub_1D23CA864;
}

uint64_t sub_1D23CA864(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    sub_1D2870F78();
    os_unfair_lock_lock((v2 + 28));
    sub_1D23D0A80((v2 + 16));
    os_unfair_lock_unlock((v2 + 28));
  }

  else
  {
    os_unfair_lock_lock((v2 + 28));
    sub_1D23D0A80((v2 + 16));
    os_unfair_lock_unlock((v2 + 28));
  }
}

uint64_t sub_1D23CA910(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D23D81B8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D23C3EE4(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D23D81B8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id sub_1D23CAA24()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1D23CAAA4()
{
  if (sub_1D23CCDF0())
  {
    return 1;
  }

  return sub_1D23CD0E4();
}

id sub_1D23CAAE4()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1D23CAB68()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    sub_1D23B7BB8();
    v1 = sub_1D2878A58();
    v2 = sub_1D2878068();
    v3 = [v1 BOOLForKey_];

    return v3;
  }

  return result;
}

id sub_1D23CABF8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23CAC74()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23CACF0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1D23CAD6C()
{
  v1 = sub_1D2873CB8();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1D2878568();
  v0[5] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D23CAE5C, v3, v2);
}

uint64_t sub_1D23CAE5C()
{
  if (qword_1EC6D8B40 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D23CAF24;

  return GenerativePlaygroundPhotoLibrary.deleteAllAssets()();
}

uint64_t sub_1D23CAF24()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1D23CB0C8;
  }

  else
  {
    v5 = sub_1D23CB060;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23CB060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23CB0C8()
{
  v1 = v0[9];

  sub_1D2872528();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to delete all assetes with error: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D23CB254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D2878568();
  *(v4 + 24) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23CB2EC, v6, v5);
}

uint64_t sub_1D23CB2EC()
{

  sub_1D23C8018(type metadata accessor for CharacterStorageManager, 104, sub_1D26265FC, &protocol witness table for CharacterStorageManager);
  CharacterStorageManager.deleteAllCharacters()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23CB394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1D2878568();
  v4[4] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D23CB430, v6, v5);
}

uint64_t sub_1D23CB430()
{
  v0[7] = sub_1D23C8400();
  v0[8] = sub_1D2878558();
  v2 = sub_1D28784F8();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D23CB4C4, v2, v1);
}

uint64_t sub_1D23CB4C4()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D23CB558;

  return sub_1D2495E44();
}

uint64_t sub_1D23CB558()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1D23CB764;
  }

  else
  {
    v5 = sub_1D23CB694;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23CB694()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D23CB700, v1, v2);
}

uint64_t sub_1D23CB700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23CB764()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D23CB7D0, v1, v2);
}

uint64_t sub_1D23CB7D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23CB838@<X0>(uint64_t *a1@<X8>)
{
  result = _s23ImagePlaygroundInternal13DebugSettingsC11contextDaysSivg_0();
  *a1 = result;
  return result;
}

void sub_1D23CB860()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878808();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void DebugSettings.contextDays.setter()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878808();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D23CBA08()
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v0 = sub_1D2878808();
  v1 = sub_1D2878068();
  [v2 setValue:v0 forKey:v1];
}

uint64_t sub_1D23CBAD8@<X0>(uint64_t *a1@<X8>)
{
  result = _s23ImagePlaygroundInternal13DebugSettingsC19contextMessageCountSivg_0();
  *a1 = result;
  return result;
}

void sub_1D23CBB00()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878808();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void DebugSettings.contextMessageCount.setter()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878808();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D23CBCA0()
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v0 = sub_1D2878808();
  v1 = sub_1D2878068();
  [v2 setValue:v0 forKey:v1];
}

id sub_1D23CBD68()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23CBDE4()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23CBE60()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23CBEDC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23CBF58()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23CBFD4()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id sub_1D23CC070()
{
  v1 = v0;
  if (os_variant_has_internal_ui() && (sub_1D23B7BB8(), v2 = sub_1D2878A58(), v3 = sub_1D2878068(), v4 = [v2 BOOLForKey_], v2, v3, v4))
  {
    v5 = *(v1 + 16);
    os_unfair_lock_lock((v5 + 28));
    v6 = *(v5 + 24);
    os_unfair_lock_unlock((v5 + 28));
  }

  else
  {
    sub_1D23B7BB8();
    v7 = sub_1D2878A58();
    v8 = sub_1D2878068();
    v6 = [v7 BOOLForKey_];
  }

  return v6;
}

void sub_1D23CC178(char a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 28));
  *(v3 + 24) = a1;
  os_unfair_lock_unlock((v3 + 28));
  sub_1D23B7BB8();
  v4 = sub_1D2878A58();
  v5 = sub_1D28784E8();
  v6 = sub_1D2878068();
  [v4 setValue:v5 forKey:v6];
}

id sub_1D23CC22C()
{
  v1 = v0;
  if (os_variant_has_internal_ui() && (sub_1D23B7BB8(), v2 = sub_1D2878A58(), v3 = sub_1D2878068(), v4 = [v2 BOOLForKey_], v2, v3, v4))
  {
    v5 = *(v1 + 16);
    os_unfair_lock_lock((v5 + 28));
    v6 = *(v5 + 24);
    os_unfair_lock_unlock((v5 + 28));
  }

  else
  {
    sub_1D23B7BB8();
    v7 = sub_1D2878A58();
    v8 = sub_1D2878068();
    v6 = [v7 BOOLForKey_];
  }

  return v6;
}

void sub_1D23CC338(char a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 28));
  *(v3 + 24) = a1;
  os_unfair_lock_unlock((v3 + 28));
  sub_1D23B7BB8();
  v4 = sub_1D2878A58();
  v5 = sub_1D28784E8();
  v6 = sub_1D2878068();
  [v4 setValue:v5 forKey:v6];
}

id sub_1D23CC3EC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1D23CC468@<X0>(_BYTE *a1@<X8>)
{
  result = _s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0();
  *a1 = result & 1;
  return result;
}

void sub_1D23CC494()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void DebugSettings.shouldEnablePromptRewriteForPersonalized.setter()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D23CC614()
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v0 = sub_1D28784E8();
  v1 = sub_1D2878068();
  [v2 setValue:v0 forKey:v1];
}

uint64_t sub_1D23CC6B0@<X0>(_BYTE *a1@<X8>)
{
  result = _s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0();
  *a1 = result & 1;
  return result;
}

void sub_1D23CC6DC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void DebugSettings.shouldEnablePromptRewriteForNonPersonalized.setter()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D23CC85C()
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v0 = sub_1D28784E8();
  v1 = sub_1D2878068();
  [v2 setValue:v0 forKey:v1];
}

uint64_t sub_1D23CC8F8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 1869903201;
  }

  v3 = sub_1D28780A8();

  return v3;
}

uint64_t sub_1D23CC9C0()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    sub_1D23B7BB8();
    v1 = sub_1D2878A58();
    v2 = sub_1D2878068();
    v3 = [v1 BOOLForKey_];

    return v3;
  }

  return result;
}

void sub_1D23CCA50()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  [v0 doubleForKey_];
}

void sub_1D23CCADC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  [v0 doubleForKey_];
}

uint64_t DebugSettings.deinit()
{

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal13DebugSettings___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DebugSettings.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal13DebugSettings___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D23CCC6C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 arguments];

  v2 = sub_1D28783E8();
  v9[0] = 0xD000000000000013;
  v9[1] = 0x80000001D28B3680;
  v8[2] = v9;
  LOBYTE(v1) = sub_1D286430C(sub_1D23D0A98, v8, v2);

  if (v1)
  {
    return 0x70756B636F4DLL;
  }

  sub_1D23B7BB8();
  v4 = sub_1D2878A58();
  v5 = sub_1D2878068();
  v6 = [v4 stringForKey_];

  if (!v6)
  {
    return 0x746C7561666544;
  }

  v7 = sub_1D28780A8();

  return v7;
}

uint64_t sub_1D23CCDF0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

unint64_t sub_1D23CCEF8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 dictionaryForKey_];

  if (!v2 || (v3 = sub_1D2877E98(), v2, v4 = sub_1D24DCAFC(v3), , !v4))
  {
    v4 = sub_1D25D73A0(MEMORY[0x1E69E7CC0]);
  }

  return v4;
}

uint64_t sub_1D23CCFDC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t sub_1D23CD0E4()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t sub_1D23CD1EC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t sub_1D23CD2F4()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t sub_1D23CD3FC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 0;
}

uint64_t sub_1D23CD504()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t sub_1D23CD60C()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t sub_1D23CD714()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 arguments];

    v3 = sub_1D28783E8();
    v9[0] = 0xD000000000000014;
    v9[1] = 0x80000001D28B3190;
    MEMORY[0x1EEE9AC00](v4);
    v8[2] = v9;
    LOBYTE(v2) = sub_1D286430C(sub_1D234ABBC, v8, v3);

    if (v2)
    {
      return 1;
    }

    else
    {
      sub_1D23B7BB8();
      v5 = sub_1D2878A58();
      v6 = sub_1D2878068();
      v7 = [v5 BOOLForKey_];

      return v7;
    }
  }

  return result;
}

id sub_1D23CD888()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
    sub_1D22BD238(v10, &qword_1EC6E1900);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_1D22BD238(v10, &qword_1EC6E1900);
    v3 = sub_1D2878A58();
    v4 = sub_1D2878808();
    v5 = sub_1D2878068();
    [v3 setValue:v4 forKey:v5];
  }

  v6 = sub_1D2878A58();
  v7 = sub_1D2878068();
  v8 = [v6 integerForKey_];

  return v8;
}

id sub_1D23CD9F8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
    sub_1D22BD238(v10, &qword_1EC6E1900);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_1D22BD238(v10, &qword_1EC6E1900);
    v3 = sub_1D2878A58();
    v4 = sub_1D2878808();
    v5 = sub_1D2878068();
    [v3 setValue:v4 forKey:v5];
  }

  v6 = sub_1D2878A58();
  v7 = sub_1D2878068();
  v8 = [v6 integerForKey_];

  return v8;
}

uint64_t sub_1D23CDB68()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 arguments];

  v2 = sub_1D28783E8();
  v8[0] = 0xD000000000000020;
  v8[1] = 0x80000001D28B3620;
  v7[2] = v8;
  LOBYTE(v1) = sub_1D286430C(sub_1D23D0A98, v7, v2);

  if (v1)
  {
    return 1;
  }

  sub_1D23B7BB8();
  v4 = sub_1D2878A58();
  v5 = sub_1D2878068();
  v6 = [v4 BOOLForKey_];

  return v6;
}

uint64_t sub_1D23CDCA0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

void sub_1D23CDDAC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 stringForKey_];

  if (v2)
  {
    v3 = sub_1D28780A8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = HIBYTE(v5) & 0xF;
  v7 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v35 = 0;
    sub_1D23BDD70(v3, v5, 10);
    goto LABEL_66;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v34[0] = v3;
    v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    if (v3 == 43)
    {
      if (v6)
      {
        if (--v6)
        {
          v23 = 0;
          v24 = v34 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v6)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_73;
    }

    if (v3 != 45)
    {
      if (v6)
      {
        v30 = 0;
        v31 = v34;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v6)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v6)
    {
      if (--v6)
      {
        v15 = 0;
        v16 = v34 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v6)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }
  }

  else
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v9 = sub_1D2879208();
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v19 = 0;
          if (v9)
          {
            v20 = v9 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_64;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_64;
              }

              v19 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_64;
              }

              ++v20;
              if (!--v6)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_72;
    }

    if (v10 != 45)
    {
      if (v7)
      {
        v27 = 0;
        if (v9)
        {
          while (1)
          {
            v28 = *v9 - 48;
            if (v28 > 9)
            {
              goto LABEL_64;
            }

            v29 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_64;
            }

            v27 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_64;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      LOBYTE(v6) = 1;
      goto LABEL_65;
    }

    if (v7 >= 1)
    {
      v6 = v7 - 1;
      if (v7 != 1)
      {
        v11 = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_64;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_64;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_64;
            }

            ++v12;
            if (!--v6)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v6) = 0;
LABEL_65:
        v35 = v6;
LABEL_66:

        return;
      }

      goto LABEL_64;
    }

    __break(1u);
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

void sub_1D23CE124()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 stringForKey_];

  if (v2)
  {
    v3 = sub_1D28780A8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = HIBYTE(v5) & 0xF;
  v7 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v35 = 0;
    sub_1D23BDD70(v3, v5, 10);
    goto LABEL_66;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v34[0] = v3;
    v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    if (v3 == 43)
    {
      if (v6)
      {
        if (--v6)
        {
          v23 = 0;
          v24 = v34 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v6)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_73;
    }

    if (v3 != 45)
    {
      if (v6)
      {
        v30 = 0;
        v31 = v34;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v6)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v6)
    {
      if (--v6)
      {
        v15 = 0;
        v16 = v34 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v6)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }
  }

  else
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v9 = sub_1D2879208();
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v19 = 0;
          if (v9)
          {
            v20 = v9 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_64;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_64;
              }

              v19 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_64;
              }

              ++v20;
              if (!--v6)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_72;
    }

    if (v10 != 45)
    {
      if (v7)
      {
        v27 = 0;
        if (v9)
        {
          while (1)
          {
            v28 = *v9 - 48;
            if (v28 > 9)
            {
              goto LABEL_64;
            }

            v29 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_64;
            }

            v27 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_64;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      LOBYTE(v6) = 1;
      goto LABEL_65;
    }

    if (v7 >= 1)
    {
      v6 = v7 - 1;
      if (v7 != 1)
      {
        v11 = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_64;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_64;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_64;
            }

            ++v12;
            if (!--v6)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v6) = 0;
LABEL_65:
        v35 = v6;
LABEL_66:

        return;
      }

      goto LABEL_64;
    }

    __break(1u);
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_1D23CE49C(uint64_t a1)
{
  if (qword_1ED8A4928 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1D2341C90();
  return sub_1D28719D8();
}

uint64_t sub_1D23CE580()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t sub_1D23CE688()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 0;
}

uint64_t sub_1D23CE790()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 arrayForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D28783E8();

  v4 = sub_1D23CA910(v3);

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = MEMORY[0x1E69E7CC0];
  v6 = sub_1D23D86EC(0, v5, 0);
  v7 = v15;
  v8 = (v4 + 40);
  do
  {
    v10 = *(v8 - 1);
    v9 = *v8;
    MEMORY[0x1EEE9AC00](v6);
    if ((v9 & 0x1000000000000000) != 0)
    {
LABEL_18:
      sub_1D2870F68();
      sub_1D2879138();
      goto LABEL_14;
    }

    if ((v9 & 0x2000000000000000) != 0)
    {
      sub_1D2870F68();
      if (v10 >= 0x21u || ((0x100003E01uLL >> v10) & 1) == 0)
      {
LABEL_13:
        _swift_stdlib_strtof_clocale();
      }
    }

    else
    {
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v11 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      sub_1D2870F68();
      if (v11 >= 0x21 || ((0x100003E01uLL >> v11) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_14:

    v13 = *(v15 + 16);
    v12 = *(v15 + 24);
    if (v13 >= v12 >> 1)
    {
      v6 = sub_1D23D86EC((v12 > 1), v13 + 1, 1);
    }

    *(v15 + 16) = v13 + 1;
    *(v15 + 4 * v13 + 32) = 0;
    v8 += 2;
    --v5;
  }

  while (v5);

  return v7;
}

uint64_t _s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t _s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t sub_1D23CEC90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BDFF8;

  return sub_1D23CAD6C();
}

uint64_t sub_1D23CED3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D23CB254(a1, v4, v5, v6);
}

uint64_t sub_1D23CEDF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D23CB254(a1, v4, v5, v6);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D23CEEE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D23CB394(a1, v4, v5, v6);
}

void sub_1D23CEF98()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878788();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];

  v3 = sub_1D2878A58();
  v4 = sub_1D2878788();
  v5 = sub_1D2878068();
  [v3 setValue:v4 forKey:v5];
}

uint64_t sub_1D23CF0A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *sub_1D23CF0EC()
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D23D81B8(0, 6, 0);
  v0 = 0;
  v1 = v13;
  do
  {
    v2 = byte_1F4DBDCE8[v0 + 32];
    if (v2 == 4)
    {
      v3 = 0x646574746556;
    }

    else
    {
      v3 = 1869440324;
    }

    if (v2 == 4)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (v2 == 3)
    {
      v3 = 0x70756B636F4DLL;
      v4 = 0xE600000000000000;
    }

    if (v2 == 1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x726576726553;
    }

    if (v2 == 1)
    {
      v6 = 0x80000001D28AE710;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (!byte_1F4DBDCE8[v0 + 32])
    {
      v5 = 0x6369766544206E4FLL;
      v6 = 0xE900000000000065;
    }

    if (byte_1F4DBDCE8[v0 + 32] <= 2u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (byte_1F4DBDCE8[v0 + 32] <= 2u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v14 = v1;
    v10 = *(v1 + 16);
    v9 = *(v1 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1D23D81B8((v9 > 1), v10 + 1, 1);
      v1 = v14;
    }

    ++v0;
    *(v1 + 16) = v10 + 1;
    v11 = v1 + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
  }

  while (v0 != 6);
  sub_1D274DC9C(v1);
  return &unk_1F4DBDCB8;
}

void sub_1D23CF2B4()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 arguments];

  v2 = sub_1D28783E8();
  v7[0] = 0xD000000000000013;
  v7[1] = 0x80000001D28B3680;
  v6[2] = v7;
  LOBYTE(v1) = sub_1D286430C(sub_1D23D0A98, v6, v2);

  if (v1)
  {
  }

  else
  {
    sub_1D23B7BB8();
    v3 = sub_1D2878A58();
    v4 = sub_1D2878068();

    v5 = sub_1D2878068();
    [v3 setValue:v4 forKey:v5];
  }
}

void sub_1D23CF414()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 arguments];

  v2 = sub_1D28783E8();
  v7[0] = 0xD000000000000014;
  v7[1] = 0x80000001D28B3190;
  v6[2] = v7;
  LOBYTE(v1) = sub_1D286430C(sub_1D23D0A98, v6, v2);

  if ((v1 & 1) == 0)
  {
    sub_1D23B7BB8();
    v3 = sub_1D2878A58();
    v4 = sub_1D28784E8();
    v5 = sub_1D2878068();
    [v3 setValue:v4 forKey:v5];
  }
}

uint64_t sub_1D23CF554()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

void sub_1D23CF65C()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];

  v3 = sub_1D2878A58();
  v4 = sub_1D28784E8();
  v5 = sub_1D2878068();
  [v3 setValue:v4 forKey:v5];
}

uint64_t sub_1D23CF768()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t sub_1D23CF870()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t sub_1D23CF978()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t _s23ImagePlaygroundInternal13DebugSettingsC11contextDaysSivg_0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
    sub_1D22BD238(v7, &qword_1EC6E1900);
    v3 = sub_1D2878A58();
    v4 = sub_1D2878068();
    v5 = [v3 integerForKey_];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_1D22BD238(v7, &qword_1EC6E1900);
    return 2;
  }

  return v5;
}

uint64_t _s23ImagePlaygroundInternal13DebugSettingsC19contextMessageCountSivg_0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
    sub_1D22BD238(v7, &qword_1EC6E1900);
    v3 = sub_1D2878A58();
    v4 = sub_1D2878068();
    v5 = [v3 integerForKey_];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_1D22BD238(v7, &qword_1EC6E1900);
    return 10;
  }

  return v5;
}

uint64_t sub_1D23CFD00()
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

uint64_t sub_1D23CFDD0()
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D23CFEA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D23CFF00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *sub_1D23CFF64@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1D23CFFE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23D0054()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 0;
}

uint64_t sub_1D23D0160()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 0;
}

uint64_t sub_1D23D0268()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 0;
}

void sub_1D23D0370()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 stringForKey_];

  if (v2)
  {
    v3 = sub_1D28780A8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = HIBYTE(v5) & 0xF;
  v7 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v35 = 0;
    sub_1D23BDD70(v3, v5, 10);
    goto LABEL_66;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v34[0] = v3;
    v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    if (v3 == 43)
    {
      if (v6)
      {
        if (--v6)
        {
          v23 = 0;
          v24 = v34 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v6)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_73;
    }

    if (v3 != 45)
    {
      if (v6)
      {
        v30 = 0;
        v31 = v34;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v6)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v6)
    {
      if (--v6)
      {
        v15 = 0;
        v16 = v34 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v6)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }
  }

  else
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v9 = sub_1D2879208();
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v19 = 0;
          if (v9)
          {
            v20 = v9 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_64;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_64;
              }

              v19 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_64;
              }

              ++v20;
              if (!--v6)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_72;
    }

    if (v10 != 45)
    {
      if (v7)
      {
        v27 = 0;
        if (v9)
        {
          while (1)
          {
            v28 = *v9 - 48;
            if (v28 > 9)
            {
              goto LABEL_64;
            }

            v29 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_64;
            }

            v27 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_64;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      LOBYTE(v6) = 1;
      goto LABEL_65;
    }

    if (v7 >= 1)
    {
      v6 = v7 - 1;
      if (v7 != 1)
      {
        v11 = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_64;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_64;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_64;
            }

            ++v12;
            if (!--v6)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v6) = 0;
LABEL_65:
        v35 = v6;
LABEL_66:

        return;
      }

      goto LABEL_64;
    }

    __break(1u);
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

double sub_1D23D06E8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 0.5;
}

uint64_t sub_1D23D07F0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
    return 0;
  }

  return result;
}

uint64_t sub_1D23D08F8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D22BD238(v7, &qword_1EC6E1900);
  }

  return 1;
}

uint64_t sub_1D23D0A00(void *a1)
{
  v3 = *(v1 + 16);
  sub_1D2870F78();

  *a1 = v3;
  return result;
}

uint64_t sub_1D23D0AB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23D45A0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1D23D0B98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23D45A0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask);
  return sub_1D2870F78();
}

uint64_t sub_1D23D0C78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D23D45A0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending);
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending + 8);
  v7 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending + 16);
  v6 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending + 24);
  if (v5)
  {
    v8 = *(v6 + 16);
    v9 = *(v6 + 24);
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = v7;
    v10[5] = v6;
    swift_unknownObjectRetain();
    v11 = &unk_1D2881FC8;
    v12 = v4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  *a2 = v12;
  a2[1] = v5;
  a2[2] = v11;
  a2[3] = v10;
  return sub_1D2340C14(v4, v5);
}

uint64_t sub_1D23D0DAC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D22BC8FC;

  return v7();
}

uint64_t sub_1D23D0E94(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = swift_allocObject();
    v7[2] = v5;
    v7[3] = v6;
    v7[4] = v3;
    v7[5] = v4;
    swift_unknownObjectRetain();
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2340C14(v2, v1);
  sub_1D23D45A0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();
  sub_1D22FD944(v8, v1);
}

uint64_t sub_1D23D1030(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D22BDFF8;

  return v6();
}

uint64_t EditorView.init(composingViewModel:composingDelegate:gridViewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAA0);
  sub_1D28772F8();
  *(a4 + 32) = 0;
  if (qword_1ED8A0600 != -1)
  {
    swift_once();
  }

  type metadata accessor for ObservableDebugSettings(0);
  sub_1D2870F78();
  sub_1D28772F8();
  *(a4 + 56) = v15;
  *(a4 + 64) = v16;
  *(a4 + 72) = swift_getKeyPath();
  *(a4 + 80) = 0;
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  *(a4 + 88) = qword_1EC6E3B98;
  *a4 = a1;
  *(a4 + 8) = 0;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();

  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  type metadata accessor for HomeAnimationCoordinator();
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  v10 = sub_1D2871818();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
  v11 = (v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
  *v12 = 0xD000000000000025;
  v12[1] = 0x80000001D28B37F0;
  sub_1D2871A18();

  *(a4 + 40) = v8;
  *(a4 + 48) = 0;
  v13 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
  swift_beginAccess();
  *(v13 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t EditorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAA8);
  MEMORY[0x1EEE9AC00](v47);
  v3 = &v44 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAB0);
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - v6;
  v7 = v1[3];
  *v65 = v1[2];
  *&v65[16] = v7;
  v8 = v1[5];
  v66 = v1[4];
  v67 = v8;
  v9 = v1[1];
  v63 = *v1;
  v64 = v9;
  v52 = &v63;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAB8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAC0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAC8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAD0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0);
  v14 = sub_1D23D47D8(&qword_1EC6D7DC8, &qword_1EC6DAAC8, &unk_1D2884AC8, sub_1D23D4344);
  v15 = sub_1D22BD06C();
  v16 = sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  v17 = sub_1D23D4398();
  *&v55 = v10;
  *(&v55 + 1) = MEMORY[0x1E69E6158];
  v56 = v11;
  v57 = v12;
  v58 = v13;
  v59 = v14;
  v60 = v15;
  v61 = v16;
  v62 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v55 = v44;
  *(&v55 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1D2874F78();
  v19 = swift_allocObject();
  v20 = *&v65[16];
  *(v19 + 3) = *v65;
  *(v19 + 4) = v20;
  v21 = v67;
  *(v19 + 5) = v66;
  *(v19 + 6) = v21;
  v22 = v64;
  *(v19 + 1) = v63;
  *(v19 + 2) = v22;
  v23 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD8) + 36)];
  v24 = v3;
  v45 = v3;
  *v23 = sub_1D23D4414;
  v23[1] = v19;
  v23[2] = 0;
  v23[3] = 0;
  v25 = swift_allocObject();
  v26 = *&v65[16];
  v25[3] = *v65;
  v25[4] = v26;
  v27 = v67;
  v25[5] = v66;
  v25[6] = v27;
  v28 = v64;
  v25[1] = v63;
  v25[2] = v28;
  v29 = v47;
  v30 = &v24[*(v47 + 36)];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = v63;
  v68 = v63;
  *(v30 + 2) = sub_1D23D441C;
  *(v30 + 3) = v25;
  v53 = v31;
  sub_1D23D4424(&v63, &v55);
  sub_1D23D4424(&v63, &v55);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877328();
  v32 = v55;
  v33 = v56;
  swift_getKeyPath();
  v55 = v32;
  v56 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE8);
  sub_1D2877508();

  v34 = v54;

  v35 = sub_1D23D445C();
  v36 = v48;
  v37 = v45;
  sub_1D28766E8();

  sub_1D227B70C(v37);
  v55 = *&v65[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB10);
  sub_1D2877308();
  type metadata accessor for HomeAnimationCoordinator();
  *&v55 = v29;
  *(&v55 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  sub_1D23D45A0(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  v38 = v51;
  v39 = v49;
  sub_1D28767E8();

  (*(v50 + 8))(v36, v39);
  v55 = v68;
  sub_1D2877308();
  v40 = v53;
  swift_getKeyPath();
  *&v55 = v40;
  sub_1D23D45A0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  LOBYTE(v16) = *(v40 + 40);

  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB18);
  v43 = v38 + *(result + 36);
  *v43 = KeyPath;
  *(v43 + 8) = v16;
  return result;
}

uint64_t sub_1D23D19D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAC0);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v28 - v5;
  v46 = *a1;
  v36 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v6 = v47;
  v31 = sub_1D28779E8();
  KeyPath = swift_getKeyPath();
  LOBYTE(v44[0]) = 0;
  LOBYTE(v47) = 0;
  sub_1D28772F8();
  v29 = v36;
  v28 = *(&v36 + 1);
  v7 = swift_getKeyPath();
  v45 = 0;
  *&v47 = v6;
  type metadata accessor for ComposingViewModel(0);
  sub_1D28772F8();
  v8 = v36;
  v9 = v44[0];
  v10 = v45;
  v36 = v46;
  sub_1D2877308();
  v11 = v47;
  swift_getKeyPath();
  *&v36 = v11;
  sub_1D23D45A0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  LOBYTE(v6) = *(v11 + 40);

  v12 = swift_getKeyPath();
  v47 = v8;
  v48 = v31;
  v49 = KeyPath;
  v50 = v9;
  v51 = v29;
  v52 = v28;
  v53 = v7;
  v54 = v10;
  *v55 = v36;
  *&v55[3] = *(&v36 + 3);
  v56 = v12;
  v57 = v6;
  sub_1D28191DC(*(a1 + 88));
  sub_1D22BD238(&v47, &qword_1EC6DAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA8);
  sub_1D2873AA8();
  *(swift_allocObject() + 16) = xmmword_1D287F500;
  sub_1D2873A68();
  v44[3] = &type metadata for EditorView;
  v44[4] = sub_1D23D4E58();
  v13 = swift_allocObject();
  v44[0] = v13;
  v14 = *(a1 + 48);
  v13[3] = *(a1 + 32);
  v13[4] = v14;
  v15 = *(a1 + 80);
  v13[5] = *(a1 + 64);
  v13[6] = v15;
  v16 = *(a1 + 16);
  v13[1] = *a1;
  v13[2] = v16;
  sub_1D23D4424(a1, &v36);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAC8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAD0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0);
  v21 = sub_1D23D47D8(&qword_1EC6D7DC8, &qword_1EC6DAAC8, &unk_1D2884AC8, sub_1D23D4344);
  v22 = sub_1D22BD06C();
  v23 = sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  v24 = sub_1D23D4398();
  *&v36 = v17;
  *(&v36 + 1) = MEMORY[0x1E69E6158];
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v43 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v35;
  v26 = v32;
  sub_1D2876E88();

  (*(v33 + 8))(v25, v26);
  return __swift_destroy_boxed_opaque_existential_0(v44);
}

void sub_1D23D1E94(__int128 *a1)
{
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v6 = v14;
  BYTE8(v15) = *(a1 + 80);
  v7 = *(a1 + 9);
  *&v15 = v7;
  if (BYTE8(v15) == 1)
  {
    v8 = v7;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v9 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22BD238(&v15, &qword_1EC6DAB38);
    (*(v3 + 8))(v5, v2);
    v7 = v14;
  }

  v10 = *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager];
  v11 = *(v10 + 16);
  if (v11)
  {
    [v11 removeAllActions];
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
  }

  *(v10 + 16) = v7;
}

uint64_t sub_1D23D2070()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  sub_1D22F7E14();

  sub_1D27567B0();
}

uint64_t sub_1D23D20E0@<X0>(void *a1@<X8>)
{
  v2 = sub_1D23C7998()[4];

  *a1 = v2;
  return result;
}

void sub_1D23D2138(void **a1)
{
  v1 = *a1;
  v2 = sub_1D23C7998();
  v4 = v2[4];
  v2[4] = v1;
  v3 = v1;
}

uint64_t EditorView.validateDrop(info:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v0 = sub_1D2300444();

  if ((v0 & 1) != 0 && (v1 = *(sub_1D2877668() + 16), , !v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA8);
    sub_1D2873AA8();
    *(swift_allocObject() + 16) = xmmword_1D287F500;
    sub_1D2873A68();
    v2 = sub_1D2877678();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t EditorView.performDrop(info:)()
{
  v38 = sub_1D2871818();
  v37 = *(v38 - 8);
  v1 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - v4;
  v5 = v0[2];
  v6 = v0[4];
  v7 = v0[5];
  v44 = v0[3];
  v45 = v6;
  v46 = v7;
  v8 = v0[1];
  v41 = *v0;
  v42 = v8;
  v43 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA8);
  sub_1D2873AA8();
  v9 = swift_allocObject();
  v35 = xmmword_1D287F500;
  *(v9 + 16) = xmmword_1D287F500;
  sub_1D2873A68();
  v10 = sub_1D2877678();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  *(swift_allocObject() + 16) = v35;
  sub_1D2873A68();
  v11 = sub_1D2877658();

  if (v11 >> 62)
  {
    result = sub_1D2879368();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:

    return 0;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1D38A1C30](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;

  v15 = v36;
  sub_1D2871808();
  v39[0] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
  sub_1D2877308();
  v16 = v40;
  v34 = sub_1D28717B8();
  *&v35 = v17;
  v18 = v37;
  v19 = v38;
  (*(v37 + 16))(v2, v15, v38);
  sub_1D2878568();
  v20 = v14;
  sub_1D23D4424(&v41, v39);
  v21 = sub_1D2878558();
  v22 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v23 = (v1 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 2) = v21;
  *(v24 + 3) = v25;
  *(v24 + 4) = v20;
  (*(v18 + 32))(&v24[v22], v2, v19);
  v26 = &v24[v23];
  v27 = v44;
  v28 = v45;
  v29 = v42;
  *(v26 + 2) = v43;
  *(v26 + 3) = v27;
  v30 = v46;
  *(v26 + 4) = v28;
  *(v26 + 5) = v30;
  *v26 = v41;
  *(v26 + 1) = v29;
  swift_getKeyPath();
  *&v39[0] = v16;
  sub_1D23D45A0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask))
  {
    KeyPath = swift_getKeyPath();
    v33 = &v33;
    MEMORY[0x1EEE9AC00](KeyPath);
    v32 = v34;
    *(&v33 - 6) = v16;
    *(&v33 - 5) = v32;
    *(&v33 - 4) = v35;
    *(&v33 - 3) = &unk_1D2884B98;
    *(&v33 - 2) = v24;
    *&v39[0] = v16;
    sub_1D2870F78();
    sub_1D2870F68();
    sub_1D2870F78();
    sub_1D28719D8();

    sub_1D28786B8();
  }

  else
  {
    sub_1D230EA90(v34, v35, &unk_1D2884B98, v24);
  }

  (*(v37 + 8))(v36, v38);
  return 1;
}

uint64_t sub_1D23D28C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v5[5] = sub_1D2878568();
  v5[6] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D23D2960, v7, v6);
}

uint64_t sub_1D23D2960()
{
  v1 = *(v0 + 32);
  type metadata accessor for Canceller();
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = sub_1D2878558();
  *(v0 + 88) = v4;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1D23D2A94;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v5, &unk_1D2884D98, v3, sub_1D23D4AF0, v2, v4, v6, v7);
}

void sub_1D23D2A94()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);

    MEMORY[0x1EEE6DFA0](sub_1D23D2BD4, v3, v4);
  }
}

uint64_t sub_1D23D2BD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23D2C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_1D2878568();
  v5[8] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D23D2CE4, v7, v6);
}

uint64_t sub_1D23D2CE4()
{
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  v1 = sub_1D2878558();
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = v9;
  *(v2 + 32) = v8;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1D23D2E00;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, v1, v5, 0xD000000000000012, 0x80000001D28B3820, sub_1D23D4AF4, v2, v6);
}

uint64_t sub_1D23D2E00()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D23D2F60, v3, v2);
}

uint64_t sub_1D23D2F60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23D2FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v33 = a4;
  v34 = a2;
  v29 = a1;
  v30 = a3;
  v6 = sub_1D2871818();
  v27 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v26 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = sub_1D2873AA8();
  v31 = *(v14 - 8);
  v32 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2873A68();
  (*(v10 + 16))(v13, v29, v9);
  (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v6);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v17, v13, v26);
  (*(v7 + 32))(v20 + v18, v28, v27);
  *(v20 + v19) = v33;
  v21 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = a5[1];
  *v21 = *a5;
  v21[1] = v22;
  v23 = a5[5];
  v21[4] = a5[4];
  v21[5] = v23;
  v24 = a5[3];
  v21[2] = a5[2];
  v21[3] = v24;
  sub_1D2870F78();
  sub_1D23D4424(a5, v35);

  return (*(v31 + 8))(v16, v32);
}

uint64_t sub_1D23D32D4(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a7;
  v63 = a4;
  v64 = a6;
  v57 = a3;
  v58 = a5;
  v9 = sub_1D2873CB8();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v13 = *(v12 - 8);
  v59 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - v14;
  v16 = sub_1D2871818();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  if (a2 >> 60 == 15)
  {
    sub_1D28724A8();
    v21 = v57;
    v22 = v57;
    v23 = sub_1D2873CA8();
    v24 = sub_1D2878A18();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      if (v21)
      {
        v27 = v21;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = v28;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      *(v25 + 4) = v28;
      *v26 = v29;
      _os_log_impl(&dword_1D226E000, v23, v24, "Cannot get data for dropped image: %@", v25, 0xCu);
      sub_1D22BD238(v26, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v26, -1, -1);
      MEMORY[0x1D38A3520](v25, -1, -1);
    }

    (*(v61 + 8))(v11, v62);
    return sub_1D2878518();
  }

  else
  {
    v30 = &v52 - v20;
    v56 = &v52 - v20;
    v31 = sub_1D28785F8();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = *(v17 + 16);
    v54 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = v16;
    v32(v54, v58, v16);
    v33 = *(v13 + 16);
    v55 = v15;
    v33(v15, v63, v12);
    sub_1D2878568();
    sub_1D22D6CE4(a1, a2);
    sub_1D22D6CE4(a1, a2);
    sub_1D2870F78();
    v34 = v60;
    sub_1D23D4424(v60, v65);
    v63 = sub_1D2878558();
    v35 = (*(v17 + 80) + 48) & ~*(v17 + 80);
    v36 = (v18 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = v12;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = a1;
    v39 = a2;
    v40 = (*(v13 + 80) + v37 + 96) & ~*(v13 + 80);
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E85E0];
    *(v41 + 2) = v63;
    *(v41 + 3) = v42;
    v62 = v38;
    v63 = v39;
    *(v41 + 4) = v38;
    *(v41 + 5) = v39;
    v43 = v64;
    (*(v17 + 32))(&v41[v35], v54, v53);
    *&v41[v36] = v43;
    v44 = &v41[v37];
    v45 = v34[1];
    *v44 = *v34;
    *(v44 + 1) = v45;
    v46 = v34[5];
    *(v44 + 4) = v34[4];
    *(v44 + 5) = v46;
    v47 = v34[3];
    *(v44 + 2) = v34[2];
    *(v44 + 3) = v47;
    (*(v13 + 32))(&v41[v40], v55, v61);
    v48 = sub_1D22AE01C(0, 0, v56, &unk_1D2884DB0, v41);
    sub_1D2870F78();
    os_unfair_lock_lock((v43 + 16));
    if (*(v43 + 40))
    {
      os_unfair_lock_unlock((v43 + 16));
      sub_1D28786B8();
    }

    else
    {
      v49 = *(v43 + 24);
      v50 = *(v43 + 32);
      *(v43 + 24) = sub_1D23D4DD0;
      *(v43 + 32) = v48;
      sub_1D2870F78();
      sub_1D22D7900(v49, v50);
      os_unfair_lock_unlock((v43 + 16));
    }

    return sub_1D22D6D4C(v62, v63);
  }
}

uint64_t sub_1D23D3894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = sub_1D2873CB8();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v10 = sub_1D2871818();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v8[17] = swift_task_alloc();
  v8[18] = sub_1D2878568();
  v8[19] = sub_1D2878558();
  v12 = sub_1D28784F8();
  v8[20] = v12;
  v8[21] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D23D3A24, v12, v11);
}

uint64_t sub_1D23D3A24()
{
  v1 = v0[6];
  v2 = v0[5];
  (*(v0[15] + 16))(v0[16], v0[7], v0[14]);
  sub_1D22D6CF8(v2, v1);
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1D23D3AEC;
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[5];
  v7 = v0[6];

  return sub_1D262ADFC(v4, v6, v7, v5, 0);
}

uint64_t sub_1D23D3AEC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_1D23D4124;
  }

  else
  {
    v5 = sub_1D23D3C28;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23D3C28()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 16));
  if (v2)
  {
    sub_1D23D4DFC(*(v0 + 136));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
    sub_1D2878518();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 16) = **(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0);
    sub_1D2877308();
    *(v0 + 192) = *(v0 + 32);
    *(v0 + 200) = sub_1D2878558();
    v6 = sub_1D28784F8();
    *(v0 + 208) = v6;
    *(v0 + 216) = v5;

    return MEMORY[0x1EEE6DFA0](sub_1D23D3D94, v6, v5);
  }
}

uint64_t sub_1D23D3D94()
{
  v1 = v0[24];
  v2 = v0[17];
  v3 = sub_1D2878558();
  v0[28] = v3;
  v4 = swift_task_alloc();
  v0[29] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_1D23D3EA4;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, v3, v6, 0xD000000000000014, 0x80000001D28B0BB0, sub_1D23D4DF4, v4, v7);
}

uint64_t sub_1D23D3EA4()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1D23D4004, v3, v2);
}

uint64_t sub_1D23D4004()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D23D4070, v1, v2);
}

uint64_t sub_1D23D4070()
{
  v1 = *(v0 + 136);

  sub_1D23D4DFC(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  sub_1D2878518();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D23D4124()
{
  v1 = v0[23];

  sub_1D2872658();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to drop image with error: %@", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];

  (*(v11 + 8))(v10, v12);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v13 = v0[23];
  sub_1D25428EC(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  sub_1D2878518();

  v14 = v0[1];

  return v14();
}

unint64_t sub_1D23D4344()
{
  result = qword_1ED89F7B8[0];
  if (!qword_1ED89F7B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89F7B8);
  }

  return result;
}

unint64_t sub_1D23D4398()
{
  result = qword_1ED89D280;
  if (!qword_1ED89D280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D280);
  }

  return result;
}

unint64_t sub_1D23D445C()
{
  result = qword_1EC6DAAF0;
  if (!qword_1EC6DAAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAA8);
    sub_1D23D44E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DAAF0);
  }

  return result;
}

unint64_t sub_1D23D44E8()
{
  result = qword_1EC6DAAF8;
  if (!qword_1EC6DAAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAD8);
    sub_1D22BB9D8(&qword_1EC6DAB00, &qword_1EC6DAB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DAAF8);
  }

  return result;
}

uint64_t sub_1D23D45A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D23D45E8()
{
  v2 = *(sub_1D2871818() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1D22BC8FC;

  return sub_1D23D28C0(v5, v6, v7, v0 + v3, v0 + v4);
}

uint64_t sub_1D23D4728(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D23D4770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D23D47D8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1D22BB9D8(&qword_1ED89D348, &unk_1EC6E1DF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D23D4888()
{
  result = qword_1EC6DAB28;
  if (!qword_1EC6DAB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAB30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAB0);
    type metadata accessor for HomeAnimationCoordinator();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAA8);
    sub_1D23D445C();
    swift_getOpaqueTypeConformance2();
    sub_1D23D45A0(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
    swift_getOpaqueTypeConformance2();
    sub_1D23D49DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DAB28);
  }

  return result;
}

unint64_t sub_1D23D49DC()
{
  result = qword_1EC6D8000;
  if (!qword_1EC6D8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8000);
  }

  return result;
}

uint64_t sub_1D23D4A30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D23D2C40(a1, v4, v5, v7, v6);
}

uint64_t sub_1D23D4B00(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1D2871818() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v12);

  return sub_1D23D32D4(a1, a2, a3, v3 + v8, v3 + v11, v13, v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1D23D4C30(uint64_t a1)
{
  v3 = *(sub_1D2871818() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + v5);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D22BDFF8;

  return sub_1D23D3894(a1, v7, v8, v9, v10, v1 + v4, v11, v1 + v6);
}

uint64_t sub_1D23D4DFC(uint64_t a1)
{
  v2 = type metadata accessor for PlaygroundImage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D23D4E58()
{
  result = qword_1EC6DAB40;
  if (!qword_1EC6DAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DAB40);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{

  sub_1D23C6A84(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t ImageGeneration.PreviewImage.init(id:batchNumber:images:hasAlpha:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v96) = a4;
  v89 = a1;
  v88 = a5;
  v106 = *MEMORY[0x1E69E9840];
  v7 = sub_1D2871818();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D2873CB8();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v12 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v81[1] = v81 - v14;
  v15 = type metadata accessor for PlaygroundImage();
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v81 - v19;
  v21 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v86 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 + 16);
  v87 = v25;
  if (!v24)
  {

    sub_1D2872658();
    v59 = v89;
    (*(v8 + 16))(v10, v89, v7);
    v60 = sub_1D2873CA8();
    v61 = sub_1D2878A18();
    if (!os_log_type_enabled(v60, v61))
    {

      v80 = *(v8 + 8);
      v80(v59, v7);
      v80(v10, v7);
      (*(v84 + 8))(v12, v85);
      v73 = 1;
      v74 = v87;
      v78 = v86;
      v75 = v88;
      return (*(v78 + 56))(v75, v73, 1, v74);
    }

    v62 = swift_slowAlloc();
    v97 = a2;
    v63 = v7;
    v64 = v62;
    v96 = swift_slowAlloc();
    v103[0] = v96;
    *v64 = 136315394;
    sub_1D23D847C(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
    v65 = sub_1D28795C8();
    v67 = v66;
    v68 = *(v8 + 8);
    v69 = v10;
    v70 = v63;
    v68(v69, v63);
    v71 = sub_1D23D7C84(v65, v67, v103);

    *(v64 + 4) = v71;
    *(v64 + 12) = 2048;
    *(v64 + 14) = v97;
    _os_log_impl(&dword_1D226E000, v60, v61, "Cannot create preview image without an image. %s:%ld", v64, 0x16u);
    v72 = v96;
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x1D38A3520](v72, -1, -1);
    v75 = v88;
    MEMORY[0x1D38A3520](v64, -1, -1);

    v68(v89, v70);
    (*(v84 + 8))(v12, v85);
    v73 = 1;
    v74 = v87;
LABEL_27:
    v78 = v86;
    return (*(v78 + 56))(v75, v73, 1, v74);
  }

  v26 = a3 + 32;
  sub_1D22D7044(a3 + 32, v103);
  (*(v8 + 16))(v23, v89, v7);
  *&v23[v21[5]] = a2;
  sub_1D22D7044(v103, &v23[v21[6]]);
  v27 = v104;
  v28 = v105;
  __swift_project_boxed_opaque_existential_1(v103, v104);
  v29 = *(v28 + 24);
  v83 = v7;
  v30 = v29(v27, v28);
  v31 = v21[8];
  v82 = v23;
  *&v23[v31] = v30;
  v32 = *(a3 + 16);
  if (!v32)
  {

    (*(v8 + 8))(v89, v83);
    v77 = MEMORY[0x1E69E7CC0];
    v76 = v82;
    v75 = v88;
LABEL_26:
    v74 = v87;
    *(v76 + *(v87 + 28)) = v77;
    __swift_destroy_boxed_opaque_existential_0(v103);
    sub_1D23D8414(v76, v75, type metadata accessor for ImageGeneration.PreviewImage);
    v73 = 0;
    goto LABEL_27;
  }

  v98 = MEMORY[0x1E69E7CC0];
  sub_1D23D83D0(0, v32, 0);
  v33 = 0;
  v97 = v98;
  v90 = xmmword_1D28809A0;
  v91 = v32;
  v92 = a3;
  v93 = v8;
  while (1)
  {
    if (v33 >= *(a3 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
    }

    sub_1D22D7044(v26, v100);
    v35 = v101;
    v34 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    (*(v34 + 16))(v96 & 1, v35, v34);
    v36 = *v17;
    if (v17[8] <= 1u)
    {
      break;
    }

    if (v17[8] != 3)
    {
      v48 = v36;
      goto LABEL_18;
    }

    imageOut = 0;
    v38 = v36;
    v39 = VTCreateCGImageFromCVPixelBuffer(v38, 0, &imageOut);
    v40 = sub_1D2874198();

    v37 = imageOut;
    if (v39 == v40)
    {
      goto LABEL_12;
    }

LABEL_16:
    v48 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
LABEL_18:
    v47 = v48;
LABEL_19:
    v49 = *(v17 + 2);
    v50 = v95;
    v51 = v17[v95[12]];
    v52 = &v20[v95[9]];
    *v52 = 0u;
    *(v52 + 1) = 0u;
    *&v20[v50[10]] = v90;
    v53 = v50[11];
    v54 = sub_1D2873AA8();
    (*(*(v54 - 8) + 56))(&v20[v53], 1, 1, v54);
    *v20 = v47;
    v20[8] = 2;
    sub_1D2870F68();
    [v47 imageOrientation];
    *(v20 + 6) = sub_1D2878C88();
    *(v20 + 2) = v49;
    *(v20 + 4) = 0;
    *(v20 + 5) = 0;
    v20[v50[12]] = v51;
    sub_1D2871808();
    sub_1D23DABDC(v17, type metadata accessor for PlaygroundImage);
    __swift_destroy_boxed_opaque_existential_0(v100);
    v55 = v97;
    v98 = v97;
    v57 = *(v97 + 16);
    v56 = *(v97 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_1D23D83D0(v56 > 1, v57 + 1, 1);
      v55 = v98;
    }

    ++v33;
    *(v55 + 16) = v57 + 1;
    v58 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v97 = v55;
    sub_1D23D8414(v20, v55 + v58 + *(v94 + 72) * v57, type metadata accessor for PlaygroundImage);
    v26 += 40;
    a3 = v92;
    if (v91 == v33)
    {
      (*(v93 + 8))(v89, v83);

      v75 = v88;
      v76 = v82;
      v77 = v97;
      goto LABEL_26;
    }
  }

  if (v17[8])
  {
    v41 = objc_allocWithZone(MEMORY[0x1E695F620]);
    v42 = v36;
    v43 = [v41 init];
    [v42 extent];
    v37 = [v43 createCGImage:v42 fromRect:?];

LABEL_12:
    if (v37)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v37 = v36;
LABEL_13:
  v44 = *(v17 + 6);
  type metadata accessor for CGImagePropertyOrientation(0);
  if ((v44 - 1) < 8)
  {
    v45 = v44 - 1;
    v46 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v37 imageOrientation:qword_1D2885380[v45]];
    if (!v46)
    {
      goto LABEL_31;
    }

    v47 = v46;

    goto LABEL_19;
  }

  LODWORD(imageOut) = v44;
  result = sub_1D28796B8();
  __break(1u);
  return result;
}

uint64_t ImageGeneration.PreviewImage.playgroundImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 28));
  v4 = *(v3 + 16);
  v5 = type metadata accessor for PlaygroundImage();
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    sub_1D23DAB54(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a1, type metadata accessor for PlaygroundImage);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a1, v7, 1, v5);
}

uint64_t ImageGeneration.PreviewImage.getPlaygroundImage()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 28));
  if (*(v3 + 16))
  {
    v4 = *(type metadata accessor for PlaygroundImage() - 8);
    return sub_1D23DAB54(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), a1, type metadata accessor for PlaygroundImage);
  }

  else
  {
    sub_1D239AE8C();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t ImageGeneration.RequestOptions.precomputedGenerationSeeds.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

ImagePlaygroundInternal::ImageGeneration::RequestOptions __swiftcall ImageGeneration.RequestOptions.init(imageCount:startingImageIndex:precomputedGenerationSeeds:)(Swift::Int imageCount, Swift::Int startingImageIndex, Swift::OpaquePointer precomputedGenerationSeeds)
{
  v3->_rawValue = imageCount;
  v3[1]._rawValue = startingImageIndex;
  v3[2]._rawValue = precomputedGenerationSeeds._rawValue;
  result.precomputedGenerationSeeds = precomputedGenerationSeeds;
  result.startingImageIndex = startingImageIndex;
  result.imageCount = imageCount;
  return result;
}

uint64_t ImageGeneration.PreviewImage.Error.hashValue.getter()
{
  sub_1D28797D8();
  MEMORY[0x1D38A2260](0);
  return sub_1D2879828();
}

uint64_t ImageGeneration.PreviewImage.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2871818();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ImageGeneration.PreviewImage.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 24);

  return sub_1D22D7044(v3, a1);
}

uint64_t ImageGeneration.PreviewImage.scaledPlaygroundImages.getter()
{
  type metadata accessor for ImageGeneration.PreviewImage(0);

  return sub_1D2870F68();
}

uint64_t ImageGeneration.PreviewImage.diffusionModelSpecification.getter()
{
  type metadata accessor for ImageGeneration.PreviewImage(0);

  return sub_1D2870F68();
}

uint64_t ImageGeneration.PreviewImage.hash(into:)()
{
  sub_1D2871818();
  sub_1D23D847C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);

  return sub_1D2877F08();
}

uint64_t ImageGeneration.PreviewImage.hashValue.getter()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D23D847C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D23D5FF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2871818();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D23D6058()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D23D847C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D23D60E0()
{
  sub_1D2871818();
  sub_1D23D847C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);

  return sub_1D2877F08();
}

uint64_t sub_1D23D6164()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D23D847C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t static ImageGeneration.FinalImageStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v8 = *(v7 + 56);
  sub_1D23DAB54(a1, &v10 - v5, type metadata accessor for ImageGeneration.FinalImageStatus);
  sub_1D23DAB54(a2, &v6[v8], type metadata accessor for ImageGeneration.FinalImageStatus);
  type metadata accessor for ImageGeneration.FinalImageStatus(0);
  if (swift_getEnumCaseMultiPayload() == 1 || swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D22BD238(v6, &qword_1EC6DAB48);
    return 0;
  }

  else
  {
    sub_1D23DABDC(&v6[v8], type metadata accessor for ImageGeneration.FinalImageStatus);
    sub_1D23DABDC(v6, type metadata accessor for ImageGeneration.FinalImageStatus);
    return 1;
  }
}

uint64_t sub_1D23D6334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v8 = *(v7 + 56);
  sub_1D23DAB54(a1, &v10 - v5, type metadata accessor for ImageGeneration.FinalImageStatus);
  sub_1D23DAB54(a2, &v6[v8], type metadata accessor for ImageGeneration.FinalImageStatus);
  if (swift_getEnumCaseMultiPayload() == 1 || swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D22BD238(v6, &qword_1EC6DAB48);
    return 0;
  }

  else
  {
    sub_1D23DABDC(&v6[v8], type metadata accessor for ImageGeneration.FinalImageStatus);
    sub_1D23DABDC(v6, type metadata accessor for ImageGeneration.FinalImageStatus);
    return 1;
  }
}

id sub_1D23D646C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v7 - 8);
  if (a3 > 2u)
  {
    if (a3 > 4u)
    {
      if (a3 != 5)
      {
        switch(a1)
        {
          case 1:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 2:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 3:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 4:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 5:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 6:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 7:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 8:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 9:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 10:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 11:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 12:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 13:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 14:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 15:
          case 16:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 17:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 18:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 19:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 20:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 21:
          case 22:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 23:
          case 24:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 25:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          case 26:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
          default:
            sub_1D2877FE8();
            if (qword_1ED89E0E8 != -1)
            {
              goto LABEL_85;
            }

            break;
        }

        goto LABEL_84;
      }
    }

    else if (a3 == 3)
    {
      sub_1D2878018();
      sub_1D2878008();
      sub_1D2877FF8();
      sub_1D2878008();
      sub_1D2878038();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    sub_1D2878018();
    sub_1D2878008();
    sub_1D2877FF8();
    sub_1D2878008();
    sub_1D2878038();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_84;
    }

LABEL_85:
    swift_once();
LABEL_84:
    v21 = qword_1ED8B0058;
    sub_1D28718C8();
    return sub_1D28780E8();
  }

  if (!a3)
  {
    sub_1D2878018();
    sub_1D2878008();
    sub_1D2877FF8();
    sub_1D2878008();
    sub_1D2878038();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (a3 == 1)
  {
    sub_1D2878018();
    sub_1D2878008();
    sub_1D2877FF8();
    sub_1D2878008();
    sub_1D2878038();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v9 = result;
  wapiCapability = MobileGestalt_get_wapiCapability();

  if (wapiCapability)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v11 = result;
    cellularDataCapability = MobileGestalt_get_cellularDataCapability();

    if (cellularDataCapability)
    {
      sub_1D2878018();
      sub_1D2878008();
      sub_1D2877FF8();
      sub_1D2878008();
      sub_1D2878038();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_84;
      }

      goto LABEL_85;
    }
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_113;
  }

  v13 = result;
  v14 = MobileGestalt_get_wapiCapability();

  if (v14)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v15 = result;
    v16 = MobileGestalt_get_cellularDataCapability();

    if ((v16 & 1) == 0)
    {
      sub_1D2878018();
      sub_1D2878008();
      sub_1D2877FF8();
      sub_1D2878008();
      sub_1D2878038();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_84;
      }

      goto LABEL_85;
    }
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_114;
  }

  v17 = result;
  v18 = MobileGestalt_get_wapiCapability();

  if (v18)
  {
LABEL_35:
    sub_1D2878018();
    sub_1D2878008();
    sub_1D2877FF8();
    sub_1D2878008();
    sub_1D2878038();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v19 = result;
    v20 = MobileGestalt_get_cellularDataCapability();

    if (v20)
    {
      sub_1D2878018();
      sub_1D2878008();
      sub_1D2877FF8();
      sub_1D2878008();
      sub_1D2878038();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    goto LABEL_35;
  }

LABEL_117:
  __break(1u);
  return result;
}

uint64_t sub_1D23D79B8(unint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v7 - 8);
  if (!a3)
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
LABEL_7:
      v8 = qword_1ED8B0058;
      sub_1D28718C8();
      return sub_1D28780E8();
    }

LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  if (a3 == 6)
  {
    if (__PAIR128__((a1 >= 0x17) + a2 - 1, a1 - 23) < 2)
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

    if (!(a1 ^ 0x19 | a2))
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  return 0;
}

unint64_t sub_1D23D7C84(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1D2870F68();
  v6 = sub_1D23D7D50(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D23C3EE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1D23D7D50(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D23D7E5C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D2879208();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D23D7E5C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D23D7EA8(a1, a2);
  sub_1D23D7FD8(&unk_1F4DBCC38);
  return v3;
}

uint64_t sub_1D23D7EA8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D23BDCFC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D2879208();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D2878208();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D23BDCFC(v10, 0);
        result = sub_1D2879128();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D23D7FD8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D23D80C4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D23D80C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1D23D81B8(char *a1, int64_t a2, char a3)
{
  result = sub_1D23D8D7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D23D81D8(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D8E88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D23D81F8(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D9B64(a1, a2, a3, *v3, &qword_1EC6DAB68, &unk_1D2885180, &qword_1EC6DAB70);
  *v3 = result;
  return result;
}

size_t sub_1D23D8238(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DA590, &unk_1D28A7490, MEMORY[0x1E69DFC80]);
  *v3 = result;
  return result;
}

size_t sub_1D23D827C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAD00, &unk_1D28A75F0, MEMORY[0x1E69E87E8]);
  *v3 = result;
  return result;
}

size_t sub_1D23D82C0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAB78, &unk_1D2885190, type metadata accessor for IdentifiedEntity);
  *v3 = result;
  return result;
}

size_t sub_1D23D8304(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC40, &unk_1D28A74E0, MEMORY[0x1E696E478]);
  *v3 = result;
  return result;
}

size_t sub_1D23D8348(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC48, &unk_1D2885280, MEMORY[0x1E696E498]);
  *v3 = result;
  return result;
}

size_t sub_1D23D838C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAB80, &unk_1D2885198, type metadata accessor for CuratedPrompt);
  *v3 = result;
  return result;
}

size_t sub_1D23D83D0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DACF8, &unk_1D2885350, type metadata accessor for PlaygroundImage);
  *v3 = result;
  return result;
}

uint64_t sub_1D23D8414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23D847C(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_1D23D84C4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC60, &unk_1D2885298, MEMORY[0x1E696E390]);
  *v3 = result;
  return result;
}

char *sub_1D23D8508(char *a1, int64_t a2, char a3)
{
  result = sub_1D23D9048(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D23D8528(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D97F4(a1, a2, a3, *v3, &qword_1EC6DAB98, &unk_1D28851B8, &qword_1EC6D9A10);
  *v3 = result;
  return result;
}

void *sub_1D23D8568(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D97F4(a1, a2, a3, *v3, &qword_1EC6DACD8, &unk_1D2885328, &qword_1EC6DACE0);
  *v3 = result;
  return result;
}

void *sub_1D23D85A8(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D97F4(a1, a2, a3, *v3, &qword_1EC6DAC00, &unk_1D2885220, &qword_1EC6DAC08);
  *v3 = result;
  return result;
}

void *sub_1D23D85E8(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D97F4(a1, a2, a3, *v3, &qword_1EC6DAC20, &unk_1D2885240, &qword_1EC6D9A48);
  *v3 = result;
  return result;
}

size_t sub_1D23D8628(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC38, &unk_1D2885270, type metadata accessor for Bubble);
  *v3 = result;
  return result;
}

char *sub_1D23D866C(char *a1, int64_t a2, char a3)
{
  result = sub_1D23D9274(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D23D868C(char *a1, int64_t a2, char a3)
{
  result = sub_1D23D9394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D23D86AC(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D97F4(a1, a2, a3, *v3, &qword_1EC6DA1D0, &unk_1D2885250, &qword_1EC6DA468);
  *v3 = result;
  return result;
}

char *sub_1D23D86EC(char *a1, int64_t a2, char a3)
{
  result = sub_1D23D94DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D23D870C(char *a1, int64_t a2, char a3)
{
  result = sub_1D23D95E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D23D872C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DACC8, &unk_1D2885310, type metadata accessor for DebugSettingsView.DiffusionSpecRow);
  *v3 = result;
  return result;
}

size_t sub_1D23D8770(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DACA8, &unk_1D28852E0, type metadata accessor for GeneratedImageEntity);
  *v3 = result;
  return result;
}

char *sub_1D23D87B4(char *a1, int64_t a2, char a3)
{
  result = sub_1D23D96F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D23D87D4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAD10, &unk_1D28A7600, MEMORY[0x1E697E168]);
  *v3 = result;
  return result;
}

size_t sub_1D23D8818(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC30, &unk_1D2885268, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
  *v3 = result;
  return result;
}

size_t sub_1D23D885C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC80, &unk_1D28A39D0, MEMORY[0x1E696E310]);
  *v3 = result;
  return result;
}

char *sub_1D23D88A0(char *a1, int64_t a2, char a3)
{
  result = sub_1D23D9A48(a1, a2, a3, *v3, &qword_1EC6DABE8);
  *v3 = result;
  return result;
}

void *sub_1D23D88D8(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D97F4(a1, a2, a3, *v3, &qword_1EC6DABD0, &unk_1D28851F0, &qword_1EC6DABD8);
  *v3 = result;
  return result;
}

char *sub_1D23D8918(char *a1, int64_t a2, char a3)
{
  result = sub_1D23D993C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D23D8938(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DABF0, &unk_1D2885210, type metadata accessor for CharacterAsset);
  *v3 = result;
  return result;
}

char *sub_1D23D897C(char *a1, int64_t a2, char a3)
{
  result = sub_1D23D9A48(a1, a2, a3, *v3, &qword_1EC6DABF8);
  *v3 = result;
  return result;
}

void *sub_1D23D89B4(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D9B64(a1, a2, a3, *v3, &qword_1EC6DAC10, &unk_1D2885230, &qword_1EC6DAC18);
  *v3 = result;
  return result;
}

char *sub_1D23D89F4(char *a1, int64_t a2, char a3)
{
  result = sub_1D23D9C98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D23D8A14(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC78, &unk_1D28852B0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

size_t sub_1D23D8A58(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAD18, &unk_1D2885370, type metadata accessor for DisplayableImage);
  *v3 = result;
  return result;
}

size_t sub_1D23D8A9C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC88, &unk_1D28852C0, type metadata accessor for ImageGenerationPerson.SkinTone);
  *v3 = result;
  return result;
}

void *sub_1D23D8AE0(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D9D8C(a1, a2, a3, *v3, &qword_1EC6DABA8, &unk_1D28851D0, &qword_1EC6DABB0);
  *v3 = result;
  return result;
}

void *sub_1D23D8B20(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D9D8C(a1, a2, a3, *v3, &qword_1EC6DABB8, &unk_1D28851E0, &qword_1EC6DABC0);
  *v3 = result;
  return result;
}

size_t sub_1D23D8B60(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC90, &unk_1D28852C8, MEMORY[0x1E69DF5F0]);
  *v3 = result;
  return result;
}

void *sub_1D23D8BA4(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D9EC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D23D8BC4(void *a1, int64_t a2, char a3)
{
  result = sub_1D23D9FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D23D8BE4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC58, &unk_1D2885290, type metadata accessor for AnalyzerAmbiguity);
  *v3 = result;
  return result;
}

size_t sub_1D23D8C28(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC50, &unk_1D2885288, MEMORY[0x1E69E0158]);
  *v3 = result;
  return result;
}

size_t sub_1D23D8C6C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DACC0, &unk_1D28852F8, type metadata accessor for ConversationContextItem);
  *v3 = result;
  return result;
}

size_t sub_1D23D8CB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DACB8, &unk_1D28852F0, MEMORY[0x1E69C9A68]);
  *v3 = result;
  return result;
}

size_t sub_1D23D8CF4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DACB0, &unk_1D28852E8, MEMORY[0x1E69C9B20]);
  *v3 = result;
  return result;
}

size_t sub_1D23D8D38(size_t a1, int64_t a2, char a3)
{
  result = sub_1D23DA150(a1, a2, a3, *v3, &qword_1EC6DAC98, &unk_1D28852D0, type metadata accessor for ImagePlaygroundStyleEntity);
  *v3 = result;
  return result;
}

char *sub_1D23D8D7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D23D8E88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DACE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DACF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D23D9048(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB60);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D23D9170(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB90);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D23D9274(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D23D9394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DACA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D23D94DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D23D95E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5D0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D23D96F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAD08);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D23D97F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1D23D993C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D23D9A48(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[48 * v9])
    {
      memmove(v13, v14, 48 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1D23D9B64(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1D23D9C98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1D23D9D8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1D23D9EC0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC68);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC70);
    swift_arrayInitWithCopy();
  }

  return v10;
}