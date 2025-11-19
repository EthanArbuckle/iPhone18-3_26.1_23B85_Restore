unint64_t sub_190CACE80(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CE0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_190CACF50(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1902188FC(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_190CACFC8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_190CAD01C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_190CAD080(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000030;
  v3 = *a1;
  v4 = "esBackgroundsSuggestionsLatency";
  if (v3 == 1)
  {
    v5 = 0xD000000000000033;
  }

  else
  {
    v5 = 0xD000000000000030;
  }

  if (v3 == 1)
  {
    v6 = "esBackgroundsSuggestionsLatency";
  }

  else
  {
    v6 = "eryEnagementDetails";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000003FLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "Report a Concern";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000033;
  }

  else
  {
    v4 = "eryEnagementDetails";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000003FLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "Report a Concern";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_190D58760();
  }

  return v11 & 1;
}

uint64_t sub_190CAD15C()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190CAD1F8()
{
  sub_190D56FC0();
}

uint64_t sub_190CAD280()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190CAD318@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CAD45C();
  *a1 = result;
  return result;
}

void sub_190CAD348(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000030;
  v3 = "esBackgroundsSuggestionsLatency";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000033;
  }

  else
  {
    v3 = "eryEnagementDetails";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000003FLL;
    v4 = "Report a Concern";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_190CAD3A4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

unint64_t sub_190CAD408()
{
  result = qword_1EAD62260;
  if (!qword_1EAD62260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62260);
  }

  return result;
}

uint64_t sub_190CAD45C()
{
  v0 = sub_190D585F0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_190CAD4AC()
{
  v1 = OBJC_IVAR___CKTapbackClassicAsset____lazy_storage___stillImage;
  v2 = *(v0 + OBJC_IVAR___CKTapbackClassicAsset____lazy_storage___stillImage);
  if (v2 != 1)
  {
    goto LABEL_4;
  }

  v3 = *(v0 + OBJC_IVAR___CKTapbackClassicAsset_frameCount);
  v4 = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E6530];
    *(v5 + 16) = xmmword_190DD1D90;
    v7 = MEMORY[0x1E69E65A8];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v4;
    sub_190D52690();
    sub_190D56F20();

    v8 = objc_opt_self();
    v9 = sub_190D56ED0();

    v10 = [v8 ckImageNamed_];

    v11 = *(v0 + v1);
    *(v0 + v1) = v10;
    v12 = v10;
    sub_190A4A988(v11);
LABEL_4:
    sub_190A4A98C(v2);
    return;
  }

  __break(1u);
}

void sub_190CAD5FC(char a1)
{
  sub_190CAD4AC();
  if (*(v1 + OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix) && (a1 & 1) != 0)
  {
    if (v3)
    {
      v4 = v3;
      v5 = sub_190D52690();
      sub_190CAD664(v5);
    }
  }
}

void sub_190CAD664(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithImage_];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() colorMatrixFilter];
    [v4 setDefaults];
    [v4 setInputImage_];
    v5 = a1[2];
    if (v5)
    {
      v6 = a1[4];
      v7 = *(v6 + 16);
      if (v7)
      {
        if (v7 != 1)
        {
          if (v7 >= 3)
          {
            if (v7 != 3)
            {
              v8 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:*(v6 + 32) Y:*(v6 + 40) Z:*(v6 + 48) W:*(v6 + 56)];
              [v4 setRVector_];

              if (v5 != 1)
              {
                v9 = a1[5];
                v10 = *(v9 + 16);
                if (v10)
                {
                  if (v10 != 1)
                  {
                    if (v10 >= 3)
                    {
                      if (v10 != 3)
                      {
                        v11 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:*(v9 + 32) Y:*(v9 + 40) Z:*(v9 + 48) W:*(v9 + 56)];
                        [v4 setGVector_];

                        if (v5 >= 3)
                        {
                          v12 = a1[6];
                          v13 = *(v12 + 16);
                          if (v13)
                          {
                            if (v13 != 1)
                            {
                              if (v13 >= 3)
                              {
                                if (v13 != 3)
                                {
                                  v14 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:*(v12 + 32) Y:*(v12 + 40) Z:*(v12 + 48) W:*(v12 + 56)];
                                  [v4 setBVector_];

                                  if (v5 != 3)
                                  {
                                    v15 = a1[7];
                                    v16 = *(v15 + 16);
                                    if (v16)
                                    {
                                      if (v16 != 1)
                                      {
                                        if (v16 >= 3)
                                        {
                                          if (v16 != 3)
                                          {
                                            v17 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:*(v15 + 32) Y:*(v15 + 40) Z:*(v15 + 48) W:*(v15 + 56)];
                                            [v4 setAVector_];

                                            if (*(v6 + 16) >= 5uLL)
                                            {
                                              if (*(v9 + 16) >= 5uLL)
                                              {
                                                if (*(v12 + 16) >= 5uLL)
                                                {
                                                  if (*(v15 + 16) >= 5uLL)
                                                  {
                                                    v18 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:*(v6 + 64) Y:*(v9 + 64) Z:*(v12 + 64) W:*(v15 + 64)];
                                                    [v4 setBiasVector_];

                                                    v19 = [v4 outputImage];
                                                    if (v19)
                                                    {
                                                      v20 = v19;
                                                      [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCIImage_];
                                                    }

                                                    else
                                                    {
                                                      v22;
                                                    }

                                                    return;
                                                  }

LABEL_55:
                                                  __break(1u);
                                                  return;
                                                }

LABEL_54:
                                                __break(1u);
                                                goto LABEL_55;
                                              }

LABEL_53:
                                              __break(1u);
                                              goto LABEL_54;
                                            }

LABEL_52:
                                            __break(1u);
                                            goto LABEL_53;
                                          }

LABEL_51:
                                          __break(1u);
                                          goto LABEL_52;
                                        }

LABEL_50:
                                        __break(1u);
                                        goto LABEL_51;
                                      }

LABEL_49:
                                      __break(1u);
                                      goto LABEL_50;
                                    }

LABEL_48:
                                    __break(1u);
                                    goto LABEL_49;
                                  }

LABEL_47:
                                  __break(1u);
                                  goto LABEL_48;
                                }

LABEL_46:
                                __break(1u);
                                goto LABEL_47;
                              }

LABEL_45:
                              __break(1u);
                              goto LABEL_46;
                            }

LABEL_44:
                            __break(1u);
                            goto LABEL_45;
                          }

LABEL_43:
                          __break(1u);
                          goto LABEL_44;
                        }

LABEL_42:
                        __break(1u);
                        goto LABEL_43;
                      }

LABEL_41:
                      __break(1u);
                      goto LABEL_42;
                    }

LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }

LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  v21 = v22;
}

unint64_t sub_190CADAF8(uint64_t a1, char a2)
{
  v3 = v2;
  v44 = sub_190D56770();
  v6 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_190D567A0();
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___CKTapbackClassicAsset_prefetchCache;
  swift_beginAccess();
  v11 = *&v2[v10];
  if (*(v11 + 16) && (v12 = sub_190875CC8(a1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_beginAccess();
    v15 = v14;
    v16 = sub_190C81A80(a1);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E6530];
    *(v17 + 16) = xmmword_190DD1D90;
    v19 = MEMORY[0x1E69E65A8];
    *(v17 + 56) = v18;
    *(v17 + 64) = v19;
    *(v17 + 32) = a1;
    sub_190D52690();
    sub_190D56F20();

    v20 = objc_opt_self();
    v16 = sub_190D56ED0();

    v15 = [v20 ckImageNamed_];
  }

  v21 = v15;
  if ((a2 & 1) == 0)
  {
    goto LABEL_11;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  result = sub_1908E9B68();
  v39 = a1 + 1;
  v40 = result;
  if (!__OFADD__(a1, 1))
  {
    v35 = v21;
    v36 = OBJC_IVAR___CKTapbackClassicAsset_frameCount;
    swift_beginAccess();
    v38 = v46;
    v37 = (v6 + 8);
    v24 = (v8 + 8);
    v25 = v41;
    do
    {
      *(v22 + 16) = a1 + 1;
      v26 = sub_190D57870();
      v27 = swift_allocObject();
      *(v27 + 16) = v3;
      *(v27 + 24) = v22;
      v46[2] = sub_190CAF658;
      v46[3] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v46[0] = sub_190840E6C;
      v46[1] = &block_descriptor_124;
      v28 = _Block_copy(aBlock);
      v29 = v3;
      sub_190D50920();

      sub_190D56790();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_190840DB0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
      sub_190840E08();
      v30 = v3;
      v31 = v43;
      v32 = v44;
      sub_190D58170();
      MEMORY[0x193AF3110](0, v25, v31, v28);
      _Block_release(v28);

      v33 = v31;
      v3 = v30;
      (*v37)(v33, v32);
      (*v24)(v25, v42);
      a1 = *(v22 + 16);
    }

    while (a1 < v39 && a1 < *&v30[v36]);

    v21 = v35;
LABEL_11:

    return v21;
  }

  __break(1u);
  return result;
}

void sub_190CADFBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6530];
  *(v4 + 16) = xmmword_190DD1D90;
  v6 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  sub_190D52690();
  sub_190D56F20();

  v7 = objc_opt_self();
  v8 = sub_190D56ED0();

  v9 = [v7 ckImageNamed_];

  if (v9)
  {
    swift_beginAccess();
    v10 = *(a2 + 16);
    swift_beginAccess();
    v11 = v9;
    v12 = sub_190CAE450(v11, v10);
    swift_endAccess();
  }
}

void *sub_190CAE13C(char a1)
{
  v2 = &OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter;
  if (a1 != 1)
  {
    v2 = &OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter;
  }

  v3 = *(v1 + *v2);
  v4 = v3;
  return v3;
}

id TapbackClassicAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TapbackClassicAssetProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackClassicAssetProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_190CAE418(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_190CAE450(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v9 = sub_190875CC8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_190B67304(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_190875CC8(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    v9 = sub_190D587C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = v9;
    sub_190B6A560();
    v9 = v18;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_190BADB0C(v9, a2, a1, v8);
    v17 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v16 = v8[7];
  v17 = *(v16 + 8 * v9);
  *(v16 + 8 * v9) = a1;
LABEL_11:
  *v4 = v8;
  return v17;
}

id sub_190CAE560()
{
  v0 = objc_allocWithZone(type metadata accessor for TapbackClassicHeartAsset());
  v1 = OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset] = 0;
  v2 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix] = 0;
  v3 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix] = 0;
  v4 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter] = 0;
  v5 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter] = 0;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_prefetchBuffer] = 1;
  v6 = OBJC_IVAR___CKTapbackClassicAsset_prefetchCache;
  *&v0[v6] = sub_190821534(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR___CKTapbackClassicAsset____lazy_storage___stillImage] = 1;
  v7 = &v0[OBJC_IVAR___CKTapbackClassicAsset_nameFormat];
  *v7 = 0x30255F7472616568;
  *(v7 + 1) = 0xEA00000000006433;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_frameCount] = 109;
  *&v0[v1] = 0;
  *&v0[v2] = qword_1F0401008;

  *&v0[v3] = qword_1F0401048;

  sub_1908F2164(qword_1F0401008, v20);
  v8 = *MEMORY[0x1E6979880];
  v9 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v10 = objc_opt_self();
  v11 = [v10 valueWithCAColorMatrix_];
  v12 = *MEMORY[0x1E6979AC0];
  [v9 setValue:v11 forKey:*MEMORY[0x1E6979AC0]];

  v13 = *&v0[v4];
  *&v0[v4] = v9;

  sub_1908F2164(qword_1F0401048, v20);
  v14 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v19[2] = v20[2];
  v19[3] = v20[3];
  v19[4] = v20[4];
  v19[0] = v20[0];
  v19[1] = v20[1];
  v15 = [v10 valueWithCAColorMatrix_];
  [v14 setValue:v15 forKey:v12];

  v16 = *&v0[v5];
  *&v0[v5] = v14;

  v18.receiver = v0;
  v18.super_class = type metadata accessor for TapbackClassicAsset();
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_190CAE7BC()
{
  v0 = objc_allocWithZone(type metadata accessor for TapbackClassicThumbsUpAsset());
  v1 = OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset] = 0;
  v2 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix] = 0;
  v3 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix] = 0;
  v4 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter] = 0;
  v5 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter] = 0;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_prefetchBuffer] = 1;
  v6 = OBJC_IVAR___CKTapbackClassicAsset_prefetchCache;
  *&v0[v6] = sub_190821534(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR___CKTapbackClassicAsset____lazy_storage___stillImage] = 1;
  v7 = &v0[OBJC_IVAR___CKTapbackClassicAsset_nameFormat];
  strcpy(&v0[OBJC_IVAR___CKTapbackClassicAsset_nameFormat], "thumbsup_%03d");
  *(v7 + 7) = -4864;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_frameCount] = 74;
  *&v0[v1] = 0;
  *&v0[v2] = qword_1F04012C8;

  *&v0[v3] = qword_1F0401308;

  sub_1908F2164(qword_1F04012C8, v20);
  v8 = *MEMORY[0x1E6979880];
  v9 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v10 = objc_opt_self();
  v11 = [v10 valueWithCAColorMatrix_];
  v12 = *MEMORY[0x1E6979AC0];
  [v9 setValue:v11 forKey:*MEMORY[0x1E6979AC0]];

  v13 = *&v0[v4];
  *&v0[v4] = v9;

  sub_1908F2164(qword_1F0401308, v20);
  v14 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v19[2] = v20[2];
  v19[3] = v20[3];
  v19[4] = v20[4];
  v19[0] = v20[0];
  v19[1] = v20[1];
  v15 = [v10 valueWithCAColorMatrix_];
  [v14 setValue:v15 forKey:v12];

  v16 = *&v0[v5];
  *&v0[v5] = v14;

  v18.receiver = v0;
  v18.super_class = type metadata accessor for TapbackClassicAsset();
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_190CAEA20()
{
  v0 = objc_allocWithZone(type metadata accessor for TapbackClassicThumbsDownAsset());
  v1 = OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset] = 0;
  v2 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix] = 0;
  v3 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix] = 0;
  v4 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter] = 0;
  v5 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter] = 0;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_prefetchBuffer] = 1;
  v6 = OBJC_IVAR___CKTapbackClassicAsset_prefetchCache;
  *&v0[v6] = sub_190821534(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR___CKTapbackClassicAsset____lazy_storage___stillImage] = 1;
  v7 = &v0[OBJC_IVAR___CKTapbackClassicAsset_nameFormat];
  *v7 = 0x6F6473626D756874;
  *(v7 + 1) = 0xEF643330255F6E77;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_frameCount] = 70;
  *&v0[v1] = 0;
  *&v0[v2] = qword_1F0401588;

  *&v0[v3] = qword_1F04015C8;

  sub_1908F2164(qword_1F0401588, v20);
  v8 = *MEMORY[0x1E6979880];
  v9 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v10 = objc_opt_self();
  v11 = [v10 valueWithCAColorMatrix_];
  v12 = *MEMORY[0x1E6979AC0];
  [v9 setValue:v11 forKey:*MEMORY[0x1E6979AC0]];

  v13 = *&v0[v4];
  *&v0[v4] = v9;

  sub_1908F2164(qword_1F04015C8, v20);
  v14 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v19[2] = v20[2];
  v19[3] = v20[3];
  v19[4] = v20[4];
  v19[0] = v20[0];
  v19[1] = v20[1];
  v15 = [v10 valueWithCAColorMatrix_];
  [v14 setValue:v15 forKey:v12];

  v16 = *&v0[v5];
  *&v0[v5] = v14;

  v18.receiver = v0;
  v18.super_class = type metadata accessor for TapbackClassicAsset();
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_190CAEC84()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = 4673093;
    v3 = sub_190D51210();
    v5 = v4;

    *&v29 = v3;
    *(&v29 + 1) = v5;
    MEMORY[0x1EEE9AC00](v6);
    v24[2] = &v29;
    LOBYTE(v1) = sub_190CA8558(sub_1909F5BC8, v24, &unk_1F0401848);
    swift_arrayDestroy();
    if (v1)
    {
      v2 = v3;
    }

    else
    {

      v5 = 0xE300000000000000;
    }

    *&v29 = 0x2D61686168;
    *(&v29 + 1) = 0xE500000000000000;
    MEMORY[0x193AF28B0](v2, v5);

    MEMORY[0x193AF28B0](0x643330255FLL, 0xE500000000000000);
    v7 = v29;
    v8 = objc_allocWithZone(type metadata accessor for TapbackClassicHaHaAsset());
    v9 = OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset;
    *&v8[OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset] = 0;
    v10 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix;
    *&v8[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix] = 0;
    v11 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix;
    *&v8[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix] = 0;
    v12 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter;
    *&v8[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter] = 0;
    v25 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter;
    *&v8[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter] = 0;
    *&v8[OBJC_IVAR___CKTapbackClassicAsset_prefetchBuffer] = 1;
    v13 = OBJC_IVAR___CKTapbackClassicAsset_prefetchCache;
    *&v8[v13] = sub_190821534(MEMORY[0x1E69E7CC0]);
    *&v8[OBJC_IVAR___CKTapbackClassicAsset____lazy_storage___stillImage] = 1;
    *&v8[OBJC_IVAR___CKTapbackClassicAsset_nameFormat] = v7;
    *&v8[OBJC_IVAR___CKTapbackClassicAsset_frameCount] = 115;
    *&v8[v9] = 0;
    *&v8[v10] = qword_1F0401918;

    *&v8[v11] = qword_1F0401958;

    sub_1908F2164(qword_1F0401918, v28);
    v14 = *MEMORY[0x1E6979880];
    v15 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v16 = objc_opt_self();
    v31 = v28[2];
    v32 = v28[3];
    v33 = v28[4];
    v29 = v28[0];
    v30 = v28[1];
    v17 = [v16 valueWithCAColorMatrix_];
    v18 = *MEMORY[0x1E6979AC0];
    [v15 setValue:v17 forKey:*MEMORY[0x1E6979AC0]];

    v19 = *&v8[v12];
    *&v8[v12] = v15;

    sub_1908F2164(qword_1F0401958, &v29);
    v20 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v27[0] = v29;
    v27[1] = v30;
    v21 = [v16 valueWithCAColorMatrix_];
    [v20 setValue:v21 forKey:v18];

    v22 = *&v8[v25];
    *&v8[v25] = v20;

    v23 = type metadata accessor for TapbackClassicAsset();
    v26.receiver = v8;
    v26.super_class = v23;
    return objc_msgSendSuper2(&v26, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190CAF044()
{
  v0 = objc_allocWithZone(type metadata accessor for TapbackClassicExclamationAsset());
  v1 = OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset] = 0;
  v2 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix] = 0;
  v3 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix] = 0;
  v4 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter] = 0;
  v5 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter] = 0;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_prefetchBuffer] = 1;
  v6 = OBJC_IVAR___CKTapbackClassicAsset_prefetchCache;
  *&v0[v6] = sub_190821534(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR___CKTapbackClassicAsset____lazy_storage___stillImage] = 1;
  v7 = &v0[OBJC_IVAR___CKTapbackClassicAsset_nameFormat];
  *v7 = 0xD000000000000010;
  *(v7 + 1) = 0x8000000190E7EDD0;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_frameCount] = 104;
  *&v0[v1] = 0;
  *&v0[v2] = qword_1F0401BD8;

  *&v0[v3] = qword_1F0401C18;

  sub_1908F2164(qword_1F0401BD8, v20);
  v8 = *MEMORY[0x1E6979880];
  v9 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v10 = objc_opt_self();
  v11 = [v10 valueWithCAColorMatrix_];
  v12 = *MEMORY[0x1E6979AC0];
  [v9 setValue:v11 forKey:*MEMORY[0x1E6979AC0]];

  v13 = *&v0[v4];
  *&v0[v4] = v9;

  sub_1908F2164(qword_1F0401C18, v20);
  v14 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v19[2] = v20[2];
  v19[3] = v20[3];
  v19[4] = v20[4];
  v19[0] = v20[0];
  v19[1] = v20[1];
  v15 = [v10 valueWithCAColorMatrix_];
  [v14 setValue:v15 forKey:v12];

  v16 = *&v0[v5];
  *&v0[v5] = v14;

  v18.receiver = v0;
  v18.super_class = type metadata accessor for TapbackClassicAsset();
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_190CAF2A0()
{
  v0 = objc_allocWithZone(type metadata accessor for TapbackClassicQuestionAsset());
  v1 = OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_pickerPresentationOffset] = 0;
  v2 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilterValueMatrix] = 0;
  v3 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilterValueMatrix] = 0;
  v4 = OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter] = 0;
  v5 = OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter] = 0;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_prefetchBuffer] = 1;
  v6 = OBJC_IVAR___CKTapbackClassicAsset_prefetchCache;
  *&v0[v6] = sub_190821534(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR___CKTapbackClassicAsset____lazy_storage___stillImage] = 1;
  v7 = &v0[OBJC_IVAR___CKTapbackClassicAsset_nameFormat];
  strcpy(&v0[OBJC_IVAR___CKTapbackClassicAsset_nameFormat], "question_%03d");
  *(v7 + 7) = -4864;
  *&v0[OBJC_IVAR___CKTapbackClassicAsset_frameCount] = 81;
  *&v0[v1] = 0x3FC76C8B43958106;
  *&v0[v2] = qword_1F0401E98;

  *&v0[v3] = qword_1F0401ED8;

  sub_1908F2164(qword_1F0401E98, v20);
  v8 = *MEMORY[0x1E6979880];
  v9 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v10 = objc_opt_self();
  v11 = [v10 valueWithCAColorMatrix_];
  v12 = *MEMORY[0x1E6979AC0];
  [v9 setValue:v11 forKey:*MEMORY[0x1E6979AC0]];

  v13 = *&v0[v4];
  *&v0[v4] = v9;

  sub_1908F2164(qword_1F0401ED8, v20);
  v14 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v19[2] = v20[2];
  v19[3] = v20[3];
  v19[4] = v20[4];
  v19[0] = v20[0];
  v19[1] = v20[1];
  v15 = [v10 valueWithCAColorMatrix_];
  [v14 setValue:v15 forKey:v12];

  v16 = *&v0[v5];
  *&v0[v5] = v14;

  v18.receiver = v0;
  v18.super_class = type metadata accessor for TapbackClassicAsset();
  return objc_msgSendSuper2(&v18, sel_init);
}

id _s7ChatKit27TapbackClassicAssetProviderC5asset3forAA0cdE0CSgSo23IMAssociatedMessageTypeV_tFZ_0(uint64_t a1)
{
  if (a1 > 2002)
  {
    switch(a1)
    {
      case 2003:
        return sub_190CAEC84();
      case 2004:
        return sub_190CAF044();
      case 2005:
        return sub_190CAF2A0();
    }
  }

  else
  {
    switch(a1)
    {
      case 2000:
        return sub_190CAE560();
      case 2001:
        return sub_190CAE7BC();
      case 2002:
        return sub_190CAEA20();
    }
  }

  if (qword_1EAD52018 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9E608);
  v3 = sub_190D53020();
  v4 = sub_190D576A0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "associatedMessageType not mapped to sequence", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  return 0;
}

id TapbackViewUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TapbackViewUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackViewUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TapbackViewUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackViewUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190CAF9B0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  if (!CKIsRunningInMacCatalyst())
  {
    return v1;
  }

  CKUserPreferenceFontSize();
  v2 = ckDefaultTextSizeForFontPointSize();
  if ((v2 - 1) > 6)
  {
    v3 = MEMORY[0x1E69DDC70];
  }

  else
  {
    v3 = qword_1E72FA430[v2 - 1];
  }

  v5 = *v3;

  return v5;
}

char *TapbackPickerContainerAccessoryView.init(_:layoutBounds:delegate:)(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v7[OBJC_IVAR___CKTapbackPickerContainerAccessoryView_visible] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR___CKTapbackPickerContainerAccessoryView_chatItem] = a1;
  v14 = &v7[OBJC_IVAR___CKTapbackPickerContainerAccessoryView_layoutBounds];
  *v14 = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v15 = a1;
  if ([v15 isFromMe])
  {
    v16 = 8;
  }

  else
  {
    v16 = 2;
  }

  v17 = sub_190AC37E8();
  v81.origin.x = a3;
  v81.origin.y = a4;
  v81.size.width = a5;
  v81.size.height = a6;
  v82 = CGRectInset(v81, v17, 0.0);
  x = v82.origin.x;
  y = v82.origin.y;
  width = v82.size.width;
  height = v82.size.height;
  objc_allocWithZone(type metadata accessor for TapbackPickerViewController());
  v22 = v15;
  v23 = TapbackPickerViewController.init(chatItem:)(v22);
  v24 = OBJC_IVAR___CKTapbackPickerContainerAccessoryView_pickerViewController;
  *&v7[OBJC_IVAR___CKTapbackPickerContainerAccessoryView_pickerViewController] = v23;
  v25 = v23;
  if (a2)
  {
    v26 = [a2 pickerViewControllerDelegateForAccessoryView];
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  [*&v7[v24] loadViewIfNeeded];
  v27 = *&v7[v24];
  v72.i8[0] = 0;
  *v79 = x;
  *&v79[1] = y;
  *&v79[2] = width;
  *&v79[3] = height;
  v80 = 0;
  v28 = v27;
  sub_19098C510(v72.i8, v79);

  [*&v7[v24] preferredContentSize];
  v30 = v29;
  v32 = v31;
  v33 = objc_allocWithZone(type metadata accessor for TapbackPickerBalloonParentView());
  v34 = TapbackPickerBalloonParentView.init(tapbackPickerPreferredContentSize:)(v30, v32);
  v35 = OBJC_IVAR___CKTapbackPickerContainerAccessoryView_pickerBalloonParentView;
  *&v7[OBJC_IVAR___CKTapbackPickerContainerAccessoryView_pickerBalloonParentView] = v34;
  v36 = v34;
  if (a2)
  {
    v37 = [a2 balloonParentViewDelegateForAccessoryView];
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  v38 = *&v7[v35];
  v39 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  v40 = *(v38 + v39);
  LOBYTE(v39) = [v22 isFromMe];

  v41 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
  swift_beginAccess();
  v40[v41] = v39 ^ 1;

  v42 = *&v7[v35];
  v43 = *&v7[v24];
  v44 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v45 = *&v42[v44];
  *&v42[v44] = v43;
  v46 = v43;
  v47 = v42;

  sub_19092A530();
  [*&v7[v35] sizeThatFits_];
  v49 = v48;
  v51 = v50;
  v52 = type metadata accessor for TapbackPickerContainerAccessoryView();
  v78.receiver = v7;
  v78.super_class = v52;
  v72 = vdupq_n_s64(1uLL);
  v73 = v16;
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  v77 = 2;
  v53 = objc_msgSendSuper2(&v78, sel_initWithFrame_configuration_, &v72, 0.0, 0.0, v49, v51);
  v54 = objc_opt_self();
  v55 = v53;
  result = [v54 sharedBehaviors];
  if (result)
  {
    v57 = result;
    [result tapbackPickerBlurPlatterPadding];
    v59 = v58;
    v61 = v60;

    sub_190D57C70();
    v62 = OBJC_IVAR___CKTapbackPickerContainerAccessoryView_pickerBalloonParentView;
    [*&v55[OBJC_IVAR___CKTapbackPickerContainerAccessoryView_pickerBalloonParentView] setFrame_];
    [v55 addSubview_];
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v65 = sub_190D53040();
    __swift_project_value_buffer(v65, qword_1EAD9D790);
    v66 = v55;
    v67 = sub_190D53020();
    v68 = sub_190D576C0();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v66;
      *v70 = v66;
      v71 = v66;
      _os_log_impl(&dword_19020E000, v67, v68, "Created TapbackPickerContainerAccessoryView %@", v69, 0xCu);
      sub_190830D58(v70);
      MEMORY[0x193AF7A40](v70, -1, -1);
      MEMORY[0x193AF7A40](v69, -1, -1);
    }

    swift_unknownObjectRelease();

    return v66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_190CB0178(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *(v4 + OBJC_IVAR___CKTapbackPickerContainerAccessoryView_pickerBalloonParentView);
  v10 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  v11 = (v4 + OBJC_IVAR___CKTapbackPickerContainerAccessoryView_layoutBounds);
  v12 = *(v4 + OBJC_IVAR___CKTapbackPickerContainerAccessoryView_layoutBounds + 16);
  v13 = *(v4 + OBJC_IVAR___CKTapbackPickerContainerAccessoryView_layoutBounds + 24);
  v14 = *&v9[v10];
  rect = v12;
  [v9 sizeThatFits_];
  v50 = v15;
  v52 = v16;
  v17 = _s7ChatKit34TapbackPickerBalloonLayoutTemplateC17selectionTailSizeSo6CGSizeVvgZ_0();
  v48 = a4;
  v49 = a3;
  if ([*(v4 + OBJC_IVAR___CKTapbackPickerContainerAccessoryView_chatItem) isFromMe])
  {
    v53.origin.x = a1;
    v53.origin.y = a2;
    v53.size.width = a3;
    v53.size.height = a4;
    v18 = a1;
    MinX = CGRectGetMinX(v53);
    v20 = *v11;
    v21 = v11[1];
    v54.origin.x = *v11;
    v54.origin.y = v21;
    v54.size.width = rect;
    v54.size.height = v13;
    v22 = CGRectGetMinX(v54);
  }

  else
  {
    v20 = *v11;
    v21 = v11[1];
    v55.origin.x = *v11;
    v55.origin.y = v21;
    v55.size.width = rect;
    v55.size.height = v13;
    MaxX = CGRectGetMaxX(v55);
    v56.size.height = a4;
    v18 = a1;
    MinX = MaxX;
    v56.origin.x = v18;
    v56.origin.y = a2;
    v56.size.width = a3;
    v22 = CGRectGetMaxX(v56);
  }

  v24 = (MinX - v22 - v17) * 0.5;
  if (v24 <= 6.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 6.0;
  }

  v26 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_horizontalMarginBetweenBubbleAndEmojiTail;
  swift_beginAccess();
  *&v14[v26] = v25;
  v27 = sub_190AC37E8();
  v57.origin.x = v20;
  v57.origin.y = v21;
  v57.size.width = rect;
  v57.size.height = v13;
  v58 = CGRectInset(v57, v27, 0.0);
  v28 = v48;
  [v9 preferredOriginXWithBalloonSourceFrame:v18 presentationBounds:a2 proposedSize:{a3, v48, v58.origin.x, v58.origin.y, v58.size.width, v58.size.height, *&v50, v52}];
  v30 = v29;
  v31 = *&v9[v10];
  v32 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_isWidthConstrained;
  swift_beginAccess();
  if (*(v31 + v32) == 1)
  {
    swift_beginAccess();
    v33 = qword_1EAD520F0;
    v34 = v31;
    if (v33 != -1)
    {
      v47 = v34;
      swift_once();
      v34 = v47;
    }
  }

  else
  {
    if (qword_1EAD52100 != -1)
    {
      swift_once();
    }

    if (qword_1EAD52128 != -1)
    {
      swift_once();
    }

    v28 = v48;
  }

  v35 = *&v9[v10];
  v36 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
  swift_beginAccess();
  v37 = v18;
  v38 = a2;
  v39 = a3;
  v40 = v28;
  if (*(v35 + v36) == 1)
  {
    v41 = CGRectGetMinX(*&v37);
    v42 = *&v9[v10];
    v59.origin.x = v18;
    v59.origin.y = a2;
    v59.size.width = v49;
    v59.size.height = v28;
    v43 = CGRectGetMaxX(v59);
  }

  else
  {
    v41 = CGRectGetMaxX(*&v37) - v50;
    v42 = *&v9[v10];
    v60.origin.x = v18;
    v60.origin.y = a2;
    v60.size.width = v49;
    v60.size.height = v28;
    v43 = CGRectGetMinX(v60);
  }

  v44 = v43;

  v45 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_sourceX;
  swift_beginAccess();
  *&v42[v45] = v44 - v30;

  return v30 - v41;
}

id TapbackPickerContainerAccessoryView.__allocating_init(frame:configuration:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v8;
  v12 = *(a1 + 64);
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  return [objc_allocWithZone(v5) initWithFrame:v11 configuration:{a2, a3, a4, a5}];
}

id TapbackPickerContainerAccessoryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPickerContainerAccessoryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall UITextView.ck_isTextLayoutExclusivelyUsingRTLWritingDirection()()
{
  v1 = [v0 textLayoutManager];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 documentRange];
  v4 = [v3 location];

  v13 = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = &v13;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_190CB0B6C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_190CB0B74;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190CB0AF4;
  aBlock[3] = &block_descriptor_125;
  v7 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v8 = v2;
  sub_190D50920();

  v9 = [v8 enumerateTextLayoutFragmentsFromLocation:v4 options:0 usingBlock:v7];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    v11 = v13;

    return v11;
  }

  __break(1u);
  return result;
}

BOOL sub_190CB0A50(void *a1, void *a2, char *a3)
{
  v5 = [a1 rangeInElement];
  v6 = [v5 location];

  v7 = [a2 baseWritingDirectionAtLocation_];
  swift_unknownObjectRelease();
  if (!v7)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v8 = 1;
LABEL_5:
    *a3 = v8;
  }

  return v7 != 0;
}

uint64_t sub_190CB0AF4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

BOOL sub_190CB0B38(void *a1)
{
  v1 = a1;
  isTextLayoutExclusivelyUsingRTLWriting = UITextView.ck_isTextLayoutExclusivelyUsingRTLWritingDirection()();

  return isTextLayoutExclusivelyUsingRTLWriting;
}

uint64_t sub_190CB0BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for BannerView();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD622E8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD622F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD622F8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78);
  sub_190D55FD0();
  v14 = __swift_project_boxed_opaque_existential_1(v25, v25[3])[10];
  __swift_destroy_boxed_opaque_existential_0(v25);
  if (v14)
  {
    sub_190CB3298(v2, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BannerView);
    v15 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v16 = swift_allocObject();
    sub_190CB335C(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for BannerView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62308);
    sub_190CB13EC();
    sub_190D56030();
    v17 = &v7[*(v5 + 36)];
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52FC8) + 28);
    v19 = *MEMORY[0x1E697DC28];
    v20 = sub_190D53A70();
    (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
    *v17 = swift_getKeyPath();
    v25[0] = sub_190D55E10();
    sub_190CB10EC();
    sub_190CB11D0();
    sub_190D55730();
    sub_19022EEA4(v7, &qword_1EAD622E8);

    *&v10[*(v8 + 36)] = sub_190D54EB0();
    sub_19022FD14(v10, v13, &qword_1EAD622F0);
    swift_storeEnumTagMultiPayload();
    sub_190CB0FDC();
    sub_190D54C50();
    return sub_19022EEA4(v10, &qword_1EAD622F0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_190CB0FDC();
    return sub_190D54C50();
  }
}

unint64_t sub_190CB0FDC()
{
  result = qword_1EAD45290;
  if (!qword_1EAD45290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD622F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD622E8);
    sub_190CB10EC();
    sub_190CB11D0();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD45208, &qword_1EAD53160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45290);
  }

  return result;
}

unint64_t sub_190CB10EC()
{
  result = qword_1EAD45280;
  if (!qword_1EAD45280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD622E8);
    sub_190233640(&qword_1EAD451D8, &qword_1EAD62300);
    sub_190233640(&qword_1EAD45200, &qword_1EAD52FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45280);
  }

  return result;
}

unint64_t sub_190CB11D0()
{
  result = qword_1EAD46140;
  if (!qword_1EAD46140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46140);
  }

  return result;
}

uint64_t sub_190CB1224()
{
  type metadata accessor for BannerView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78);
  sub_190D55FD0();
  v0 = __swift_project_boxed_opaque_existential_1(v3, v3[3])[10];
  if (v0)
  {
    v1 = sub_190D50920();
    v0(v1);
    sub_19022123C(v0);
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_190CB12B4()
{
  type metadata accessor for BannerView();

  return sub_190CB1224();
}

uint64_t sub_190CB1314@<X0>(uint64_t a1@<X8>)
{
  sub_190D55EA0();
  sub_190D553D0();
  sub_190D556F0();

  v2 = sub_190D552B0();
  sub_190D539C0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62308);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

unint64_t sub_190CB13EC()
{
  result = qword_1EAD45298;
  if (!qword_1EAD45298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62308);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45298);
  }

  return result;
}

uint64_t sub_190CB14A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_190D54F50();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C6F8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD623B8);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  sub_190D54F60();
  if (sub_190D54F70())
  {
    v16 = 0.75;
  }

  else
  {
    v16 = 1.0;
  }

  (*(v5 + 32))(v11, v7, v4);
  *&v11[*(v9 + 44)] = v16;
  v17 = sub_190D552B0();
  sub_190D539C0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_19081E40C(v11, v15, &qword_1EAD5C6F8);
  v26 = &v15[*(v13 + 44)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_190D56500();
  v29 = v28;
  sub_190D50920();
  if (sub_190D54F70())
  {
    v30 = 0.75;
  }

  else
  {
    v30 = 1.0;
  }

  sub_19081E40C(v15, a2, &qword_1EAD623B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD623C0);
  v32 = a2 + *(result + 36);
  *v32 = a1;
  *(v32 + 8) = 4;
  *(v32 + 16) = v30;
  *(v32 + 20) = 256;
  *(v32 + 24) = v27;
  *(v32 + 32) = v29;
  return result;
}

uint64_t sub_190CB1730@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62310);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v50 - v2;
  v56 = sub_190D53A60();
  v54 = *(v56 - 8);
  v4 = MEMORY[0x1EEE9AC00](v56);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62318);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v50 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62320);
  MEMORY[0x1EEE9AC00](v55);
  v63 = &v50 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62328);
  MEMORY[0x1EEE9AC00](v53);
  v62 = &v50 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62330);
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v50 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62338);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62340);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v60 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v50 - v18;
  v19 = type metadata accessor for BannerButton(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v66 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BannerView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A78);
  sub_190D55FD0();
  v22 = *(__swift_project_boxed_opaque_existential_1(v68, v69)[8] + 16);
  __swift_destroy_boxed_opaque_existential_0(v68);
  if (v22 != 1)
  {
    goto LABEL_7;
  }

  v51 = v15;
  v52 = v1;
  sub_190D55FD0();
  v23 = __swift_project_boxed_opaque_existential_1(v68, v69)[8];
  if (!*(v23 + 16))
  {
    __swift_destroy_boxed_opaque_existential_0(v68);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    sub_190CB2D30();
    return sub_190D54C50();
  }

  v24 = v66;
  sub_190CB3298(v23 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v66, type metadata accessor for BannerButton);
  __swift_destroy_boxed_opaque_existential_0(v68);
  v25 = v58;
  sub_190CB1F30(v24, v58);
  sub_1908B9230(v8);
  v26 = v54;
  v27 = v56;
  (*(v54 + 104))(v6, *MEMORY[0x1E697DBB8], v56);
  v28 = sub_190D53A50();
  v29 = *(v26 + 8);
  v29(v6, v27);
  v29(v8, v27);
  v30 = sub_190D55D50();
  if ((v28 & 1) == 0)
  {
    v31 = sub_190D55DF0();

    v30 = v31;
  }

  v32 = v51;
  KeyPath = swift_getKeyPath();
  v68[0] = v30;
  v34 = sub_190D53C70();
  v35 = v63;
  sub_19081E40C(v25, v63, &qword_1EAD62318);
  v36 = (v35 + *(v55 + 36));
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = v62;
  v38 = &v62[*(v53 + 36)];
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52FC8) + 28);
  v40 = *MEMORY[0x1E697DC28];
  v41 = sub_190D53A70();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = swift_getKeyPath();
  sub_19081E40C(v35, v37, &qword_1EAD62320);
  v42 = v64;
  sub_1908B9230(&v64[*(v59 + 36)]);
  sub_19081E40C(v37, v42, &qword_1EAD62328);
  v43 = v61;
  v44 = &v61[*(v57 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD52FB8);
  sub_190D54480();
  *v44 = swift_getKeyPath();
  sub_19081E40C(v42, v43, &qword_1EAD62330);
  v45 = v43;
  v46 = v60;
  sub_19081E40C(v45, v60, &qword_1EAD62338);
  *(v46 + *(v32 + 36)) = 257;
  v47 = v46;
  v48 = v65;
  sub_19081E40C(v47, v65, &qword_1EAD62340);
  sub_19022FD14(v48, v3, &qword_1EAD62340);
  swift_storeEnumTagMultiPayload();
  sub_190CB2D30();
  sub_190D54C50();
  sub_19022EEA4(v48, &qword_1EAD62340);
  return sub_190CB3300(v66);
}

uint64_t sub_190CB1F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for BannerButton(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62398);
  MEMORY[0x1EEE9AC00](v34);
  v11 = (&v33 - v10);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B30);
  v12 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v33 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD623A0);
  v15 = *(v36 - 8);
  v16 = MEMORY[0x1EEE9AC00](v36);
  v18 = &v33 - v17;
  v19 = *(a1 + 32);
  if (v19 && *(v19 + 16))
  {
    v33 = &v33;
    v20 = MEMORY[0x1EEE9AC00](v16);
    *(&v33 - 2) = v21;
    MEMORY[0x1EEE9AC00](v20);
    *(&v33 - 2) = v22;
    *(&v33 - 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD596C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B48);
    sub_1908BE60C();
    sub_1908BE690();
    sub_190D554F0();
    sub_190D553B0();
    v24 = sub_190233640(&qword_1EAD55B28, &qword_1EAD55B30);
    v25 = v35;
    sub_190D556F0();
    (*(v12 + 8))(v14, v25);
    v26 = v36;
    (*(v15 + 16))(v11, v18, v36);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62388);
    v39 = v25;
    v40 = v24;
    swift_getOpaqueTypeConformance2();
    sub_190233640(qword_1EAD45708, &qword_1EAD62388);
    sub_190D54C50();
    return (*(v15 + 8))(v18, v26);
  }

  else
  {
    sub_190CB3298(a1, v9, type metadata accessor for BannerButton);
    v28 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v29 = swift_allocObject();
    sub_190CB335C(v9, v29 + v28, type metadata accessor for BannerButton);
    sub_190CB3298(a1, v7, type metadata accessor for BannerButton);
    v30 = swift_allocObject();
    sub_190CB335C(v7, v30 + v28, type metadata accessor for BannerButton);
    v38 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    sub_190D55FC0();
    v31 = v40;
    *v11 = v39;
    v11[1] = v31;
    v11[2] = sub_1908BE518;
    v11[3] = v29;
    v11[4] = sub_190CB33C4;
    v11[5] = v30;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62388);
    v32 = sub_190233640(&qword_1EAD55B28, &qword_1EAD55B30);
    v39 = v35;
    v40 = v32;
    swift_getOpaqueTypeConformance2();
    sub_190233640(qword_1EAD45708, &qword_1EAD62388);
    return sub_190D54C50();
  }
}

uint64_t sub_190CB255C@<X0>(uint64_t a1@<X8>)
{
  sub_19081E484();
  sub_190D52690();
  v2 = sub_190D555F0();
  v4 = v3;
  v6 = v5;
  sub_190D553B0();
  v7 = sub_190D55540();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_19081E474(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_190D552B0();
  result = sub_190D539C0();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  *(a1 + 64) = v18;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_190CB2658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v42 = a2;
  v40 = sub_190D550C0();
  v33 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD623C8);
  v34 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v5 = &v33 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD623D0);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v33 - v6;
  v35 = sub_190D54A80();
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD623D8);
  v10 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v33 - v11;
  v13 = sub_190D53A60();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x1E697DBB8], v13, v15);
  v18 = sub_190D53A50();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    sub_190D54A70();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD623E0);
    v20 = sub_190233640(&qword_1EAD623E8, &qword_1EAD623E0);
    v21 = sub_190CB365C(&qword_1EAD45268, MEMORY[0x1E697C540]);
    v22 = v35;
    sub_190D55720();
    (*(v7 + 8))(v9, v22);
    v23 = v38;
    (*(v10 + 16))(v39, v12, v38);
    swift_storeEnumTagMultiPayload();
    v43 = v19;
    v44 = v22;
    v45 = v20;
    v46 = v21;
    swift_getOpaqueTypeConformance2();
    v24 = sub_190CB365C(&qword_1EAD564D0, MEMORY[0x1E697CB70]);
    v43 = v19;
    v44 = v40;
    v45 = v20;
    v46 = v24;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return (*(v10 + 8))(v12, v23);
  }

  else
  {
    sub_190D550B0();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD623E0);
    v27 = sub_190233640(&qword_1EAD623E8, &qword_1EAD623E0);
    v28 = sub_190CB365C(&qword_1EAD564D0, MEMORY[0x1E697CB70]);
    v29 = v40;
    sub_190D55720();
    (*(v33 + 8))(v3, v29);
    v30 = v34;
    v31 = v41;
    (*(v34 + 16))(v39, v5, v41);
    swift_storeEnumTagMultiPayload();
    v32 = sub_190CB365C(&qword_1EAD45268, MEMORY[0x1E697C540]);
    v43 = v26;
    v44 = v35;
    v45 = v27;
    v46 = v32;
    swift_getOpaqueTypeConformance2();
    v43 = v26;
    v44 = v29;
    v45 = v27;
    v46 = v28;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return (*(v30 + 8))(v5, v31);
  }
}

unint64_t sub_190CB2D30()
{
  result = qword_1EAD62348;
  if (!qword_1EAD62348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62340);
    sub_190CB2DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62348);
  }

  return result;
}

unint64_t sub_190CB2DBC()
{
  result = qword_1EAD62350;
  if (!qword_1EAD62350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62338);
    sub_190CB2E74();
    sub_190233640(&unk_1EAD451F0, &unk_1EAD52FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62350);
  }

  return result;
}

unint64_t sub_190CB2E74()
{
  result = qword_1EAD62358;
  if (!qword_1EAD62358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62330);
    sub_190CB2F30();
    sub_190CB365C(&qword_1EAD62390, _s25BannerButtonStyleModifierVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62358);
  }

  return result;
}

unint64_t sub_190CB2F30()
{
  result = qword_1EAD62360;
  if (!qword_1EAD62360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62328);
    sub_190CB2FE8();
    sub_190233640(&qword_1EAD45200, &qword_1EAD52FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62360);
  }

  return result;
}

unint64_t sub_190CB2FE8()
{
  result = qword_1EAD62368;
  if (!qword_1EAD62368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62320);
    sub_190CB30A0();
    sub_190233640(&qword_1EAD54240, &qword_1EAD54248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62368);
  }

  return result;
}

unint64_t sub_190CB30A0()
{
  result = qword_1EAD62370;
  if (!qword_1EAD62370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62318);
    sub_190CB3124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62370);
  }

  return result;
}

unint64_t sub_190CB3124()
{
  result = qword_1EAD62378;
  if (!qword_1EAD62378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55B30);
    sub_190233640(&qword_1EAD55B28, &qword_1EAD55B30);
    swift_getOpaqueTypeConformance2();
    sub_190233640(qword_1EAD45708, &qword_1EAD62388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62378);
  }

  return result;
}

uint64_t _s25BannerButtonStyleModifierVMa()
{
  result = qword_1EAD623A8;
  if (!qword_1EAD623A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190CB3298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190CB3300(uint64_t a1)
{
  v2 = type metadata accessor for BannerButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190CB335C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_190CB33C4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BannerButton(0);

  return sub_190CB255C(a1);
}

uint64_t sub_190CB3464()
{
  result = sub_190D53A60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_190CB3518()
{
  result = qword_1EAD45270;
  if (!qword_1EAD45270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD623C0);
    sub_190CB35D0();
    sub_190233640(&qword_1EAD45250, &qword_1EAD623F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45270);
  }

  return result;
}

unint64_t sub_190CB35D0()
{
  result = qword_1EAD45278;
  if (!qword_1EAD45278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD623B8);
    sub_190AB6984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45278);
  }

  return result;
}

uint64_t sub_190CB365C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190CB36A4()
{
  result = qword_1EAD623F8;
  if (!qword_1EAD623F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD623E0);
    sub_190D54A80();
    sub_190233640(&qword_1EAD623E8, &qword_1EAD623E0);
    sub_190CB365C(&qword_1EAD45268, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    sub_190D550C0();
    sub_190CB365C(&qword_1EAD564D0, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD623F8);
  }

  return result;
}

void CKConversationListCollectionViewController.deleteButtonTapped(itemIdentifier:completionHandler:cellToUpdate:alertsDisplayConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_190D56ED0();
  v13 = [v7 conversationForItemIdentifier_];

  if (v13)
  {
    v22 = a6;
    v14 = [v7 conversationList];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 pendingConversation];

      if (v16 && (sub_1902188FC(0, &qword_1EAD466B0), v17 = v13, v18 = sub_190D57D90(), v16, v17, (v18 & 1) != 0))
      {
        if (a3)
        {
          v27 = a3;
          v28 = a4;
          aBlock = MEMORY[0x1E69E9820];
          v24 = 1107296256;
          v25 = sub_190896518;
          v26 = &block_descriptor_3_4;
          v19 = _Block_copy(&aBlock);
          sub_190D50920();
        }

        else
        {
          v19 = 0;
        }

        [v7 performDeletionForPendingConversationCell:a5 completionHandler:v19 alertsDisplayConfiguration:v22];

        _Block_release(v19);
      }

      else
      {
        v20 = sub_190D56ED0();
        if (a3)
        {
          v27 = a3;
          v28 = a4;
          aBlock = MEMORY[0x1E69E9820];
          v24 = 1107296256;
          v25 = sub_190896518;
          v26 = &block_descriptor_126;
          v21 = _Block_copy(&aBlock);
          sub_190D50920();
        }

        else
        {
          v21 = 0;
        }

        [v7 performDeletionForActiveConversation:v13 itemIdentifier:v20 completionHandler:v21 cellToUpdate:a5 alertsDisplayConfiguration:v22];

        _Block_release(v21);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id CKConversationListCollectionViewController.deleteSwipeAction(indexPath:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  v110 = v4;
  v111 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v102 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v102 - v15;
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v102 - v18;
  v20 = [v2 dataSource];
  v21 = sub_190D51BB0();
  v22 = [v20 itemIdentifierForIndexPath_];

  if (v22)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v118 = 0u;
    v119 = 0u;
  }

  aBlock = v118;
  v113 = v119;
  if (!*(&v119 + 1))
  {
    sub_19022EEA4(&aBlock, &unk_1EAD551C0);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v34 = v110;
    v33 = v111;
    if (qword_1EAD51CF0 != -1)
    {
      swift_once();
    }

    v35 = sub_190D53040();
    __swift_project_value_buffer(v35, qword_1EAD9E100);
    (*(v33 + 16))(v7, a1, v34);
    v36 = sub_190D53020();
    v37 = sub_190D576C0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&aBlock = v39;
      *v38 = 136315138;
      sub_19089C534();
      v40 = sub_190D58720();
      v42 = v41;
      (*(v33 + 8))(v7, v34);
      v43 = sub_19021D9F8(v40, v42, &aBlock);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_19020E000, v36, v37, "not offering deletion swipe action because item identifier missing at indexPath: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x193AF7A40](v39, -1, -1);
      MEMORY[0x193AF7A40](v38, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v7, v34);
    }

    return 0;
  }

  v23 = v116;
  v24 = v117;
  v25 = sub_190D56ED0();
  v26 = [v2 conversationForItemIdentifier_];

  if (!v26)
  {
LABEL_19:

    if (qword_1EAD51CF0 != -1)
    {
      swift_once();
    }

    v44 = sub_190D53040();
    __swift_project_value_buffer(v44, qword_1EAD9E100);
    v46 = v110;
    v45 = v111;
    (*(v111 + 16))(v10, a1, v110);
    v47 = sub_190D53020();
    v48 = sub_190D576C0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&aBlock = v50;
      *v49 = 136315138;
      sub_19089C534();
      v51 = sub_190D58720();
      v53 = v52;
      (*(v45 + 8))(v10, v46);
      v54 = sub_19021D9F8(v51, v53, &aBlock);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_19020E000, v47, v48, "not offering deletion swipe action because conversation is not user deletable at indexPath: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x193AF7A40](v50, -1, -1);
      MEMORY[0x193AF7A40](v49, -1, -1);
    }

    else
    {

      (*(v45 + 8))(v10, v46);
    }

    return 0;
  }

  if (![v26 isUserDeletable])
  {

    goto LABEL_19;
  }

  v108 = v23;
  result = [v2 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_42;
  }

  v28 = result;
  v29 = sub_190D51BB0();
  v30 = [v28 cellForItemAtIndexPath_];

  v107 = v30;
  if (!v30)
  {

    if (qword_1EAD51CF0 != -1)
    {
      swift_once();
    }

    v55 = sub_190D53040();
    __swift_project_value_buffer(v55, qword_1EAD9E100);
    v57 = v110;
    v56 = v111;
    (*(v111 + 16))(v13, a1, v110);
    v58 = sub_190D53020();
    v59 = sub_190D576C0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = v26;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&aBlock = v62;
      *v61 = 136315138;
      sub_19089C534();
      v63 = sub_190D58720();
      v65 = v64;
      (*(v56 + 8))(v13, v57);
      v66 = sub_19021D9F8(v63, v65, &aBlock);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_19020E000, v58, v59, "not offering deletion swipe action because no cell to update was found at indexPath: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x193AF7A40](v62, -1, -1);
      MEMORY[0x193AF7A40](v61, -1, -1);
    }

    else
    {

      (*(v56 + 8))(v13, v57);
    }

    return 0;
  }

  v106 = v26;
  v31 = [objc_opt_self() sharedFeatureFlags];
  v32 = [v31 isConversationListRefreshEnabled];

  if ((v32 & 1) == 0)
  {
    result = CKFrameworkBundle();
    if (result)
    {
      v67 = result;
      v68 = sub_190D56ED0();
      v69 = sub_190D56ED0();
      v70 = [v67 localizedStringForKey:v68 value:0 table:v69];

      v103 = sub_190D56F10();
      v104 = v71;

      goto LABEL_31;
    }

LABEL_42:
    __break(1u);
    return result;
  }

  v103 = 0;
  v104 = 0;
LABEL_31:
  v72 = v108;
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = v110;
  v74 = v111;
  v76 = *(v111 + 16);
  v108 = v111 + 16;
  v105 = v76;
  v76(v19, a1, v110);
  v77 = (*(v74 + 80) + 40) & ~*(v74 + 80);
  v78 = v6 + v77;
  v79 = v73;
  v80 = (v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  *(v81 + 2) = v79;
  *(v81 + 3) = v72;
  *(v81 + 4) = v24;
  (*(v74 + 32))(&v81[v77], v19, v75);
  v82 = v107;
  *&v81[v80] = v107;
  if (v104)
  {
    sub_190D50920();
    v83 = v82;
    v84 = sub_190D56ED0();
  }

  else
  {
    sub_190D50920();
    v85 = v82;
    v84 = 0;
  }

  v86 = v109;
  v114 = sub_190CB651C;
  v115 = v81;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v113 = sub_190CB4BA4;
  *(&v113 + 1) = &block_descriptor_9_9;
  v87 = _Block_copy(&aBlock);
  v88 = [objc_opt_self() contextualActionWithStyle:1 title:v84 handler:v87];

  _Block_release(v87);

  v89 = sub_190D56ED0();
  v90 = [objc_opt_self() systemImageNamed_];

  v91 = v88;
  [v88 setImage_];

  if (qword_1EAD51CF0 != -1)
  {
    swift_once();
  }

  v92 = sub_190D53040();
  __swift_project_value_buffer(v92, qword_1EAD9E100);
  v93 = v110;
  v105(v86, a1, v110);
  v94 = sub_190D53020();
  v95 = sub_190D576C0();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&aBlock = v97;
    *v96 = 136315138;
    sub_19089C534();
    v98 = sub_190D58720();
    v100 = v99;
    (*(v111 + 8))(v86, v93);
    v101 = sub_19021D9F8(v98, v100, &aBlock);

    *(v96 + 4) = v101;
    _os_log_impl(&dword_19020E000, v94, v95, "Offering swipe to delete action at indexPath: %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x193AF7A40](v97, -1, -1);
    MEMORY[0x193AF7A40](v96, -1, -1);
  }

  else
  {

    (*(v111 + 8))(v86, v93);
  }

  return v91;
}

void sub_190CB47D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_190D51C00();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v42 = a9;
    v43 = a6;
    v41 = [objc_allocWithZone(CKConversationConfirmationAlertsDisplayConfiguration) init];
    [v41 setSourceView_];
    if (qword_1EAD51CF0 != -1)
    {
      swift_once();
    }

    v21 = sub_190D53040();
    __swift_project_value_buffer(v21, qword_1EAD9E100);
    (*(v16 + 16))(v18, a8, v15);
    sub_190D52690();
    v22 = sub_190D53020();
    v23 = sub_190D576C0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v40 = a3;
      v25 = v24;
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v25 = 136315394;
      *(v25 + 4) = sub_19021D9F8(v43, a7, aBlock);
      *(v25 + 12) = 2080;
      sub_19089C534();
      HIDWORD(v37) = v23;
      v26 = sub_190D58720();
      v39 = a7;
      v27 = v20;
      v28 = a4;
      v30 = v29;
      (*(v16 + 8))(v18, v15);
      v31 = sub_19021D9F8(v26, v30, aBlock);
      a4 = v28;
      v20 = v27;

      *(v25 + 14) = v31;
      _os_log_impl(&dword_19020E000, v22, BYTE4(v37), "Swipe-to-delete action began execution: %s, at indexPath: %s", v25, 0x16u);
      v32 = v38;
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v32, -1, -1);
      v33 = v25;
      a3 = v40;
      MEMORY[0x193AF7A40](v33, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v18, v15);
    }

    v34 = sub_190D56ED0();
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19088CA10;
    aBlock[3] = &block_descriptor_62_4;
    v35 = _Block_copy(aBlock);
    sub_190D50920();

    v36 = v41;
    [v20 deleteButtonTappedForItemIdentifier:v34 completionHandler:v35 cellToUpdate:v42 alertsDisplayConfiguration:v41];
    _Block_release(v35);
  }
}

void sub_190CB4BA4(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_190D50920();
  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_190CB6714, v8);
}

void __swiftcall CKConversationListCollectionViewController.recentlyDeletedContextMenu(collectionView:indexPaths:point:)(UIMenu_optional *__return_ptr retstr, UICollectionView *collectionView, Swift::OpaquePointer indexPaths, CGPoint point)
{
  if (*(indexPaths._rawValue + 2))
  {
    y = point.y;
    x = point.x;
    sub_190D51C00();
    v9 = sub_190D57160();
    v10 = [v4 conversationsAtIndexPaths_];

    sub_1902188FC(0, &qword_1EAD466B0);
    v11 = sub_190D57180();

    v12 = sub_190CB4EF8(v11, collectionView, indexPaths._rawValue, x, y);
    v13 = sub_190CB559C(v11, collectionView, indexPaths._rawValue, x, y);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_190DD5CE0;
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    sub_1902188FC(0, &unk_1EAD44ED0);
    sub_190D57C90();
  }
}

id sub_190CB4EF8(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v53 = a2;
  v49 = a3;
  v55 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = sub_190D51C00();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v20 = CKIsRunningInMacCatalyst();
  result = CKFrameworkBundle();
  v22 = result;
  if (v20)
  {
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_19;
  }

LABEL_5:
  v23 = sub_190D56ED0();
  v24 = sub_190D56ED0();
  v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

  v26 = sub_190D56F10();
  v51 = v27;
  v52 = v26;

  v28 = sub_190D56ED0();
  v50 = [objc_opt_self() systemImageNamed_];

  v29 = [objc_allocWithZone(CKConversationConfirmationAlertsDisplayConfiguration) init];
  [v29 setPresentationViewController_];
  sub_1902188FC(0, &qword_1EAD466B0);
  v30 = sub_190D57160();
  [v29 setTargetConversations_];

  v31 = [v53 indexPathForItemAtPoint_];
  if (v31)
  {
    v32 = v31;
    sub_190D51BC0();

    v33 = *(v14 + 32);
    v33(v9, v16, v13);
    v34 = *(v14 + 56);
    v34(v9, 0, 1, v13);
    v33(v12, v9, v13);
    v34(v12, 0, 1, v13);
    v35 = (*(v14 + 48))(v12, 1, v13);
  }

  else
  {
    v36 = *(v14 + 56);
    v37 = 1;
    v36(v9, 1, 1, v13);
    if (*(v49 + 16))
    {
      (*(v14 + 16))(v12, v49 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
      v37 = 0;
    }

    v36(v12, v37, 1, v13);
    v38 = *(v14 + 48);
    if (v38(v9, 1, v13) != 1)
    {
      sub_19022EEA4(v9, &qword_1EAD55490);
    }

    v35 = v38(v12, 1, v13);
  }

  if (v35 == 1)
  {
    sub_19022EEA4(v12, &qword_1EAD55490);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    v39 = sub_190D51BB0();
    v40 = [v53 cellForItemAtIndexPath_];

    if (v40)
    {
      [v29 setSourceView_];
    }

    (*(v14 + 8))(v19, v13);
  }

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  v43 = v55;
  *(v42 + 16) = v41;
  *(v42 + 24) = v43;
  aBlock[4] = sub_190CB66F0;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_53_1;
  v44 = _Block_copy(aBlock);
  sub_190D52690();

  [v29 setAlertsCompletedBlock_];
  _Block_release(v44);
  v45 = [objc_allocWithZone(CKConversationConfirmationAlertsController) initWithConfiguration_];
  sub_1902188FC(0, &qword_1EAD464F0);
  *(swift_allocObject() + 16) = v45;
  v46 = v45;
  v47 = sub_190D57DC0();

  return v47;
}

id sub_190CB559C(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v54 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = sub_190D51C00();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  v24 = [objc_allocWithZone(CKConversationConfirmationAlertsDisplayConfiguration) init];
  v56 = v6;
  [v24 setPresentationViewController_];
  sub_1902188FC(0, &qword_1EAD466B0);
  v57 = a1;
  v25 = sub_190D57160();
  [v24 setTargetConversations_];

  v55 = a2;
  v26 = [a2 indexPathForItemAtPoint_];
  if (v26)
  {
    v27 = v26;
    sub_190D51BC0();

    v28 = *(v18 + 32);
    v28(v13, v20, v17);
    v29 = *(v18 + 56);
    v29(v13, 0, 1, v17);
    v28(v16, v13, v17);
    v29(v16, 0, 1, v17);
    v30 = (*(v18 + 48))(v16, 1, v17);
  }

  else
  {
    v31 = *(v18 + 56);
    v32 = 1;
    v31(v13, 1, 1, v17);
    if (*(v54 + 16))
    {
      (*(v18 + 16))(v16, v54 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17);
      v32 = 0;
    }

    v31(v16, v32, 1, v17);
    v33 = *(v18 + 48);
    if (v33(v13, 1, v17) != 1)
    {
      sub_19022EEA4(v13, &qword_1EAD55490);
    }

    v30 = v33(v16, 1, v17);
  }

  if (v30 == 1)
  {
    sub_19022EEA4(v16, &qword_1EAD55490);
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    v34 = sub_190D51BB0();
    v35 = [v55 cellForItemAtIndexPath_];

    if (v35)
    {
      [v24 setSourceView_];
    }

    (*(v18 + 8))(v23, v17);
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  v38 = v57;
  *(v37 + 16) = v36;
  *(v37 + 24) = v38;
  aBlock[4] = sub_190CB66EC;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_40_1;
  v39 = _Block_copy(aBlock);
  sub_190D52690();

  [v24 setAlertsCompletedBlock_];
  _Block_release(v39);
  v40 = [objc_allocWithZone(CKConversationConfirmationAlertsController) initWithConfiguration_];
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  v42 = v40;
  v43 = CKIsRunningInMacCatalyst();
  result = CKFrameworkBundle();
  v45 = result;
  if (v43)
  {
    if (result)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_21;
  }

LABEL_17:
  v46 = sub_190D56ED0();
  v47 = sub_190D56ED0();
  v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

  sub_190D56F10();
  v49 = sub_190D56ED0();
  v50 = [objc_opt_self() systemImageNamed_];

  sub_1902188FC(0, &qword_1EAD464F0);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_190CB66AC;
  *(v51 + 24) = v41;
  v52 = v50;
  sub_190D50920();
  v53 = sub_190D57DC0();
  if (!CKIsRunningInMacCatalyst())
  {
    [v53 setAttributes_];
  }

  return v53;
}

uint64_t CKConversationListCollectionViewController.toolbarPresentRecoverableDeletionConfirmations(conversations:sender:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_190D51840();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  sub_190D517F0();
  v13 = [objc_allocWithZone(CKConversationConfirmationAlertsDisplayConfiguration) init];
  [v13 setPresentationViewController_];
  sub_1902188FC(0, &qword_1EAD466B0);
  v14 = sub_190D57160();
  [v13 setTargetConversations_];

  if (a2)
  {
    v22[1] = &unk_1F04F69E8;
    swift_unknownObjectRetain();
    v15 = swift_dynamicCastObjCProtocolConditional();
    if (!v15)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v15 = 0;
  }

  [v13 setSourceItem_];
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v9, v12, v6);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  (*(v7 + 32))(v18 + v17, v9, v6);
  aBlock[4] = sub_190CB65E8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_16_0;
  v19 = _Block_copy(aBlock);
  sub_190D52690();

  [v13 setAlertsCompletedBlock_];
  _Block_release(v19);
  v20 = [objc_allocWithZone(CKConversationConfirmationAlertsController) initWithConfiguration_];
  [v20 presentRecoverableConversationDeletionConfirmations];

  return (*(v7 + 8))(v12, v6);
}

void sub_190CB607C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1902188FC(0, &qword_1EAD466B0);
    v2 = sub_190D57160();
    v3 = sub_190D51780();
    [v1 recoverableDeletionConfirmedForConversations:v2 deleteDate:v3];
  }
}

void sub_190CB61BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = v6;
  v13 = [objc_allocWithZone(CKConversationConfirmationAlertsDisplayConfiguration) init];
  [v13 setPresentationViewController_];
  sub_1902188FC(0, &qword_1EAD466B0);
  v14 = sub_190D57160();
  [v13 setTargetConversations_];

  if (a2)
  {
    swift_unknownObjectRetain();
    v15 = swift_dynamicCastObjCProtocolConditional();
    if (!v15)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v15 = 0;
  }

  [v13 setSourceItem_];
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);
  sub_190D52690();

  [v13 setAlertsCompletedBlock_];
  _Block_release(v18);
  v19 = [objc_allocWithZone(CKConversationConfirmationAlertsController) initWithConfiguration_];
  [v19 *a6];
}

void sub_190CB63C4(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1902188FC(0, &qword_1EAD466B0);
    v6 = sub_190D57160();
    [v5 *a3];
  }
}

uint64_t sub_190CB6478(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  sub_1902188FC(0, &qword_1EAD466B0);
  v8 = sub_190D57180();
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);
  swift_unknownObjectRelease();
}

void sub_190CB651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_190D51C00() - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  sub_190CB47D4(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_190CB65E8()
{
  sub_190D51840();

  sub_190CB607C();
}

id TapbackPileLayout.__allocating_init(sourcePoint:viewModel:)(void *a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_190CB74C0(a1, a2, a3);

  return v8;
}

void sub_190CB6770(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_contentBackground;
  v10 = vdupq_n_s64(0x4041000000000000uLL);
  *v9 = 0;
  *(v9 + 8) = 0;
  __asm { FMOV            V1.2D, #-17.0 }

  *(v9 + 16) = v10;
  *(v9 + 32) = _Q1;
  *(v9 + 48) = v10;
  if (qword_1EAD51A40 != -1)
  {
    swift_once();
  }

  v70 = *&qword_1EAD9DB98;
  v16 = v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_backgroundSolidStroke;
  v17 = *&qword_1EAD9DB98 + 17.0 + *&qword_1EAD9DB98 + 17.0;
  *(v16 + 16) = v17;
  *(v16 + 24) = v17;
  *(v16 + 32) = vsubq_f64(*v16, vdupq_lane_s64(COERCE__INT64(v17 * 0.5), 0));
  *(v16 + 48) = v17;
  *(v16 + 56) = v17;
  v18 = *v9;
  v19 = *(v9 + 8);
  *v16 = *v9;
  *(v16 + 8) = v19;
  *(v16 + 32) = v18 - v17 * 0.5;
  *(v16 + 40) = v19 - v17 * 0.5;
  *(v16 + 48) = v17;
  *(v16 + 56) = v17;
  v20 = v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTail;
  __asm
  {
    FMOV            V0.2D, #10.0
    FMOV            V2.2D, #-5.0
  }

  v23 = vaddq_f64(*(v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTail), _Q2);
  *(v20 + 16) = _Q0;
  *(v20 + 32) = v23;
  *(v20 + 48) = _Q0;
  v24 = *(v9 + 24);
  v25 = 10.0;
  v26 = 10.0;
  if (qword_1EAD51A48 != -1)
  {
    swift_once();
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
  }

  v27 = v24 * 0.5 + *&qword_1EAD9DBA0 + v26 * 0.5;
  v28 = v18 + v27 * -0.587785252;
  v29 = v19 + v27 * 0.809016994;
  *v20 = v28;
  *(v20 + 8) = v29;
  *(v20 + 32) = v28 - v25 * 0.5;
  *(v20 + 40) = v29 - v26 * 0.5;
  *(v20 + 48) = v25;
  *(v20 + 56) = v26;
  v30 = v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTail;
  __asm { FMOV            V0.2D, #5.0 }

  *(v30 + 16) = _Q0;
  v32 = v26 * 0.5 + 3.0 + 2.5;
  v33 = v28 + v32 * -0.615661475;
  v34 = v29 + v32 * 0.788010754;
  *v30 = v33;
  *(v30 + 8) = v34;
  *(v30 + 32) = v33 + -2.5;
  *(v30 + 40) = v34 + -2.5;
  *(v30 + 48) = _Q0;
  *&_Q0 = *(v16 + 32);
  v35 = *(v16 + 40);
  v36 = *(v16 + 48);
  v37 = *(v16 + 56);
  MaxX = CGRectGetMaxX(*&_Q0);
  MinX = CGRectGetMinX(*(v30 + 32));
  v40 = CGRectGetMinX(*(v16 + 32));
  if (v40 >= MinX)
  {
    v41 = MinX;
  }

  else
  {
    v41 = v40;
  }

  MaxY = CGRectGetMaxY(*(v30 + 32));
  MinY = CGRectGetMinY(*(v16 + 32));
  v44 = CGRectGetMinX(*(v30 + 32));
  v45 = CGRectGetMinX(*(v16 + 32));
  if (v45 < v44)
  {
    v44 = v45;
  }

  v46 = CGRectGetMinY(*(v16 + 32));
  if (v8)
  {
    v47 = -1.0;
  }

  else
  {
    v47 = 1.0;
  }

  v48 = v47 * (*v9 - v44) + a2;
  v49 = *(v9 + 8) - v46 + a3;
  *v9 = v48;
  *(v9 + 8) = v49;
  v50 = *(v9 + 16);
  v51 = *(v9 + 24);
  *(v9 + 32) = v48 - v50 * 0.5;
  *(v9 + 40) = v49 - v51 * 0.5;
  *(v9 + 48) = v50;
  *(v9 + 56) = v51;
  v52 = v47 * (*v16 - v44) + a2;
  v53 = *(v16 + 8) - v46 + a3;
  *v16 = v52;
  *(v16 + 8) = v53;
  v54 = *(v16 + 16);
  v55 = *(v16 + 24);
  *(v16 + 32) = v52 - v54 * 0.5;
  *(v16 + 40) = v53 - v55 * 0.5;
  *(v16 + 48) = v54;
  *(v16 + 56) = v55;
  v56 = v47 * (*v20 - v44) + a2;
  v57 = *(v20 + 8) - v46 + a3;
  *v20 = v56;
  *(v20 + 8) = v57;
  v58 = *(v20 + 16);
  v59 = *(v20 + 24);
  *(v20 + 32) = v56 - v58 * 0.5;
  *(v20 + 40) = v57 - v59 * 0.5;
  *(v20 + 48) = v58;
  *(v20 + 56) = v59;
  v60 = v47 * (*v30 - v44) + a2;
  v61 = *(v30 + 8) - v46 + a3;
  *v30 = v60;
  *(v30 + 8) = v61;
  v62 = *(v30 + 16);
  v63 = *(v30 + 24);
  *(v30 + 32) = v60 - v62 * 0.5;
  *(v30 + 40) = v61 - v63 * 0.5;
  *(v30 + 48) = v62;
  *(v30 + 56) = v63;
  v64 = (v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTailSolidStroke);
  v65 = v70 + 5.0 + v70 + 5.0;
  v64[1].f64[0] = v65;
  v64[1].f64[1] = v65;
  v64[2] = vsubq_f64(*v64, vdupq_lane_s64(COERCE__INT64(v65 * 0.5), 0));
  v64[3].f64[0] = v65;
  v64[3].f64[1] = v65;
  v66 = (v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTailSolidStroke);
  v67 = v70 + 2.5 + v70 + 2.5;
  v66[2] = v67;
  v66[3] = v67;
  v64->f64[0] = v56;
  v64->f64[1] = v57;
  v64[2].f64[0] = v56 - v65 * 0.5;
  v64[2].f64[1] = v57 - v65 * 0.5;
  v64[3].f64[0] = v65;
  v64[3].f64[1] = v65;
  *v66 = v60;
  v66[1] = v61;
  v66[4] = v60 - v67 * 0.5;
  v66[5] = v61 - v67 * 0.5;
  v66[6] = v67;
  v66[7] = v67;
  v68 = a2 - (MaxX - v41);
  if (!v8)
  {
    v68 = a2;
  }

  v69 = (v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame);
  *v69 = v68;
  v69[1] = a3;
  v69[2] = MaxX - v41;
  v69[3] = MaxY - MinY;
}

id sub_190CB6BCC()
{
  v1 = OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_template;
  *&v0[v1] = type metadata accessor for TapbackPileTemplate();
  v2 = &v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_backgroundSolidStroke];
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 0.0;
  v24.size.height = 0.0;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = 0.0;
  v25.size.height = 0.0;
  MidY = CGRectGetMidY(v25);
  *v2 = MidX;
  v2[1] = MidY;
  v2[2] = 0.0;
  v2[3] = 0.0;
  v2[4] = MidX;
  v2[5] = MidY;
  v2[6] = 0.0;
  v2[7] = 0.0;
  v5 = &v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = &v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_contentBackground];
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 0.0;
  v26.size.height = 0.0;
  v7 = CGRectGetMidX(v26);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = 0.0;
  v27.size.height = 0.0;
  v8 = CGRectGetMidY(v27);
  *v6 = v7;
  v6[1] = v8;
  v6[2] = 0.0;
  v6[3] = 0.0;
  v6[4] = v7;
  v6[5] = v8;
  v6[6] = 0.0;
  v6[7] = 0.0;
  v9 = &v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTail];
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = 0.0;
  v28.size.height = 0.0;
  v10 = CGRectGetMidX(v28);
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = 0.0;
  v29.size.height = 0.0;
  v11 = CGRectGetMidY(v29);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = 0.0;
  v9[3] = 0.0;
  v9[4] = v10;
  v9[5] = v11;
  v9[6] = 0.0;
  v9[7] = 0.0;
  v12 = &v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTailSolidStroke];
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = 0.0;
  v30.size.height = 0.0;
  v13 = CGRectGetMidX(v30);
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = 0.0;
  v31.size.height = 0.0;
  v14 = CGRectGetMidY(v31);
  *v12 = v13;
  v12[1] = v14;
  v12[2] = 0.0;
  v12[3] = 0.0;
  v12[4] = v13;
  v12[5] = v14;
  v12[6] = 0.0;
  v12[7] = 0.0;
  v15 = &v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTail];
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = 0.0;
  v32.size.height = 0.0;
  v16 = CGRectGetMidX(v32);
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = 0.0;
  v33.size.height = 0.0;
  v17 = CGRectGetMidY(v33);
  *v15 = v16;
  v15[1] = v17;
  v15[2] = 0.0;
  v15[3] = 0.0;
  v15[4] = v16;
  v15[5] = v17;
  v15[6] = 0.0;
  v15[7] = 0.0;
  v18 = &v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTailSolidStroke];
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = 0.0;
  v34.size.height = 0.0;
  v19 = CGRectGetMidX(v34);
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = 0.0;
  v35.size.height = 0.0;
  v20 = CGRectGetMidY(v35);
  *v18 = v19;
  v18[1] = v20;
  v18[2] = 0.0;
  v18[3] = 0.0;
  v18[4] = v19;
  v18[5] = v20;
  v21 = type metadata accessor for TapbackPlatterLayout();
  v18[6] = 0.0;
  v18[7] = 0.0;
  v23.receiver = v0;
  v23.super_class = v21;
  return objc_msgSendSuper2(&v23, sel_init);
}

id TapbackPileLayout.init(sourcePoint:viewModel:)(void *a1, double a2, double a3)
{
  v4 = sub_190CB74C0(a1, a2, a3);

  return v4;
}

void sub_190CB6EE8()
{
  v2 = OBJC_IVAR___CKTapbackPileLayout_platterLayouts;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    if (!sub_190D581C0())
    {
      return;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_190D52690();
    v0 = MEMORY[0x193AF3B90](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v0 = *(v3 + 32);
  }

  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_22:

    return;
  }

  v4 = sub_190D581C0();
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_8:
  v2 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_25:
    sub_190D52690();
    v18 = MEMORY[0x193AF3B90](v2, v3);

    v5 = v18;
    goto LABEL_13;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 8 * v2 + 32);
LABEL_13:
    if (*(v1 + OBJC_IVAR___CKTapbackPileLayout_showBottomPeekPlatter) == 1)
    {

      v5 = *(v1 + OBJC_IVAR___CKTapbackPileLayout_bottomPeekPlatterLayout);
    }

    v6 = &v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame];
    v7 = *&v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame];
    v8 = *&v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame + 8];
    v9 = *&v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame + 16];
    v10 = *&v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame + 24];
    v11 = v5;
    v19.origin.x = v7;
    v19.origin.y = v8;
    v19.size.width = v9;
    v19.size.height = v10;
    CGRectGetMaxX(v19);
    v12 = &v11[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame];
    CGRectGetMaxX(*&v11[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame]);
    CGRectGetMinX(*v6);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];

    v20.origin.x = v13;
    v20.origin.y = v14;
    v20.size.width = v15;
    v20.size.height = v16;
    CGRectGetMinX(v20);
    v17 = &v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_backgroundSolidStroke];
    if (*&v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTail + 24] * 0.5 > 0.0)
    {
      CGRectGetMaxY(*&v0[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTail + 32]);
      CGRectGetMinY(v17[1]);
    }

    CGRectGetWidth(*v6);

    v0 = v11;
    goto LABEL_22;
  }

  __break(1u);
}

id TapbackPileLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_190CB7238(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

float64x2_t sub_190CB72BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
  swift_beginAccess();
  if (a3 > 3)
  {
    __break(1u);
  }

  else
  {
    LODWORD(a1) = *(a1 + v8);
    v4 = dbl_1F04022F0[a3 + 4];
    if (qword_1EAD51A40 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v9 = *(a2 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_contentBackground + 24) * 0.5 + dbl_1F04022B0[a3 + 4] - v4;
  if (a1)
  {
    v9 = -v9;
  }

  v10 = *(a2 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_contentBackground) + v9;
  v11 = *(a2 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_backgroundSolidStroke + 8);
  v12 = (v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_backgroundSolidStroke);
  v13 = v4 + *&qword_1EAD9DB98 + v4 + *&qword_1EAD9DB98;
  v12[2] = v13;
  v12[3] = v13;
  *v12 = v10;
  v12[1] = v11;
  v14 = v10 - v13 * 0.5;
  v15 = v11 - v13 * 0.5;
  v12[4] = v14;
  v12[5] = v15;
  v12[6] = v13;
  v12[7] = v13;
  v16 = (v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame);
  *v16 = v14;
  v16[1] = v15;
  v16[2] = v13;
  v16[3] = v13;
  v17 = (v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_contentBackground);
  v17[2] = v4 + v4;
  v17[3] = v4 + v4;
  v18 = (v4 + v4) * 0.5;
  *v17 = v10;
  v17[1] = v11;
  v17[4] = v10 - v18;
  v17[5] = v11 - v18;
  v17[6] = v4 + v4;
  v17[7] = v4 + v4;
  v19 = (v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTail);
  v19->f64[0] = v10;
  v19->f64[1] = v11;
  v20 = v19[1];
  __asm { FMOV            V3.2D, #0.5 }

  v26.f64[0] = v10;
  v26.f64[1] = v11;
  v19[2] = vsubq_f64(v26, vmulq_f64(v20, _Q3));
  v19[3] = v20;
  v27 = (v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTail);
  v27->f64[0] = v10;
  v27->f64[1] = v11;
  v28 = v27[1];
  v27[2] = vsubq_f64(v26, vmulq_f64(v28, _Q3));
  v27[3] = v28;
  v29 = (v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTailSolidStroke);
  v29->f64[0] = v10;
  v29->f64[1] = v11;
  v30 = v29[1];
  v29[2] = vsubq_f64(v26, vmulq_f64(v30, _Q3));
  v29[3] = v30;
  v31 = (v3 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTailSolidStroke);
  v31->f64[0] = v10;
  v31->f64[1] = v11;
  result = v31[1];
  v31[2] = vsubq_f64(v26, vmulq_f64(result, _Q3));
  v31[3] = result;
  return result;
}

id sub_190CB74C0(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___CKTapbackPileLayout_template;
  *&v4[v8] = type metadata accessor for TapbackPileTemplate();
  v9 = OBJC_IVAR___CKTapbackPileLayout_platterLayouts;
  *&v4[OBJC_IVAR___CKTapbackPileLayout_platterLayouts] = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR___CKTapbackPileLayout_bottomPeekPlatterLayout;
  v11 = type metadata accessor for TapbackPlatterLayout();
  *&v4[v10] = [objc_allocWithZone(v11) init];
  v30 = OBJC_IVAR___CKTapbackPileLayout_showBottomPeekPlatter;
  v4[OBJC_IVAR___CKTapbackPileLayout_showBottomPeekPlatter] = 0;
  v12 = OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (v13 < 1)
  {
    goto LABEL_31;
  }

  v29 = v10;
  swift_beginAccess();
  v14 = 0;
  do
  {
    v15 = [objc_allocWithZone(v11) init];
    if (v14)
    {
      v16 = *&v4[v9];
      if (v16 >> 62)
      {
        v17 = sub_190D581C0();
        if (!v17)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_32;
        }
      }

      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_33;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        sub_190D52690();
        v19 = MEMORY[0x193AF3B90](v18, v16);
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      sub_190CB72BC(a1, v19, v14);
    }

    else
    {
      sub_190CB6770(a1, a2, a3);
    }

    swift_beginAccess();
    v20 = v15;
    MEMORY[0x193AF29E0]();
    if (*((*&v4[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v4[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    ++v14;
    sub_190D571E0();
    swift_endAccess();
  }

  while (v13 != v14);
  v21 = OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v4[v30] = v22;
  if (v22 != 1)
  {
LABEL_31:
    v31.receiver = v4;
    v31.super_class = type metadata accessor for TapbackPileLayout();
    return objc_msgSendSuper2(&v31, sel_init);
  }

  v15 = *&v4[v29];
  swift_beginAccess();
  v11 = *&v4[v9];
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_23;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_36:
  result = sub_190D581C0();
  if (!result)
  {
    goto LABEL_37;
  }

LABEL_23:
  v14 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_39:
    v28 = v15;
    sub_190D52690();
    v14 = MEMORY[0x193AF3B90](v14, v11);

LABEL_28:
    v26 = *&v4[v9];
    if (!(v26 >> 62))
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:
      sub_190CB72BC(a1, v14, v27);

      goto LABEL_31;
    }

LABEL_41:
    v27 = sub_190D581C0();
    goto LABEL_30;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v11 + 8 * v14 + 32);
    v25 = v15;
    v14 = v24;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

unint64_t CKLocationSectionCellType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

void static CKDetailsControllerLocationHelper.mapURL(for:in:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v38 - v11;
  [a1 coordinate];
  v14 = v13;
  v16 = v15;
  v17 = [a2 chat];
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 account];
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = v19;
  if ([v19 loginIMHandle])
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (*(&v41 + 1))
  {
    sub_19086E9EC();
    if (swift_dynamicCast())
    {
      v21 = v39;
      v22 = [v39 name];
      if (v22)
      {
        v23 = v22;
        sub_190D56F10();

        v24 = sub_190D56ED0();
      }

      else
      {
        v24 = 0;
      }

      v32 = [objc_allocWithZone(MEMORY[0x1E696F4A0]) initForCoordinate:v24 label:{v14, v16}];

      MEMORY[0x193AF5FB0]([a1 coordinate]);
      [v32 setDisplayRegion_];
      if (v32)
      {
        v33 = [v32 buildForWeb];
        if (v33)
        {
          v34 = v33;
          sub_190D515B0();

          v35 = 0;
          v21 = v34;
        }

        else
        {
          v35 = 1;
        }

        v37 = sub_190D515F0();
        (*(*(v37 - 8) + 56))(v12, v35, 1, v37);
        v31 = v12;
LABEL_18:
        sub_190844E18(v31, a3);
        return;
      }

      v36 = sub_190D515F0();
      (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
      return;
    }

LABEL_12:
    goto LABEL_13;
  }

  sub_19021E7D8(v42);
LABEL_13:
  v25 = objc_allocWithZone(MEMORY[0x1E696F4A0]);
  v26 = sub_190D56ED0();
  v27 = [v25 initForCoordinate:v26 label:{v14, v16}];

  if (v27)
  {
    v28 = [v27 buildForWeb];

    if (v28)
    {
      sub_190D515B0();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = sub_190D515F0();
    (*(*(v30 - 8) + 56))(v8, v29, 1, v30);
    v31 = v8;
    goto LABEL_18;
  }

  __break(1u);
}

id CKDetailsControllerLocationHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKDetailsControllerLocationHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKDetailsControllerLocationHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKDetailsControllerLocationHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKDetailsControllerLocationHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s7ChatKit33CKDetailsControllerLocationHelperC015numberOfCellsInE7Section12conversation12isFMFEnabled0m7SharingE017shouldShowFMFViewSiSo14CKConversationC_S3btFZ_0(void *a1, char a2, char a3, char a4)
{
  result = [a1 chat];
  if (result)
  {
    v9 = result;
    if ([result isSMS] || objc_msgSend(v9, sel_isRCS))
    {

      return 0;
    }

    else if (a2)
    {
      v10 = [a1 isGroupConversation];
      v11 = CKIsRunningInMacCatalyst();

      v12 = 2;
      if (!((v11 == 0) | a3 & 1))
      {
        v12 = 3;
      }

      v13 = 1;
      if (!((v11 == 0) | a3 & 1))
      {
        v13 = 2;
      }

      if (a4)
      {
        v12 = v13;
      }

      v14 = 1;
      if (!((v11 == 0) | a3 & 1))
      {
        v14 = 2;
      }

      if (v10)
      {
        return v14;
      }

      else
      {
        return v12;
      }
    }

    else
    {
      v15 = CKIsRunningInMacCatalyst();

      return (v15 != 0);
    }
  }

  return result;
}

uint64_t _s7ChatKit33CKDetailsControllerLocationHelperC8cellType6forRow12conversation12isFMFEnabled17shouldShowFMFViewAA021CKLocationSectionCellH0OSi_So14CKConversationCS2btFZ_0(uint64_t a1, id a2, char a3, char a4)
{
  v7 = [a2 isGroupConversation];
  result = 2;
  if (a3)
  {
    if (a4)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    if (v7)
    {
      v10 = (a4 & 1) == 0;
    }

    else
    {
      v10 = v9;
    }

    if (v10 > 2)
    {
      v11 = 1;
      if (a1 != 1)
      {
        v11 = 2;
      }

      if (a1)
      {
        return v11;
      }

      else
      {
        return 0;
      }
    }

    else if (a1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_190CB81C8()
{
  result = qword_1EAD62468;
  if (!qword_1EAD62468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62468);
  }

  return result;
}

uint64_t _s28EnhancedProtectionStatusViewVMa()
{
  result = qword_1EAD62470;
  if (!qword_1EAD62470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190CB82BC@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62480);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62488);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  v12 = sub_190D55270();
  *(inited + 32) = v12;
  v13 = sub_190D55290();
  *(inited + 33) = v13;
  v14 = sub_190D55280();
  sub_190D55280();
  if (sub_190D55280() != v12)
  {
    v14 = sub_190D55280();
  }

  sub_190D55280();
  if (sub_190D55280() != v13)
  {
    v14 = sub_190D55280();
  }

  *v7 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62490);
  sub_190CB8574(v1, &v7[*(v15 + 44)]);
  sub_19028BE6C(v7, v10);
  sub_19022FD14(v10, v4, &qword_1EAD62488);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62498);
  sub_190CBBAEC();
  sub_190233640(&qword_1EAD624D8, &qword_1EAD62488);
  sub_190D54C50();
  return sub_19022EEA4(v10, &qword_1EAD62488);
}

uint64_t sub_190CB8574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD624E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD624E8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  *v15 = sub_190D548D0();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD624F0);
  sub_190CB9690(a1, &v15[*(v16 + 44)]);
  *v9 = sub_190D54AD0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD624F8);
  sub_190CB9A10(a1, &v9[*(v17 + 44)]);
  sub_19022FD14(v15, v12, &qword_1EAD624E8);
  sub_19022FD14(v9, v6, &qword_1EAD624E0);
  sub_19022FD14(v12, a2, &qword_1EAD624E8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62500);
  sub_19022FD14(v6, a2 + *(v18 + 48), &qword_1EAD624E0);
  sub_19022EEA4(v9, &qword_1EAD624E0);
  sub_19022EEA4(v15, &qword_1EAD624E8);
  sub_19022EEA4(v6, &qword_1EAD624E0);
  return sub_19022EEA4(v12, &qword_1EAD624E8);
}

uint64_t sub_190CB87BC@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625D0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v31 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625D8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v31 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62590);
  MEMORY[0x1EEE9AC00](v46);
  v38 = v31 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625A0);
  MEMORY[0x1EEE9AC00](v36);
  v34 = v31 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62580);
  MEMORY[0x1EEE9AC00](v40);
  v33 = v31 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625E0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625E8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62560);
  MEMORY[0x1EEE9AC00](v43);
  v41 = v31 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62570);
  MEMORY[0x1EEE9AC00](v39);
  v14 = v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62550);
  MEMORY[0x1EEE9AC00](v15);
  v45 = v31 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  v17 = sub_190B9A1A4();

  if (!v17)
  {
    swift_storeEnumTagMultiPayload();
    sub_190CBBE94();
    return sub_190D54C50();
  }

  v31[0] = v15;
  v31[1] = v1;
  v32 = v3;
  sub_190D56320();
  v18 = v48;
  swift_getKeyPath();
  v48 = v18;
  sub_190CBC25C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v19 = *(v18 + 2);

  swift_getKeyPath();
  v48 = v19;
  sub_190CBC25C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v20 = v19[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState];

  if ((v20 - 6) < 2)
  {
    sub_190CBAC6C(v14);
    v27 = &qword_1EAD62570;
    sub_19022FD14(v14, v11, &qword_1EAD62570);
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD62568, &qword_1EAD62570);
    sub_190233640(&qword_1EAD62578, &qword_1EAD62580);
    v28 = v41;
    sub_190D54C50();
    sub_19022FD14(v28, v44, &qword_1EAD62560);
    swift_storeEnumTagMultiPayload();
    sub_190CBBF20();
    sub_190CBC000();
    v23 = v45;
    sub_190D54C50();
    sub_19022EEA4(v28, &qword_1EAD62560);
LABEL_10:
    v24 = v14;
    v25 = v27;
    goto LABEL_11;
  }

  if (v20 == 4)
  {
    v29 = v33;
    sub_190CB9E1C(v33);
    sub_19022FD14(v29, v11, &qword_1EAD62580);
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD62568, &qword_1EAD62570);
    sub_190233640(&qword_1EAD62578, &qword_1EAD62580);
    v30 = v41;
    sub_190D54C50();
    sub_19022FD14(v30, v44, &qword_1EAD62560);
    swift_storeEnumTagMultiPayload();
    sub_190CBBF20();
    sub_190CBC000();
    v23 = v45;
    sub_190D54C50();
    sub_19022EEA4(v30, &qword_1EAD62560);
    v24 = v29;
    v25 = &qword_1EAD62580;
    goto LABEL_11;
  }

  if (v20 != 5)
  {
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD62598, &qword_1EAD625A0);
    v14 = v38;
    sub_190D54C50();
    v27 = &qword_1EAD62590;
    sub_19022FD14(v14, v44, &qword_1EAD62590);
    swift_storeEnumTagMultiPayload();
    sub_190CBBF20();
    sub_190CBC000();
    v23 = v45;
    sub_190D54C50();
    goto LABEL_10;
  }

  v21 = v34;
  sub_190CBA708(v34);
  sub_19022FD14(v21, v37, &qword_1EAD625A0);
  swift_storeEnumTagMultiPayload();
  sub_190233640(&qword_1EAD62598, &qword_1EAD625A0);
  v22 = v38;
  sub_190D54C50();
  sub_19022FD14(v22, v44, &qword_1EAD62590);
  swift_storeEnumTagMultiPayload();
  sub_190CBBF20();
  sub_190CBC000();
  v23 = v45;
  sub_190D54C50();
  sub_19022EEA4(v22, &qword_1EAD62590);
  v24 = v21;
  v25 = &qword_1EAD625A0;
LABEL_11:
  sub_19022EEA4(v24, v25);
  sub_19022FD14(v23, v32, &qword_1EAD62550);
  swift_storeEnumTagMultiPayload();
  sub_190CBBE94();
  sub_190D54C50();
  return sub_19022EEA4(v23, &qword_1EAD62550);
}

id sub_190CB91CC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62528);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625B8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v22 = v1;
  v21 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625C0);
  sub_190CBC0C8();
  sub_190D55F20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  v10 = sub_190B99E2C();

  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v12 = result;
    [result ktStatusCellImagePadding];
    v14 = v13;

    v23 = v14;
    v24 = v10;
    sub_190233640(&qword_1EAD62530, &qword_1EAD62528);
    sub_190CBBDB4();
    sub_190D55700();

    (*(v3 + 8))(v5, v2);
    sub_190D56320();

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62510) + 36);
    v16 = *MEMORY[0x1E6981DF0];
    v17 = sub_190D565E0();
    v18 = v20;
    (*(*(v17 - 8) + 104))(v20 + v15, v16, v17);
    return (*(v7 + 32))(v18, v9, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190CB9528@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  sub_190B996D8();

  sub_19081E484();
  result = sub_190D555F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190CB95BC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  v2 = sub_190B99C40();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_190D56320();
    sub_190B99C40();

    result = sub_190D55EA0();
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t sub_190CB9690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62508);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  sub_190B98A60();
  v11 = v10;
  v13 = v12;

  *&v35 = v11;
  *(&v35 + 1) = v13;
  sub_19081E484();
  v14 = sub_190D555F0();
  v16 = v15;
  LOBYTE(v11) = v17;
  LODWORD(v35) = sub_190D54E80();
  v29 = sub_190D55580();
  v19 = v18;
  v30 = v20;
  v31 = v21;
  sub_19081E474(v14, v16, v11 & 1);

  v34 = a1;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62518);
  sub_190CBBCA4();
  sub_190CBBE08();
  sub_190D554F0();
  sub_190D56320();
  LOBYTE(v16) = sub_190B9A1A4();

  sub_190D56320();

  v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625A8) + 36)];
  *v22 = v16 & 1;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  sub_190D56520();
  sub_190D53C60();
  v23 = &v9[*(v5 + 44)];
  v24 = v36;
  *v23 = v35;
  *(v23 + 1) = v24;
  *(v23 + 2) = v37;
  v25 = v32;
  sub_19022FD14(v9, v32, &qword_1EAD62508);
  v26 = v29;
  *a2 = v29;
  *(a2 + 8) = v19;
  LOBYTE(a1) = v30 & 1;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62610);
  sub_19022FD14(v25, a2 + *(v27 + 64), &qword_1EAD62508);
  sub_19081BE48(v26, v19, a1);
  sub_190D52690();
  sub_19022EEA4(v9, &qword_1EAD62508);
  sub_19022EEA4(v25, &qword_1EAD62508);
  sub_19081E474(v26, v19, a1);
}

uint64_t sub_190CB9A10@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62508) - 8;
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  sub_190B98A60();
  v9 = v8;
  v11 = v10;

  v54 = v9;
  v55 = v11;
  sub_19081E484();
  v12 = sub_190D555F0();
  v14 = v13;
  LOBYTE(v11) = v15;
  LODWORD(v54) = sub_190D54E80();
  v16 = sub_190D55580();
  v35 = v17;
  v36 = v16;
  v19 = v18;
  v37 = v20;
  sub_19081E474(v12, v14, v11 & 1);

  sub_190D56510();
  sub_190D53C60();
  LOBYTE(v11) = v19 & 1;
  v34 = v19 & 1;
  v41 = a1;
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62518);
  sub_190CBBCA4();
  sub_190CBBE08();
  sub_190D554F0();
  sub_190D56320();
  LOBYTE(v14) = sub_190B9A1A4();

  sub_190D56320();

  v21 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625A8) + 36)];
  *v21 = v14 & 1;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  sub_190D56510();
  sub_190D53C60();
  v22 = v39;
  v23 = &v7[*(v38 + 44)];
  v24 = v47;
  *v23 = v46;
  v23[1] = v24;
  v23[2] = v48;
  sub_19022FD14(v7, v22, &qword_1EAD62508);
  v25 = v35;
  v26 = v36;
  *&v49 = v36;
  *(&v49 + 1) = v35;
  LOBYTE(v50) = v11;
  *(&v50 + 1) = v45[0];
  DWORD1(v50) = *(v45 + 3);
  v27 = v37;
  *(&v50 + 1) = v37;
  v28 = v43;
  v51 = v42;
  v52 = v43;
  v29 = v44;
  v53 = v44;
  a2[2] = v42;
  a2[3] = v28;
  a2[4] = v29;
  v30 = v50;
  *a2 = v49;
  a2[1] = v30;
  v31 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625B0) + 48);
  sub_19022FD14(v22, v31, &qword_1EAD62508);
  sub_19022FD14(&v49, &v54, &qword_1EAD60230);
  sub_19022EEA4(v7, &qword_1EAD62508);
  sub_19022EEA4(v22, &qword_1EAD62508);
  v54 = v26;
  v55 = v25;
  v56 = v34;
  *v57 = v45[0];
  *&v57[3] = *(v45 + 3);
  v58 = v27;
  v59 = v42;
  v60 = v43;
  v61 = v44;
  return sub_19022EEA4(&v54, &qword_1EAD60230);
}

uint64_t sub_190CB9E1C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v71 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v70 = v61 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v77 = v61 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v75 = v61 - v10;
  v11 = sub_190D56270();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v76 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v74 = v61 - v14;
  v15 = _s28EnhancedProtectionStatusViewVMa();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v61 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9D0);
  v72 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v66 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v67 = v61 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v73 = v61 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v61 - v28;
  sub_190D53970();
  v30 = sub_190D539A0();
  (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
  sub_190CBC144(v2, v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v61[1] = v17;
  v32 = swift_allocObject();
  v61[0] = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190CBC1A8(v61[0], v32 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  v64 = sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  v65 = v29;
  sub_190D56020();
  sub_190D56260();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  v62 = v2;
  sub_190D56320();
  v33 = sub_190B99530();

  v34 = 1;
  v35 = v33 == 1;
  v36 = v75;
  if (v35)
  {
    v37 = v61[0];
    sub_190CBC144(v62, v61[0]);
    v38 = swift_allocObject();
    sub_190CBC1A8(v37, v38 + v31);
    v39 = v73;
    sub_190D56030();
    (*(v72 + 32))(v36, v39, v21);
    v34 = 0;
  }

  v40 = *(v72 + 56);
  v41 = 1;
  v40(v36, v34, 1, v21);
  v42 = [objc_opt_self() sharedFeatureFlags];
  v43 = [v42 isKeyTransparencyReportToAppleEnabled];

  if (v43)
  {
    v44 = v61[0];
    sub_190CBC144(v62, v61[0]);
    v45 = swift_allocObject();
    sub_190CBC1A8(v44, v45 + v31);
    v46 = v73;
    sub_190D56030();
    (*(v72 + 32))(v77, v46, v21);
    v41 = 0;
  }

  v40(v77, v41, 1, v21);
  v47 = v73;
  sub_190D56030();
  v48 = v72;
  v49 = *(v72 + 16);
  v50 = v67;
  v49(v67, v65, v21);
  v51 = v69;
  v64 = *(v68 + 16);
  v64(v76, v74, v69);
  sub_19022FD14(v75, v70, &qword_1EAD625F0);
  sub_19022FD14(v77, v71, &qword_1EAD625F0);
  v49(v66, v47, v21);
  v52 = v63;
  v49(v63, v50, v21);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62600);
  v64(&v52[v53[12]], v76, v51);
  v54 = v70;
  sub_19022FD14(v70, &v52[v53[16]], &qword_1EAD625F0);
  v55 = v71;
  sub_19022FD14(v71, &v52[v53[20]], &qword_1EAD625F0);
  v56 = v66;
  v49(&v52[v53[24]], v66, v21);
  v57 = *(v48 + 8);
  v57(v73, v21);
  sub_19022EEA4(v77, &qword_1EAD625F0);
  sub_19022EEA4(v75, &qword_1EAD625F0);
  v58 = v69;
  v59 = *(v68 + 8);
  v59(v74, v69);
  v57(v65, v21);
  v57(v56, v21);
  sub_19022EEA4(v55, &qword_1EAD625F0);
  sub_19022EEA4(v54, &qword_1EAD625F0);
  v59(v76, v58);
  return (v57)(v67, v21);
}

uint64_t sub_190CBA708@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v43 = sub_190D56270();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - v5;
  v7 = _s28EnhancedProtectionStatusViewVMa();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9D0);
  v39 = *(v13 - 8);
  v14 = v39;
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v37 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  sub_190D53970();
  v24 = sub_190D539A0();
  (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  sub_190CBC144(v2, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  sub_190CBC1A8(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  v40 = v23;
  sub_190D56020();
  v38 = v6;
  sub_190D56260();
  sub_190D56030();
  v27 = *(v14 + 16);
  v28 = v45;
  v27(v45, v23, v13);
  v37 = *(v46 + 16);
  v30 = v42;
  v29 = v43;
  v37(v42, v6, v43);
  v31 = v41;
  v27(v41, v20, v13);
  v32 = v44;
  v27(v44, v28, v13);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62608);
  v37(&v32[*(v33 + 48)], v30, v29);
  v27(&v32[*(v33 + 64)], v31, v13);
  v34 = *(v39 + 8);
  v34(v20, v13);
  v35 = *(v46 + 8);
  v35(v38, v29);
  v34(v40, v13);
  v34(v31, v13);
  v35(v30, v29);
  return (v34)(v45, v13);
}

uint64_t sub_190CBAC6C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = v54 - v6;
  v7 = sub_190D56270();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v63 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v54 - v10;
  v12 = _s28EnhancedProtectionStatusViewVMa();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9D0);
  v57 = *(v19 - 8);
  v58 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v60 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v61 = v54 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v67 = v54 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v54 - v26;
  sub_190D53970();
  v28 = sub_190D539A0();
  (*(*(v28 - 8) + 56))(v18, 0, 1, v28);
  v55 = v2;
  sub_190CBC144(v2, v15);
  v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v54[1] = v14;
  v30 = swift_allocObject();
  sub_190CBC1A8(v15, v30 + v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  v59 = v27;
  sub_190D56020();
  v62 = v11;
  sub_190D56260();
  v31 = [objc_opt_self() sharedFeatureFlags];
  v32 = [v31 isKeyTransparencyReportToAppleEnabled];

  v33 = 1;
  if (v32)
  {
    sub_190CBC144(v55, v15);
    v34 = swift_allocObject();
    sub_190CBC1A8(v15, v34 + v29);
    v35 = v67;
    sub_190D56030();
    (*(v57 + 32))(v68, v35, v58);
    v33 = 0;
  }

  v37 = v57;
  v36 = v58;
  v38 = v68;
  (*(v57 + 56))(v68, v33, 1, v58);
  v39 = v67;
  sub_190D56030();
  v40 = *(v37 + 16);
  v41 = v61;
  v40(v61, v59, v36);
  v42 = v63;
  v43 = *(v64 + 16);
  v43(v63, v62, v65);
  sub_19022FD14(v38, v66, &qword_1EAD625F0);
  v40(v60, v39, v36);
  v44 = v42;
  v45 = v56;
  v40(v56, v41, v36);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD625F8);
  v47 = v65;
  v43(&v45[v46[12]], v44, v65);
  v48 = v66;
  sub_19022FD14(v66, &v45[v46[16]], &qword_1EAD625F0);
  v49 = &v45[v46[20]];
  v50 = v60;
  v40(v49, v60, v36);
  v51 = *(v37 + 8);
  v51(v67, v36);
  sub_19022EEA4(v68, &qword_1EAD625F0);
  v52 = *(v64 + 8);
  v52(v62, v47);
  v51(v59, v36);
  v51(v50, v36);
  sub_19022EEA4(v48, &qword_1EAD625F0);
  v52(v63, v47);
  return (v51)(v61, v36);
}

id sub_190CBB3A4()
{
  v0 = objc_opt_self();

  return [v0 learnMorePressedFromError_];
}

id sub_190CBB434@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    sub_190D51210();

    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190CBB504@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D55EA0();
  *a1 = result;
  return result;
}

uint64_t sub_190CBB548()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  sub_190B9A034();
}

id sub_190CBB5F0@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    sub_190D51210();

    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190CBB6C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D55EA0();
  *a1 = result;
  return result;
}

void sub_190CBB700()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  swift_getKeyPath();
  sub_190CBC25C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v0 = *(v1 + 16);
  sub_190D50920();
  sub_190CEBFBC(v1 | 0x8000000000000000);
}

id sub_190CBB838@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    sub_190D51210();

    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190CBB908@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D55EA0();
  *a1 = result;
  return result;
}

uint64_t sub_190CBB948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  if (*(v2 + OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection9ViewModel__isPresentingClearAlertController) == 1)
  {
    *(v2 + OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection9ViewModel__isPresentingClearAlertController) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CBC25C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
    sub_190D51C10();
  }
}

unint64_t sub_190CBBAEC()
{
  result = qword_1EAD624A0;
  if (!qword_1EAD624A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62498);
    sub_190CBBBA4();
    sub_190233640(&qword_1EAD624C8, &qword_1EAD624D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD624A0);
  }

  return result;
}

unint64_t sub_190CBBBA4()
{
  result = qword_1EAD624A8;
  if (!qword_1EAD624A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD624B0);
    sub_190233640(&qword_1EAD624B8, &qword_1EAD624C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD624A8);
  }

  return result;
}

unint64_t sub_190CBBCA4()
{
  result = qword_1EAD62520;
  if (!qword_1EAD62520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62528);
    sub_190233640(&qword_1EAD62530, &qword_1EAD62528);
    sub_190CBBDB4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62520);
  }

  return result;
}

unint64_t sub_190CBBDB4()
{
  result = qword_1EAD62538;
  if (!qword_1EAD62538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62538);
  }

  return result;
}

unint64_t sub_190CBBE08()
{
  result = qword_1EAD62540;
  if (!qword_1EAD62540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62518);
    sub_190CBBE94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62540);
  }

  return result;
}

unint64_t sub_190CBBE94()
{
  result = qword_1EAD62548;
  if (!qword_1EAD62548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62550);
    sub_190CBBF20();
    sub_190CBC000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62548);
  }

  return result;
}

unint64_t sub_190CBBF20()
{
  result = qword_1EAD62558;
  if (!qword_1EAD62558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62560);
    sub_190233640(&qword_1EAD62568, &qword_1EAD62570);
    sub_190233640(&qword_1EAD62578, &qword_1EAD62580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62558);
  }

  return result;
}

unint64_t sub_190CBC000()
{
  result = qword_1EAD62588;
  if (!qword_1EAD62588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62590);
    sub_190233640(&qword_1EAD62598, &qword_1EAD625A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62588);
  }

  return result;
}

unint64_t sub_190CBC0C8()
{
  result = qword_1EAD625C8;
  if (!qword_1EAD625C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD625C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD625C8);
  }

  return result;
}

uint64_t sub_190CBC144(uint64_t a1, uint64_t a2)
{
  v4 = _s28EnhancedProtectionStatusViewVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190CBC1A8(uint64_t a1, uint64_t a2)
{
  v4 = _s28EnhancedProtectionStatusViewVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190CBC25C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_51()
{
  v1 = *(_s28EnhancedProtectionStatusViewVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190CBC394(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s28EnhancedProtectionStatusViewVMa() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_190CBC408()
{
  result = qword_1EAD62618;
  if (!qword_1EAD62618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62620);
    sub_190CBBAEC();
    sub_190233640(&qword_1EAD624D8, &qword_1EAD62488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62618);
  }

  return result;
}

id sub_190CBC4D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD55F0;
  result = [objc_opt_self() descriptorForRequiredKeys];
  *(v0 + 32) = result;
  qword_1EAD454E0 = v0;
  return result;
}

id sub_190CBC548()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD452E8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190CBC58C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD45320);
  v1 = __swift_project_value_buffer(v0, qword_1EAD45320);
  if (qword_1EAD461C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EAD9D6D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CKNavBarConversationIdentityView.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_190CBC7D8();
  return swift_unknownObjectRelease();
}

void sub_190CBC7D8()
{
  v1 = v0;
  v2 = [v0 conversation];
  v3 = [v2 displayNameForDisplayContext_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_190D56F10();
    v7 = v6;
  }

  else
  {

    v5 = 0;
    v7 = 0xE000000000000000;
  }

  sub_190CBD0AC(v5, v7);
  v8 = [v1 conversation];
  v9 = *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_title];
  v10 = *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_title + 8];
  sub_190D52690();
  v11 = sub_190CC0CC4(v8, v9, v10);

  v12 = *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_accessoryImageType];
  *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_accessoryImageType] = v11;
  if (v11 != v12)
  {
    v13 = *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel];
    sub_1908F8FD0(v11);

    [v1 setNeedsLayout];
    [v1 invalidateIntrinsicContentSize];
    [v1 layoutIfNeeded];
  }

  v14 = [v1 chevronHidden];
  v15 = [v1 delegate];
  if (v15)
  {
    v14 = [v15 hideChevron];
    swift_unknownObjectRelease();
  }

  [v1 setChevronHidden_];
  v16 = [v1 conversation];
  v17 = [v16 shouldShowVerifiedCheckmark];

  v18 = OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel;
  v19 = *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel];
  sub_1908F8F10(v17);

  v26 = *&v1[v18];
  v20 = [v1 conversation];
  v21 = sub_190CC0DC0(v20);

  v22 = v26[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_labelType];
  v26[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_labelType] = v21;
  if (v22 != v21)
  {
    v23 = *&v26[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView];
    v24 = v23[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_labelType];
    v23[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_labelType] = v21;
    v25 = v23;
    sub_1908FA27C(v24);

    [v26 setNeedsLayout];
    [v26 invalidateIntrinsicContentSize];
  }
}

void sub_190CBCB70()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = [v0 conversation];
  [v2 addObserver:v0 selector:sel_conversationParticipantsChangedWithNotification_ name:@"CKConversationParticipantsDidChangeNotification" object:v3];

  v4 = [v1 defaultCenter];
  v5 = [v0 conversation];
  [v4 addObserver:v0 selector:sel_conversationJoinStateChangedWithNotification_ name:@"CKConversationJoinStateDidChangeNotification" object:v5];

  v6 = [v0 conversation];
  v7 = [v6 chat];

  if (v7)
  {
    v8 = [v1 defaultCenter];
    [v8 addObserver:v0 selector:sel_chatDisplayNameChangedWithNotification_ name:*MEMORY[0x1E69A5700] object:v7];

    v9 = [v1 defaultCenter];
    [v9 addObserver:v0 selector:sel_groupPhotoChangedWithNotification_ name:*MEMORY[0x1E69A5718] object:v7];
  }

  v10 = [v1 defaultCenter];
  [v10 addObserver:v0 selector:sel_addressBookChangedWithNotification_ name:*MEMORY[0x1E69A6828] object:0];

  v11 = [v1 defaultCenter];
  [v11 addObserver:v0 selector:sel_addressBookChangedWithNotification_ name:*MEMORY[0x1E69A6838] object:0];

  v12 = [v1 defaultCenter];
  [v12 addObserver:v0 selector:sel_blockListChangedWithNotification_ name:*MEMORY[0x1E69A6A58] object:0];

  v13 = [v1 defaultCenter];
  [v13 addObserver:v0 selector:sel_chatPropertiesChangedWithNotification_ name:*MEMORY[0x1E69A5870] object:0];

  v14 = [v1 defaultCenter];
  [v14 addObserver:v0 selector:sel_chatIsFilteredChangedWithNotification_ name:*MEMORY[0x1E69A5740] object:0];

  v15 = [v1 defaultCenter];
  [v15 addObserver:v0 selector:sel_chatItemsChangedWithNotification_ name:*MEMORY[0x1E69A5748] object:0];

  v16 = [v1 defaultCenter];
  [v16 addObserver:v0 selector:sel_nicknameStoreChangedWithNotification_ name:*MEMORY[0x1E69A59E0] object:0];

  v17 = [v1 defaultCenter];
  [v17 addObserver:v0 selector:sel_chatKeyTransparencyChangedWithNotification_ name:*MEMORY[0x1E69A5810] object:0];
}

void sub_190CBCF68()
{
  v1 = v0;
  v2 = [v0 conversation];
  v3 = *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_avatarViewController];
  sub_190CC0F90(v2, v3);
  v10 = v4;

  v5 = OBJC_IVAR___CKNavBarConversationIdentityView_avatarView;
  v6 = *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_avatarView];
  sub_1902188FC(0, &qword_1EAD46530);
  v7 = v6;
  LOBYTE(v2) = sub_190D57D90();

  if ((v2 & 1) == 0)
  {
    [*&v1[v5] removeFromSuperview];
    [v1 addSubview_];
    v8 = *&v1[v5];
    *&v1[v5] = v10;
    v9 = v10;

    [v1 setNeedsLayout];
  }

  sub_190CBC7D8();
  [v1 updateAvatarViewVisualIdentity];
  [v1 layoutIfNeeded];
}

id sub_190CBD0AC(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___CKNavBarConversationIdentityView_title];
  v4 = *&v2[OBJC_IVAR___CKNavBarConversationIdentityView_title];
  v5 = *&v2[OBJC_IVAR___CKNavBarConversationIdentityView_title + 8];
  *v3 = a1;
  v3[1] = a2;
  if (v4 == a1 && v5 == a2)
  {
  }

  else
  {
    v7 = sub_190D58760();

    if ((v7 & 1) == 0)
    {
      v9 = *v3;
      v10 = v3[1];
      v11 = *&v2[OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel];
      sub_190D52690();
      sub_1908F9CA0(v9, v10, 0);

      [v2 setNeedsLayout];
      [v2 invalidateIntrinsicContentSize];

      return [v2 layoutIfNeeded];
    }
  }

  return result;
}

uint64_t CKNavBarConversationIdentityView.subtitle.getter()
{
  v1 = (v0 + OBJC_IVAR___CKNavBarConversationIdentityView_subtitle);
  swift_beginAccess();
  v2 = *v1;
  sub_190D52690();
  return v2;
}

id CKNavBarConversationIdentityView.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___CKNavBarConversationIdentityView_subtitle];
  swift_beginAccess();
  v6 = a2;
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = v6;
  if (v7 == a1 && v8 == v6)
  {
  }

  v10 = sub_190D58760();

  if (v10)
  {
    return result;
  }

  v12 = *&v2[OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel];
  v14 = *v5;
  v13 = v5[1];
  v15 = *&v12[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel];
  v16 = v12;
  sub_190D52690();
  v17 = [v15 text];
  if (v17)
  {
    v18 = v17;
    v19 = sub_190D56F10();
    v21 = v20;

    if (v14 == v19 && v13 == v21)
    {

      goto LABEL_16;
    }

    v23 = sub_190D58760();

    if (v23)
    {

LABEL_16:

      goto LABEL_17;
    }
  }

  v24 = v16;
  sub_190D52690();
  sub_1908F9F38(v24, v14, v13);
  swift_bridgeObjectRelease_n();

LABEL_17:
  [v2 setNeedsLayout];
  [v2 invalidateIntrinsicContentSize];
  return [v2 layoutIfNeeded];
}

void sub_190CBD4C4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 subtitle];
  v4 = sub_190D56F10();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t CKNavBarConversationIdentityView.subtitleHidden.getter()
{
  v1 = OBJC_IVAR___CKNavBarConversationIdentityView_subtitleHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

id CKNavBarConversationIdentityView.subtitleHidden.setter(char a1)
{
  v3 = OBJC_IVAR___CKNavBarConversationIdentityView_subtitleHidden;
  result = swift_beginAccess();
  v5 = v1[v3];
  v6 = a1 & 1;
  v1[v3] = a1;
  if (v5 != v6)
  {
    v7 = *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel];
    v8 = v7[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleHidden];
    v7[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleHidden] = v6;
    if (v8 != v6)
    {
      v9 = *&v7[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel];
      v10 = v7;
      [v9 setHidden_];
      [v10 setNeedsLayout];
      [v10 invalidateIntrinsicContentSize];
    }

    [v1 setNeedsLayout];
    [v1 invalidateIntrinsicContentSize];
    return [v1 layoutIfNeeded];
  }

  return result;
}

uint64_t CKNavBarConversationIdentityView.chevronHidden.getter()
{
  v1 = OBJC_IVAR___CKNavBarConversationIdentityView_chevronHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

id CKNavBarConversationIdentityView.chevronHidden.setter(char a1)
{
  v2 = v1;
  v4 = (a1 & 1);
  v5 = OBJC_IVAR___CKNavBarConversationIdentityView_chevronHidden;
  result = swift_beginAccess();
  v7 = v2[v5];
  v2[v5] = a1;
  if (v7 != v4)
  {
    v8 = *&v2[OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel];
    sub_1908F8E1C(v4);

    [v2 setNeedsLayout];
    [v2 invalidateIntrinsicContentSize];
    return [v2 layoutIfNeeded];
  }

  return result;
}

uint64_t CKNavBarConversationIdentityView.style.getter()
{
  v1 = OBJC_IVAR___CKNavBarConversationIdentityView_style;
  swift_beginAccess();
  return *(v0 + v1);
}

id CKNavBarConversationIdentityView.style.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CKNavBarConversationIdentityView_style;
  result = swift_beginAccess();
  v6 = *&v2[v4];
  *&v2[v4] = a1;
  if (v6 != a1)
  {
    v7 = *&v2[OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel];
    sub_1908F8D00(a1);

    [v2 setNeedsLayout];
    [v2 invalidateIntrinsicContentSize];
    return [v2 layoutIfNeeded];
  }

  return result;
}

id CKNavBarConversationIdentityView.init(conversation:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConversation_];

  return v2;
}

char *CKNavBarConversationIdentityView.init(conversation:)(void *a1)
{
  v2 = sub_190CC1444(a1);

  return v2;
}

id CKNavBarConversationIdentityView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

Swift::Void __swiftcall CKNavBarConversationIdentityView.didMoveToWindow()()
{
  v7.super_class = CKNavBarConversationIdentityView;
  objc_msgSendSuper2(&v7, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    [*&v0[OBJC_IVAR___CKNavBarConversationIdentityView_avatarView] setFrame_];
    [v0 setNeedsLayout];
    [v0 invalidateIntrinsicContentSize];
    [v0 layoutIfNeeded];
    sub_19095C080();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1D90;
    *(inited + 32) = sub_190D53450();
    v3 = sub_1908A223C(inited);
    v4 = swift_setDeallocating();
    v6[3] = type metadata accessor for CKNavBarConversationIdentityView(v4);
    v6[0] = v0;
    v5 = v0;
    MEMORY[0x193AF3560](v3, v6, sel_preferredContentSizeCategoryDidChangeWithView_previousTraitCollection_);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v6);
  }
}

double sub_190CBDCE0()
{
  v1 = [v0 conversation];
  v2 = sub_190CC0EAC(v1);

  if ((v2 & 1) == 0)
  {
    v5 = [v0 conversation];
    v6 = [v5 isBusinessConversation];

    if (!v6)
    {
      return 0.0;
    }

    v7 = [v0 conversation];
    v8 = [v7 hasVerifiedBusiness];

    if (v8)
    {
      return 0.0;
    }
  }

  if (qword_1EAD452E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD452E8;

  [v3 bannerTitleAdditionalOffset];
  return result;
}

Swift::Void __swiftcall CKNavBarConversationIdentityView.layoutSubviews()()
{
  v1 = [v0 conversation];
  v2 = sub_190CC0EAC(v1);

  if (qword_1EAD452E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD452E8;
  v4 = &selRef_groupAvatarViewSize;
  if (v2)
  {
    v4 = &selRef_businessBannerSize;
  }

  [qword_1EAD452E8 *v4];
  v6 = v5;
  v7 = [objc_opt_self() _applicationKeyWindow];
  v8 = 0.0;
  Width = 0.0;
  if (v7)
  {
    v10 = v7;
    [v7 bounds];
    Width = CGRectGetWidth(v46);
  }

  v11 = OBJC_IVAR___CKNavBarConversationIdentityView_avatarView;
  [*&v0[OBJC_IVAR___CKNavBarConversationIdentityView_avatarView] sizeThatFits_];
  v13 = v12;
  v15 = v14;
  [v0 bounds];
  v16 = CGRectGetWidth(v47);
  v17 = [v0 traitCollection];
  [v17 displayScale];
  v19 = v18;

  v20 = [v0 conversation];
  v21 = sub_190CC0EAC(v20);

  if (v21)
  {
    if (qword_1EAD452E0 != -1)
    {
      swift_once();
    }

    [v3 bannerAdditionalOffset];
    v8 = v22;
  }

  v23 = OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel;
  [*&v0[OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel] intrinsicContentSize];
  v25 = v24;
  v27 = v26;
  [v0 bounds];
  v28 = CGRectGetWidth(v48);
  if (v25 >= v28)
  {
    v25 = v28;
  }

  [v0 bounds];
  v29 = 0.0;
  if (v25 < CGRectGetWidth(v49))
  {
    [v0 bounds];
    v44 = CGRectGetWidth(v50) * 0.5 - v25 * 0.5;
    v30 = [v0 traitCollection];
    [v30 displayScale];
    v31 = v13;
    v32 = v8;
    v33 = v27;
    v34 = v15;
    v35 = v19;
    v36 = v16;
    v38 = v37;

    v39 = v38;
    v16 = v36;
    v19 = v35;
    v15 = v34;
    v27 = v33;
    v8 = v32;
    v13 = v31;
    v29 = CGFloatPxRoundForScale(v44, v39);
  }

  v51.origin.x = CGFloatPxRoundForScale(v16 * 0.5 - v13 * 0.5, v19);
  x = v51.origin.x;
  v51.origin.y = v8;
  v51.size.width = v13;
  v51.size.height = v15;
  MaxY = CGRectGetMaxY(v51);
  v42 = MaxY + sub_190CBDCE0();
  [*&v0[v11] setFrame_];
  v43 = *&v0[v23];

  [v43 setFrame_];
}

double CKNavBarConversationIdentityView.intrinsicContentSize.getter()
{
  [*&v0[OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel] intrinsicContentSize];
  v2 = v1;
  v3 = [v0 conversation];
  v4 = sub_190CC0EAC(v3);

  if (qword_1EAD452E0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAD452E8;
  v6 = &selRef_groupAvatarViewSize;
  if (v4)
  {
    v6 = &selRef_businessBannerSize;
  }

  [qword_1EAD452E8 *v6];
  v8 = v7;
  v9 = [objc_opt_self() _applicationKeyWindow];
  Width = 0.0;
  if (v9)
  {
    v11 = v9;
    [v9 bounds];
    Width = CGRectGetWidth(v17);
  }

  [*&v0[OBJC_IVAR___CKNavBarConversationIdentityView_avatarView] sizeThatFits_];
  v13 = v12;
  v14 = [v0 conversation];
  v15 = sub_190CC0EAC(v14);

  if (v15)
  {
    if (qword_1EAD452E0 != -1)
    {
      swift_once();
    }

    [v5 bannerAdditionalOffset];
  }

  sub_190CBDCE0();
  return fmax(v2, v13);
}

void sub_190CBE3CC(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_tapRecognizer];
  if (v3)
  {
    sub_1902188FC(0, &qword_1EAD626B8);
    v5 = a1;
    v6 = v3;
    LOBYTE(a1) = sub_190D57D90();

    if (a1)
    {
      v7 = [v2 delegate];
      if (v7)
      {
        [v7 conversationIdentityViewTapped_];
        swift_unknownObjectRelease();
      }

      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v2;
      v12[4] = sub_190CC1A20;
      v12[5] = v9;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_190840E6C;
      v12[3] = &block_descriptor_42_3;
      v10 = _Block_copy(v12);
      v11 = v2;

      [v8 animateWithDuration:v10 animations:0.3];
      _Block_release(v10);
    }
  }
}

void sub_190CBE640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v12[4] = a4;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_190840E6C;
  v12[3] = a5;
  v10 = _Block_copy(v12);
  v11 = v5;

  [v8 animateWithDuration:v10 animations:0.3];
  _Block_release(v10);
}

void sub_190CBE750(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v14[4] = a6;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_190840E6C;
  v14[3] = a7;
  v12 = _Block_copy(v14);
  v13 = a1;

  [v10 animateWithDuration:v12 animations:0.3];

  _Block_release(v12);
}

Swift::Void __swiftcall CKNavBarConversationIdentityView.updateAvatarViewVisualIdentity()()
{
  if (qword_1EAD454D8 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() maxContactAvatars];
  v2 = [v0 conversation];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v3 = sub_190D57160();
  v4 = [v2 conversationVisualIdentityWithKeys:v3 requestedNumberOfContactsToFetch:v1];

  [*&v0[OBJC_IVAR___CKNavBarConversationIdentityView_avatarViewController] groupIdentityDidUpdate_];
}

Swift::Bool __swiftcall CKNavBarConversationIdentityView.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer *_, UITouch shouldReceive)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR___CKNavBarConversationIdentityView_tapRecognizer);
  if (v4 && (sub_1902188FC(0, &qword_1EAD45018), v7 = _, v8 = v4, LOBYTE(_) = sub_190D57D90(), v8, v7, (_ & 1) != 0))
  {
    [(objc_class *)shouldReceive.super.isa locationInView:v3];
    v10 = v9;
    v12 = v11;
    [*(v3 + OBJC_IVAR___CKNavBarConversationIdentityView_avatarView) frame];
    v16.x = v10;
    v16.y = v12;
    v13 = CGRectContainsPoint(v18, v16);
    [*(v3 + OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel) frame];
    v17.x = v10;
    v17.y = v12;
    v14 = v13 | CGRectContainsPoint(v19, v17);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

Swift::Bool __swiftcall CKNavBarConversationIdentityView.avatarWantsTap(at:from:)(CGPoint at, UIView *from)
{
  [(UIView *)from convertPoint:v2 toCoordinateSpace:at.x, at.y];
  v4 = v3;
  v6 = v5;
  [*(v2 + OBJC_IVAR___CKNavBarConversationIdentityView_avatarView) frame];
  v9.x = v4;
  v9.y = v6;
  v7 = CGRectContainsPoint(v11, v9);
  [*(v2 + OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel) frame];
  v10.x = v4;
  v10.y = v6;
  return (v7 | CGRectContainsPoint(v12, v10)) & 1;
}

Swift::Void __swiftcall CKNavBarConversationIdentityView.performAnimationForPhotoUpdate()()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isNameAndPhotoC3Enabled];

  if (!v2)
  {
    if (qword_1EAD45318 != -1)
    {
      swift_once();
    }

    v14 = sub_190D53040();
    __swift_project_value_buffer(v14, qword_1EAD45320);
    oslog = sub_190D53020();
    v11 = sub_190D57680();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_18;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Name and Photo feature flag is not enabled";
    goto LABEL_17;
  }

  v3 = [v0 conversation];
  v4 = [v3 recipientStrings];

  v5 = sub_190D57180();
  v6 = *(v5 + 16);

  if (!v6)
  {
    if (qword_1EAD45318 != -1)
    {
      swift_once();
    }

    v15 = sub_190D53040();
    __swift_project_value_buffer(v15, qword_1EAD45320);
    oslog = sub_190D53020();
    v11 = sub_190D576A0();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_18;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "No recipients provided for the avatar transition in performAnimationForPhotoUpdate";
    goto LABEL_17;
  }

  v7 = [v0 window];
  if (v7)
  {

    v8 = [objc_opt_self() sharedApplication];
    v9 = [v8 isSuspended];

    if ((v9 & 1) == 0)
    {
      v17 = [v0 conversation];
      v18 = [v17 isGroupConversation];

      if (v18)
      {
        return;
      }

      v19 = [v0 conversation];
      v20 = [v19 recipientStrings];

      v21 = sub_190D57180();
      v22 = sub_190CAAE18(v21);

      v23 = objc_opt_self();
      v24 = [v23 sharedInstance];
      v25 = sub_190D57400();
      oslog = [v24 pendingNicknameForHandleIDs_];

      if (!oslog)
      {

        if (qword_1EAD45318 != -1)
        {
          swift_once();
        }

        v34 = sub_190D53040();
        __swift_project_value_buffer(v34, qword_1EAD45320);
        oslog = sub_190D53020();
        v11 = sub_190D57680();
        if (!os_log_type_enabled(oslog, v11))
        {
          goto LABEL_18;
        }

        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Not changing the state oracle, no pending nickname available";
        goto LABEL_17;
      }

      v26 = OBJC_IVAR___CKNavBarConversationIdentityView_sharedProfileStateOracle;
      v27 = *&v0[OBJC_IVAR___CKNavBarConversationIdentityView_sharedProfileStateOracle];
      if (v27)
      {
        v28 = v27;
        v29 = [v28 pendingNickname];
        if (v29)
        {
          v57 = v29;
          if ([v29 isUpdateFromNickname:oslog withOptions:34])
          {

            if (qword_1EAD45318 != -1)
            {
              swift_once();
            }

            v30 = sub_190D53040();
            __swift_project_value_buffer(v30, qword_1EAD45320);
            v31 = sub_190D53020();
            v32 = sub_190D57680();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              *v33 = 0;
              _os_log_impl(&dword_19020E000, v31, v32, "Not changing the state oracle, pending nicknames have the same photo and wallpaper", v33, 2u);
              MEMORY[0x193AF7A40](v33, -1, -1);
            }

            v16 = v57;
            goto LABEL_19;
          }
        }
      }

      else
      {
        v35 = [v23 sharedInstance];
        v36 = sub_190D57400();
        v28 = [v35 currentNicknameForHandleIDs_];

        if (!v28)
        {
LABEL_45:
          v41 = [v23 sharedInstance];
          v42 = [v0 conversation];
          v43 = [v42 recipientStrings];

          if (!v43)
          {
            sub_190D57180();
            v43 = sub_190D57160();
          }

          v44 = [v41 createSharedProfileStateOracleForHandles_];

          if (v44)
          {
            v45 = *&v0[v26];
            *&v0[v26] = v44;
            v46 = v44;

            v47 = OBJC_IVAR___CKNavBarConversationIdentityView_avatarViewController;
            [*&v0[OBJC_IVAR___CKNavBarConversationIdentityView_avatarViewController] setSharedProfileStateOracle_];

            v48 = *&v0[v47];
            v49 = swift_allocObject();
            *(v49 + 16) = v0;
            *(v49 + 24) = v22;
            aBlock[4] = sub_190CC196C;
            aBlock[5] = v49;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_190CBFCD4;
            aBlock[3] = &block_descriptor_12_10;
            v50 = _Block_copy(aBlock);
            v51 = v48;
            v52 = v0;

            [v51 performTransitionAnimationWithCompletion_];
            _Block_release(v50);

            return;
          }

          if (qword_1EAD45318 != -1)
          {
            swift_once();
          }

          v53 = sub_190D53040();
          __swift_project_value_buffer(v53, qword_1EAD45320);
          v54 = sub_190D53020();
          v55 = sub_190D576A0();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&dword_19020E000, v54, v55, "IMNicknameController did not return a shared profile state oracle for use with photo update animation", v56, 2u);
            MEMORY[0x193AF7A40](v56, -1, -1);
          }

          goto LABEL_18;
        }

        if (([v28 isUpdateFromNickname:oslog withOptions:34] & 1) == 0)
        {

          if (qword_1EAD45318 != -1)
          {
            swift_once();
          }

          v37 = sub_190D53040();
          __swift_project_value_buffer(v37, qword_1EAD45320);
          v38 = sub_190D53020();
          v39 = sub_190D57680();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&dword_19020E000, v38, v39, "Not creating the state oracle, pending nicknames have the same photo and wallpaper", v40, 2u);
            MEMORY[0x193AF7A40](v40, -1, -1);
          }

          goto LABEL_18;
        }
      }

      goto LABEL_45;
    }
  }

  if (qword_1EAD45318 != -1)
  {
    swift_once();
  }

  v10 = sub_190D53040();
  __swift_project_value_buffer(v10, qword_1EAD45320);
  oslog = sub_190D53020();
  v11 = sub_190D576A0();
  if (!os_log_type_enabled(oslog, v11))
  {
    goto LABEL_18;
  }

  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = "Trying to perform the animation for photo update when the view isn't in view hierarchy";
LABEL_17:
  _os_log_impl(&dword_19020E000, oslog, v11, v13, v12, 2u);
  MEMORY[0x193AF7A40](v12, -1, -1);
LABEL_18:
  v16 = oslog;
LABEL_19:
}

void sub_190CBF660(uint64_t a1, char *a2)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (a1 != 1)
  {
    if (!a1)
    {
      v2 = [*&a2[OBJC_IVAR___CKNavBarConversationIdentityView_avatarViewController] sharedProfileStateOracle];
      if (v2)
      {
        v41[0] = 0;
        v3 = v2;
        v4 = [v2 updateContactAndNicknamesForAutoUpdateWithError_];

        if (!v4)
        {
          v34 = v41[0];
          v35 = sub_190D51420();

          swift_willThrow();
          if (qword_1EAD45318 != -1)
          {
            swift_once();
          }

          v36 = sub_190D53040();
          __swift_project_value_buffer(v36, qword_1EAD45320);
          v7 = sub_190D53020();
          v37 = sub_190D576A0();
          if (os_log_type_enabled(v7, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_19020E000, v7, v37, "Error updating the sharedProfileStateOracle after playing the coin flip animation", v38, 2u);
            MEMORY[0x193AF7A40](v38, -1, -1);
          }

          goto LABEL_30;
        }

        v5 = v41[0];
      }

      if (qword_1EAD45318 != -1)
      {
        swift_once();
      }

      v6 = sub_190D53040();
      __swift_project_value_buffer(v6, qword_1EAD45320);
      sub_190D52690();
      v7 = sub_190D53020();
      v8 = sub_190D57680();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v41[0] = v10;
        *v9 = 136315138;
        v11 = sub_190D57420();
        v13 = sub_19021D9F8(v11, v12, v41);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_19020E000, v7, v8, "Coin flip animation played for handle IDs: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x193AF7A40](v10, -1, -1);
        MEMORY[0x193AF7A40](v9, -1, -1);
      }

LABEL_30:

      return;
    }

    goto LABEL_17;
  }

  v14 = [a2 conversation];
  v15 = [v14 recipientStrings];

  v16 = sub_190D57180();
  if (!*(v16 + 16))
  {

LABEL_17:
    if (qword_1EAD45318 != -1)
    {
      swift_once();
    }

    v27 = sub_190D53040();
    __swift_project_value_buffer(v27, qword_1EAD45320);
    sub_190D52690();
    oslog = sub_190D53020();
    v28 = sub_190D57680();

    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41[0] = v30;
      *v29 = 136315138;
      v31 = sub_190D57420();
      v33 = sub_19021D9F8(v31, v32, v41);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_19020E000, oslog, v28, "No animation played for handle IDs: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x193AF7A40](v30, -1, -1);
      MEMORY[0x193AF7A40](v29, -1, -1);

      return;
    }

    v26 = oslog;
    goto LABEL_22;
  }

  sub_190D52690();

  if (qword_1EAD45318 != -1)
  {
    swift_once();
  }

  v17 = sub_190D53040();
  __swift_project_value_buffer(v17, qword_1EAD45320);
  sub_190D52690();
  v18 = sub_190D53020();
  v19 = sub_190D57680();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41[0] = v21;
    *v20 = 136315138;
    v22 = sub_190D57420();
    v24 = sub_19021D9F8(v22, v23, v41);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_19020E000, v18, v19, "Peekaboo animation played for handle IDs: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x193AF7A40](v21, -1, -1);
    MEMORY[0x193AF7A40](v20, -1, -1);
  }

  v25 = [objc_opt_self() sharedInstance];
  osloga = sub_190D56ED0();

  [v25 markTransitionAsObservedForHandleID:osloga isAutoUpdate:0];

  v26 = osloga;
LABEL_22:
}

uint64_t sub_190CBFCD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  v3(a2);
}

id CKNavBarConversationIdentityView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

void sub_190CBFEFC()
{
  v1 = v0;
  sub_190D50F90();
  if (v11)
  {
    sub_1902188FC(0, &qword_1EAD466B0);
    if (swift_dynamicCast())
    {
      sub_1902188FC(0, &qword_1EAD46500);
      v2 = [v0 conversation];
      v3 = sub_190D57D90();

      if (v3)
      {
        if (qword_1EAD454D8 != -1)
        {
          swift_once();
        }

        v4 = [objc_opt_self() maxContactAvatars];
        v5 = [v1 conversation];
        [v5 setNeedsUpdatedContactOrderForVisualIdentity];

        v6 = [v1 conversation];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
        v7 = sub_190D57160();
        v8 = [v6 conversationVisualIdentityWithKeys:v7 requestedNumberOfContactsToFetch:v4];

        [*&v1[OBJC_IVAR___CKNavBarConversationIdentityView_avatarViewController] groupIdentityDidUpdate_];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_19022EEA4(v10, &unk_1EAD551C0);
  }
}

void sub_190CC0104()
{
  sub_190D50F90();
  if (v7)
  {
    sub_1902188FC(0, &qword_1EAD44EE0);
    if (swift_dynamicCast())
    {
      v1 = v5;
      v2 = [v0 conversation];
      v3 = [v2 chat];

      if (v3)
      {
        v4 = sub_190D57D90();

        if (v4)
        {
          sub_190CBCF68();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_19022EEA4(v6, &unk_1EAD551C0);
  }
}

uint64_t sub_190CC0224(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_190D50FB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_190CC03FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD626A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_190D51B70();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190CBC7D8();
  v9 = [v0 conversation];
  v10 = [v9 isGroupConversation];

  if (v10 && sub_190D50FA0())
  {
    v11 = sub_190D56D60();

    if ([v11 valueForKey_])
    {
      sub_190D58140();
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    v31[0] = v29;
    v31[1] = v30;
    if (!*(&v30 + 1))
    {

      sub_19022EEA4(v31, &unk_1EAD551C0);
      (*(v6 + 56))(v4, 1, 1, v5);
      goto LABEL_10;
    }

    v12 = swift_dynamicCast();
    (*(v6 + 56))(v4, v12 ^ 1u, 1, v5);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

LABEL_10:
      sub_19022EEA4(v4, &unk_1EAD626A8);
      return;
    }

    (*(v6 + 32))(v8, v4, v5);
    if ((sub_190D51B40() & 1) == 0)
    {
      v13 = [v1 conversation];
      v14 = [v13 chat];

      if (v14)
      {
        v15 = [v14 chatItems];

        sub_1902188FC(0, &unk_1EAD450C0);
        v16 = sub_190D57180();

        if (v16 >> 62)
        {
          v17 = sub_190D581C0();
          if (v17)
          {
LABEL_15:
            v18 = __OFSUB__(v17, 1);
            v19 = v17 - 1;
            if (v18)
            {
              __break(1u);
            }

            else if ((v16 & 0xC000000000000001) == 0)
            {
              if ((v19 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v19 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v20 = *(v16 + 8 * v19 + 32);
                goto LABEL_20;
              }

              __break(1u);
              goto LABEL_38;
            }

            v20 = MEMORY[0x193AF3B90](v19, v16);
LABEL_20:
            v14 = v20;

            objc_opt_self();
            v21 = swift_dynamicCastObjCClass();
            if (v21)
            {
              if ([v21 isFromMe])
              {
LABEL_22:
                (*(v6 + 8))(v8, v5);

LABEL_32:
                return;
              }
            }

            else
            {
              objc_opt_self();
              v22 = swift_dynamicCastObjCClass();
              if (!v22)
              {

                goto LABEL_28;
              }

              if ([v22 isFromMe])
              {
                goto LABEL_22;
              }
            }

            if (qword_1EAD454D8 == -1)
            {
LABEL_26:
              v23 = [objc_opt_self() maxContactAvatars];
              v24 = [v1 conversation];
              [v24 setNeedsUpdatedContactOrderForVisualIdentity];

              v25 = [v1 conversation];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
              v26 = sub_190D57160();
              v27 = [v25 conversationVisualIdentityWithKeys:v26 requestedNumberOfContactsToFetch:v23];

              v28 = *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_avatarViewController];
              [v28 groupIdentityDidUpdate_];

LABEL_28:
              (*(v6 + 8))(v8, v5);
              return;
            }

LABEL_38:
            swift_once();
            goto LABEL_26;
          }
        }

        else
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
            goto LABEL_15;
          }
        }
      }
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_32;
  }
}

uint64_t sub_190CC0B6C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_190D50FB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_190CC0C58()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D6D0);
  __swift_project_value_buffer(v0, qword_1EAD9D6D0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190CC0CC4(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 shouldShowVerifiedCheckmark])
  {
    v6 = [a1 recipient];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 name];

      if (v8)
      {
        v9 = sub_190D56F10();
        v11 = v10;

        if (v9 == a2 && v11 == a3)
        {

          return 1;
        }

        v13 = sub_190D58760();

        if (v13)
        {
          return 1;
        }
      }
    }
  }

  if (IMIsEnrolledInContactKeyVerification())
  {
    return sub_190C68D4C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190CC0DC0(void *a1)
{
  v2 = [a1 chat];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isStewieChat];

    if (v4)
    {
      return 1;
    }
  }

  v5 = [a1 chat];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isStewieSharingChat];

    if (v7)
    {
      return 1;
    }
  }

  if (([a1 isGroupConversation] & 1) == 0)
  {
    v9 = [a1 chat];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 hasBlockedParticipant];

      if (v11)
      {
        return 2;
      }
    }
  }

  return 0;
}

uint64_t sub_190CC0EAC(void *a1)
{
  result = [a1 isBusinessConversation];
  if (result)
  {
    result = [a1 recipient];
    if (result)
    {
      v3 = result;
      if (([a1 isAppleConversation] & 1) == 0)
      {
        result = [v3 defaultIMHandle];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v4 = result;
        v5 = [result brandWideLogoImageData];

        if (v5)
        {
          v6 = sub_190D51670();
          v8 = v7;

          sub_19083B6D4(v6, v8);
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_190CC0F90(void *a1, void *a2)
{
  if (![a1 isBusinessConversation] || (v6 = objc_msgSend(a1, sel_recipient)) == 0)
  {
    if ([a2 view])
    {
      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  v2 = v6;
  v3 = &selRef_conversationListSummaryBodyLeading;
  if ((sub_190CC0EAC(a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = [v2 defaultIMHandle];
  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = v7;
  v9 = [v7 brandWideLogoImageData];

  if (!v9)
  {
LABEL_9:
    v24 = [v2 v3[404]];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 isApple];

      if (!v26)
      {
        v23 = v2;
        goto LABEL_14;
      }

      v27 = [v2 v3[404]];
      v28 = [objc_allocWithZone(CKEntity) initWithIMHandle_];

      if (v28)
      {
        v23 = v28;
        [v23 setEnlargedContactImage_];
LABEL_14:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
        v29 = sub_190D57160();
        v14 = [v23 cnContactWithKeys_];

        if (v14)
        {
          v30 = [objc_allocWithZone(CKAvatarView) init];
          v31 = [objc_opt_self() sharedFeatureFlags];
          v32 = [v31 avatarViewAllowsStaleRendering];

          if (v32)
          {
            v33 = v30;
            if ([v33 isDisplayingContent])
            {
              [v33 setAllowStaleRendering_];
            }
          }

          v34 = [v14 identifier];
          if (!v34)
          {
            sub_190D56F10();
            v34 = sub_190D56ED0();
          }

          [v30 _ck_setContextToken_];

          v35 = v30;
          [v35 setContact_];
          [v35 setStyle_];
          [v35 setShowsContactOnTap_];

          v36 = v35;
          [v36 setUserInteractionEnabled_];

          goto LABEL_22;
        }

        if ([a2 view])
        {
          goto LABEL_24;
        }

LABEL_29:
        __break(1u);
        return;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v10 = sub_190D51670();
  v12 = v11;

  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v13 setContentMode_];
  [v13 setClipsToBounds_];
  v14 = v13;
  v15 = sub_190D56ED0();
  [v14 setAccessibilityIdentifier_];

  v16 = objc_opt_self();
  sub_19083B680(v10, v12);
  v17 = [v16 mainScreen];
  [v17 scale];
  v19 = v18;

  v20 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v21 = sub_190D51660();
  v22 = [v20 initWithData:v21 scale:v19];

  sub_19083B6D4(v10, v12);
  [v14 setImage_];
  sub_19083B6D4(v10, v12);
  v23 = v2;
  v2 = v22;
LABEL_22:

LABEL_24:
}

char *sub_190CC1444(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v40 = OBJC_IVAR___CKNavBarConversationIdentityView_subtitleHidden;
  v1[OBJC_IVAR___CKNavBarConversationIdentityView_subtitleHidden] = 0;
  v1[OBJC_IVAR___CKNavBarConversationIdentityView_chevronHidden] = 0;
  *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_style] = 0;
  *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_tapRecognizer] = 0;
  *&v1[OBJC_IVAR___CKNavBarConversationIdentityView_sharedProfileStateOracle] = 0;
  v4 = [a1 displayNameForDisplayContext_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_190D56F10();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *&v2[OBJC_IVAR___CKNavBarConversationIdentityView_conversation] = a1;
  v9 = &v2[OBJC_IVAR___CKNavBarConversationIdentityView_title];
  *v9 = v6;
  v9[1] = v8;
  v10 = &v2[OBJC_IVAR___CKNavBarConversationIdentityView_subtitle];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = qword_1EAD454D8;
  v12 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = [objc_opt_self() maxContactAvatars];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v14 = sub_190D57160();
  v15 = [v12 conversationVisualIdentityWithKeys:v14 requestedNumberOfContactsToFetch:v13];

  v16 = [objc_allocWithZone(MEMORY[0x1E695D150]) initWithGroup_];
  v17 = OBJC_IVAR___CKNavBarConversationIdentityView_avatarViewController;
  *&v2[OBJC_IVAR___CKNavBarConversationIdentityView_avatarViewController] = v16;
  v18 = *v9;
  v19 = v9[1];
  sub_190D52690();
  v20 = sub_190CC0CC4(v12, v18, v19);

  v21 = OBJC_IVAR___CKNavBarConversationIdentityView_accessoryImageType;
  *&v2[OBJC_IVAR___CKNavBarConversationIdentityView_accessoryImageType] = v20;
  LOBYTE(v20) = sub_190CC0DC0(v12);
  v22 = *v9;
  v23 = v9[1];
  swift_beginAccess();
  v25 = *v10;
  v24 = v10[1];
  v26 = *&v2[v21];
  objc_allocWithZone(type metadata accessor for NavBarConversationIdentityLabel());
  sub_190D52690();
  sub_190D52690();
  v27 = sub_1908F90DC(v22, v23, v25, v24, v20, v26);
  *&v2[OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel] = v27;
  swift_beginAccess();
  v28 = v2[v40];
  v29 = v27[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleHidden];
  v27[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleHidden] = v28;
  if (v28 != v29)
  {
    v30 = *&v27[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel];
    v31 = v27;
    [v30 setHidden_];
    [v31 setNeedsLayout];
    [v31 invalidateIntrinsicContentSize];
  }

  v32 = *&v2[v17];
  sub_190CC0F90(v12, v32);
  v34 = v33;

  *&v2[OBJC_IVAR___CKNavBarConversationIdentityView_avatarView] = v34;
  v41.receiver = v2;
  v41.super_class = CKNavBarConversationIdentityView;
  v35 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v36 = OBJC_IVAR___CKNavBarConversationIdentityView_avatarView;
  [*&v35[OBJC_IVAR___CKNavBarConversationIdentityView_avatarView] removeFromSuperview];
  [v35 addSubview_];
  [v35 addSubview_];
  [v35 setNeedsLayout];
  if (([v12 isStewieConversation] & 1) == 0 && (objc_msgSend(v12, sel_isEmergencyTranscriptSharingConversation) & 1) == 0)
  {
    v37 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v35 action:sel_handleTapWithRecognizer_];
    [v37 setDelegate_];
    [v35 addGestureRecognizer_];
    v38 = *&v35[OBJC_IVAR___CKNavBarConversationIdentityView_tapRecognizer];
    *&v35[OBJC_IVAR___CKNavBarConversationIdentityView_tapRecognizer] = v37;
  }

  sub_190CBCB70();
  return v35;
}

void _sSo32CKNavBarConversationIdentityViewC7ChatKitE5coderABSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CKNavBarConversationIdentityView_subtitleHidden) = 0;
  *(v0 + OBJC_IVAR___CKNavBarConversationIdentityView_chevronHidden) = 0;
  *(v0 + OBJC_IVAR___CKNavBarConversationIdentityView_style) = 0;
  *(v0 + OBJC_IVAR___CKNavBarConversationIdentityView_tapRecognizer) = 0;
  *(v0 + OBJC_IVAR___CKNavBarConversationIdentityView_sharedProfileStateOracle) = 0;
  sub_190D58510();
  __break(1u);
}

id sub_190CC19A4(double a1)
{
  v3 = *(v1 + 16);
  [*(v3 + OBJC_IVAR___CKNavBarConversationIdentityView_avatarView) setAlpha_];
  v4 = *(v3 + OBJC_IVAR___CKNavBarConversationIdentityView_identityLabel);

  return [v4 setAlpha_];
}

void (*sub_190CC1A8C(uint64_t *a1))(void **, char)
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
  v5 = OBJC_IVAR___CKMessageHistoryViewController_messageHistoryDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B1942C;
}

void (*sub_190CC1B54(uint64_t *a1))(void **, char)
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
  v5 = OBJC_IVAR___CKMessageHistoryViewController_messageHistoryDataSource;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190B18530;
}

id sub_190CC1BEC()
{
  v1 = OBJC_IVAR___CKMessageHistoryViewController____lazy_storage___calendarView;
  v2 = *(v0 + OBJC_IVAR___CKMessageHistoryViewController____lazy_storage___calendarView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CKMessageHistoryViewController____lazy_storage___calendarView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC760]) init];
    [v4 setFontDesign_];
    [v4 setDelegate_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DC750]) initWithDelegate_];
    [v4 setSelectionBehavior_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_190CC1CC8()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for MessageHistoryViewController();
  objc_msgSendSuper2(&v31, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  sub_190CC2ACC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_190CC2E38;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190CC22E4;
    aBlock[3] = &block_descriptor_128;
    v7 = _Block_copy(aBlock);

    [v5 fetchOldestMessageDateWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v7);
  }

  v8 = sub_190CC1BEC();
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v0 view];
  if (!result)
  {
    goto LABEL_11;
  }

  v9 = result;
  v10 = OBJC_IVAR___CKMessageHistoryViewController____lazy_storage___calendarView;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_190DD86A0;
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  v13 = [result leadingAnchor];

  v14 = [*&v0[v10] leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v11 + 32) = v15;
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = result;
  v17 = [result trailingAnchor];

  v18 = [*&v0[v10] trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v11 + 40) = v19;
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = result;
  v21 = [result topAnchor];

  v22 = [*&v0[v10] topAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v11 + 48) = v23;
  result = [v0 view];
  if (result)
  {
    v24 = result;
    v25 = objc_opt_self();
    v26 = [v24 bottomAnchor];

    v27 = [*&v0[v10] bottomAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(v11 + 56) = v28;
    sub_1902188FC(0, &qword_1EAD45040);
    v29 = sub_190D57160();

    [v25 activateConstraints_];

    [*&v0[v10] intrinsicContentSize];
    [v0 setPreferredContentSize_];
    sub_190CC24F8(0);
    return _s7ChatKit28MessageHistoryViewControllerC08calendarE0_34didChangeVisibleDateComponentsFromySo010UICalendarE0C_10Foundation0kL0VtF_0();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MessageHistoryViewController()
{
  result = qword_1EAD626F8;
  if (!qword_1EAD626F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190CC21C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_19022FD14(a1, v4, &unk_1EAD5E5D0);
    v7 = OBJC_IVAR___CKMessageHistoryViewController_oldestMessageDate;
    swift_beginAccess();
    sub_190C32FD4(v4, v6 + v7);
    swift_endAccess();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_190CC2ACC();
  }
}

uint64_t sub_190CC22E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_190D517E0();
    v8 = sub_190D51840();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_190D51840();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  sub_190D50920();
  v7(v6);

  return sub_19022EEA4(v6, &unk_1EAD5E5D0);
}

uint64_t sub_190CC24F8(int a1)
{
  v40 = a1;
  v2 = sub_190D51180();
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D51B00();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = sub_190D51840();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    return sub_19022EEA4(v12, &unk_1EAD5E5D0);
  }

  v43 = v14;
  v44 = v13;
  v17 = [Strong dateOfNewestVisibleMessageForMessageHistoryViewController_];
  swift_unknownObjectRelease();
  if (v17)
  {
    sub_190D517E0();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = v43;
  v19 = v44;
  (*(v43 + 56))(v9, v18, 1, v44);
  sub_19088090C(v9, v12);
  if ((*(v20 + 48))(v12, 1, v19) == 1)
  {
    return sub_19022EEA4(v12, &unk_1EAD5E5D0);
  }

  (*(v20 + 32))(v45, v12, v19);
  v38 = v1;
  v22 = sub_190CC1BEC();
  v23 = [v22 calendar];

  sub_190D51A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C938);
  v24 = sub_190D51AE0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = *(v25 + 80);
  v39 = v2;
  v28 = (v27 + 32) & ~v27;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_190DDD0E0;
  v30 = *(v25 + 104);
  v30(v29 + v28, *MEMORY[0x1E6969A50], v24);
  v30(v29 + v28 + v26, *MEMORY[0x1E6969A68], v24);
  v30(v29 + v28 + 2 * v26, *MEMORY[0x1E6969A78], v24);
  v31 = v41;
  v30(v29 + v28 + 3 * v26, *MEMORY[0x1E6969A48], v24);
  v32 = v39;
  sub_1908B004C(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_190D51A30();

  v33 = [*(v38 + OBJC_IVAR___CKMessageHistoryViewController____lazy_storage___calendarView) selectionBehavior];
  if (v33)
  {
    v34 = v33;
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (v35)
    {
      v36 = v35;
      v37 = sub_190D510C0();
      [v36 setSelectedDate:v37 animated:v40 & 1];

      v34 = v37;
    }
  }

  (*(v31 + 8))(v4, v32);
  (*(v42 + 8))(v46, v5);
  return (*(v43 + 8))(v45, v44);
}

uint64_t sub_190CC2ACC()
{
  v1 = sub_190D50F40();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_190D51840();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  sub_190D51830();
  v19 = OBJC_IVAR___CKMessageHistoryViewController_oldestMessageDate;
  swift_beginAccess();
  sub_19022FD14(v0 + v19, v5, &unk_1EAD5E5D0);
  v20 = *(v7 + 48);
  if (v20(v5, 1, v6) == 1)
  {
    sub_190D51740();
    if (v20(v5, 1, v6) != 1)
    {
      sub_19022EEA4(v5, &unk_1EAD5E5D0);
    }
  }

  else
  {
    (*(v7 + 32))(v15, v5, v6);
  }

  v21 = sub_190CC1BEC();
  v22 = *(v7 + 16);
  v22(v12, v15, v6);
  v22(v9, v18, v6);
  v23 = v27;
  sub_190D50F30();
  v24 = sub_190D50F00();
  (*(v28 + 8))(v23, v29);
  [v21 setAvailableDateRange_];

  v25 = *(v7 + 8);
  v25(v15, v6);
  return (v25)(v18, v6);
}

uint64_t _s7ChatKit28MessageHistoryViewControllerC08calendarE0_34didChangeVisibleDateComponentsFromySo010UICalendarE0C_10Foundation0kL0VtF_0()
{
  v1 = sub_190D51AE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD627D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_190D50F40();
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = v9;
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v38 - v11;
  v12 = sub_190D51180();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v0;
  v16 = sub_190CC1BEC();
  v17 = [v16 visibleDateComponents];

  sub_190D510D0();
  v18 = v47;
  (*(v2 + 104))(v4, *MEMORY[0x1E6969A78], v1);
  sub_190CC3344(v4, v7);
  (*(v2 + 8))(v4, v1);
  v19 = v8;
  if ((*(v18 + 48))(v7, 1, v8) == 1)
  {
    (*(v13 + 8))(v15, v12);
    return sub_19022EEA4(v7, &qword_1EAD627D8);
  }

  else
  {
    v40 = v15;
    v41 = v13;
    v42 = v12;
    v21 = *(v18 + 32);
    v22 = v46;
    v23 = v7;
    v24 = v8;
    v21(v46, v23, v8);
    v25 = *(v45 + OBJC_IVAR___CKMessageHistoryViewController_messageHistoryForVisibleDateComponents);
    *(v45 + OBJC_IVAR___CKMessageHistoryViewController_messageHistoryForVisibleDateComponents) = 0;

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      v39 = sub_190D50F00();
      v28 = swift_allocObject();
      v38 = v21;
      v29 = v18;
      v30 = v28;
      swift_unknownObjectWeakInit();
      v31 = v44;
      (*(v29 + 16))(v44, v22, v8);
      v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v33 = (v43 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      v35 = v34 + v32;
      v24 = v19;
      v38(v35, v31, v19);
      *(v34 + v33) = v30;
      v18 = v29;
      aBlock[4] = sub_190CC5AE8;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19084156C;
      aBlock[3] = &block_descriptor_25_0;
      v36 = _Block_copy(aBlock);

      v37 = v39;
      [v27 messageHistoryForDateInterval:v39 completion:v36];
      _Block_release(v36);
      swift_unknownObjectRelease();
    }

    (*(v18 + 8))(v22, v24);
    return (*(v41 + 8))(v40, v42);
  }
}

uint64_t sub_190CC3344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - v4;
  v6 = sub_190D51840();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD626D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v21 - v11;
  v13 = sub_190D51B00();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51160();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v17 = &qword_1EAD626D8;
    v18 = v12;
LABEL_5:
    sub_19022EEA4(v18, v17);
    v19 = sub_190D50F40();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_190D510F0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v17 = &unk_1EAD5E5D0;
    v18 = v5;
    goto LABEL_5;
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_190D51A00();
  (*(v7 + 8))(v9, v6);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_190CC3688(void *a1)
{
  v2 = sub_190D51180();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_190D50F40();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [a1 dateInterval];
  sub_190D50F20();

  v12 = sub_190D50F10();
  result = (*(v7 + 8))(v10, v6);
  if (v12)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = *(Strong + OBJC_IVAR___CKMessageHistoryViewController_messageHistoryForVisibleDateComponents);
      *(Strong + OBJC_IVAR___CKMessageHistoryViewController_messageHistoryForVisibleDateComponents) = a1;
      v16 = Strong;
      v17 = a1;
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v18 = result;
      v19 = sub_190CC1BEC();
      v20 = [v19 visibleDateComponents];

      sub_190D510D0();
      DateComponents.dateComponentsForEachDayInMonth.getter();
      v21 = *&v18[OBJC_IVAR___CKMessageHistoryViewController____lazy_storage___calendarView];
      v22 = sub_190D57160();

      [v21 reloadDecorationsForDateComponents:v22 animated:0];

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t DateComponents.dateComponentsForEachDayInMonth.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C930);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v64 = &v48 - v2;
  v3 = sub_190D51180();
  v65 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v48 - v7;
  v8 = sub_190D51AE0();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - v13;
  v15 = sub_190D51840();
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD626D8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v63 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v22 = sub_190D51B00();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51160();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_19022EEA4(v21, &qword_1EAD626D8);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v23 + 32))(v25, v21, v22);
  v26 = v23;
  v62 = v0;
  sub_190D510F0();
  v27 = v52;
  v28 = v25;
  if ((*(v52 + 48))(v14, 1, v15) == 1)
  {
    sub_19022EEA4(v14, &unk_1EAD5E5D0);
    (*(v26 + 8))(v25, v22);
    return MEMORY[0x1E69E7CC0];
  }

  v49 = v15;
  v50 = v26;
  v61 = v22;
  (*(v27 + 32))(v66, v14, v15);
  v30 = v67;
  v29 = v68;
  v31 = *(v67 + 104);
  v32 = v57;
  v31(v57, *MEMORY[0x1E6969A48], v68);
  v33 = v58;
  v31(v58, *MEMORY[0x1E6969A78], v29);
  v34 = sub_190D51AB0();
  v60 = v35;
  v37 = v36;
  v38 = *(v30 + 8);
  v38(v33, v29);
  result = (v38)(v32, v29);
  if (v37)
  {
    (*(v52 + 8))(v66, v49);
    (*(v50 + 8))(v25, v61);
    return MEMORY[0x1E69E7CC0];
  }

  if (v34 == v60)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v41 = v66;
LABEL_11:
    (*(v52 + 8))(v41, v49);
    (*(v50 + 8))(v28, v61);
    return v40;
  }

  if (v60 < v34)
  {
    __break(1u);
  }

  else if (v34 < v60)
  {
    v57 = *(v50 + 16);
    v58 = (v50 + 16);
    v55 = (v65 + 16);
    v56 = (v50 + 56);
    v53 = v65 + 32;
    v54 = v65 + 8;
    v40 = MEMORY[0x1E69E7CC0];
    v42 = v51;
    v59 = v25;
    do
    {
      v68 = v40;
      v43 = v63;
      v44 = v61;
      (v57)(v63, v28, v61);
      (*v56)(v43, 0, 1, v44);
      sub_190D51170();
      v67 = sub_190D510E0();
      sub_190D51110();
      sub_190D51120();
      v40 = v68;
      sub_190D51150();
      (*v55)(v5, v42, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_19083748C(0, v40[2] + 1, 1, v40);
      }

      v46 = v40[2];
      v45 = v40[3];
      v41 = v66;
      if (v46 >= v45 >> 1)
      {
        v40 = sub_19083748C(v45 > 1, v46 + 1, 1, v40);
      }

      ++v34;
      v47 = v65;
      (*(v65 + 8))(v42, v3);
      v40[2] = v46 + 1;
      (*(v47 + 32))(v40 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46, v5, v3);
      v28 = v59;
    }

    while (v60 != v34);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id MessageHistoryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MessageHistoryViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___CKMessageHistoryViewController_messageHistoryForVisibleDateComponents] = 0;
  v6 = OBJC_IVAR___CKMessageHistoryViewController_oldestMessageDate;
  v7 = sub_190D51840();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR___CKMessageHistoryViewController____lazy_storage___calendarView] = 0;
  if (a2)
  {
    v8 = sub_190D56ED0();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for MessageHistoryViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id MessageHistoryViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MessageHistoryViewController.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CKMessageHistoryViewController_messageHistoryForVisibleDateComponents] = 0;
  v3 = OBJC_IVAR___CKMessageHistoryViewController_oldestMessageDate;
  v4 = sub_190D51840();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR___CKMessageHistoryViewController____lazy_storage___calendarView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MessageHistoryViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id MessageHistoryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageHistoryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190CC4570()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = sub_190D56ED0();
  [v0 setText_];

  v2 = [objc_opt_self() systemBlueColor];
  v3 = [v2 colorWithAlphaComponent_];

  [v0 setTextColor_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69655F0]) initWithShape_];
  [v0 _setTextEncapsulation_];

  return v0;
}

id sub_190CC4680(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_190D50920();
  v3 = v1(v2);

  return v3;
}

id sub_190CC4B58()
{
  v1 = sub_190D51AE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD627D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = aBlock - v6;
  v8 = sub_190D50F40();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR___CKMessageHistoryViewController_messageHistoryForVisibleDateComponents);
  if (v13)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E6969A48], v1, v10);
    v14 = v13;
    sub_190CC3344(v4, v7);
    (*(v2 + 8))(v4, v1);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      sub_19022EEA4(v7, &qword_1EAD627D8);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      v15 = sub_190D50F00();
      v16 = [v14 messagesMatchingDateInterval_];

      v17 = [v16 totalMessagePartCount];
      if (v17)
      {
        v18 = v17;
        v19 = objc_opt_self();
        v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v21 = [v19 localizedStringFromNumber:v20 numberStyle:1];

        v22 = sub_190D56F10();
        v24 = v23;

        v25 = objc_opt_self();
        v26 = swift_allocObject();
        *(v26 + 16) = v22;
        *(v26 + 24) = v24;
        aBlock[4] = sub_190CC5AE0;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_190CC4680;
        aBlock[3] = &block_descriptor_18_3;
        v27 = _Block_copy(aBlock);

        v28 = [v25 decorationWithCustomViewProvider_];
        _Block_release(v27);

        (*(v9 + 8))(v12, v8);
        return v28;
      }

      (*(v9 + 8))(v12, v8);
    }
  }

  return 0;
}

uint64_t sub_190CC4F68(uint64_t a1)
{
  v2 = sub_190D51AE0();
  v35 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD627D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_190D50F40();
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD627D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_190D51180();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19022FD14(a1, v13, &qword_1EAD627D0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_1EAD627D0;
    v19 = v13;
    return sub_19022EEA4(v19, v18);
  }

  (*(v15 + 32))(v17, v13, v14);
  v20 = *(v39 + OBJC_IVAR___CKMessageHistoryViewController_messageHistoryForVisibleDateComponents);
  if (!v20)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v21 = v39;
  v22 = v35;
  (*(v35 + 13))(v4, *MEMORY[0x1E6969A48], v2);
  v23 = v20;
  sub_190CC3344(v4, v7);
  (*(v22 + 1))(v4, v2);
  v25 = v37;
  v24 = v38;
  if ((*(v38 + 48))(v7, 1, v37) == 1)
  {
    (*(v15 + 8))(v17, v14);

    v18 = &qword_1EAD627D8;
    v19 = v7;
    return sub_19022EEA4(v19, v18);
  }

  v35 = v17;
  (*(v24 + 32))(v36, v7, v25);
  v27 = sub_190D50F00();
  v28 = [v23 messagesMatchingDateInterval_];

  v29 = [v28 messages];
  if (!v29)
  {
    sub_1902188FC(0, &qword_1EAD627E0);
    sub_190D57180();
    v29 = sub_190D57160();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = v21;
    v33 = v35;
    v34 = sub_190D510C0();
    [v31 messageHistoryViewController:v32 didSelectDate:v34 withMessages:v29];

    swift_unknownObjectRelease();
    (*(v38 + 8))(v36, v25);
    return (*(v15 + 8))(v33, v14);
  }

  else
  {

    (*(v38 + 8))(v36, v25);
    return (*(v15 + 8))(v35, v14);
  }
}

BOOL sub_190CC549C(void *a1)
{
  v31 = a1;
  v2 = sub_190D51AE0();
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD627D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_190D50F40();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD627D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_190D51180();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + OBJC_IVAR___CKMessageHistoryViewController_messageHistoryForVisibleDateComponents);
  if (v18)
  {
    sub_19022FD14(v31, v13, &qword_1EAD627D0);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      v19 = &qword_1EAD627D0;
      v20 = v13;
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      v21 = v29;
      (*(v29 + 104))(v4, *MEMORY[0x1E6969A48], v2);
      v31 = v18;
      sub_190CC3344(v4, v7);
      (*(v21 + 8))(v4, v2);
      v22 = v30;
      if ((*(v30 + 48))(v7, 1, v8) != 1)
      {
        (*(v22 + 32))(v10, v7, v8);
        v24 = sub_190D50F00();
        v25 = v31;
        v26 = [v31 messagesMatchingDateInterval_];

        v27 = [v26 totalMessagePartCount];
        (*(v22 + 8))(v10, v8);
        (*(v15 + 8))(v17, v14);
        return v27 != 0;
      }

      (*(v15 + 8))(v17, v14);

      v19 = &qword_1EAD627D8;
      v20 = v7;
    }

    sub_19022EEA4(v20, v19);
  }

  return 0;
}

void sub_190CC58E8()
{
  sub_1908808B4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_190CC5AE8(void *a1)
{
  sub_190D50F40();

  return sub_190CC3688(a1);
}

uint64_t sub_190CC5B94()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E658);
  __swift_project_value_buffer(v0, qword_1EAD9E658);
  return sub_190D53030();
}

void sub_190CC5DEC(unint64_t a1)
{
  v2 = v1;
  v4 = sub_190D51840();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190CC6388(v7);
  v8 = sub_190D51780();
  v11 = *(v5 + 8);
  v9 = v5 + 8;
  v10 = v11;
  v11(v7, v4);
  v12 = OBJC_IVAR___CKSendLaterPluginInfo__selectedDate;
  v13 = *(v1 + OBJC_IVAR___CKSendLaterPluginInfo__selectedDate);
  sub_1902188FC(0, &qword_1EAD627E8);
  v14 = v13;
  v15 = sub_190D57D90();

  if (v15)
  {
    v10(a1, v4);

    return;
  }

  v51 = v10;
  v16 = *(v2 + v12);
  *(v2 + v12) = v8;
  v17 = v8;

  v18 = v2;
  if (qword_1EAD52048 != -1)
  {
    goto LABEL_19;
  }

LABEL_4:
  v19 = sub_190D53040();
  v20 = __swift_project_value_buffer(v19, qword_1EAD9E658);
  v21 = v17;
  v59 = v20;
  v22 = sub_190D53020();
  v23 = sub_190D57680();

  v24 = os_log_type_enabled(v22, v23);
  v52 = v9;
  v53 = v4;
  v57 = v18;
  v50 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v62 = v26;
    *v25 = 136315138;
    sub_190D517E0();
    v27 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v27 setTimeStyle_];
    [v27 setDateStyle_];
    v28 = sub_190D51780();
    v29 = [v27 stringFromDate_];

    v30 = sub_190D56F10();
    a1 = v31;

    v51(v7, v53);
    v32 = sub_19021D9F8(v30, a1, &v62);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_19020E000, v22, v23, "selectedDate changed to: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x193AF7A40](v26, -1, -1);
    v33 = v25;
    v18 = v57;
    MEMORY[0x193AF7A40](v33, -1, -1);
  }

  v4 = v21;
  v34 = [*(v18 + OBJC_IVAR___CKSendLaterPluginInfo_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62848);
  v35 = sub_190D57180();

  if (!(v35 >> 62))
  {
    v17 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  v17 = sub_190D581C0();
  if (v17)
  {
LABEL_8:
    v9 = 0;
    v7 = (v35 & 0xC000000000000001);
    v37 = v35 & 0xFFFFFFFFFFFFFF8;
    *&v36 = 136315138;
    v54 = v36;
    v55 = v35 & 0xFFFFFFFFFFFFFF8;
    v56 = v17;
    do
    {
      if (v7)
      {
        v38 = MEMORY[0x193AF3B90](v9, v35);
        v39 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v9 >= *(v37 + 16))
        {
          goto LABEL_18;
        }

        v38 = *(v35 + 8 * v9 + 32);
        swift_unknownObjectRetain();
        v39 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          swift_once();
          goto LABEL_4;
        }
      }

      v60 = v39;
      swift_unknownObjectRetain();
      v40 = sub_190D53020();
      a1 = sub_190D57680();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v40, a1))
      {
        v41 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v62 = v58;
        *v41 = v54;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62850);
        v42 = sub_190D56F50();
        v44 = v7;
        v45 = v4;
        v46 = sub_19021D9F8(v42, v43, &v62);
        v37 = v55;

        *(v41 + 4) = v46;
        v4 = v45;
        v7 = v44;
        _os_log_impl(&dword_19020E000, v40, a1, "Invoking pluginInfoSelectedDateDidChange on: %s", v41, 0xCu);
        v47 = v58;
        __swift_destroy_boxed_opaque_existential_0(v58);
        v48 = v47;
        v18 = v57;
        MEMORY[0x193AF7A40](v48, -1, -1);
        v49 = v41;
        v17 = v56;
        MEMORY[0x193AF7A40](v49, -1, -1);
      }

      [v38 pluginInfoSelectedDateDidChange_];
      swift_unknownObjectRelease();
      ++v9;
    }

    while (v60 != v17);
  }

LABEL_21:

  v51(v50, v53);
}

uint64_t sub_190CC6388@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v26 = &v25 - v2;
  v3 = sub_190D51180();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D51B00();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51AC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C938);
  v9 = sub_190D51AE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = 4 * v11;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_190DDD0F0;
  v15 = v14 + v12;
  v16 = *(v10 + 104);
  v16(v15, *MEMORY[0x1E6969A68], v9);
  v16(v15 + v11, *MEMORY[0x1E6969A78], v9);
  v16(v15 + 2 * v11, *MEMORY[0x1E6969A48], v9);
  v17 = 3 * v11;
  v18 = v27;
  v16(v15 + v17, *MEMORY[0x1E6969A58], v9);
  v19 = v15 + v13;
  v20 = v26;
  v16(v19, *MEMORY[0x1E6969A88], v9);
  sub_1908B004C(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_190D51A30();

  sub_190D51A90();
  (*(v30 + 8))(v5, v31);
  (*(v28 + 8))(v8, v29);
  v21 = sub_190D51840();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v20, 1, v21) != 1)
  {
    return (*(v22 + 32))(v32, v20, v21);
  }

  (*(v22 + 16))(v32, v18, v21);
  result = (v23)(v20, 1, v21);
  if (result != 1)
  {
    return sub_19022EEA4(v20, &unk_1EAD5E5D0);
  }

  return result;
}

uint64_t sub_190CC6824()
{
  v1 = v0;
  if (qword_1EAD52048 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v2 = sub_190D53040();
    __swift_project_value_buffer(v2, qword_1EAD9E658);
    v1 = v1;
    v3 = sub_190D53020();
    v4 = sub_190D57680();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = *(&v1->isa + OBJC_IVAR___CKSendLaterPluginInfo_showingDatePicker);

      _os_log_impl(&dword_19020E000, v3, v4, "showingDatePicker changed to: %{BOOL}d", v5, 8u);
      MEMORY[0x193AF7A40](v5, -1, -1);
    }

    else
    {

      v3 = v1;
    }

    v6 = [*(&v1->isa + OBJC_IVAR___CKSendLaterPluginInfo_observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62848);
    v7 = sub_190D57180();

    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
      }

      goto LABEL_7;
    }

    v8 = sub_190D581C0();
    if (!v8)
    {
    }

LABEL_7:
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    while (v10)
    {
      v12 = MEMORY[0x193AF3B90](v9, v7);
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }

LABEL_12:
      v24 = v13;
      swift_unknownObjectRetain();
      v14 = sub_190D53020();
      v15 = sub_190D57680();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v16 = 136315138;
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62850);
        v17 = sub_190D56F50();
        v19 = v8;
        v20 = sub_19021D9F8(v17, v18, &v25);
        v11 = v7 & 0xFFFFFFFFFFFFFF8;

        *(v16 + 4) = v20;
        v8 = v19;
        _os_log_impl(&dword_19020E000, v14, v15, "Invoking pluginInfoShowingDatePickerDidChange on: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x193AF7A40](v23, -1, -1);
        v21 = v16;
        v10 = v7 & 0xC000000000000001;
        MEMORY[0x193AF7A40](v21, -1, -1);
      }

      if ([v12 respondsToSelector_])
      {
        [v12 pluginInfoShowingDatePickerDidChange_];
      }

      swift_unknownObjectRelease();
      ++v9;
      if (v24 == v8)
      {
      }
    }

    if (v9 >= *(v11 + 16))
    {
      goto LABEL_19;
    }

    v12 = *(v7 + 8 * v9 + 32);
    swift_unknownObjectRetain();
    v13 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }
}

char *sub_190CC6BA4(char *a1)
{
  v2 = v1;
  v76 = a1;
  v75 = sub_190D51AE0();
  v3 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_190D51B00();
  v6 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_190D51840();
  v73 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  v18 = OBJC_IVAR___CKSendLaterPluginInfo_observers;
  *&v2[v18] = [objc_opt_self() weakObjectsHashTable];
  *&v2[OBJC_IVAR___CKSendLaterPluginInfo_updateTimer] = 0;
  v2[OBJC_IVAR___CKSendLaterPluginInfo_showingDatePicker] = 0;
  v19 = sub_190D56ED0();
  v20 = sub_190D56ED0();
  v21 = IMGetCachedDomainIntForKeyWithDefaultValue();

  v22 = v17;
  v23 = v21;
  v24 = v76;
  *&v2[OBJC_IVAR___CKSendLaterPluginInfo_minFutureTimeInterval] = v23 * 60.0;
  *&v2[OBJC_IVAR___CKSendLaterPluginInfo__selectedDate] = sub_190D51780();
  v79.receiver = v2;
  v79.super_class = CKSendLaterPluginInfo;
  v25 = objc_msgSendSuper2(&v79, sel_init);
  sub_190D517F0();
  sub_190D51AC0();
  v26 = v75;
  (*(v3 + 104))(v5, *MEMORY[0x1E6969A98], v75);
  v27 = sub_190D51AF0();
  (*(v3 + 8))(v5, v26);
  (*(v6 + 8))(v8, v74);
  if (__OFSUB__(60, v27))
  {
    __break(1u);
  }

  else
  {
    v74 = v25;
    v75 = v22;
    sub_190D51770();
    v22 = v14;
    if (qword_1EAD52048 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v28 = sub_190D53040();
  __swift_project_value_buffer(v28, qword_1EAD9E658);
  v29 = v73;
  v30 = *(v73 + 16);
  v31 = v71;
  v32 = v77;
  v30(v71, v24, v77);
  v33 = v72;
  v30(v72, v22, v32);
  v34 = sub_190D53020();
  v35 = sub_190D57680();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v36 = 136315394;
    v37 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v37 setTimeStyle_];
    [v37 setDateStyle_];
    v38 = sub_190D51780();
    v39 = [v37 stringFromDate_];
    v70 = v22;
    v40 = v39;

    v41 = sub_190D56F10();
    v43 = v42;

    v44 = v31;
    v45 = *(v29 + 8);
    LODWORD(v73) = v35;
    v45(v44, v77);
    v46 = sub_19021D9F8(v41, v43, aBlock);

    *(v36 + 4) = v46;
    *(v36 + 12) = 2080;
    v47 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v47 setTimeStyle_];
    [v47 setDateStyle_];
    v48 = sub_190D51780();
    v49 = [v47 stringFromDate_];

    v50 = sub_190D56F10();
    v52 = v51;

    v22 = v70;
    v45(v33, v77);
    v53 = sub_19021D9F8(v50, v52, aBlock);
    v24 = v76;

    *(v36 + 14) = v53;
    _os_log_impl(&dword_19020E000, v34, v73, "Initialized with selectedDate: %s, timer first fire time: %s", v36, 0x16u);
    v54 = v69;
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v54, -1, -1);
    v55 = v36;
    v32 = v77;
    MEMORY[0x193AF7A40](v55, -1, -1);
  }

  else
  {

    v56 = v31;
    v45 = *(v29 + 8);
    v45(v33, v32);
    v45(v56, v32);
  }

  v57 = swift_allocObject();
  v58 = v74;
  swift_unknownObjectWeakInit();
  v59 = objc_allocWithZone(MEMORY[0x1E695DFF0]);
  sub_190D50920();
  v60 = sub_190D51780();
  aBlock[4] = sub_190CCA65C;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_129;
  v61 = v22;
  v62 = _Block_copy(aBlock);
  v63 = [v59 initWithFireDate:v60 interval:1 repeats:v62 block:60.0];
  _Block_release(v62);

  v64 = *&v58[OBJC_IVAR___CKSendLaterPluginInfo_updateTimer];
  *&v58[OBJC_IVAR___CKSendLaterPluginInfo_updateTimer] = v63;
  v65 = v63;

  v66 = [objc_opt_self() mainRunLoop];
  [v66 addTimer:v65 forMode:*MEMORY[0x1E695D918]];

  v45(v24, v32);
  v45(v61, v32);
  v45(v75, v32);
  return v58;
}

void sub_190CC7424()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_190CC7534();
  }

  else
  {
    if (qword_1EAD52048 != -1)
    {
      swift_once();
    }

    v2 = sub_190D53040();
    __swift_project_value_buffer(v2, qword_1EAD9E658);
    v1 = sub_190D53020();
    v3 = sub_190D576A0();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v1, v3, "Timer fired, but we lost reference to self, not handling update.", v4, 2u);
      MEMORY[0x193AF7A40](v4, -1, -1);
    }
  }
}

uint64_t sub_190CC7534()
{
  v1 = v0;
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v77 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v77 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v77 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v77 - v23;
  v25 = [objc_opt_self() now];
  sub_190D517E0();

  sub_190D51770();
  v86 = v1;
  v26 = [v1 selectedDate];
  sub_190D517E0();

  sub_190CCA618(&qword_1EAD5F728);
  v27 = sub_190D56E10();
  v83 = v3;
  v28 = *(v3 + 16);
  v89 = v18;
  if (v27)
  {
    v29 = v18;
  }

  else
  {
    v29 = v21;
  }

  v28(v15, v29, v2);
  if (qword_1EAD52048 != -1)
  {
    swift_once();
  }

  v30 = sub_190D53040();
  __swift_project_value_buffer(v30, qword_1EAD9E658);
  v84 = v24;
  v28(v88, v24, v2);
  v28(v10, v15, v2);
  v85 = v21;
  v28(v7, v21, v2);
  v31 = v87;
  v28(v87, v89, v2);
  v32 = sub_190D53020();
  v33 = sub_190D57680();
  v34 = v10;
  if (os_log_type_enabled(v32, v33))
  {
    v35 = swift_slowAlloc();
    v82 = v15;
    v36 = v35;
    v77 = v35;
    v81 = swift_slowAlloc();
    v90 = v81;
    *v36 = 136315906;
    v37 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v37 setTimeStyle_];
    [v37 setDateStyle_];
    v80 = v32;
    v38 = v88;
    v39 = sub_190D51780();
    v40 = [v37 stringFromDate_];
    v79 = v33;
    v41 = v40;

    v42 = sub_190D56F10();
    v78 = v7;
    v43 = v34;
    v45 = v44;

    v46 = *(v83 + 8);
    v46(v38, v2);
    v47 = sub_19021D9F8(v42, v45, &v90);

    v48 = v77;
    *(v77 + 4) = v47;
    *(v48 + 12) = 2080;
    v49 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v49 setTimeStyle_];
    [v49 setDateStyle_];
    v50 = sub_190D51780();
    v51 = [v49 stringFromDate_];

    v52 = sub_190D56F10();
    v54 = v53;

    v46(v43, v2);
    v55 = sub_19021D9F8(v52, v54, &v90);

    *(v48 + 14) = v55;
    *(v48 + 22) = 2080;
    v56 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v56 setTimeStyle_];
    [v56 setDateStyle_];
    v57 = v78;
    v58 = sub_190D51780();
    v59 = [v56 stringFromDate_];

    v60 = sub_190D56F10();
    v62 = v61;

    v46(v57, v2);
    v63 = sub_19021D9F8(v60, v62, &v90);

    *(v48 + 24) = v63;
    *(v48 + 32) = 2080;
    v64 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v64 setTimeStyle_];
    [v64 setDateStyle_];
    v65 = v87;
    v66 = sub_190D51780();
    v67 = [v64 stringFromDate_];

    v68 = sub_190D56F10();
    v70 = v69;

    v46(v65, v2);
    v71 = sub_19021D9F8(v68, v70, &v90);

    *(v48 + 34) = v71;
    v72 = v80;
    _os_log_impl(&dword_19020E000, v80, v79, "Update timer fired at: %s. Calculated target date: %s minTargetDate: %s currentSelectedDate: %s", v48, 0x2Au);
    v73 = v81;
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v73, -1, -1);
    v74 = v48;
    v15 = v82;
    MEMORY[0x193AF7A40](v74, -1, -1);
  }

  else
  {

    v46 = *(v83 + 8);
    v46(v31, v2);
    v46(v7, v2);
    v46(v10, v2);
    v46(v88, v2);
  }

  v75 = sub_190D51780();
  [v86 setSelectedDate_];

  v46(v15, v2);
  v46(v89, v2);
  v46(v85, v2);
  return (v46)(v84, v2);
}

id sub_190CC7DB0(void *a1)
{
  v2 = v1;
  v4 = sub_190D51840();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190CC7F10();
  if (v8)
  {
    v9 = v8;
    result = [v8 time];
    if (result)
    {
      v11 = result;
      sub_190D517E0();

      v12 = sub_190D51780();
      (*(v5 + 8))(v7, v4);
      v13 = [v2 initWithSelectedDate_];

      return v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v14 = [v1 init];

    return v14;
  }

  return result;
}

uint64_t sub_190CC7F10()
{
  v36 = sub_190D51840();
  v1 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v34 = &v31 - v5;
  v6 = [v0 chat];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 chatItems];

  sub_1902188FC(0, &unk_1EAD450C0);
  v9 = sub_190D57180();

  if (v9 >> 62)
  {
LABEL_31:
    v10 = sub_190D581C0();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v9;
  sub_190D52690();
  if (!v10)
  {
LABEL_25:
    swift_bridgeObjectRelease_n();
    return 0;
  }

  v11 = v32 & 0xC000000000000001;
  v12 = v32 & 0xFFFFFFFFFFFFFF8;
  v13 = v32 + 32;
  v33 = v1 + 1;
  v9 = 0x1E69A5000uLL;
  v14 = &selRef_messageEditingViewController_originalMessageCompositionForMessageWithGuid_;
  v15 = &selRef_retargetedPreviewWithTarget_;
  v16 = &selRef_retargetedPreviewWithTarget_;
  while (1)
  {
    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v11)
    {
      v19 = MEMORY[0x193AF3B90](v10, v32);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v10 >= *(v12 + 16))
      {
        goto LABEL_30;
      }

      v19 = *(v13 + 8 * v10);
    }

    v17 = v19;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (!v20)
    {
      goto LABEL_7;
    }

    v1 = [v20 v14[167]];

    if (!v1)
    {
      goto LABEL_8;
    }

    v21 = [v1 v15[153]];
    if (v21 >= 2)
    {
      if (v21 != 2)
      {
        goto LABEL_33;
      }

      v22 = [v1 v16[151]];
      if (v22 > 5)
      {
        goto LABEL_33;
      }

      if (((1 << v22) & 0x16) != 0)
      {
        break;
      }
    }

    v17 = v1;
LABEL_7:

LABEL_8:
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  v23 = [v1 time];
  if (v23)
  {
    v24 = v23;
    v25 = v34;
    sub_190D517E0();

    v26 = v35;
    sub_190D517F0();
    LOBYTE(v24) = sub_190D51790();
    v27 = *v33;
    v28 = v26;
    v29 = v36;
    (*v33)(v28, v36);
    v27(v25, v29);
    if (v24)
    {
      swift_bridgeObjectRelease_n();
      return v1;
    }

    v17 = v1;
    v9 = 8163840000;
    v14 = &selRef_messageEditingViewController_originalMessageCompositionForMessageWithGuid_;
    v15 = &selRef_retargetedPreviewWithTarget_;
    v16 = &selRef_retargetedPreviewWithTarget_;
    goto LABEL_7;
  }

  __break(1u);
LABEL_33:
  result = sub_190D58510();
  __break(1u);
  return result;
}

id sub_190CC830C()
{
  v1 = v0;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62828);
  v140 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v136 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v137 = &v135 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v152 = &v135 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v151 = &v135 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62830);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v139 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v135 - v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F720);
  MEMORY[0x1EEE9AC00](v155);
  v14 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v135 - v16;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53890);
  v150 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v144 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v145 = &v135 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v135 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v153 = &v135 - v24;
  v25 = sub_190D51B00();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_190D51840();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v135 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v149 = &v135 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v135 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v135 - v38;
  sub_190D51AC0();
  sub_190D517F0();
  sub_190D519F0();
  v163 = v30[1];
  v164 = (v30 + 1);
  v163(v36, v29);
  (*(v26 + 8))(v28, v25);
  sub_190CC94D4(7, 30, 0, v36);
  v40 = sub_190CCA618(&qword_1EAD5F728);
  v158 = v39;
  v160 = v36;
  if ((sub_190D56E20() & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v147 = v22;
  v138 = v1;
  v41 = v154;
  v161 = v30[2];
  v162 = v30 + 2;
  v161(v154, v158, v29);
  v42 = v155;
  v43 = *(v155 + 48);
  v148 = v30;
  v45 = v30[4];
  v44 = v30 + 4;
  v45(v41 + v43, v160, v29);
  v159 = v40;
  sub_19022FD14(v41, v14, &qword_1EAD5F720);
  v46 = *(v42 + 48);
  v39 = v153;
  v45(v153, v14, v29);
  v47 = v163;
  v163((v14 + v46), v29);
  sub_19081E40C(v41, v14, &qword_1EAD5F720);
  v48 = *(v157 + 36);
  v49 = v14 + *(v42 + 48);
  v146 = v45;
  v45(&v39[v48], v49, v29);
  v47(v14, v29);
  sub_190CC94D4(12, 0, 1, v160);
  if ((sub_190D56E20() & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v50 = &v153[v48];
  v51 = v154;
  v161(v154, v50, v29);
  v52 = v155;
  v53 = v160;
  v54 = v146;
  v146(v51 + *(v155 + 48), v160, v29);
  sub_19022FD14(v51, v14, &qword_1EAD5F720);
  v55 = *(v52 + 48);
  v39 = v147;
  v54(v147, v14, v29);
  v56 = v163;
  v163((v14 + v55), v29);
  sub_19081E40C(v51, v14, &qword_1EAD5F720);
  v57 = *(v157 + 36);
  v54(&v39[v57], v14 + *(v52 + 48), v29);
  v56(v14, v29);
  sub_190CC94D4(16, 0, 1, v53);
  if ((sub_190D56E20() & 1) == 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_23;
  }

  v58 = &v39[v57];
  v59 = v154;
  v161(v154, v58, v29);
  v60 = v155;
  v61 = v146;
  v146(v59 + *(v155 + 48), v160, v29);
  sub_19022FD14(v59, v14, &qword_1EAD5F720);
  v62 = *(v60 + 48);
  v63 = v145;
  v61(v145, v14, v29);
  v64 = (v14 + v62);
  v65 = v157;
  v66 = v163;
  v39 = v164;
  v163(v64, v29);
  sub_19081E40C(v59, v14, &qword_1EAD5F720);
  v67 = *(v65 + 36);
  v68 = v14 + *(v60 + 48);
  v142 = v44;
  v61(v63 + v67, v68, v29);
  v141 = v14;
  v66(v14, v29);
  sub_190CC9C8C(v160);
  if ((sub_190D56E20() & 1) == 0)
  {
    goto LABEL_32;
  }

  v69 = v154;
  v161(v154, (v63 + v67), v29);
  v70 = v155;
  v71 = v146;
  v146(v69 + *(v155 + 48), v160, v29);
  v72 = v141;
  sub_19022FD14(v69, v141, &qword_1EAD5F720);
  v73 = v65;
  v74 = *(v70 + 48);
  v75 = v144;
  v71(v144, v72, v29);
  v76 = v163;
  v163((v72 + v74), v29);
  sub_19081E40C(v69, v72, &qword_1EAD5F720);
  v71(v75 + *(v73 + 36), v72 + *(v70 + 48), v29);
  v76(v72, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62840);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53880);
  v78 = *(*(v77 - 8) + 72);
  v79 = (*(*(v77 - 8) + 80) + 32) & ~*(*(v77 - 8) + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_190DDD0E0;
  v81 = *(v77 + 48);
  sub_19022FD14(v153, v80 + v79, &qword_1EAD53890);
  sub_190CC94D4(9, 0, 1, v80 + v79 + v81);
  v82 = *(v77 + 48);
  sub_19022FD14(v147, v80 + v79 + v78, &qword_1EAD53890);
  sub_190CC94D4(17, 0, 1, v80 + v79 + v78 + v82);
  v39 = (v80 + v79 + 2 * v78);
  v83 = *(v77 + 48);
  sub_19022FD14(v145, v39, &qword_1EAD53890);
  sub_190CC94D4(19, 0, 1, &v39[v83]);
  v84 = v80 + v79 + 3 * v78;
  v85 = *(v77 + 48);
  sub_19022FD14(v144, v84, &qword_1EAD53890);
  v86 = v160;
  sub_190CC9C8C(v160);
  sub_190CC94D4(9, 0, 1, v84 + v85);
  v163(v86, v29);
  v87 = sub_1908242AC(v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v88 = 1 << *(v87 + 32);
  v89 = -1;
  if (v88 < 64)
  {
    v89 = ~(-1 << v88);
  }

  v90 = v89 & *(v87 + 64);
  v91 = (v88 + 63) >> 6;
  sub_190D52690();
  v14 = 0;
  while (1)
  {
    if (!v90)
    {
      v92 = v161;
      while (1)
      {
        v93 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v93 >= v91)
        {

          v100 = v140;
          v101 = *(v140 + 56);
          v99 = v143;
          v102 = v143;
          v103 = 1;
          goto LABEL_21;
        }

        v90 = *(v87 + 64 + 8 * v93);
        ++v14;
        if (v90)
        {
          v14 = v93;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

    v92 = v161;
LABEL_17:
    v94 = __clz(__rbit64(v90)) | (v14 << 6);
    v95 = v151;
    sub_19022FD14(*(v87 + 48) + *(v150 + 72) * v94, v151, &qword_1EAD53890);
    v92(v95 + *(v156 + 48), *(v87 + 56) + v148[9] * v94, v29);
    v96 = v95;
    v39 = v152;
    sub_19081E40C(v96, v152, &qword_1EAD62828);
    v97 = v149;
    sub_190D517F0();
    if ((sub_190D56E10() & 1) == 0)
    {
      v163(v97, v29);
      goto LABEL_9;
    }

    v98 = sub_190D56E20();
    v163(v97, v29);
    if (v98)
    {
      break;
    }

LABEL_9:
    v90 &= v90 - 1;
    sub_19022EEA4(v39, &qword_1EAD62828);
  }

  v99 = v143;
  sub_19081E40C(v39, v143, &qword_1EAD62828);
  v100 = v140;
  v101 = *(v140 + 56);
  v102 = v99;
  v103 = 0;
LABEL_21:
  v104 = v156;
  v101(v102, v103, 1, v156);

  v105 = v139;
  sub_19022FD14(v99, v139, &unk_1EAD62830);
  v106 = (*(v100 + 48))(v105, 1, v104);
  v14 = v138;
  v107 = v147;
  if (v106 != 1)
  {
    v127 = v105;
    v128 = v137;
    sub_19081E40C(v127, v137, &qword_1EAD62828);
    v129 = v136;
    sub_19022FD14(v128, v136, &qword_1EAD62828);
    v130 = *(v104 + 48);
    v131 = sub_190D51780();
    v132 = (v129 + v130);
    v133 = v14;
    v126 = v163;
    v163(v132, v29);
    sub_19022EEA4(v129, &qword_1EAD53890);
    v125 = [v133 initWithSelectedDate_];

    sub_19022EEA4(v128, &qword_1EAD62828);
    v122 = v158;
    v113 = v145;
    goto LABEL_27;
  }

  sub_19022EEA4(v105, &unk_1EAD62830);
  v39 = v163;
  if (qword_1EAD52048 != -1)
  {
    goto LABEL_33;
  }

LABEL_23:
  v108 = sub_190D53040();
  __swift_project_value_buffer(v108, qword_1EAD9E658);
  v109 = sub_190D53020();
  v110 = sub_190D576B0();
  v111 = os_log_type_enabled(v109, v110);
  v112 = v160;
  v113 = v145;
  if (v111)
  {
    v114 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v165 = v162;
    *v114 = 136315138;
    sub_190D517F0();
    sub_190CCA618(&qword_1EAD462F0);
    v115 = sub_190D58720();
    v116 = v113;
    v117 = v14;
    v119 = v118;
    (v39)(v112, v29);
    v120 = sub_19021D9F8(v115, v119, &v165);
    v14 = v117;
    v113 = v116;

    *(v114 + 4) = v120;
    _os_log_impl(&dword_19020E000, v109, v110, "Somehow didn't find a valid time to pick for now: %s", v114, 0xCu);
    v121 = v162;
    __swift_destroy_boxed_opaque_existential_0(v162);
    MEMORY[0x193AF7A40](v121, -1, -1);
    MEMORY[0x193AF7A40](v114, -1, -1);
  }

  v107 = v147;
  v122 = v158;
  v123 = v135;
  sub_190CC9C8C(v135);
  sub_190CC94D4(9, 0, 1, v112);
  (v39)(v123, v29);
  v124 = sub_190D51780();
  (v39)(v112, v29);
  v125 = [v14 initWithSelectedDate_];

  v126 = v39;
LABEL_27:
  sub_19022EEA4(v143, &unk_1EAD62830);
  sub_19022EEA4(v144, &qword_1EAD53890);
  sub_19022EEA4(v113, &qword_1EAD53890);
  sub_19022EEA4(v107, &qword_1EAD53890);
  sub_19022EEA4(v153, &qword_1EAD53890);
  v126(v122, v29);
  return v125;
}