uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void (*a7)(unint64_t, int64_t, unint64_t), void (*a8)(unint64_t *, unint64_t *, unint64_t *))
{
  v58 = a8;
  v70 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v66 = a5;
  v67 = a6;
  v12 = OUTLINED_FUNCTION_82(a1, a2, a3, a4, a5);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v14 = *(*(v65 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v65);
  v68 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v69 = &v56 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v21 = v10 - v11 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_61;
  }

  v22 = v9 - v10;
  if (v9 - v10 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v24 = (v10 - v11) / v20;
  v73 = v11;
  v72 = v70;
  v25 = v22 / v20;
  if (v24 >= v22 / v20)
  {
    v38 = v70;
    a7(v10, v22 / v20, v70);
    v39 = v38 + v25 * v20;
    v40 = -v20;
    v41 = v39;
    v60 = -v20;
    v61 = v11;
LABEL_37:
    v42 = v9;
    v57 = v41;
    v62 = v10 + v40;
    v63 = v10;
    while (1)
    {
      if (v39 <= v70)
      {
        v73 = v10;
        v71 = v41;
        goto LABEL_59;
      }

      if (v10 <= v11)
      {
        break;
      }

      v59 = v41;
      v43 = v42 + v40;
      v44 = v39 + v40;
      v45 = v69;
      v46 = v66;
      v47 = v39;
      v48 = v67;
      outlined init with copy of EagerResolutionService?();
      v49 = v68;
      outlined init with copy of EagerResolutionService?();
      v64 = *v45;
      v50 = *v49;
      outlined destroy of EagerResolutionService?(v49, v46, v48);
      outlined destroy of EagerResolutionService?(v45, v46, v48);
      if (v50 >= v64)
      {
        v39 = v47;
        v52 = v42 < v63 || v43 >= v63;
        v9 = v43;
        if (v52)
        {
          v10 = v62;
          OUTLINED_FUNCTION_116();
          swift_arrayInitWithTakeFrontToBack();
          v41 = v59;
          v40 = v60;
          v11 = v61;
        }

        else
        {
          v40 = v60;
          v41 = v59;
          v11 = v61;
          v53 = v62;
          v10 = v62;
          if (v42 != v63)
          {
            OUTLINED_FUNCTION_116();
            v55 = v54;
            swift_arrayInitWithTakeBackToFront();
            v10 = v53;
            v41 = v55;
          }
        }

        goto LABEL_37;
      }

      if (v42 < v47 || v43 >= v47)
      {
        OUTLINED_FUNCTION_116();
        swift_arrayInitWithTakeFrontToBack();
        v42 = v43;
        v39 = v44;
        v41 = v44;
        v40 = v60;
        v11 = v61;
        v10 = v63;
      }

      else
      {
        v41 = v44;
        v21 = v47 == v42;
        v42 = v43;
        v39 = v44;
        v40 = v60;
        v11 = v61;
        v10 = v63;
        if (!v21)
        {
          OUTLINED_FUNCTION_116();
          swift_arrayInitWithTakeBackToFront();
          v42 = v43;
          v39 = v44;
          v41 = v44;
        }
      }
    }

    v73 = v10;
    v71 = v57;
  }

  else
  {
    v26 = v70;
    a7(v11, (v10 - v11) / v20, v70);
    v63 = v9;
    v64 = v26 + v24 * v20;
    v71 = v64;
    while (v70 < v64 && v10 < v9)
    {
      v28 = v20;
      v29 = v69;
      v31 = v66;
      v30 = v67;
      outlined init with copy of EagerResolutionService?();
      v32 = v68;
      outlined init with copy of EagerResolutionService?();
      v33 = *v29;
      v34 = *v32;
      outlined destroy of EagerResolutionService?(v32, v31, v30);
      outlined destroy of EagerResolutionService?(v29, v31, v30);
      if (v34 >= v33)
      {
        v20 = v28;
        if (v11 < v10 || v11 >= v10 + v28)
        {
          OUTLINED_FUNCTION_180();
          OUTLINED_FUNCTION_116();
          swift_arrayInitWithTakeFrontToBack();
          v10 += v28;
          v9 = v63;
        }

        else
        {
          v9 = v63;
          if (v11 != v10)
          {
            OUTLINED_FUNCTION_180();
            OUTLINED_FUNCTION_116();
            swift_arrayInitWithTakeBackToFront();
          }

          v10 += v28;
        }
      }

      else
      {
        v20 = v28;
        v35 = v70 + v28;
        if (v11 < v70 || v11 >= v35)
        {
          OUTLINED_FUNCTION_116();
          swift_arrayInitWithTakeFrontToBack();
          v9 = v63;
        }

        else
        {
          v9 = v63;
          if (v11 != v70)
          {
            OUTLINED_FUNCTION_116();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v72 = v35;
        v70 = v35;
      }

      v11 += v20;
      v73 = v11;
    }
  }

LABEL_59:
  v58(&v73, &v72, &v71);
  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v4;
      v13 = v7 == v4;
      v4 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v6;
    v13 = v7 == v6;
    v6 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*v14 >= *(v10 - 2))
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v4;
      v13 = v7 == v4;
      v4 += 32;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
    }

    v12 = v6;
    v13 = v7 == v6;
    v6 += 32;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 32, a4);
  v10 = &v4[32 * v9];
LABEL_15:
  v15 = v6 - 32;
  for (v5 -= 32; v10 > v4 && v6 > v7; v5 -= 32)
  {
    if (*v15 >= *(v10 - 4))
    {
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v18 = *(v15 + 1);
        *v5 = *v15;
        *(v5 + 1) = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 32)
    {
      v17 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v17;
    }

    v10 -= 32;
  }

LABEL_28:
  v19 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v19])
  {
    memmove(v6, v4, 32 * v19);
  }

  return 1;
}

uint64_t specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(a2, a3, a4, a5);
}

{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(a2, a3, a4, a5);
}

{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(a2, a3, a4, a5);
}

{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(a2, a3, a4, a5);
}

{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(a2, a3, a4, a5);
}

uint64_t specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v13 = *a6;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(a2, a3, a4, a5, v13, a7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_Say10OmniSearch0D6ResultVGt_TG5(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_Say10OmniSearch0D6ResultVGt_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_Say10OmniSearch0D6ResultVGt_TG5TQ0_()
{
  OUTLINED_FUNCTION_78();
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v6 = *(v1 + 24);
  *v3 = *(v1 + 16);
  v3[1] = v6;
  v7 = *(v4 + 8);

  return v7();
}

uint64_t partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_41();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_204();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_41();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_204();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_41();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_204();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_41();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_204();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_41();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_204();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t outlined init with copy of ExtractionRule(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_51(v3);
  (*v4)(a2);
  return a2;
}

void specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)()
{
  OUTLINED_FUNCTION_72();
  v4 = v3;
  OUTLINED_FUNCTION_176();
  v6 = v5;
  OUTLINED_FUNCTION_52();
  v8 = *(v7 + 24);
  v9 = *(v7 + 16);
  v10 = *v2;
  OUTLINED_FUNCTION_11();
  *v11 = v10;

  *v9 = v6;
  v9[1] = v1;
  v9[2] = v0;
  v9[3] = v4;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_201();

  __asm { BRAA            X1, X16 }
}

uint64_t partial apply for specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_75();
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v15 = v10[11];
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_23(v16);
  *v17 = v18;
  v17[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_168();

  return v26(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_75();
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v15 = v10[7];
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_23(v16);
  *v17 = v18;
  v17[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_168();

  return v26(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_SS_SaySSGtt_TG5(uint64_t a1, int *a2)
{
  *(v2 + 48) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 56) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_SS_SaySSGtt_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_SS_SaySSGtt_TG5TQ0_()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v7 = *v0;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  v9 = *(v2 + 32);
  *v6 = *(v2 + 16);
  v6[1] = v9;
  OUTLINED_FUNCTION_106();

  return v10();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_SS_SaySSGtt_TG5TA()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t outlined init with copy of ExtractedInfo()
{
  OUTLINED_FUNCTION_134();
  v2 = v1(0);
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t partial apply for specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_75();
  v0 = OUTLINED_FUNCTION_120();
  v1 = type metadata accessor for SearchEntity(v0);
  OUTLINED_FUNCTION_21(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  OUTLINED_FUNCTION_57(*(v4 + 64));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_143(v5);
  *v6 = v7;
  v6[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_168();

  return specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_75();
  v0 = OUTLINED_FUNCTION_120();
  v1 = type metadata accessor for SearchResult(v0);
  OUTLINED_FUNCTION_21(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  OUTLINED_FUNCTION_57(*(v4 + 64));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_143(v5);
  *v6 = v7;
  v6[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_168();

  return specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_75();
  v0 = OUTLINED_FUNCTION_120();
  v1 = type metadata accessor for ExtractedInfo(v0);
  OUTLINED_FUNCTION_21(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  OUTLINED_FUNCTION_57(*(v4 + 64));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_143(v5);
  *v6 = v7;
  v6[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_168();

  return specialized closure #1 in closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_10OmniSearch0D9CATEntityVt_Tg5TA()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t outlined init with copy of EagerResolutionService?()
{
  OUTLINED_FUNCTION_134();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_17(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_94();
  v7(v6);
  return v0;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_10OmniSearch0D6ResultVt_Tg5TA()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_Say10OmniSearch0D6ResultVGt_TG5TA()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t outlined init with take of (Int, SearchCATEntity)()
{
  OUTLINED_FUNCTION_134();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_17(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_94();
  v7(v6);
  return v0;
}

uint64_t outlined destroy of EagerResolutionService?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of ExtractedInfo()
{
  OUTLINED_FUNCTION_134();
  v2 = v1(0);
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t outlined destroy of ExtractedInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for _NSRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _NSRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for SFImageCornerRoundingStyle(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo11NLTagSchemea_Tt1gq5Tm()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x25F89F4C0](v0);

  return v1;
}

size_t OUTLINED_FUNCTION_1(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

double OUTLINED_FUNCTION_13(uint64_t a1)
{
  *(a1 + 16) = 10;
  *(a1 + 24) = 2;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

void OUTLINED_FUNCTION_15(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_18(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1)
{
  *(a1 + 8) = AnswerResolver.applyRules(query:result:assistantLocale:);
  result = v1[38];
  v3 = v1[30];
  v4 = v1[31];
  v5 = v1[28];
  v6 = v1[29];
  return result;
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v15 + 160);
  result = *(v15 + 80) + ((*(a13 + 80) + 32) & ~*(a13 + 80)) + *(a13 + 72) * v14;
  v18 = *(a14 + 48);
  **(v15 + 152) = v14;
  return result;
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[9];
  result = v2[6];
  v5 = v2[7];
  return result;
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_35()
{
  v1 = v0[13];
  v3 = v0[18];
  v2 = *(v0[10] + 16);
}

uint64_t OUTLINED_FUNCTION_37(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a15;
  a1[5] = v15;
  return v16;
}

uint64_t OUTLINED_FUNCTION_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 + 136);
  v23 = *(v14 + 128);
  v17 = *(v14 + 120);
  v18 = *(v14 + 96);
  v21 = *(v14 + 88);
  v22 = **(v14 + 168);
  v19 = *(a14 + 48);

  return type metadata accessor for TaskPriority();
}

void OUTLINED_FUNCTION_41()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_57(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t OUTLINED_FUNCTION_60@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_64(uint64_t a1, __n128 a2)
{
  *(a1 + 88) = a2;
  *(a1 + 72) = v2;
  *(a1 + 80) = v3;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{
  *(a1 + 8) = AnswerResolver.extractInfo(query:results:assistantLocale:);
  result = v1[14];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[9];
  v6 = v1[7];
  return result;
}

__n128 OUTLINED_FUNCTION_71(uint64_t a1)
{
  *(v2 + 96) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_76(uint64_t result)
{
  *(result + 8) = specialized TaskGroup.oms_results.getter;
  v2 = *(v1 + 72);
  v3 = *(v1 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_77(uint64_t result)
{
  *(result + 8) = specialized TaskGroup.oms_results.getter;
  v2 = *(v1 + 56);
  v3 = *(v1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v18 + v17) = a17;

  return outlined init with copy of EagerResolutionService?();
}

uint64_t OUTLINED_FUNCTION_81()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  __swift_storeEnumTagSinglePayload(v3, a2, 1, *(v2 + 144));
  return v3;
}

uint64_t OUTLINED_FUNCTION_91()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

void OUTLINED_FUNCTION_96(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_98(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_100()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_101(uint64_t a1@<X8>)
{
  v3 = v1[17];
  v1[6] = 1;
  v1[7] = a1;
  v1[8] = v2;
}

uint64_t OUTLINED_FUNCTION_105@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;
  *v2 = v3;
  return v3;
}

uint64_t OUTLINED_FUNCTION_106()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_108()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  result = v1 + 16;
  v3 = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_118()
{
  v5 = *(v3 + 32);
  result = *(v3 + 40);
  *(v1 + 16) = v0;
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_125()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_126()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_127()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_128(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_129()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
}

void OUTLINED_FUNCTION_136(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_141(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = 0;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
}

uint64_t OUTLINED_FUNCTION_142(uint64_t result)
{
  *(result + 8) = v1;
  v5 = *(v3 + 48);
  *(v4 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_144()
{
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  return outlined init with copy of EagerResolutionService?();
}

__n128 OUTLINED_FUNCTION_152(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_154()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(v0[8] + 8);
  return v0[9];
}

uint64_t OUTLINED_FUNCTION_160()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_161()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_163()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_164@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_165()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_167()
{
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
}

uint64_t OUTLINED_FUNCTION_170(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_171(uint64_t a1, uint64_t a2)
{
  __swift_getEnumTagSinglePayload(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_172()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_173()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_181()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

void OUTLINED_FUNCTION_193(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

id OUTLINED_FUNCTION_194()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;

  return v0;
}

uint64_t OUTLINED_FUNCTION_195@<X0>(uint64_t a1@<X8>)
{

  return outlined init with copy of ExtractionRule(v1 + 40 * a1 + 32, v2 + 16);
}

void OUTLINED_FUNCTION_196(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_197()
{

  return outlined init with take of (Int, SearchCATEntity)();
}

uint64_t OUTLINED_FUNCTION_199()
{

  return swift_task_alloc();
}

uint64_t GlobalResolutionService.__allocating_init(globalSearch:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x25F8A01B0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t EagerResolutionService.resolveExtractedInfo(_:clientId:)()
{
  OUTLINED_FUNCTION_48();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[5] = v7;
  v8 = type metadata accessor for URL();
  v1[12] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[13] = v9;
  v11 = *(v10 + 64);
  v1[14] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v14 = *(v13 + 64);
  v1[15] = OUTLINED_FUNCTION_160();
  v1[16] = swift_task_alloc();
  v15 = type metadata accessor for FlightReservation();
  v1[17] = v15;
  OUTLINED_FUNCTION_21(v15);
  v1[18] = v16;
  v18 = *(v17 + 64);
  v1[19] = OUTLINED_FUNCTION_199();
  v19 = type metadata accessor for ExtractionRuleType(0);
  v1[20] = v19;
  OUTLINED_FUNCTION_114(v19);
  v21 = *(v20 + 64);
  v1[21] = OUTLINED_FUNCTION_199();
  v22 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_72();
  (*(v0[18] + 8))(v0[19], v0[17]);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = v2[25];
  *v4 = *v1;
  v3[26] = v0;

  v6 = v2[24];
  outlined destroy of IntentApplication?(v2[16], &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);

  OUTLINED_FUNCTION_106();

  return v4();
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = v2[28];
  *v4 = *v1;
  v3[29] = v0;

  v6 = v2[27];
  outlined destroy of IntentApplication?(v2[15], &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_72();
  (*(v0[13] + 8))(v0[14], v0[12]);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);

  OUTLINED_FUNCTION_106();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  swift_beginAccess();
  MessageAccumulationContext.record(_:from:)(v1, 1);
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_75();
  v1 = v0[32];
  v2 = v0[21];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  swift_willThrow();

  OUTLINED_FUNCTION_127();
  v8 = v0[32];

  return v7();
}

{
  OUTLINED_FUNCTION_48();
  v1 = (*(v0[18] + 8))(v0[19], v0[17]);
  v0[32] = v0[23];
  if (one-time initialization token for shared != -1)
  {
    v1 = OUTLINED_FUNCTION_5_0();
  }

  v2 = OUTLINED_FUNCTION_4_0(v1, static ContextManager.shared);

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_48();
  *(v0 + 256) = *(v0 + 208);
  if (one-time initialization token for shared != -1)
  {
    v1 = OUTLINED_FUNCTION_5_0();
  }

  v2 = OUTLINED_FUNCTION_4_0(v1, static ContextManager.shared);

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_48();
  *(v0 + 256) = *(v0 + 232);
  if (one-time initialization token for shared != -1)
  {
    v1 = OUTLINED_FUNCTION_5_0();
  }

  v2 = OUTLINED_FUNCTION_4_0(v1, static ContextManager.shared);

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_48();
  v1 = (*(v0[13] + 8))(v0[14], v0[12]);
  v0[32] = v0[31];
  if (one-time initialization token for shared != -1)
  {
    v1 = OUTLINED_FUNCTION_5_0();
  }

  v2 = OUTLINED_FUNCTION_4_0(v1, static ContextManager.shared);

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void EagerResolutionService.resolveExtractedInfo(_:clientId:)()
{
  OUTLINED_FUNCTION_75();
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[6];
  v4 = *(type metadata accessor for ExtractedInfo(0) + 20);
  outlined init with copy of ExtractionRuleType();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v76 = v0[10];
      (*(v0[13] + 32))(v0[14], v0[21], v0[12]);
      v54 = *(v76 + 32);
      OUTLINED_FUNCTION_59();
      v72 = v55 + *v55;
      v57 = *(v56 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[30] = v58;
      *v58 = v59;
      v58[1] = EagerResolutionService.resolveExtractedInfo(_:clientId:);
      v60 = v0[14];
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_85_0();

      __asm { BRAA            X6, X16 }

      return;
    case 2u:
      v74 = v0[10];
      (*(v0[18] + 32))(v0[19], v0[21], v0[17]);
      v23 = *(v74 + 8);
      OUTLINED_FUNCTION_59();
      v70 = v24 + *v24;
      v26 = *(v25 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[22] = v27;
      *v27 = v28;
      v27[1] = EagerResolutionService.resolveExtractedInfo(_:clientId:);
      v29 = v0[19];
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_85_0();

      __asm { BRAA            X6, X16 }

      return;
    case 3u:
      v32 = v0[21];
      v33 = v0[16];
      v75 = v0[10];
      v34 = *v32;
      v0[24] = v32[1];
      type metadata accessor for IntentApplication();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
      v39 = *(v75 + 16);
      OUTLINED_FUNCTION_59();
      v71 = v40 + *v40;
      v42 = *(v41 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[25] = v43;
      *v43 = v44;
      v43[1] = EagerResolutionService.resolveExtractedInfo(_:clientId:);
      v45 = v0[16];
      v46 = v0[10];
      v47 = v0[11];
      v48 = v0[8];
      v49 = v0[9];
      v50 = v0[7];
      v51 = v0[5];
      OUTLINED_FUNCTION_85_0();

      __asm { BRAA            X8, X16 }

      return;
    case 4u:
      outlined destroy of ExtractionRuleType(v0[21], type metadata accessor for ExtractionRuleType);
      break;
    case 5u:
      break;
    default:
      v5 = v0[21];
      v6 = v0[15];
      v73 = v0[10];
      v7 = *v5;
      v0[27] = v5[1];
      type metadata accessor for IntentApplication();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
      v12 = *(v73 + 24);
      OUTLINED_FUNCTION_59();
      v69 = v13 + *v13;
      v15 = *(v14 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[28] = v16;
      *v16 = v17;
      v16[1] = EagerResolutionService.resolveExtractedInfo(_:clientId:);
      v18 = v0[15];
      v19 = v0[11];
      v20 = v0[8];
      v21 = v0[7];
      v22 = v0[5];
      v78 = v0[9];
      v79 = v0[10];

      __asm { BRAA            X8, X16 }

      return;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_85_0();

  __asm { BRAA            X1, X16 }
}

Swift::Int EagerResolutionError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EagerResolutionError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  EagerResolutionError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t GlobalResolutionService.resolveFlight(reservation:clientId:)()
{
  OUTLINED_FUNCTION_48();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[10] = v5;
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[15] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[16] = v7;
  v9 = *(v8 + 64);
  v1[17] = OUTLINED_FUNCTION_199();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  v1[18] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for JSONEncodingOptions();
  v1[19] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[20] = v14;
  v16 = *(v15 + 64);
  v1[21] = OUTLINED_FUNCTION_199();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  OUTLINED_FUNCTION_114(v17);
  v19 = *(v18 + 64);
  v1[22] = OUTLINED_FUNCTION_199();
  v20 = type metadata accessor for JSONDecodingOptions();
  OUTLINED_FUNCTION_114(v20);
  v22 = *(v21 + 64);
  v1[23] = OUTLINED_FUNCTION_199();
  v23 = type metadata accessor for FlightSnippet(0);
  v1[24] = v23;
  OUTLINED_FUNCTION_114(v23);
  v25 = *(v24 + 64);
  v1[25] = OUTLINED_FUNCTION_199();
  v26 = type metadata accessor for FlightSnippet.Flight(0);
  v1[26] = v26;
  OUTLINED_FUNCTION_114(v26);
  v28 = *(v27 + 64);
  v1[27] = OUTLINED_FUNCTION_199();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  OUTLINED_FUNCTION_114(v29);
  v31 = *(v30 + 64);
  v1[28] = OUTLINED_FUNCTION_199();
  v32 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v1[29] = v32;
  OUTLINED_FUNCTION_21(v32);
  v1[30] = v33;
  v35 = *(v34 + 64);
  v1[31] = OUTLINED_FUNCTION_199();
  v36 = type metadata accessor for SearchResultItem(0);
  v1[32] = v36;
  OUTLINED_FUNCTION_114(v36);
  v38 = *(v37 + 64);
  v1[33] = OUTLINED_FUNCTION_199();
  v39 = type metadata accessor for GlobalItem();
  OUTLINED_FUNCTION_114(v39);
  v41 = *(v40 + 64);
  v1[34] = OUTLINED_FUNCTION_199();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v42);
  v44 = *(v43 + 64);
  v1[35] = OUTLINED_FUNCTION_199();
  v45 = type metadata accessor for SearchResult(0);
  v1[36] = v45;
  OUTLINED_FUNCTION_114(v45);
  v47 = *(v46 + 64);
  v1[37] = OUTLINED_FUNCTION_199();
  v48 = type metadata accessor for FlightReservation();
  v1[38] = v48;
  OUTLINED_FUNCTION_21(v48);
  v1[39] = v49;
  v51 = *(v50 + 64);
  v1[40] = OUTLINED_FUNCTION_160();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v52 = type metadata accessor for OSSignpostID();
  v1[44] = v52;
  OUTLINED_FUNCTION_21(v52);
  v1[45] = v53;
  v55 = *(v54 + 64);
  v1[46] = OUTLINED_FUNCTION_160();
  v1[47] = swift_task_alloc();
  v56 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v56, v57, v58);
}

{
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchComponentSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[47];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v7, "SearchTool.FlightResolution", "", v6, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v8 = v0[46];
  v9 = v0[47];
  v10 = v0[44];
  v11 = v0[45];

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_53_0(v12);
  swift_allocObject();
  v0[48] = OSSignpostIntervalState.init(id:isOpen:)();
  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_54_0();
  v15(v14);
  if (one-time initialization token for answerResolution != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v16 = v0[43];
  v17 = v0[38];
  v18 = v0[39];
  v19 = v0[11];
  v20 = type metadata accessor for Logger();
  v0[49] = __swift_project_value_buffer(v20, static Logging.answerResolution);
  v21 = *(v18 + 16);
  v0[50] = v21;
  v0[51] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v16, v19, v17);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[43];
  v27 = v0[38];
  v26 = v0[39];
  if (v24)
  {
    v100 = v21;
    v28 = OUTLINED_FUNCTION_51_0();
    v105 = OUTLINED_FUNCTION_49_0();
    *v28 = 136642819;
    v0[5] = FlightReservation.flightDesignator.getter();
    v0[6] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    String.init<A>(describing:)();
    v30 = OUTLINED_FUNCTION_38_0();
    v103 = v31;
    (v31)(v30);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v28 + 4) = v32;
    _os_log_impl(&dword_25D85C000, v22, v23, "Resolving flight: %{sensitive}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v105);
    OUTLINED_FUNCTION_42_0();
    v21 = v100;
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    v33 = OUTLINED_FUNCTION_38_0();
    v103 = v34;
    (v34)(v33);
  }

  v35 = v0[11];
  v36 = FlightReservation.flightDesignator.getter();
  if (v37)
  {
    v38 = v36;
    v39 = v37;
    _StringGuts.grow(_:)(16);

    MEMORY[0x25F89F6C0](v38, v39);

    MEMORY[0x25F89F6C0](0x73757461747320, 0xE700000000000000);
    v0[52] = 0xE700000000000000;
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v40 = v0[13];
    v41 = v0[14];
    v43 = v0[11];
    v42 = v0[12];
    v0[53] = static MetricsLogger.shared;
    OUTLINED_FUNCTION_133();
    (*(v44 + 216))();
    v45 = *(v41 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMR);
    v46 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
    OUTLINED_FUNCTION_21(v46);
    v48 = *(v47 + 72);
    v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v51 = swift_allocObject();
    v0[54] = v51;
    *(v51 + 16) = xmmword_25DBC8180;
    FlightReservation.entity.getter();
    v0[9] = 11;
    v52 = *(*v45 + 176);
    v104 = (v52 + *v52);
    v53 = v52[1];
    v54 = swift_task_alloc();
    v0[55] = v54;
    *v54 = v0;
    v54[1] = GlobalResolutionService.resolveFlight(reservation:clientId:);
    v55 = OUTLINED_FUNCTION_32_0();

    return v104(v55);
  }

  else
  {
    v21(v0[41], v0[11], v0[38]);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v59 = OUTLINED_FUNCTION_88_0(v58);
    v60 = v0[41];
    if (v59)
    {
      v61 = v21;
      v62 = v0[40];
      v101 = v0[39];
      v63 = v0[38];
      v64 = OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_49_0();
      *v64 = 136642819;
      v61(v62, v60, v63);
      OUTLINED_FUNCTION_63_0();
      String.init<A>(describing:)();
      v103(v60, v63);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v64 + 4) = v65;
      _os_log_impl(&dword_25D85C000, v57, v58, "Skipping flight resolution for flight with empty flightDesignator %{sensitive}s", v64, 0xCu);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
      v66 = v0[38];
      v67 = v0[39];

      v103(v60, v66);
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v69 = v0[16];
    v68 = v0[17];
    v70 = v0[15];
    v72 = v0[12];
    v71 = v0[13];
    v73 = static MetricsLogger.shared;
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    v74 = OUTLINED_FUNCTION_30_0();
    *v75 = 2;
    (*(*v73 + 320))();

    OUTLINED_FUNCTION_133();
    v77 = *(v76 + 232);
    v78 = OUTLINED_FUNCTION_36_0();
    v79(v78);
    v80 = *(v69 + 8);
    v81 = OUTLINED_FUNCTION_32_0();
    v82(v81);
    OUTLINED_FUNCTION_30_0();
    *v83 = 2;
    swift_willThrow();
    v85 = v0[47];
    v84 = v0[48];
    v86 = v0[46];
    v88 = v0[42];
    v87 = v0[43];
    v90 = v0[40];
    v89 = v0[41];
    OUTLINED_FUNCTION_58_0();
    v92 = v0[31];
    v93 = v0[28];
    v94 = v0[27];
    v95 = v0[25];
    v96 = v0[23];
    v97 = v0[22];
    v98 = v0[21];
    v99 = v0[18];
    v102 = v0[17];
    $defer #1 () in GlobalResolutionService.resolveFlight(reservation:clientId:)();

    OUTLINED_FUNCTION_127();

    return v91();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 440);
  *v4 = *v1;
  v3[56] = v7;
  v3[57] = v0;

  if (v0)
  {
    v8 = v3[54];
    v9 = v3[52];
  }

  else
  {
    v10 = v3[54];
    v11 = v3[52];
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  v3 = *(v0 + 448);
  v4 = *(v0 + 424);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  OUTLINED_FUNCTION_133();
  (*(v9 + 224))();
  specialized Collection.first.getter(v3, type metadata accessor for SearchResult, v6);
  if (OUTLINED_FUNCTION_68_0() == 1)
  {
    v10 = *(v0 + 280);
    v11 = &_s10OmniSearch0B6ResultVSgMd;
    v12 = &_s10OmniSearch0B6ResultVSgMR;
LABEL_14:
    outlined destroy of IntentApplication?(v10, v11, v12);
    goto LABEL_15;
  }

  v13 = *(v0 + 296);
  v14 = *(v0 + 280);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);
  outlined init with take of SearchResult();
  outlined init with copy of ExtractionRuleType();
  OUTLINED_FUNCTION_32_0();
  if (swift_getEnumCaseMultiPayload() != 25)
  {
    v28 = *(v0 + 296);
    v29 = *(v0 + 264);
    OUTLINED_FUNCTION_0_0();
    outlined destroy of ExtractionRuleType(v30, v31);
    v32 = type metadata accessor for SearchResultItem;
    v33 = v29;
LABEL_11:
    outlined destroy of ExtractionRuleType(v33, v32);
LABEL_15:
    v46 = *(v0 + 448);
    v47 = *(v0 + 392);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 448);
    if (v50)
    {
      v52 = *(v0 + 288);
      v53 = OUTLINED_FUNCTION_51_0();
      v226 = OUTLINED_FUNCTION_49_0();
      *v53 = 136642819;
      v54 = OUTLINED_FUNCTION_64_0();
      MEMORY[0x25F89F8A0](v54);
      v1 = v55;

      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v53 + 4) = v56;
      _os_log_impl(&dword_25D85C000, v48, v49, "Failed to find flight info with results: %{sensitive}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v226);
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    v57 = *(v0 + 424);
    v59 = *(v0 + 128);
    v58 = *(v0 + 136);
    v60 = *(v0 + 120);
    v62 = *(v0 + 96);
    v61 = *(v0 + 104);
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_57_0();
    *v63 = v1;
    (*(*v57 + 320))();

    OUTLINED_FUNCTION_133();
    v65 = *(v64 + 232);
    v66 = OUTLINED_FUNCTION_36_0();
    v67(v66);
    v68 = *(v59 + 8);
    v69 = OUTLINED_FUNCTION_32_0();
    v70(v69);
    OUTLINED_FUNCTION_30_0();
    *v71 = v1;
    swift_willThrow();
    goto LABEL_19;
  }

  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR) + 48));
  outlined init with take of SearchResult();
  if (!specialized Array.count.getter(v19))
  {
    v34 = *(v0 + 296);
    v36 = *(v0 + 224);
    v35 = *(v0 + 232);
    OUTLINED_FUNCTION_0_0();
    outlined destroy of ExtractionRuleType(v37, v38);

    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v35);
    goto LABEL_13;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x25F89FFD0](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_49:
      swift_once();
LABEL_32:
      v105 = *(v0 + 200);
      v106 = *(v0 + 208);
      v107 = *(v0 + 176);
      v108 = static FlightSnippet.Flight._StorageClass.defaultInstance;

      OUTLINED_FUNCTION_31_0();
      outlined destroy of ExtractionRuleType(v105, v109);
      *(v17 + v6) = v108;
      if (__swift_getEnumTagSinglePayload(v107, 1, v106) != 1)
      {
        outlined destroy of IntentApplication?(*(v0 + 176), &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
      }

      goto LABEL_36;
    }

    v20 = *(v19 + 32);
  }

  v22 = *(v0 + 224);
  v21 = *(v0 + 232);
  v23 = *(v20 + 16);

  v24 = dispatch thunk of Experience.associatedEntities.getter();

  specialized Collection.first.getter(v24, MEMORY[0x277D39440], v22);

  if (OUTLINED_FUNCTION_68_0() == 1)
  {
    v25 = *(v0 + 296);
    OUTLINED_FUNCTION_0_0();
    outlined destroy of ExtractionRuleType(v26, v27);

LABEL_13:
    v42 = *(v0 + 272);
    v43 = *(v0 + 224);
    OUTLINED_FUNCTION_1_0();
    outlined destroy of ExtractionRuleType(v44, v45);
    v11 = &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd;
    v12 = &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR;
    v10 = v43;
    goto LABEL_14;
  }

  v81 = *(v0 + 272);
  (*(*(v0 + 240) + 32))(*(v0 + 248), *(v0 + 224), *(v0 + 232));
  v82 = *(v81 + 32) == 0x73746867696C66 && *(v81 + 40) == 0xE700000000000000;
  if (!v82 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v110 = *(v0 + 296);
    v111 = *(v0 + 272);
    v113 = *(v0 + 240);
    v112 = *(v0 + 248);
    v114 = *(v0 + 232);

    v115 = *(v113 + 8);
    v116 = OUTLINED_FUNCTION_64_0();
    v117(v116);
    OUTLINED_FUNCTION_0_0();
    outlined destroy of ExtractionRuleType(v110, v118);
    OUTLINED_FUNCTION_1_0();
    v33 = v111;
    goto LABEL_11;
  }

  v83 = *(v0 + 448);
  v18 = *(v0 + 456);
  v84 = *(v0 + 248);
  v86 = *(v0 + 192);
  v85 = *(v0 + 200);
  v87 = *(v0 + 184);

  Apple_Parsec_Siri_Context_ResultEntity.usoEntity.getter();
  OUTLINED_FUNCTION_82_0();
  JSONDecodingOptions.init()();
  JSONDecodingOptions.ignoreUnknownFields.setter();
  lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(&lazy protocol witness table cache variable for type FlightSnippet and conformance FlightSnippet, type metadata accessor for FlightSnippet);
  Message.init(jsonUTF8Data:options:)();
  if (v18)
  {
    v88 = *(v0 + 296);
    v89 = *(v0 + 272);
    v90 = *(v0 + 240);
    v91 = *(v0 + 248);
    v92 = *(v0 + 232);

    v93 = *(v90 + 8);
    v94 = OUTLINED_FUNCTION_63_0();
    v95(v94);
    OUTLINED_FUNCTION_0_0();
    outlined destroy of ExtractionRuleType(v88, v96);
    OUTLINED_FUNCTION_1_0();
    outlined destroy of ExtractionRuleType(v89, v97);
    goto LABEL_19;
  }

  v98 = *(v0 + 200);
  v99 = *(v0 + 208);
  v100 = *(v0 + 176);
  v101 = *(*(v0 + 192) + 40);
  outlined init with copy of EagerResolutionService?();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v100, 1, v99);
  v17 = *(v0 + 216);
  if (EnumTagSinglePayload == 1)
  {
    v103 = *(v0 + 208);
    v104 = *(v0 + 216);
    UnknownStorage.init()();
    v6 = *(v103 + 20);
    if (one-time initialization token for defaultInstance == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  v119 = *(v0 + 200);
  v120 = *(v0 + 176);
  OUTLINED_FUNCTION_31_0();
  outlined destroy of ExtractionRuleType(v121, v122);
  outlined init with take of SearchResult();
LABEL_36:
  v124 = *(v0 + 208);
  v123 = *(v0 + 216);
  v125 = *(v0 + 168);
  JSONEncodingOptions.init()();
  lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(&lazy protocol witness table cache variable for type FlightSnippet.Flight and conformance FlightSnippet.Flight, type metadata accessor for FlightSnippet.Flight);
  Message.jsonString(options:)();
  if (v18)
  {
    v126 = *(v0 + 296);
    v224 = *(v0 + 272);
    v127 = *(v0 + 240);
    v128 = *(v0 + 248);
    v129 = *(v0 + 232);
    v130 = *(v0 + 216);
    v131 = *(v0 + 160);
    v132 = *(v0 + 168);
    v133 = *(v0 + 152);

    (*(v131 + 8))(v132, v133);
    OUTLINED_FUNCTION_9_0();
    outlined destroy of ExtractionRuleType(v130, v134);
    v135 = *(v127 + 8);
    v136 = OUTLINED_FUNCTION_63_0();
    v137(v136);
    OUTLINED_FUNCTION_0_0();
    v139 = v126;
  }

  else
  {
    v140 = *(v0 + 392);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_49_0();
      *v143 = 136642819;
      OUTLINED_FUNCTION_45_0();
      *(v143 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v141, v142, "Retrieved resolved flight info: %{sensitive}s", v143, 0xCu);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_37_0();
    }

    v144 = *(v0 + 408);
    (*(v0 + 400))(*(v0 + 336), *(v0 + 88), *(v0 + 304));
    v145._countAndFlagsBits = OUTLINED_FUNCTION_45_0();
    FlightReservation.setResolvedFlight(_:)(v145);
    v146 = *(v0 + 336);
    if (!v147)
    {
      v156 = *(v0 + 144);

      FlightReservation.leg.getter(v156);
      v157 = type metadata accessor for FlightSnippet.Leg(0);
      v158 = OUTLINED_FUNCTION_68_0();
      v159 = *(v0 + 144);
      if (v158 == 1)
      {
        outlined destroy of IntentApplication?(*(v0 + 144), &_s10OmniSearch13FlightSnippetV3LegVSgMd, &_s10OmniSearch13FlightSnippetV3LegVSgMR);
        v160 = 0;
        v161 = 1;
      }

      else
      {
        v162 = *(v159 + *(v157 + 20));
        OUTLINED_FUNCTION_89_0();
        v160 = *(v162 + 16);
        v161 = *(v162 + 24);
        outlined destroy of ExtractionRuleType(v159, type metadata accessor for FlightSnippet.Leg);
      }

      v192 = *(v0 + 400);
      v193 = *(v0 + 408);
      v202 = *(v0 + 384);
      v203 = *(v0 + 376);
      v163 = *(v0 + 336);
      v204 = *(v0 + 368);
      v205 = *(v0 + 344);
      v206 = *(v0 + 328);
      v208 = *(v0 + 320);
      v164 = *(v0 + 304);
      v165 = *(v0 + 312);
      v200 = *(v0 + 296);
      v201 = *(v0 + 272);
      v166 = *(v0 + 256);
      v210 = *(v0 + 280);
      v212 = *(v0 + 264);
      v198 = *(v0 + 232);
      v199 = *(v0 + 248);
      v214 = *(v0 + 224);
      v196 = *(v0 + 216);
      v197 = *(v0 + 240);
      v167 = *(v0 + 176);
      v216 = *(v0 + 200);
      v218 = *(v0 + 184);
      v168 = *(v0 + 168);
      *(v0 + 56) = v160;
      v222 = *(v0 + 144);
      v225 = *(v0 + 136);
      *(v0 + 64) = v161;
      v169 = *(v0 + 80);
      v170 = String.init<A>(describing:)();
      v194 = v171;
      v195 = v170;
      v172 = type metadata accessor for ResolvedInfo();
      v173 = v169 + v172[5];
      v174 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48);
      v192(v173, v163, v164);
      *&v173[v174] = v19;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v175, v176, v177, v166);
      v178 = v172[7];
      type metadata accessor for URL();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v179, v180, v181, v182);
      v183 = v172[10];
      type metadata accessor for PommesContext();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v184, v185, v186, v187);
      (*(v165 + 8))(v163, v164);
      OUTLINED_FUNCTION_9_0();
      outlined destroy of ExtractionRuleType(v196, v188);
      (*(v197 + 8))(v199, v198);
      OUTLINED_FUNCTION_0_0();
      outlined destroy of ExtractionRuleType(v200, v189);
      *v169 = v195;
      v169[1] = v194;
      *(v169 + v172[6]) = MEMORY[0x277D84F98];
      v190 = MEMORY[0x277D84F90];
      *(v169 + v172[8]) = MEMORY[0x277D84F90];
      *(v169 + v172[9]) = v190;
      OUTLINED_FUNCTION_1_0();
      outlined destroy of ExtractionRuleType(v201, v191);
      $defer #1 () in GlobalResolutionService.resolveFlight(reservation:clientId:)();

      OUTLINED_FUNCTION_106();
      goto LABEL_20;
    }

    v149 = *(v0 + 304);
    v148 = *(v0 + 312);
    v221 = *(v0 + 296);
    v224 = *(v0 + 272);
    v151 = *(v0 + 240);
    v150 = *(v0 + 248);
    v152 = *(v0 + 232);
    v153 = *(v0 + 216);

    (*(v148 + 8))(v146, v149);
    OUTLINED_FUNCTION_9_0();
    outlined destroy of ExtractionRuleType(v153, v154);
    (*(v151 + 8))(v150, v152);
    OUTLINED_FUNCTION_0_0();
    v139 = v221;
  }

  outlined destroy of ExtractionRuleType(v139, v138);
  OUTLINED_FUNCTION_1_0();
  outlined destroy of ExtractionRuleType(v224, v155);
LABEL_19:
  v72 = *(v0 + 376);
  v73 = *(v0 + 384);
  v74 = *(v0 + 368);
  v76 = *(v0 + 336);
  v75 = *(v0 + 344);
  v78 = *(v0 + 320);
  v77 = *(v0 + 328);
  OUTLINED_FUNCTION_58_0();
  v207 = *(v0 + 248);
  v209 = *(v0 + 224);
  v211 = *(v0 + 216);
  v213 = *(v0 + 200);
  v215 = *(v0 + 184);
  v217 = *(v0 + 176);
  v219 = *(v0 + 168);
  v220 = *(v0 + 144);
  v223 = *(v0 + 136);
  $defer #1 () in GlobalResolutionService.resolveFlight(reservation:clientId:)();

  OUTLINED_FUNCTION_127();
LABEL_20:

  return v79();
}

{
  v19 = v0[57];
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[40];
  v6 = v0[41];
  OUTLINED_FUNCTION_58_0();
  v10 = v0[31];
  v11 = v0[28];
  v12 = v0[27];
  v13 = v0[25];
  v14 = v0[23];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[18];
  v18 = v0[17];
  $defer #1 () in GlobalResolutionService.resolveFlight(reservation:clientId:)();

  OUTLINED_FUNCTION_127();

  return v8();
}

uint64_t $defer #1 () in GlobalResolutionService.resolveFlight(reservation:clientId:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchComponentSignposter);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "SearchTool.FlightResolution", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FlightReservation.entity.getter()
{
  v0 = type metadata accessor for FlightReservation();
  v1 = OUTLINED_FUNCTION_14(v0);
  v97 = v2;
  v98 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v99 = v6 - v5;
  OUTLINED_FUNCTION_78_0();
  v7 = type metadata accessor for Google_Protobuf_Timestamp();
  v8 = OUTLINED_FUNCTION_114(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v96 = (v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v100 = &v91 - v17;
  OUTLINED_FUNCTION_78_0();
  v106 = type metadata accessor for DateComponents();
  v18 = OUTLINED_FUNCTION_14(v106);
  v102 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  v92 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v91 - v24;
  v101 = type metadata accessor for Date();
  v26 = OUTLINED_FUNCTION_14(v101);
  v95 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39_0();
  v93 = v30;
  MEMORY[0x28223BE20](v31);
  v94 = &v91 - v32;
  OUTLINED_FUNCTION_78_0();
  v33 = type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity();
  v34 = OUTLINED_FUNCTION_14(v33);
  v104 = v35;
  v105 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_39_0();
  v103 = v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v91 - v40;
  v42 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity();
  v43 = OUTLINED_FUNCTION_114(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_36();
  v46 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource();
  v47 = OUTLINED_FUNCTION_14(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_36();
  v54 = v53 - v52;
  v55 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType();
  v56 = OUTLINED_FUNCTION_14(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_36();
  v63 = v62 - v61;
  Apple_Parsec_Siri_Context_ClientEntity.init()();
  (*(v58 + 104))(v63, *MEMORY[0x277D39408], v55);
  Apple_Parsec_Siri_Context_ClientEntity.type.setter();
  (*(v49 + 104))(v54, *MEMORY[0x277D39418], v46);
  v64 = v107;
  Apple_Parsec_Siri_Context_ClientEntity.source.setter();
  Apple_Parsec_Siri_Context_SageAppEntity.init()();
  Apple_Parsec_Siri_Context_ClientEntity.sageAppEntity.setter();
  Apple_Parsec_Siri_Context_FlightEntity.init()();
  FlightReservation.flightDesignator.getter();
  if (v65)
  {
    v66 = String.lowercased()();
    countAndFlagsBits = v66._countAndFlagsBits;
    object = v66._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  MEMORY[0x25F899E00](countAndFlagsBits, object);
  FlightReservation.flightDepartureDateComponents.getter();
  v69 = v100;
  DateComponents.date.getter();
  v70 = *(v102 + 1);
  v70(v25, v106);
  v71 = v101;
  if (__swift_getEnumTagSinglePayload(v69, 1, v101) == 1)
  {
    v102 = v41;
    outlined destroy of IntentApplication?(v69, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for answerResolution != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v72 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v72, static Logging.answerResolution);
    v73 = v97;
    v74 = v98;
    v75 = v99;
    (*(v97 + 16))(v99, v64, v98);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = OUTLINED_FUNCTION_51_0();
      v96 = v78;
      v101 = OUTLINED_FUNCTION_49_0();
      v108 = v101;
      *v78 = 136642819;
      v79 = v92;
      LODWORD(v100) = v77;
      FlightReservation.flightDepartureDateComponents.getter();
      lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x277CC8990]);
      v80 = v106;
      dispatch thunk of CustomStringConvertible.description.getter();
      v70(v79, v80);
      (*(v73 + 8))(v99, v74);
      OUTLINED_FUNCTION_94();
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      v82 = v96;
      *(v96 + 1) = v81;
      _os_log_impl(&dword_25D85C000, v76, v100, "FlightEntity: Missing departure date information, will provide flight's current status. %{sensitive}s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      (*(v73 + 8))(v75, v74);
    }

    v41 = v102;
  }

  else
  {
    v84 = v94;
    v83 = v95;
    (*(v95 + 32))(v94, v69, v71);
    (*(v83 + 16))(v93, v84, v71);
    Google_Protobuf_Timestamp.init(date:)();
    Apple_Parsec_Siri_Context_FlightEntity.departureTimestamp.setter();
    (*(v83 + 8))(v84, v71);
  }

  v85 = FlightReservation.flightDepartureAirportCode.getter();
  if (v86)
  {
    MEMORY[0x25F899E10](v85);
  }

  v87 = v104;
  v88 = v105;
  (*(v104 + 16))(v103, v41, v105);
  v89 = Apple_Parsec_Siri_Context_ClientEntity.sageAppEntity.modify();
  Apple_Parsec_Siri_Context_SageAppEntity.flightEntity.setter();
  v89(&v108, 0);
  return (*(v87 + 8))(v41, v88);
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized Collection.first.getter(a1, MEMORY[0x277D39B70], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D39A88], a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for SearchResult, a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D397D8], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277CB9DA8], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277CC9260], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277CB9DB8], a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for SearchPropertyRequest, a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D374C8], a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for SearchEntity, a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for SearchPropertyResponse, a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for SearchCATEntity, a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D39AB0], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D38E40], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D38E08], a2);
}

uint64_t specialized Collection.first.getter(void *a1)
{
  if (a1[2])
  {
    v1 = a1[4];
    v2 = a1[5];
  }

  return OUTLINED_FUNCTION_94();
}

unint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_65_0();
    v8 = _StringGuts.validateScalarIndex(_:)(v5, v6, v7);
    if ((v2 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_65_0();
      v12 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v9 = v8 >> 16;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v22[0] = v3;
        v22[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        v12 = *(v22 + v9);
        if (*(v22 + v9) < 0)
        {
          OUTLINED_FUNCTION_67_0();
          switch(v15)
          {
            case 1:
LABEL_14:
              v12 = v13[1] & 0x3F | ((v12 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v16 = v13[1];
              v17 = v13[2];
              v18 = ((v12 & 0xF) << 12) | ((v16 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v19 = v13[1];
              v20 = v13[2];
              v17 = v13[3];
              v18 = ((v12 & 0xF) << 18) | ((v19 & 0x3F) << 12) | ((v20 & 0x3F) << 6);
LABEL_17:
              v12 = v18 & 0xFFFFFFC0 | v17 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v10 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v10 = _StringObject.sharedUTF8.getter();
        }

        v11 = *(v10 + v9);
        v12 = *(v10 + v9);
        if (v11 < 0)
        {
          OUTLINED_FUNCTION_67_0();
          switch(v14)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(v22[0]) = v4 == 0;
  return v12 | ((v4 == 0) << 32);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a2(0);
  v6 = v5;
  if (v4)
  {
    v7 = *(*(v5 - 8) + 80);
    outlined init with copy of ExtractionRuleType();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  result = specialized Dictionary.Values.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_80_0();
  if (v7)
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.Values.subscript.getter(v5, v6, 0, a1);
  }
}

{
  result = specialized Dictionary.Values.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_80_0();
  if (v7)
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.Values.subscript.getter(v5, v6, 0, a1);
  }
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of ChatMessageRecord(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    return OUTLINED_FUNCTION_69_0(a2);
  }

  return result;
}

uint64_t GlobalResolutionService.resolveLocation(address:clientId:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[73] = v6;
  v7[72] = a6;
  v7[71] = a5;
  v7[70] = a4;
  v7[69] = a3;
  v7[68] = a2;
  v7[67] = a1;
  v8 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t GlobalResolutionService.resolveLocation(address:clientId:app:)()
{
  OUTLINED_FUNCTION_48();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v1 = static ContextManager.shared;
  *(v0 + 592) = static ContextManager.shared;

  return MEMORY[0x2822009F8](GlobalResolutionService.resolveLocation(address:clientId:app:), v1, 0);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 592);
  OUTLINED_FUNCTION_89_0();
  memcpy((v0 + 176), (v1 + 112), 0xA0uLL);
  outlined init with copy of EagerResolutionService?();
  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_75();
  memcpy((v0 + 16), (v0 + 176), 0xA0uLL);
  if (_s10OmniSearch0B7ContextVSgWOg((v0 + 16)) == 1)
  {
    if (one-time initialization token for answerResolution != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v1, static Logging.answerResolution);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25D85C000, v2, v3, "No location available, location resolution may fail", v4, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v5 = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    EntityProperty.wrappedValue.getter();
    v8 = *(v0 + 520);
    EntityProperty.wrappedValue.getter();
    v5 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v8 longitude:*(v0 + 528)];
    outlined destroy of IntentApplication?(v0 + 176, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
  }

  *(v0 + 600) = v5;
  v9 = *(v0 + 584);
  type metadata accessor for NSUserDefaults();
  v10 = static NSUserDefaults.getDirectionsForLocationResolution.getter();
  v11 = *(*v9 + 112);
  v23 = (v11 + *v11);
  v12 = v11[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 608) = v13;
  *v13 = v14;
  v13[1] = GlobalResolutionService.resolveLocation(address:clientId:app:);
  v15 = *(v0 + 584);
  v16 = *(v0 + 576);
  v17 = *(v0 + 568);
  v18 = *(v0 + 560);
  v19 = *(v0 + 552);
  v20 = *(v0 + 544);
  v21 = *(v0 + 536);

  return (v23)(v21, v20, v19, v10 & 1, v18, v17, v5, v16);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 608);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 616) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_106();

  return v1();
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();
  v2 = *(v0 + 616);

  return v1();
}

uint64_t GlobalResolutionService.resolveLocation(address:isNavigationRequest:clientId:location:app:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 872) = v0;
  *(v1 + 864) = v2;
  *(v1 + 856) = v3;
  *(v1 + 848) = v4;
  *(v1 + 840) = v5;
  *(v1 + 173) = v6;
  *(v1 + 832) = v7;
  *(v1 + 824) = v8;
  *(v1 + 816) = v9;
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  *(v1 + 880) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v1 + 888) = v11;
  v13 = *(v12 + 64);
  *(v1 + 896) = OUTLINED_FUNCTION_199();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  *(v1 + 904) = OUTLINED_FUNCTION_199();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10ResultItemOSgMd, &_s10OmniSearch0B10ResultItemOSgMR);
  OUTLINED_FUNCTION_114(v17);
  v19 = *(v18 + 64);
  *(v1 + 912) = OUTLINED_FUNCTION_199();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v20);
  v22 = *(v21 + 64);
  *(v1 + 920) = OUTLINED_FUNCTION_199();
  v23 = type metadata accessor for IntentApplication();
  *(v1 + 928) = v23;
  OUTLINED_FUNCTION_21(v23);
  *(v1 + 936) = v24;
  v26 = *(v25 + 64);
  *(v1 + 944) = OUTLINED_FUNCTION_199();
  v27 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

{
  OUTLINED_FUNCTION_61_0();
  v41 = v1;
  v2 = *(v1 + 928);
  v3 = *(v1 + 920);
  v4 = *(v1 + 864);
  outlined init with copy of EagerResolutionService?();
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(*(v1 + 920), &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    goto LABEL_6;
  }

  v5 = (*(*(v1 + 936) + 32))(*(v1 + 944), *(v1 + 920), *(v1 + 928));
  MEMORY[0x25F898B70](v5);
  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v7 = OUTLINED_FUNCTION_59_0();
  if (v0)
  {

LABEL_5:
    (*(*(v1 + 936) + 8))(*(v1 + 944), *(v1 + 928));
    goto LABEL_6;
  }

  v31 = v7;
  if (!v7)
  {
    goto LABEL_5;
  }

  v32 = *(v1 + 944);
  v33 = *(v1 + 936);
  v34 = *(v1 + 928);
  v35 = [v7 localizedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = *(v33 + 8);
  v37 = OUTLINED_FUNCTION_64_0();
  v38(v37);
LABEL_6:
  v8 = *(v1 + 832);
  if (*(v1 + 173) == 1)
  {
    _StringGuts.grow(_:)(22);

    strcpy(v40, "navigate to ");
    BYTE5(v40[1]) = 0;
    HIWORD(v40[1]) = -5120;
    v9 = OUTLINED_FUNCTION_45_0();
    MEMORY[0x25F89F6C0](v9);
  }

  else
  {
    v40[0] = *(v1 + 824);
    v40[1] = v8;
  }

  MEMORY[0x25F89F6C0](0x206874697720, 0xE600000000000000);
  v10 = OUTLINED_FUNCTION_32_0();
  MEMORY[0x25F89F6C0](v10);

  v11 = v40[1];
  *(v1 + 960) = v40[0];
  *(v1 + 952) = v11;
  v12 = one-time initialization token for answerResolution;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v13 = type metadata accessor for Logger();
  *(v1 + 968) = v13;
  OUTLINED_FUNCTION_200(v13, static Logging.answerResolution);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_51_0();
    v17 = OUTLINED_FUNCTION_49_0();
    v40[0] = v17;
    *v16 = 136315138;
    OUTLINED_FUNCTION_32_0();
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_70_0(&dword_25D85C000, v18, v15, "Resolving location with GlobalSearch query: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_42_0();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v19 = *(v1 + 872);
  v20 = *(v1 + 848);
  v21 = *(v1 + 840);
  *(v1 + 976) = static MetricsLogger.shared;
  OUTLINED_FUNCTION_133();
  (*(v22 + 216))();
  v23 = *(v19 + 16);
  OUTLINED_FUNCTION_133();
  v25 = *(v24 + 184);
  v39 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v1 + 984) = v27;
  *v27 = v1;
  v27[1] = GlobalResolutionService.resolveLocation(address:isNavigationRequest:clientId:location:app:);
  v28 = *(v1 + 856);
  v29 = OUTLINED_FUNCTION_32_0();

  return v39(v29);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 984);
  v7 = *(v5 + 952);
  v8 = *v1;
  OUTLINED_FUNCTION_11();
  *v9 = v8;
  v3[124] = v10;
  v3[125] = v11;

  if (v0)
  {
    v12 = v3[119];

    v13 = v3[118];
    v14 = v3[115];
    v15 = v3[114];
    v16 = v3[113];
    v17 = v3[112];

    OUTLINED_FUNCTION_127();

    return v18();
  }

  else
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }
}

{
  v114 = v0;
  v3 = v0[124];
  if (!v3)
  {
    if (one-time initialization token for search == -1)
    {
LABEL_14:
      v16 = v0[119];
      OUTLINED_FUNCTION_200(v0[121], static Logging.search);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v0[120];
        v20 = v0[119];
        v21 = OUTLINED_FUNCTION_51_0();
        v22 = OUTLINED_FUNCTION_49_0();
        __dst[0] = v22;
        *v21 = 136315138;
        OUTLINED_FUNCTION_54_0();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v21 + 4) = v23;
        OUTLINED_FUNCTION_70_0(&dword_25D85C000, v24, v18, "No valid response from Pegasus for query: %s.");
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        OUTLINED_FUNCTION_33_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {
        v48 = v0[119];
      }

      v49 = v0[122];
      v50 = v0[112];
      v51 = v0[111];
      v52 = v0[110];
      v53 = v0[106];
      v54 = v0[105];
      lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_57_0();
      *v55 = v1;
      (*(*v49 + 320))();

      OUTLINED_FUNCTION_133();
      v57 = *(v56 + 232);
      v58 = OUTLINED_FUNCTION_36_0();
      v59(v58);
      v60 = *(v51 + 8);
      v61 = OUTLINED_FUNCTION_32_0();
      v62(v61);
      OUTLINED_FUNCTION_30_0();
      *v63 = v1;
      swift_willThrow();
LABEL_26:
      v64 = v0[118];
      v65 = v0[115];
      v66 = v0[114];
      v67 = v0[113];
      v68 = v0[112];

      OUTLINED_FUNCTION_127();
      goto LABEL_27;
    }

LABEL_49:
    OUTLINED_FUNCTION_35_0();
    goto LABEL_14;
  }

  v4 = v0[125];
  v5 = v0[122];
  v6 = v0[106];
  v7 = v0[105];
  OUTLINED_FUNCTION_133();
  (*(v8 + 224))();

  v9 = dispatch thunk of PommesResponse.experiences.getter();
  v112 = v3;
  if (!specialized Array.count.getter(v9))
  {

LABEL_18:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0();
    }

    v25 = v0[119];
    OUTLINED_FUNCTION_200(v0[121], static Logging.search);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[120];
      v29 = v0[119];
      v30 = OUTLINED_FUNCTION_51_0();
      __dst[0] = OUTLINED_FUNCTION_49_0();
      *v30 = 136315138;
      OUTLINED_FUNCTION_64_0();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v30 + 4) = v31;
      _os_log_impl(&dword_25D85C000, v26, v27, "Received unexpected experiences from Pegasus for query: %s.", v30, 0xCu);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_33_0();
    }

    else
    {
      v32 = v0[119];
    }

    v33 = v0[122];
    v34 = v0[112];
    v35 = v0[111];
    v36 = v0[110];
    v37 = v0[106];
    v38 = v0[105];
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_79_0();
    *v39 = 1;
    (*(*v33 + 320))();

    OUTLINED_FUNCTION_133();
    v41 = *(v40 + 232);
    v42 = OUTLINED_FUNCTION_45_0();
    v43(v42);
    v44 = *(v35 + 8);
    v45 = OUTLINED_FUNCTION_54_0();
    v46(v45);
    OUTLINED_FUNCTION_29_0();
    *v47 = 1;
    swift_willThrow();

    goto LABEL_26;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x25F89FFD0](0, v9);
    goto LABEL_6;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_49;
  }

  v10 = *(v9 + 32);
LABEL_6:
  v11 = v10;

  type metadata accessor for GenericExperience();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_17;
  }

  if (PommesResponse.metadataDomainName.getter() == 1936744813 && v12 == 0xE400000000000000)
  {
    v71 = v0[119];

    goto LABEL_31;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v15 = v0[119];
LABEL_31:

  static GlobalSearchResponseProcessor.makeGeoLocations(experience:)();
  if (*(v72 + 16))
  {
    memcpy(v0 + 42, (v72 + 32), 0x9DuLL);
    outlined init with copy of GeoLocation((v0 + 42), (v0 + 62));

    v74 = v0[45];
    v73 = v0[46];
    memcpy(v0 + 22, v0 + 42, 0x9DuLL);
    _s10OmniSearch11GeoLocationVSgWOi_(v0 + 22);
    memcpy(v0 + 2, v0 + 22, 0x9DuLL);
  }

  else
  {
    v75 = v0[104];

    _s10OmniSearch11GeoLocationVSgWOi0_(v0 + 2);
    v73 = v0[104];
    v74 = v0[103];
  }

  v76 = v0[114];
  type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  memcpy(v0 + 82, v0 + 2, 0x9DuLL);
  v111 = v74;
  if (_s10OmniSearch11GeoLocationVSgWOg((v0 + 82)) == 1)
  {
    v110 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    memcpy(__dst, v0 + 82, 0x9DuLL);
    v110 = GeoLocation.metadata.getter();
    outlined destroy of IntentApplication?((v0 + 2), &_s10OmniSearch11GeoLocationVSgMd, &_s10OmniSearch11GeoLocationVSgMR);
  }

  v81 = v0[113];
  type metadata accessor for URL();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  v86 = dispatch thunk of PommesResponse.experiences.getter();
  v87 = specialized Array.count.getter(v86);
  if (v87)
  {
    v88 = v87;
    __dst[0] = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v88 < 0)
    {
      __break(1u);
      return result;
    }

    v89 = 0;
    do
    {
      if ((v86 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F89FFD0](v89, v86);
      }

      else
      {
        v90 = *(v86 + 8 * v89 + 32);
      }

      ++v89;
      v91 = type metadata accessor for DialogExperience();
      OUTLINED_FUNCTION_53_0(v91);
      swift_allocObject();
      OUTLINED_FUNCTION_47_0();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v92 = *(__dst[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v88 != v89);
    v93 = v73;

    v94 = __dst[0];
  }

  else
  {
    v93 = v73;

    v94 = MEMORY[0x277D84F90];
  }

  v108 = v94;
  v95 = v0[118];
  v107 = v0[115];
  v96 = v0[114];
  v97 = v0[113];
  v109 = v0[112];
  v98 = v0[102];
  v99 = type metadata accessor for ResolvedInfo();
  v100 = v99[10];
  PommesResponse.pommesContext.getter();
  type metadata accessor for PommesContext();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);

  *v98 = v111;
  v98[1] = v93;
  v105 = v99[5];
  outlined init with take of (Int, SearchCATEntity)();
  *(v98 + v99[6]) = v110;
  v106 = v99[7];
  outlined init with take of (Int, SearchCATEntity)();
  *(v98 + v99[8]) = v108;
  *(v98 + v99[9]) = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_106();
LABEL_27:

  return v69();
}

uint64_t GlobalResolutionService.resolveMedia(name:query:clientId:app:)()
{
  OUTLINED_FUNCTION_48();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[11] = v7;
  v1[12] = v8;
  v1[10] = v9;
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[19] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[20] = v11;
  v13 = *(v12 + 64);
  v1[21] = OUTLINED_FUNCTION_199();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v14);
  v16 = *(v15 + 64);
  v1[22] = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for IntentApplication();
  v1[23] = v17;
  OUTLINED_FUNCTION_21(v17);
  v1[24] = v18;
  v20 = *(v19 + 64);
  v1[25] = OUTLINED_FUNCTION_199();
  v21 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

{
  OUTLINED_FUNCTION_61_0();
  v2 = v1[14];
  if (v2)
  {
    v3 = v1[13];
  }

  else
  {
    MEMORY[0x25F89F6C0](v1[11], v1[12]);
    v3 = 0x2079616C50;
    v2 = 0xE500000000000000;
  }

  v4 = v1[22];
  v5 = v1[23];
  v6 = v1[17];
  v1[8] = v3;
  v1[9] = v2;
  outlined init with copy of EagerResolutionService?();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    v7 = v1[22];
    v8 = v1[14];

    outlined destroy of IntentApplication?(v7, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    goto LABEL_11;
  }

  v9 = v1[14];
  (*(v1[24] + 32))(v1[25], v1[22], v1[23]);

  MEMORY[0x25F898B70](v10);
  v11 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v12 = OUTLINED_FUNCTION_59_0();
  if (v0)
  {

LABEL_8:
    (*(v1[24] + 8))(v1[25], v1[23]);
    goto LABEL_11;
  }

  v13 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  v15 = v1[24];
  v14 = v1[25];
  v16 = v1[23];
  v17 = [v12 localizedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = OUTLINED_FUNCTION_63_0();
  MEMORY[0x25F89F6C0](v18);

  MEMORY[0x25F89F6C0](544108320, 0xE400000000000000);

  v19 = *(v15 + 8);
  v20 = OUTLINED_FUNCTION_54_0();
  v21(v20);
LABEL_11:
  if (one-time initialization token for answerResolution != -1)
  {
    OUTLINED_FUNCTION_4();
  }

  v22 = type metadata accessor for Logger();
  v1[26] = __swift_project_value_buffer(v22, static Logging.answerResolution);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_88_0(v24))
  {
    v25 = OUTLINED_FUNCTION_51_0();
    v42 = OUTLINED_FUNCTION_49_0();
    *v25 = 136315138;
    OUTLINED_FUNCTION_89_0();
    v26 = v1[8];
    v27 = v1[9];

    OUTLINED_FUNCTION_63_0();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v25 + 4) = v28;
    _os_log_impl(&dword_25D85C000, v23, v24, "Resolving media item with GlobalSearch query: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_42_0();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v29 = v1[18];
  v30 = v1[15];
  v31 = v1[16];
  v1[27] = static MetricsLogger.shared;
  OUTLINED_FUNCTION_133();
  (*(v32 + 216))();
  v33 = *(v29 + 16);
  OUTLINED_FUNCTION_89_0();
  v34 = v1[9];
  v1[28] = v1[8];
  v1[29] = v34;
  OUTLINED_FUNCTION_133();
  v36 = *(v35 + 184);

  v41 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  v1[30] = v38;
  *v38 = v1;
  v38[1] = GlobalResolutionService.resolveMedia(name:query:clientId:app:);
  v39 = OUTLINED_FUNCTION_32_0();

  return v41(v39);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v6 = *(v5 + 240);
  *v4 = *v1;
  v3[31] = v7;
  v3[32] = v8;
  v3[33] = v0;

  if (!v0)
  {
    v9 = v3[29];
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[29];
  swift_bridgeObjectRelease_n();
  v2 = v0[33];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];

  OUTLINED_FUNCTION_127();

  return v6();
}

uint64_t GlobalResolutionService.resolveMedia(name:query:clientId:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v18 = v16[31];
  if (v18)
  {
    v19 = v16[32];
    v20 = v16[27];
    v21 = v16[15];
    v22 = v16[16];
    OUTLINED_FUNCTION_133();
    (*(v23 + 224))();

    v24 = dispatch thunk of PommesResponse.experiences.getter();
    result = specialized Array.count.getter(v24);
    if (result)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x25F89FFD0](0, v24);
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_31;
        }

        v26 = *(v24 + 32);
      }

      v27 = v26;

      type metadata accessor for AudioExperience();
      if (swift_dynamicCastClass())
      {
        v28 = dispatch thunk of PommesResponse.experiences.getter();
        v29 = specialized Array.count.getter(v28);
        if (!v29)
        {

          a11 = MEMORY[0x277D84F90];
LABEL_25:
          v88 = v16[29];
          v89 = v16[25];
          a9 = v16[22];
          a10 = v16[21];
          v90 = v16[10];
          type metadata accessor for AudioPluginProcessor();
          AudioPluginProcessor.__allocating_init()();
          dispatch thunk of PommesResponse.clientResults.getter();
          OUTLINED_FUNCTION_64_0();
          v91 = dispatch thunk of AudioPluginProcessor.process(experience:clientResults:)();

          v92 = type metadata accessor for ResolvedInfo();
          v93 = v92[5];
          type metadata accessor for SearchResultItem(0);
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
          v98 = v92[7];
          type metadata accessor for URL();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
          v103 = v92[10];
          type metadata accessor for PommesContext();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);

          *v90 = 0xD000000000000012;
          v90[1] = 0x800000025DBEF0C0;
          *(v90 + v92[6]) = MEMORY[0x277D84F98];
          *(v90 + v92[8]) = a11;
          *(v90 + v92[9]) = v91;

          OUTLINED_FUNCTION_106();
          goto LABEL_26;
        }

        v30 = v29;
        a12 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if ((v30 & 0x8000000000000000) == 0)
        {
          v31 = 0;
          do
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              MEMORY[0x25F89FFD0](v31, v28);
            }

            else
            {
              v32 = *(v28 + 8 * v31 + 32);
            }

            ++v31;
            v33 = type metadata accessor for DialogExperience();
            OUTLINED_FUNCTION_53_0(v33);
            swift_allocObject();
            OUTLINED_FUNCTION_47_0();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v34 = a12[2];
            OUTLINED_FUNCTION_72_0();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            OUTLINED_FUNCTION_72_0();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v30 != v31);

          a11 = a12;
          goto LABEL_25;
        }

LABEL_31:
        __break(1u);
        return result;
      }
    }

    else
    {
    }

    v60 = v16[26];
    v61 = v18;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    a11 = v61;
    if (os_log_type_enabled(v62, v63))
    {
      v65 = v16[28];
      v64 = v16[29];
      v66 = swift_slowAlloc();
      a12 = swift_slowAlloc();
      *v66 = 136315394;

      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v66 + 4) = v67;
      *(v66 + 12) = 2080;
      v68 = dispatch thunk of PommesResponse.experiences.getter();
      v69 = type metadata accessor for Experience();
      MEMORY[0x25F89F8A0](v68, v69);
      OUTLINED_FUNCTION_82_0();

      v70 = OUTLINED_FUNCTION_71_0();

      *(v66 + 14) = v70;
      OUTLINED_FUNCTION_86_0(&dword_25D85C000, v71, v72, "Received unexpected type from Pegasus for query: %s. %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    v73 = v16[29];
    v74 = v16[27];
    v76 = v16[20];
    v75 = v16[21];
    v77 = v16[19];
    v79 = v16[15];
    v78 = v16[16];
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    v80 = swift_allocError();
    *v81 = 1;
    (*(*v74 + 320))();

    OUTLINED_FUNCTION_133();
    (*(v82 + 232))(v79, v78, v75);
    (*(v76 + 8))(v75, v77);
    v83 = swift_allocError();
    OUTLINED_FUNCTION_87_0(v83, v84);
  }

  else
  {
    v35 = v16[26];
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v37))
    {
      v39 = v16[28];
      v38 = v16[29];
      v40 = OUTLINED_FUNCTION_51_0();
      a12 = OUTLINED_FUNCTION_49_0();
      *v40 = 136315138;

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v40 + 4) = v41;
      OUTLINED_FUNCTION_70_0(&dword_25D85C000, v42, v37, "No valid response from Pegasus for query: %s.");
      __swift_destroy_boxed_opaque_existential_1Tm(a12);
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_42_0();
    }

    v43 = v16[29];
    v44 = v16[27];
    v46 = v16[20];
    v45 = v16[21];
    v47 = v16[19];
    v49 = v16[15];
    v48 = v16[16];
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_79_0();
    *v50 = 1;
    (*(*v44 + 320))();

    OUTLINED_FUNCTION_133();
    v52 = *(v51 + 232);
    v53 = OUTLINED_FUNCTION_45_0();
    v54(v53);
    v55 = *(v46 + 8);
    v56 = OUTLINED_FUNCTION_32_0();
    v57(v56);
    v58 = OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_87_0(v58, v59);
  }

  v85 = v16[25];
  v87 = v16[21];
  v86 = v16[22];

  OUTLINED_FUNCTION_127();
LABEL_26:
  OUTLINED_FUNCTION_115();

  return v109(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t GlobalResolutionService.resolveMediaURL(_:clientId:)()
{
  OUTLINED_FUNCTION_48();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  v1[11] = *v0;
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[12] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[13] = v7;
  v9 = *(v8 + 64);
  v1[14] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for URL();
  v1[15] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[16] = v11;
  v13 = *(v12 + 64);
  v1[17] = OUTLINED_FUNCTION_160();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = v2[23];
  v6 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v7 = v6;
  v3[24] = v8;
  v3[25] = v9;

  v10 = v2[21];

  if (v0)
  {
    v12 = v3[18];
    v11 = v3[19];
    v13 = v3[17];
    v14 = v3[14];

    v15 = v6[1];

    return v15();
  }

  else
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }
}

uint64_t GlobalResolutionService.resolveMediaURL(_:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v17 = v16[7];
  v16[2] = URL.absoluteString.getter();
  v16[3] = v18;
  v16[4] = 0x70612E636973756DLL;
  v16[5] = 0xEB00000000656C70;
  lazy protocol witness table accessor for type String and conformance String();
  LOBYTE(v17) = StringProtocol.contains<A>(_:)();

  if (v17)
  {
    v19 = v16[7];
    v20 = URL.pathComponents.getter();
    specialized BidirectionalCollection.last.getter(v20);

    if (one-time initialization token for answerResolution != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v21 = type metadata accessor for Logger();
    v16[20] = OUTLINED_FUNCTION_200(v21, static Logging.answerResolution);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_51_0();
      a12 = OUTLINED_FUNCTION_49_0();
      *v24 = 136315138;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v24 + 4) = v25;
      _os_log_impl(&dword_25D85C000, v22, v23, "Resolving media URL with clientEntities: %s", v24, 0xCu);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_33_0();
    }

    else
    {
    }

    v56 = v16[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMR);
    v57 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
    OUTLINED_FUNCTION_21(v57);
    v59 = *(v58 + 72);
    v61 = *(v60 + 80);
    OUTLINED_FUNCTION_74_0();
    v62 = swift_allocObject();
    v16[21] = v62;
    *(v62 + 16) = xmmword_25DBC8180;
    static GlobalResolutionService.constructMediaClientEntity(url:)(v62 + v23);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v63 = v16[9];
    v64 = v16[10];
    v65 = v16[8];
    v16[22] = static MetricsLogger.shared;
    OUTLINED_FUNCTION_133();
    (*(v66 + 216))();
    v67 = *(v64 + 16);
    OUTLINED_FUNCTION_133();
    v69 = *(v68 + 184);
    v89 = v68 + 184;
    v90 = v69 + *v69;
    v70 = v69[1];
    v71 = swift_task_alloc();
    v16[23] = v71;
    *v71 = v16;
    v71[1] = GlobalResolutionService.resolveMediaURL(_:clientId:);
    OUTLINED_FUNCTION_115();

    return v77(v72, v73, v74, v75, v76, v77, v78, v79, a9, v89, v90, a12, a13, a14, a15, a16);
  }

  else
  {
    v26 = v16[15];
    v27 = v16[16];
    v29 = v16[6];
    v28 = v16[7];
    v30 = URL.absoluteString.getter();
    v32 = v31;
    v33 = type metadata accessor for ResolvedInfo();
    v34 = v33[5];
    type metadata accessor for SearchResultItem(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    v39 = v33[7];
    v40 = *(v27 + 16);
    OUTLINED_FUNCTION_65_0();
    v41();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v26);
    v45 = v16[18];
    v46 = v16[19];
    v47 = v16[17];
    v48 = v16[14];
    v49 = v16[6];
    v50 = v33[10];
    type metadata accessor for PommesContext();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    *v49 = v30;
    v49[1] = v32;
    *(v49 + v33[6]) = MEMORY[0x277D84F98];
    v55 = MEMORY[0x277D84F90];
    *(v49 + v33[8]) = MEMORY[0x277D84F90];
    *(v49 + v33[9]) = v55;

    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_115();

    return v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t GlobalResolutionService.resolveMediaURL(_:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v20 = v16[24];
  if (v20)
  {
    v21 = v16[25];
    v22 = v16[22];
    v23 = v16[8];
    v24 = v16[9];
    OUTLINED_FUNCTION_133();
    (*(v25 + 224))();

    v26 = dispatch thunk of PommesResponse.experiences.getter();
    result = specialized Array.count.getter(v26);
    if (result)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x25F89FFD0](0, v26);
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v28 = *(v26 + 32);
      }

      v29 = v28;

      type metadata accessor for AudioExperience();
      if (swift_dynamicCastClass())
      {
        v30 = dispatch thunk of PommesResponse.experiences.getter();
        v31 = specialized Array.count.getter(v30);
        a11 = v29;
        if (!v31)
        {

          v37 = MEMORY[0x277D84F90];
LABEL_27:
          a10 = v37;
          v103 = v16[15];
          v104 = v16[16];
          v105 = v16[6];
          v106 = v16[7];
          type metadata accessor for AudioPluginProcessor();
          AudioPluginProcessor.__allocating_init()();
          dispatch thunk of PommesResponse.clientResults.getter();
          a9 = dispatch thunk of AudioPluginProcessor.process(experience:clientResults:)();

          v107 = URL.absoluteString.getter();
          v109 = v108;

          v110 = type metadata accessor for ResolvedInfo();
          v111 = v110[5];
          type metadata accessor for SearchResultItem(0);
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
          (*(v104 + 16))(v105 + v110[7], v106, v103);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v116, v117, v118, v103);
          v120 = v16[18];
          v119 = v16[19];
          v121 = v16[17];
          v122 = v16[14];
          v123 = v16[6];
          v124 = v110[10];
          type metadata accessor for PommesContext();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v125, v126, v127, v128);
          *v123 = v107;
          v123[1] = v109;
          *(v123 + v110[6]) = MEMORY[0x277D84F98];
          *(v123 + v110[8]) = a10;
          *(v123 + v110[9]) = a9;

          OUTLINED_FUNCTION_106();
          goto LABEL_28;
        }

        v32 = v31;
        a12 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if ((v32 & 0x8000000000000000) == 0)
        {
          v33 = 0;
          do
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              MEMORY[0x25F89FFD0](v33, v30);
            }

            else
            {
              v34 = *(v30 + 8 * v33 + 32);
            }

            ++v33;
            v35 = type metadata accessor for DialogExperience();
            OUTLINED_FUNCTION_53_0(v35);
            swift_allocObject();
            OUTLINED_FUNCTION_47_0();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v36 = a12[2];
            OUTLINED_FUNCTION_72_0();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            OUTLINED_FUNCTION_72_0();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v32 != v33);

          v37 = a12;
          goto LABEL_27;
        }

LABEL_33:
        __break(1u);
        return result;
      }
    }

    else
    {
    }

    v64 = v16[20];
    (*(v16[16] + 16))(v16[19], v16[7], v16[15]);
    v65 = v20;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    v68 = os_log_type_enabled(v66, v67);
    v69 = v16[19];
    v71 = v16[15];
    v70 = v16[16];
    a11 = v65;
    if (v68)
    {
      v72 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      a12 = a10;
      *v72 = 136315394;
      OUTLINED_FUNCTION_8_0();
      lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(v73, v74);
      dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v75;
      v76 = OUTLINED_FUNCTION_38_0();
      v77(v76);
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v72 + 4) = v78;
      *(v72 + 12) = 2080;
      v79 = dispatch thunk of PommesResponse.experiences.getter();
      v80 = type metadata accessor for Experience();
      MEMORY[0x25F89F8A0](v79, v80);
      OUTLINED_FUNCTION_82_0();

      v81 = OUTLINED_FUNCTION_71_0();

      *(v72 + 14) = v81;
      _os_log_impl(&dword_25D85C000, v66, v67, "Received unexpected type from Pegasus for media URL: %s. \n%s", v72, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      v82 = OUTLINED_FUNCTION_38_0();
      v83(v82);
    }

    v84 = v16[22];
    v85 = v16[13];
    v86 = v16[14];
    v87 = v16[12];
    v89 = v16[8];
    v88 = v16[9];
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_79_0();
    *v90 = 1;
    (*(*v84 + 320))();

    OUTLINED_FUNCTION_133();
    v92 = *(v91 + 232);
    v93 = OUTLINED_FUNCTION_45_0();
    v94(v93);
    v95 = *(v85 + 8);
    v96 = OUTLINED_FUNCTION_54_0();
    v97(v96);
    OUTLINED_FUNCTION_29_0();
    *v98 = 1;
    swift_willThrow();
  }

  else
  {
    v38 = v16[20];
    (*(v16[16] + 16))(v16[18], v16[7], v16[15]);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v16[18];
    v43 = v16[15];
    v44 = v16[16];
    if (v41)
    {
      v45 = OUTLINED_FUNCTION_51_0();
      a12 = OUTLINED_FUNCTION_49_0();
      *v45 = 136315138;
      OUTLINED_FUNCTION_8_0();
      lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(v46, v47);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_82_0();
      (*(v44 + 8))(v42, v43);
      v48 = OUTLINED_FUNCTION_71_0();

      *(v45 + 4) = v48;
      _os_log_impl(&dword_25D85C000, v39, v40, "No valid response from Pegasus for media URL: %s.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(a12);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      (*(v44 + 8))(v42, v43);
    }

    v49 = v16[22];
    v51 = v16[13];
    v50 = v16[14];
    v52 = v16[12];
    v54 = v16[8];
    v53 = v16[9];
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_57_0();
    *v55 = v17;
    (*(*v49 + 320))();

    OUTLINED_FUNCTION_133();
    v57 = *(v56 + 232);
    v58 = OUTLINED_FUNCTION_36_0();
    v59(v58);
    v60 = *(v51 + 8);
    v61 = OUTLINED_FUNCTION_32_0();
    v62(v61);
    OUTLINED_FUNCTION_30_0();
    *v63 = v17;
    swift_willThrow();
  }

  v100 = v16[18];
  v99 = v16[19];
  v101 = v16[17];
  v102 = v16[14];

  OUTLINED_FUNCTION_127();
LABEL_28:
  OUTLINED_FUNCTION_115();

  return v130(v129, v130, v131, v132, v133, v134, v135, v136, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_65_0();
  String.index(before:)();
  OUTLINED_FUNCTION_65_0();
  return String.subscript.getter();
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

double specialized BidirectionalCollection.last.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return OUTLINED_FUNCTION_69_0(a2);
  }

  outlined init with copy of Any(a1 + 32 * v2, a2);
  return result;
}

uint64_t static GlobalResolutionService.constructMediaClientEntity(url:)@<X0>(uint64_t a1@<X8>)
{
  v61[1] = a1;
  v1 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v2 = OUTLINED_FUNCTION_14(v1);
  v62 = v3;
  v63 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v67 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v66 = v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  OUTLINED_FUNCTION_114(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  v21 = type metadata accessor for UsoEntitySpan();
  v22 = OUTLINED_FUNCTION_14(v21);
  v71 = v23;
  v72 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_36();
  v64 = v27 - v26;
  OUTLINED_FUNCTION_78_0();
  v28 = type metadata accessor for SpanProperty();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_36();
  v33 = v32 - v31;
  URL.absoluteString.getter();
  v76 = 1;
  v75 = 1;
  SpanProperty.init(key:valueString:valueInt:valueFloat:)();
  type metadata accessor for UsoEntitySpan.SpanSource();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  type metadata accessor for MatchInfo();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMR);
  v42 = *(v29 + 72);
  v43 = *(v29 + 80);
  OUTLINED_FUNCTION_74_0();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_25DBC8180;
  v65 = v29;
  v45 = *(v29 + 16);
  v68 = v33;
  v69 = v28;
  v45(v44 + v29, v33, v28);
  v74 = 1;
  v73 = 1;
  v46 = v64;
  UsoEntitySpan.init(originAppId:sourceComponent:label:matchInfo:properties:startIndex:endIndex:alternatives:originEntityId:)();
  v47 = type metadata accessor for UsoTaskBuilder_noVerb_common_MediaItem();
  OUTLINED_FUNCTION_53_0(v47);
  swift_allocObject();
  v48 = UsoTaskBuilder_noVerb_common_MediaItem.init()();
  v49 = type metadata accessor for UsoEntityBuilder_common_MediaItem();
  OUTLINED_FUNCTION_53_0(v49);
  swift_allocObject();
  UsoEntityBuilder_common_MediaItem.init()();
  dispatch thunk of UsoEntityBuilder_common_MediaItem.setName(value:)();
  dispatch thunk of UsoBuilder.addEntitySpan(entitySpan:)();
  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_25DBC8190;
  *(v50 + 32) = v48;
  type metadata accessor for UsoBuilderOptions();
  v51 = v66;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);

  MEMORY[0x25F89A6C0](v50, v51);

  outlined destroy of IntentApplication?(v51, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v56 = v67;
  v57 = v70;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  if (v57)
  {

    (*(v71 + 8))(v46, v72);
    return (*(v65 + 8))(v68, v69);
  }

  else
  {
    v59 = v65;
    v60 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
    v70 = v61;
    MEMORY[0x28223BE20](v60);
    lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity, MEMORY[0x277D39438]);
    static Message.with(_:)();

    (*(v71 + 8))(v46, v72);
    (*(v59 + 8))(v68, v69);
    return (*(v62 + 8))(v56, v63);
  }
}

uint64_t closure #1 in static GlobalResolutionService.constructMediaClientEntity(url:)(uint64_t a1)
{
  v13[1] = a1;
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Siri_Nlu_External_UsoGraph();
  lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8]);
  result = Message.serializedData(partial:)();
  if (!v1)
  {
    Apple_Parsec_Siri_Context_ClientEntity.usoGraph.setter();
    (*(v8 + 104))(v11, *MEMORY[0x277D39428], v7);
    Apple_Parsec_Siri_Context_ClientEntity.source.setter();
    (*(v3 + 104))(v6, *MEMORY[0x277D39408], v2);
    return Apple_Parsec_Siri_Context_ClientEntity.type.setter();
  }

  return result;
}

uint64_t GlobalResolutionService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t GlobalResolutionService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for EagerResolutionService.resolveFlight(reservation:clientId:) in conformance GlobalResolutionService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 96);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for EagerResolutionService.resolveLocation(address:clientId:app:) in conformance GlobalResolutionService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 104);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for EagerResolutionService.resolveMedia(name:query:clientId:app:) in conformance GlobalResolutionService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(**v8 + 120);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for EagerResolutionService.resolveMediaURL(_:clientId:) in conformance GlobalResolutionService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 128);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v14(a1, a2, a3, a4);
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x25F89F4C0]();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError()
{
  result = lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError;
  if (!lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError;
  if (!lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError);
  }

  return result;
}

uint64_t outlined destroy of ExtractionRuleType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of SearchResult()
{
  OUTLINED_FUNCTION_134();
  v2 = v1(0);
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

unint64_t type metadata accessor for NSUserDefaults()
{
  result = lazy cache variable for type metadata for NSUserDefaults;
  if (!lazy cache variable for type metadata for NSUserDefaults)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserDefaults);
  }

  return result;
}

uint64_t _s10OmniSearch11GeoLocationVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of IntentApplication?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_17(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for EagerResolutionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EagerResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of EagerResolutionService.resolveFlight(reservation:clientId:)()
{
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_59();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_23(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_11_0(v6);

  return v9(v8);
}

uint64_t dispatch thunk of EagerResolutionService.resolveLocation(address:clientId:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_17_0();
  v15 = *(v14 + 16);
  OUTLINED_FUNCTION_59();
  v33 = v16 + *v16;
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_23(v19);
  *v20 = v21;
  v20[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_83_0();

  return v30(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v33, a12, a13, a14);
}

uint64_t dispatch thunk of EagerResolutionService.resolveMedia(name:query:clientId:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v47 = v27;
  OUTLINED_FUNCTION_17_0();
  v28 = *(a26 + 24);
  OUTLINED_FUNCTION_59();
  v46 = v29 + *v29;
  v31 = *(v30 + 4);
  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_23(v32);
  *v33 = v34;
  v33[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_115();

  return v43(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, v46, v47, v26, a14, a15, a16, a17, a18);
}

uint64_t dispatch thunk of EagerResolutionService.resolveMediaURL(_:clientId:)()
{
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_59();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_23(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_11_0(v6);

  return v9(v8);
}

uint64_t dispatch thunk of GlobalResolutionService.resolveFlight(reservation:clientId:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 96);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GlobalResolutionService.resolveLocation(address:clientId:app:)()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 104);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GlobalResolutionService.resolveLocation(address:isNavigationRequest:clientId:location:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_133();
  v15 = *(v14 + 112);
  v31 = v14 + 112;
  v32 = v15 + *v15;
  v16 = v15[1];
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_23(v17);
  *v18 = v19;
  v18[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_83_0();

  return v28(v20, v21, v22, v23, v24, v25, v26, v27, a9, v31, v32, a12, a13, a14);
}

uint64_t dispatch thunk of GlobalResolutionService.resolveMedia(name:query:clientId:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_133();
  v15 = *(v14 + 120);
  v31 = v14 + 120;
  v32 = v15 + *v15;
  v16 = v15[1];
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_23(v17);
  *v18 = v19;
  v18[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_83_0();

  return v28(v20, v21, v22, v23, v24, v25, v26, v27, a9, v31, v32, a12, a13, a14);
}

uint64_t dispatch thunk of GlobalResolutionService.resolveMediaURL(_:clientId:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_133();
  v1 = *(v0 + 128);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_0(v4);

  return v7(v6);
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    OUTLINED_FUNCTION_62_0(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x25F89F700](15, a1 >> 16);
    OUTLINED_FUNCTION_62_0(v3);
    return v4 | 8;
  }
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x2821FD070]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = _StringObject.sharedUTF8.getter();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Dictionary.Values.startIndex.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t specialized Dictionary.Values.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 56) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of ChatMessageRecord(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ExtractionRuleType()
{
  OUTLINED_FUNCTION_134();
  v2 = v1(0);
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  v2 = v0[21];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[5];

  return type metadata accessor for ResolvedInfo();
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_33_0()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_37_0()
{

  JUMPOUT(0x25F8A1050);
}

void OUTLINED_FUNCTION_40_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x25F8A1050);
}

void OUTLINED_FUNCTION_42_0()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return DialogExperience.init(_:card:)(v0, 0);
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_51_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52_0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  return v0[5];
}

uint64_t OUTLINED_FUNCTION_53_0(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

void OUTLINED_FUNCTION_58_0()
{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
}

id OUTLINED_FUNCTION_59_0()
{

  return @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v1, v0, 0);
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

double OUTLINED_FUNCTION_69_0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_70_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_86_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_87_0(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

BOOL OUTLINED_FUNCTION_88_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return swift_beginAccess();
}

uint64_t InstantAnswerExtraction.extractInfo(query:result:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SearchResultItem(0);
  v0[4] = v3;
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_199();
  v6 = type metadata accessor for FlightReservation();
  v0[6] = v6;
  OUTLINED_FUNCTION_21(v6);
  v0[7] = v7;
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_199();
  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = v0[4];
  outlined init with copy of SearchResultItem(v0[3], v0[5], type metadata accessor for SearchResultItem);
  if (swift_getEnumCaseMultiPayload() == 16)
  {
    v3 = v0[7];
    v2 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[2];
    v7 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR) + 48));

    v8 = *(v3 + 32);
    v9 = OUTLINED_FUNCTION_16_0();
    v8(v9);
    (v8)(v6, v2, v4);
    v10 = type metadata accessor for ExtractionRuleType(0);
    swift_storeEnumTagMultiPayload();
    v11 = 0;
  }

  else
  {
    outlined destroy of SearchResultItem(v0[5], type metadata accessor for SearchResultItem);
    v10 = type metadata accessor for ExtractionRuleType(0);
    v11 = 1;
  }

  v12 = v0[8];
  v13 = v0[5];
  __swift_storeEnumTagSinglePayload(v0[2], v11, 1, v10);

  OUTLINED_FUNCTION_106();

  return v14();
}

uint64_t protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance InstantAnswerExtraction()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance InstantAnswerExtraction;

  return InstantAnswerExtraction.extractInfo(query:result:assistantLocale:)();
}

uint64_t CalendarLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v0[12] = v1;
  v0[13] = v2;
  v0[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13CalendarEventVSgMd, &_s15OmniSearchTypes13CalendarEventVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  v0[14] = OUTLINED_FUNCTION_199();
  v7 = type metadata accessor for CalendarEvent();
  v0[15] = v7;
  OUTLINED_FUNCTION_21(v7);
  v0[16] = v8;
  v10 = *(v9 + 64);
  v0[17] = OUTLINED_FUNCTION_199();
  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  SearchResultItem.associatedValue.getter((v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if ((OUTLINED_FUNCTION_18_1() & 1) == 0)
  {
    v31 = *(v0 + 112);
    v30 = *(v0 + 120);
    v32 = OUTLINED_FUNCTION_58();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    outlined destroy of IntentApplication?(v31, &_s15OmniSearchTypes13CalendarEventVSgMd, &_s15OmniSearchTypes13CalendarEventVSgMR);
LABEL_8:
    v36 = *(v0 + 88);
    type metadata accessor for ExtractionRuleType(0);
    v37 = OUTLINED_FUNCTION_58();
    goto LABEL_11;
  }

  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  v11 = *(v5 + 32);
  v12 = OUTLINED_FUNCTION_16_0();
  v13(v12);
  v14 = CalendarEvent.locationName.getter();
  if (!v15)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    goto LABEL_8;
  }

  v16 = v14;
  v17 = v15;
  type metadata accessor for NSUserDefaults();
  v18 = static NSUserDefaults.needAnswerMatchWithLocationResolution.getter();
  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v21 = *(v0 + 120);
  if (v18)
  {
    v22 = *(v0 + 96);
    *(v0 + 56) = String.lowercased()();
    v23 = *(v22 + 16);
    v24 = *(v22 + 24);
    *(v0 + 72) = String.lowercased()();
    lazy protocol witness table accessor for type String and conformance String();
    LOBYTE(v22) = StringProtocol.contains<A>(_:)();

    (*(v20 + 8))(v19, v21);
    if ((v22 & 1) == 0)
    {
      v25 = *(v0 + 88);
      type metadata accessor for ExtractionRuleType(0);
      v26 = OUTLINED_FUNCTION_58();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);

      goto LABEL_12;
    }
  }

  else
  {
    (*(v20 + 8))(*(v0 + 136), *(v0 + 120));
  }

  v41 = *(v0 + 88);
  *v41 = v16;
  v41[1] = v17;
  v42 = type metadata accessor for ExtractionRuleType(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_44_0();
  v40 = v42;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
LABEL_12:
  v43 = *(v0 + 136);
  v44 = *(v0 + 112);

  OUTLINED_FUNCTION_106();

  return v45();
}

uint64_t protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance CalendarLocationAnswer()
{
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_1(v1);

  return CalendarLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)();
}

uint64_t HotelLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v0[7] = v1;
  v0[8] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  v0[9] = OUTLINED_FUNCTION_199();
  v6 = type metadata accessor for HotelReservation();
  v0[10] = v6;
  OUTLINED_FUNCTION_21(v6);
  v0[11] = v7;
  v9 = *(v8 + 64);
  v0[12] = OUTLINED_FUNCTION_199();
  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  SearchResultItem.associatedValue.getter(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (OUTLINED_FUNCTION_18_1())
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[9];
    v7 = v0[10];
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
    (*(v5 + 32))(v4, v6, v7);
    v11 = HotelReservation.hotelReservationForAddress.getter();
    v13 = v12;
    (*(v5 + 8))(v4, v7);
    if (v13)
    {
      v14 = v0[7];
      *v14 = v11;
      v14[1] = v13;
      v15 = type metadata accessor for ExtractionRuleType(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_44_0();
      v19 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = v0[9];
    v20 = v0[10];
    v22 = OUTLINED_FUNCTION_58();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    outlined destroy of IntentApplication?(v21, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  }

  v26 = v0[7];
  type metadata accessor for ExtractionRuleType(0);
  v16 = OUTLINED_FUNCTION_58();
LABEL_6:
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v27 = v0[12];
  v28 = v0[9];

  OUTLINED_FUNCTION_106();

  return v29();
}

uint64_t protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return HotelLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t WalletLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v0[23] = v1;
  v0[24] = v2;
  v0[22] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17WalletTransactionVSgMd, &_s15OmniSearchTypes17WalletTransactionVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  v0[25] = OUTLINED_FUNCTION_199();
  v7 = type metadata accessor for WalletTransaction();
  v0[26] = v7;
  OUTLINED_FUNCTION_21(v7);
  v0[27] = v8;
  v10 = *(v9 + 64);
  v0[28] = OUTLINED_FUNCTION_199();
  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void WalletLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  SearchResultItem.associatedValue.getter(v0 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (!swift_dynamicCast())
  {
    v41 = v0[25];
    v40 = v0[26];
    v42 = v0[22];
    v43 = OUTLINED_FUNCTION_58();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    outlined destroy of IntentApplication?(v41, &_s15OmniSearchTypes17WalletTransactionVSgMd, &_s15OmniSearchTypes17WalletTransactionVSgMR);
    v47 = type metadata accessor for ExtractionRuleType(0);
    v48 = v42;
    goto LABEL_21;
  }

  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  v11 = *(v5 + 32);
  v12 = OUTLINED_FUNCTION_16_0();
  v13(v12);
  type metadata accessor for NSUserDefaults();
  if (static NSUserDefaults.needAnswerMatchWithLocationResolution.getter())
  {
    v14 = v0[28];
    v15 = v0[23];
    v16 = *(v15 + 24);
    v0[17] = *(v15 + 16);
    v0[18] = v16;

    v17 = WalletTransaction.city.getter();
    v19 = v18 ? v17 : 0;
    v20 = v18 ? v18 : 0xE000000000000000;
    v0[19] = v19;
    v0[20] = v20;
    lazy protocol witness table accessor for type String and conformance String();
    v21 = StringProtocol.contains<A>(_:)();

    if ((v21 & 1) == 0)
    {
      v62 = v0[22];
      (*(v0[27] + 8))(v0[28], v0[26]);
      v47 = type metadata accessor for ExtractionRuleType(0);
      v48 = v62;
LABEL_21:
      v49 = 1;
      v50 = 1;
LABEL_23:
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
      v59 = v0[28];
      v60 = v0[25];

      OUTLINED_FUNCTION_106();

      v61();
      return;
    }
  }

  v22 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8400;
  *(inited + 32) = WalletTransaction.city.getter();
  *(inited + 40) = v24;
  *(inited + 48) = WalletTransaction.stateOrProvince.getter();
  *(inited + 56) = v25;
  v26 = WalletTransaction.country.getter();
  v27 = 0;
  *(inited + 64) = v26;
  *(inited + 72) = v28;
  v29 = MEMORY[0x277D84F90];
LABEL_11:
  v30 = v27 - 1;
  v31 = 16 * v27 + 40;
  while (1)
  {
    if (v30 == 2)
    {
      v52 = v0[27];
      v51 = v0[28];
      v53 = v0[26];
      v54 = v0[22];
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSSSgMd, &_sSSSgMR);
      v0[21] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v55 = BidirectionalCollection<>.joined(separator:)();
      v57 = v56;

      (*(v52 + 8))(v51, v53);
      *v54 = v55;
      v54[1] = v57;
      v58 = type metadata accessor for ExtractionRuleType(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_44_0();
      v47 = v58;
      goto LABEL_23;
    }

    if (++v30 > 2)
    {
      break;
    }

    v32 = v31 + 16;
    v33 = *(inited + v31);
    v31 += 16;
    if (v33)
    {
      v34 = *(inited + v32 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v29 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = v38;
      }

      v35 = *(v29 + 16);
      if (v35 >= *(v29 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = v39;
      }

      v27 = v30 + 1;
      *(v29 + 16) = v35 + 1;
      v36 = v29 + 16 * v35;
      *(v36 + 32) = v34;
      *(v36 + 40) = v33;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance WalletLocationAnswer()
{
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_1(v1);

  return WalletLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)();
}

uint64_t FlightFromExtractedAnswer.extractFromSource(query:answer:source:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v0[18] = v1;
  v0[19] = v2;
  v0[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  v0[20] = OUTLINED_FUNCTION_199();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  v0[21] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  v0[22] = OUTLINED_FUNCTION_199();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16FlightDesignatorVSgMd, &_s15OmniSearchTypes16FlightDesignatorVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v15 = *(v14 + 64);
  v0[23] = OUTLINED_FUNCTION_199();
  v16 = type metadata accessor for FlightDesignator();
  v0[24] = v16;
  OUTLINED_FUNCTION_21(v16);
  v0[25] = v17;
  v19 = *(v18 + 64);
  v0[26] = OUTLINED_FUNCTION_199();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v20);
  v22 = *(v21 + 64);
  v0[27] = OUTLINED_FUNCTION_199();
  v23 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

{
  v1 = *(v0 + 152);
  SearchResultItem.associatedValue.getter((v0 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch14DataDetectable_pMd, &_s10OmniSearch14DataDetectable_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 216);
    outlined init with take of ResponseOverrideMatcherProtocol((v0 + 96), v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    (*(v4 + 8))(v3, v4);
    v5 = type metadata accessor for DataDetectorResults();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v5);
    v7 = *(v0 + 216);
    if (EnumTagSinglePayload == 1)
    {
      v8 = &_s15OmniSearchTypes19DataDetectorResultsVSgMd;
      v9 = &_s15OmniSearchTypes19DataDetectorResultsVSgMR;
      v10 = *(v0 + 216);
    }

    else
    {
      v12 = *(v0 + 184);
      v11 = *(v0 + 192);
      v13 = *(v0 + 144);
      v14 = DataDetectorResults.flightDesignators.getter();
      (*(*(v5 - 8) + 8))(v7, v5);
      *(swift_task_alloc() + 16) = v13;
      specialized Sequence.first(where:)(partial apply for closure #1 in FlightFromExtractedAnswer.extractFromSource(query:answer:source:assistantLocale:), v14, v12);

      if (__swift_getEnumTagSinglePayload(v12, 1, v11) != 1)
      {
        v29 = *(v0 + 200);
        v28 = *(v0 + 208);
        v62 = *(v0 + 192);
        v31 = *(v0 + 168);
        v30 = *(v0 + 176);
        v32 = *(v0 + 152);
        v33 = *(v0 + 160);
        v34 = *(v0 + 136);
        (*(v29 + 32))(v28, *(v0 + 184));
        v35 = FlightDesignator.number.getter();
        v60 = v36;
        v61 = v35;
        v37 = FlightDesignator.airline.getter();
        v58 = v38;
        v59 = v37;
        v39 = *(type metadata accessor for SearchResult(0) + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
        v40 = CodableNSSecureCoding.wrappedValue.getter();
        v41 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v40);
        if (v42)
        {
          v43 = v41;
        }

        else
        {
          v43 = 0;
        }

        if (v42)
        {
          v44 = v42;
        }

        else
        {
          v44 = 0xE000000000000000;
        }

        v45 = type metadata accessor for Calendar();
        __swift_storeEnumTagSinglePayload(v31, 1, 1, v45);
        v46 = type metadata accessor for TimeZone();
        __swift_storeEnumTagSinglePayload(v33, 1, 1, v46);
        LOBYTE(v57) = 1;
        LOBYTE(v56) = 1;
        LOBYTE(v55) = 1;
        LOBYTE(v54) = 1;
        LOBYTE(v53) = 1;
        LOBYTE(v52) = 1;
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        FlightReservation.init(flightNumber:flightCarrierCode:bundleId:flightDepartureDateComponents:)(v61, v60, v59, v58, v43, v44, v30, v47, 0, v52, 0, v53, 0, v54, 0, v55, 0, v56, 0, v57);
        (*(v29 + 8))(v28, v62);
        v48 = type metadata accessor for ExtractionRuleType(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
        goto LABEL_9;
      }

      v10 = *(v0 + 184);
      v8 = &_s15OmniSearchTypes16FlightDesignatorVSgMd;
      v9 = &_s15OmniSearchTypes16FlightDesignatorVSgMR;
    }

    outlined destroy of IntentApplication?(v10, v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    outlined destroy of IntentApplication?(v0 + 96, &_s10OmniSearch14DataDetectable_pSgMd, &_s10OmniSearch14DataDetectable_pSgMR);
  }

  v15 = *(v0 + 136);
  type metadata accessor for ExtractionRuleType(0);
  v16 = OUTLINED_FUNCTION_58();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
LABEL_9:
  v21 = *(v0 + 208);
  v20 = *(v0 + 216);
  v23 = *(v0 + 176);
  v22 = *(v0 + 184);
  v25 = *(v0 + 160);
  v24 = *(v0 + 168);

  OUTLINED_FUNCTION_106();

  return v26();
}

uint64_t closure #1 in FlightFromExtractedAnswer.extractFromSource(query:answer:source:assistantLocale:)(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);

  FlightDesignator.airline.getter();
  v2 = FlightDesignator.number.getter();
  v4 = v3;

  MEMORY[0x25F89F6C0](v2, v4);

  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.contains<A>(_:)();

  return v5 & 1;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for FlightDesignator();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  v14 = 0;
  v15 = *(a2 + 16);
  v16 = (v8 + 8);
  while (1)
  {
    if (v15 == v14)
    {
      v18 = 1;
      v19 = a3;
      return __swift_storeEnumTagSinglePayload(v19, v18, 1, v5);
    }

    (*(v8 + 16))(v13, a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v5);
    v17 = a1(v13);
    if (v3)
    {
      return (*v16)(v13, v5);
    }

    if (v17)
    {
      break;
    }

    (*v16)(v13, v5);
    ++v14;
  }

  v19 = a3;
  (*(v8 + 32))(a3, v13, v5);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v5);
}

{
  v6 = type metadata accessor for FlightSnippet.Leg(0);
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  v15 = 0;
  v16 = *(a2 + 16);
  while (1)
  {
    if (v16 == v15)
    {
      v18 = 1;
      v19 = a3;
      return __swift_storeEnumTagSinglePayload(v19, v18, 1, v6);
    }

    outlined init with copy of SearchResultItem(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v14, type metadata accessor for FlightSnippet.Leg);
    v17 = a1(v14);
    if (v3)
    {
      return outlined destroy of SearchResultItem(v14, type metadata accessor for FlightSnippet.Leg);
    }

    if (v17)
    {
      break;
    }

    outlined destroy of SearchResultItem(v14, type metadata accessor for FlightSnippet.Leg);
    ++v15;
  }

  v19 = a3;
  outlined init with take of FlightSnippet.Leg(v14, a3);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v6);
}

uint64_t protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance FlightFromExtractedAnswer()
{
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_1(v1);

  return FlightFromExtractedAnswer.extractFromSource(query:answer:source:assistantLocale:)();
}

uint64_t URL.init(hostedLink:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = OUTLINED_FUNCTION_114(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for URL();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v16 = (v15 - v14);
  URL.init(string:)();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of IntentApplication?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_6:
    v19 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v19, 1, v8);
  }

  v17 = *(v11 + 32);
  v17(v16, v7, v8);
  URL.host.getter();
  if (!v18)
  {
    (*(v11 + 8))(v16, v8);
    goto LABEL_6;
  }

  v17(a1, v16, v8);
  v19 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v19, 1, v8);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSSSgMd, &_sSSSgMR);
}

{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
}

{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSS_SStMd, &_sSS_SStMR);
}

{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSaySSGMd, &_sSaySSGMR);
}

{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s10OmniSearch17MessageIdentifier_pMd, &_s10OmniSearch17MessageIdentifier_pMR);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(void *a1)
{
  v2 = [a1 bundleID];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t instantiation function for generic protocol witness table for CalendarLocationAnswer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CalendarLocationAnswer and conformance CalendarLocationAnswer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CalendarLocationAnswer and conformance CalendarLocationAnswer()
{
  result = lazy protocol witness table cache variable for type CalendarLocationAnswer and conformance CalendarLocationAnswer;
  if (!lazy protocol witness table cache variable for type CalendarLocationAnswer and conformance CalendarLocationAnswer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalendarLocationAnswer and conformance CalendarLocationAnswer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Answer and conformance Answer()
{
  result = lazy protocol witness table cache variable for type Answer and conformance Answer;
  if (!lazy protocol witness table cache variable for type Answer and conformance Answer)
  {
    type metadata accessor for Answer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Answer and conformance Answer);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for HotelLocationAnswer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HotelLocationAnswer and conformance HotelLocationAnswer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HotelLocationAnswer and conformance HotelLocationAnswer()
{
  result = lazy protocol witness table cache variable for type HotelLocationAnswer and conformance HotelLocationAnswer;
  if (!lazy protocol witness table cache variable for type HotelLocationAnswer and conformance HotelLocationAnswer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelLocationAnswer and conformance HotelLocationAnswer);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for WalletLocationAnswer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type WalletLocationAnswer and conformance WalletLocationAnswer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type WalletLocationAnswer and conformance WalletLocationAnswer()
{
  result = lazy protocol witness table cache variable for type WalletLocationAnswer and conformance WalletLocationAnswer;
  if (!lazy protocol witness table cache variable for type WalletLocationAnswer and conformance WalletLocationAnswer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WalletLocationAnswer and conformance WalletLocationAnswer);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for FlightFromExtractedAnswer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightFromExtractedAnswer and conformance FlightFromExtractedAnswer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FlightFromExtractedAnswer and conformance FlightFromExtractedAnswer()
{
  result = lazy protocol witness table cache variable for type FlightFromExtractedAnswer and conformance FlightFromExtractedAnswer;
  if (!lazy protocol witness table cache variable for type FlightFromExtractedAnswer and conformance FlightFromExtractedAnswer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightFromExtractedAnswer and conformance FlightFromExtractedAnswer);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarLocationAnswer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDA)
  {
    if (a2 + 38 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 38) >> 8 < 0xFF)
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 39;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0x26)
  {
    v7 = 38;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 39;
  if (v6 < 0x26)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarLocationAnswer(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD9)
  {
    v6 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
          *result = a2 + 38;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined init with copy of SearchResultItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of SearchResultItem(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of FlightSnippet.Leg(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightSnippet.Leg(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_dynamicCast();
}

uint64_t ExtractionRule.isEnabled(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 8))(a2, a3) == 38)
  {
    return 1;
  }

  else
  {
    return (*(*a1 + 80))() & 1;
  }
}

uint64_t ExtractedInfo.init(result:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s10OmniSearch0B6ResultVWObTm_0(a1, a3);
  v5 = *(type metadata accessor for ExtractedInfo(0) + 20);
  OUTLINED_FUNCTION_3_0();
  return _s10OmniSearch0B6ResultVWObTm_0(a2, a3 + v6);
}

uint64_t _s10OmniSearch0B6ResultVWObTm_0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_17(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t type metadata accessor for ExtractedInfo(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for TypedExtractionRule.extractInfo(query:typedResult:assistantLocale:) in conformance CalendarLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
  v10 = OUTLINED_FUNCTION_40_1();
  v11 = OUTLINED_FUNCTION_23(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_1(v11);
  OUTLINED_FUNCTION_44_1();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for HotelReservation();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v9 = *(type metadata accessor for SearchResult(0) - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:), 0, 0);
}

{
  v3[11] = a1;
  v3[12] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13CalendarEventVSgMd, &_s15OmniSearchTypes13CalendarEventVSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for CalendarEvent();
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v9 = *(type metadata accessor for SearchResult(0) - 8);
  v3[18] = v9;
  v10 = *(v9 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:), 0, 0);
}

{
  v3[17] = a1;
  v3[18] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v6 = *(*(type metadata accessor for DateComponents() - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16FlightDesignatorVSgMd, &_s15OmniSearchTypes16FlightDesignatorVSgMR) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for FlightDesignator();
  v3[23] = v8;
  v9 = *(v8 - 8);
  v3[24] = v9;
  v10 = *(v9 + 64) + 15;
  v3[25] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v13 = type metadata accessor for SearchResult(0);
  v3[28] = v13;
  v14 = *(v13 - 8);
  v3[29] = v14;
  v15 = *(v14 + 64) + 15;
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:), 0, 0);
}

void specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)()
{
  v1 = 0;
  v2 = v0[14];
  v3 = v0[11];
  v4 = *(v0[8] + 40);
  v41 = v0[13];
  v42 = (v3 + 32);
  v5 = (v3 + 8);
  v6 = *(v4 + 16);
  while (1)
  {
    if (v6 == v1)
    {
      OUTLINED_FUNCTION_18_2();
      v32 = 1;
      goto LABEL_13;
    }

    if (v1 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    v7 = v0[15];
    v9 = v0[9];
    v8 = v0[10];
    v10 = v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v12, v7);
    SearchResultItem.associatedValue.getter(v0 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
    if (swift_dynamicCast())
    {
      v13 = v0[12];
      v14 = v0[9];
      v15 = v0[10];
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
      (*v42)(v13, v14, v15);
      v19 = HotelReservation.hotelReservationForAddress.getter();
      v21 = v20;
      (*v5)(v13, v15);
      if (v21)
      {
        v22 = v0[13];
        *v22 = v19;
        *(v41 + 8) = v21;
        OUTLINED_FUNCTION_18_2();
        swift_storeEnumTagMultiPayload();
        v23 = v22;
        v24 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v19 = v0[9];
      v25 = v0[10];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
      outlined destroy of IntentApplication?(v19, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
    }

    v30 = v0[13];
    OUTLINED_FUNCTION_18_2();
    v23 = v30;
    v24 = 1;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v23, v24, 1, v19);
    v31 = v0[13];
    OUTLINED_FUNCTION_15_1(v0[15]);
    type metadata accessor for ExtractionRuleType(0);
    if (__swift_getEnumTagSinglePayload(v31, 1, v19) != 1)
    {
      break;
    }

    outlined destroy of IntentApplication?(v0[13], &_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
    ++v1;
  }

  v33 = v0[7];
  OUTLINED_FUNCTION_3_0();
  _s10OmniSearch0B6ResultVWObTm_0(v34, v35);
  v32 = 0;
LABEL_13:
  v36 = v0[15];
  v38 = v0[12];
  v37 = v0[13];
  v39 = v0[9];
  OUTLINED_FUNCTION_35_1(v0[7], v32);

  OUTLINED_FUNCTION_106();

  v40();
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[8];
  v2 = *(v0[4] + 40);
  v0[10] = v2;
  v3 = *(v2 + 16);
  v0[11] = v3;
  v0[12] = 0;
  if (v3)
  {
    if (*(v2 + 16))
    {
      v4 = v0[9];
      v5 = *(v1 + 80);
      OUTLINED_FUNCTION_0_1();
      outlined init with copy of SearchResult(v6 + v7, v8);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[13] = v9;
      *v9 = v10;
      OUTLINED_FUNCTION_25_0(v9);

      WalletLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_0();
    v11 = v0[9];
    v12 = v0[7];
    v13 = v0[2];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);

    OUTLINED_FUNCTION_106();

    v18();
  }
}

{
  v1 = 0;
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v74 = *(v0 + 96);
  v75 = *(v0 + 136);
  v4 = v74[5];
  v77 = (v3 + 32);
  v78 = (v3 + 8);
  v5 = *(v4 + 16);
  v73 = v4;
  v76 = v5;
  while (1)
  {
    if (v5 == v1)
    {
      OUTLINED_FUNCTION_18_2();
      v63 = 1;
      goto LABEL_19;
    }

    if (v1 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v0 + 152);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v11, v6);
    SearchResultItem.associatedValue.getter((v0 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
    if (!swift_dynamicCast())
    {
      v12 = *(v0 + 104);
      v48 = *(v0 + 112);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
      outlined destroy of IntentApplication?(v12, &_s15OmniSearchTypes13CalendarEventVSgMd, &_s15OmniSearchTypes13CalendarEventVSgMR);
LABEL_11:
      v53 = *(v0 + 136);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v12);
      goto LABEL_15;
    }

    v12 = *(v0 + 128);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
    (*v77)(v12, v14, v13);
    v18 = CalendarEvent.locationName.getter();
    if (!v19)
    {
      (*v78)(*(v0 + 128), *(v0 + 112));
      v5 = v76;
      goto LABEL_11;
    }

    v20 = v18;
    v21 = v19;
    v12 = type metadata accessor for NSUserDefaults();
    v22 = static NSUserDefaults.needAnswerMatchWithLocationResolution.getter();
    v30 = *(v0 + 128);
    v31 = *(v0 + 112);
    if ((v22 & 1) == 0)
    {
      v57 = OUTLINED_FUNCTION_45_1(v22, v23, v24, v25, v26, v27, v28, v29, v72, v73, v74, v75, v76, v77, v78);
      v58(v57);
LABEL_13:
      **(v0 + 136) = v20;
      *(v75 + 8) = v21;
      OUTLINED_FUNCTION_18_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v12);
      goto LABEL_14;
    }

    *(v0 + 56) = String.lowercased()();
    v32 = v74[2];
    v33 = v74[3];
    *(v0 + 72) = String.lowercased()();
    lazy protocol witness table accessor for type String and conformance String();
    v12 = StringProtocol.contains<A>(_:)();
    v4 = v73;

    v42 = OUTLINED_FUNCTION_45_1(v34, v35, v36, v37, v38, v39, v40, v41, v72, v73, v74, v75, v76, v77, v78);
    v43(v42);
    if (v12)
    {
      goto LABEL_13;
    }

    v44 = *(v0 + 136);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v12);

LABEL_14:
    v5 = v76;
LABEL_15:
    v62 = *(v0 + 136);
    OUTLINED_FUNCTION_15_1(*(v0 + 152));
    type metadata accessor for ExtractionRuleType(0);
    if (__swift_getEnumTagSinglePayload(v62, 1, v12) != 1)
    {
      break;
    }

    outlined destroy of IntentApplication?(*(v0 + 136), &_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
    ++v1;
  }

  v64 = *(v0 + 88);
  OUTLINED_FUNCTION_3_0();
  _s10OmniSearch0B6ResultVWObTm_0(v65, v66);
  v63 = 0;
LABEL_19:
  v67 = *(v0 + 152);
  v69 = *(v0 + 128);
  v68 = *(v0 + 136);
  v70 = *(v0 + 104);
  OUTLINED_FUNCTION_35_1(*(v0 + 88), v63);

  OUTLINED_FUNCTION_106();

  v71();
}

{
  v1 = 0;
  v2 = *(v0 + 232);
  v3 = *(v0 + 192);
  v71 = (v3 + 32);
  v72 = *(v0 + 224);
  v4 = *(*(v0 + 144) + 40);
  v80 = *(v4 + 16);
  v70 = (v3 + 8);
  while (1)
  {
    if (v80 == v1)
    {
      OUTLINED_FUNCTION_18_2();
      v51 = 1;
      goto LABEL_21;
    }

    if (v1 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v0 + 240);
    v6 = v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v7 = *(v2 + 72);
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v8, v5);
    SearchResultItem.associatedValue.getter((v0 + 56));
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch14DataDetectable_pMd, &_s10OmniSearch14DataDetectable_pMR);
    if (!swift_dynamicCast())
    {
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      outlined destroy of IntentApplication?(v0 + 96, &_s10OmniSearch14DataDetectable_pSgMd, &_s10OmniSearch14DataDetectable_pSgMR);
      goto LABEL_10;
    }

    v10 = *(v0 + 208);
    outlined init with take of ResponseOverrideMatcherProtocol((v0 + 96), v0 + 16);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    (*(v12 + 8))(v11, v12);
    v13 = type metadata accessor for DataDetectorResults();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v13);
    v9 = *(v0 + 208);
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 208), &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_10:
      v19 = *(v0 + 216);
      OUTLINED_FUNCTION_18_2();
      v20 = OUTLINED_FUNCTION_17_1();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v9);
      goto LABEL_11;
    }

    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 144);
    v18 = DataDetectorResults.flightDesignators.getter();
    (*(*(v13 - 8) + 8))(v9, v13);
    v9 = swift_task_alloc();
    *(v9 + 16) = v17;
    specialized Sequence.first(where:)(partial apply for closure #1 in FlightFromExtractedAnswer.extractFromSource(query:answer:source:assistantLocale:), v18, v16);

    if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 176), &_s15OmniSearchTypes16FlightDesignatorVSgMd, &_s15OmniSearchTypes16FlightDesignatorVSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      goto LABEL_10;
    }

    v24 = *(v0 + 240);
    v25 = *(v0 + 216);
    v26 = *(v0 + 200);
    v27 = *(v0 + 160);
    v78 = *(v0 + 168);
    v79 = *(v0 + 184);
    v28 = *(v0 + 152);
    (*v71)(v26, *(v0 + 176));
    v29 = FlightDesignator.number.getter();
    v76 = v30;
    v77 = v29;
    v31 = FlightDesignator.airline.getter();
    v74 = v32;
    v75 = v31;
    v33 = *(v72 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v34 = CodableNSSecureCoding.wrappedValue.getter();
    v35 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v34);
    if (v36)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    v38 = 0xE000000000000000;
    if (v36)
    {
      v38 = v36;
    }

    v73 = v38;
    type metadata accessor for Calendar();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    type metadata accessor for TimeZone();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    LOBYTE(v69) = 1;
    LOBYTE(v68) = 1;
    LOBYTE(v67) = 1;
    LOBYTE(v66) = 1;
    LOBYTE(v65) = 1;
    LOBYTE(v64) = 1;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    FlightReservation.init(flightNumber:flightCarrierCode:bundleId:flightDepartureDateComponents:)(v77, v76, v75, v74, v37, v73, v78, v47, 0, v64, 0, v65, 0, v66, 0, v67, 0, v68, 0, v69);
    (*v70)(v26, v79);
    OUTLINED_FUNCTION_18_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v37);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_11:
    v23 = *(v0 + 216);
    OUTLINED_FUNCTION_15_1(*(v0 + 240));
    type metadata accessor for ExtractionRuleType(0);
    if (OUTLINED_FUNCTION_42_1() != 1)
    {
      break;
    }

    outlined destroy of IntentApplication?(*(v0 + 216), &_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
    ++v1;
  }

  v52 = *(v0 + 136);
  OUTLINED_FUNCTION_3_0();
  _s10OmniSearch0B6ResultVWObTm_0(v53, v54);
  v51 = 0;
LABEL_21:
  v55 = *(v0 + 240);
  v57 = *(v0 + 208);
  v56 = *(v0 + 216);
  v58 = *(v0 + 200);
  v60 = *(v0 + 168);
  v59 = *(v0 + 176);
  v62 = *(v0 + 152);
  v61 = *(v0 + 160);
  OUTLINED_FUNCTION_35_1(*(v0 + 136), v51);

  OUTLINED_FUNCTION_106();

  v63();
}

uint64_t specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 120) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  v8 = *(type metadata accessor for SearchResult(0) - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:), 0, 0);
}

uint64_t specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)()
{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  outlined destroy of SearchResult(*(v2 + 72), type metadata accessor for SearchResult);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[7];
  OUTLINED_FUNCTION_18_2();
  if (OUTLINED_FUNCTION_42_1() != 1)
  {
    v6 = v0[2];
    OUTLINED_FUNCTION_3_0();
    _s10OmniSearch0B6ResultVWObTm_0(v1, v7);
    v5 = 0;
    goto LABEL_5;
  }

  result = outlined destroy of IntentApplication?(v1, &_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
  v3 = v0[11];
  v4 = v0[12] + 1;
  v0[12] = v4;
  if (v4 == v3)
  {
    v5 = 1;
LABEL_5:
    v8 = v0[9];
    v9 = v0[7];
    OUTLINED_FUNCTION_35_1(v0[2], v5);

    OUTLINED_FUNCTION_106();

    return v10();
  }

  if (v4 >= *(v0[10] + 16))
  {
    __break(1u);
  }

  else
  {
    v12 = v0[8];
    v11 = v0[9];
    v13 = *(v12 + 80);
    v14 = *(v12 + 72);
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v15, v16);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[13] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_25_0();

    return WalletLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)();
  }

  return result;
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[9];
  v2 = v0[7];

  OUTLINED_FUNCTION_127();
  v4 = v0[14];

  return v3();
}

uint64_t AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[2] = v7;
  v1[3] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR) - 8) + 64);
  v1[10] = OUTLINED_FUNCTION_199();
  v10 = *(type metadata accessor for SearchResult(0) - 8);
  OUTLINED_FUNCTION_28_0();
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[11];
  result = v0[8];
  v3 = *(v0[4] + 40);
  v0[13] = v3;
  v4 = *(v3 + 16);
  v0[14] = v4;
  v0[15] = 0;
  if (v4)
  {
    if (*(v3 + 16))
    {
      v5 = v0[12];
      v6 = *(v1 + 80);
      OUTLINED_FUNCTION_0_1();
      v27 = v7;
      outlined init with copy of SearchResult(v8 + v9, v10);
      v11 = *(v27 + 16);
      OUTLINED_FUNCTION_28_0();
      v26 = (v12 + *v12);
      v14 = *(v13 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[16] = v15;
      *v15 = v16;
      v17 = OUTLINED_FUNCTION_24_0(v15);

      return v26(v17);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_0();
    v18 = v0[12];
    v19 = v0[10];
    v20 = v0[2];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);

    OUTLINED_FUNCTION_106();

    return v25();
  }

  return result;
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  outlined destroy of SearchResult(*(v2 + 96), type metadata accessor for SearchResult);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  v1 = v0[10];
  OUTLINED_FUNCTION_18_2();
  if (OUTLINED_FUNCTION_42_1() != 1)
  {
    v6 = v0[2];
    OUTLINED_FUNCTION_3_0();
    _s10OmniSearch0B6ResultVWObTm_0(v1, v7);
    v5 = 0;
    goto LABEL_5;
  }

  result = outlined destroy of IntentApplication?(v1, &_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
  v3 = v0[14];
  v4 = v0[15] + 1;
  v0[15] = v4;
  if (v4 == v3)
  {
    v5 = 1;
LABEL_5:
    v8 = v0[12];
    v9 = v0[10];
    OUTLINED_FUNCTION_35_1(v0[2], v5);

    OUTLINED_FUNCTION_106();

    return v10();
  }

  if (v4 >= *(v0[13] + 16))
  {
    __break(1u);
  }

  else
  {
    v12 = v0[11];
    v11 = v0[12];
    v25 = v0[8];
    v13 = *(v12 + 80);
    v14 = *(v12 + 72);
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v15, v16);
    v17 = *(v25 + 16);
    OUTLINED_FUNCTION_28_0();
    v24 = (v18 + *v18);
    v20 = *(v19 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[16] = v21;
    *v21 = v22;
    v23 = OUTLINED_FUNCTION_24_0();

    return v24(v23);
  }

  return result;
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[12];
  v2 = v0[10];

  OUTLINED_FUNCTION_127();
  v4 = v0[17];

  return v3();
}

uint64_t protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance CalendarLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_60(&async function pointer to specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
  v10 = OUTLINED_FUNCTION_40_1();
  v11 = OUTLINED_FUNCTION_23(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_1(v11);
  OUTLINED_FUNCTION_44_1();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 136) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR) - 8) + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v8 = type metadata accessor for Answer();
  *(v6 + 104) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:), 0, 0);
}

{
  *(v6 + 136) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR) - 8) + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v8 = type metadata accessor for Answer();
  *(v6 + 104) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:), 0, 0);
}

{
  *(v6 + 136) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR) - 8) + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v8 = type metadata accessor for Answer();
  *(v6 + 104) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:), 0, 0);
}

{
  *(v6 + 136) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR) - 8) + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v8 = type metadata accessor for Answer();
  *(v6 + 104) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:), 0, 0);
}

uint64_t specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (OUTLINED_FUNCTION_18_1())
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_60(async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[15] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_8_1(v1);

    return v4(v3);
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[7];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    outlined destroy of IntentApplication?(v7, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    OUTLINED_FUNCTION_14_0();

    OUTLINED_FUNCTION_106();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_29_1();
  outlined destroy of SearchResult(v2, v3);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);

  OUTLINED_FUNCTION_106();

  return v6();
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[14];
  v2 = v0[12];
  OUTLINED_FUNCTION_29_1();
  outlined destroy of SearchResult(v1, v3);

  OUTLINED_FUNCTION_127();
  v5 = v0[16];

  return v4();
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (OUTLINED_FUNCTION_18_1())
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[15] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_8_1(v1);

    return v4(v3);
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[7];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    outlined destroy of IntentApplication?(v7, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    OUTLINED_FUNCTION_14_0();

    OUTLINED_FUNCTION_106();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (OUTLINED_FUNCTION_18_1())
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[15] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_8_1(v1);

    return v4(v3);
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[7];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    outlined destroy of IntentApplication?(v7, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    OUTLINED_FUNCTION_14_0();

    OUTLINED_FUNCTION_106();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (OUTLINED_FUNCTION_18_1())
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_60(async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[15] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_8_1(v1);

    return v4(v3);
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[7];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    outlined destroy of IntentApplication?(v7, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    OUTLINED_FUNCTION_14_0();

    OUTLINED_FUNCTION_106();

    return v13();
  }
}

uint64_t TypedExtractionRule.extractInfo(query:result:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[9] = v5;
  v1[10] = v6;
  v1[7] = v7;
  v1[8] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  v10 = type metadata accessor for Optional();
  v1[16] = v10;
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_28_0();
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = OUTLINED_FUNCTION_199();
  v15 = *(AssociatedTypeWitness - 8);
  v1[19] = v15;
  v16 = *(v15 + 64);
  v1[20] = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48();
  (*(v0[19] + 8))(v0[20], v0[15]);
  v1 = v0[20];
  v2 = v0[18];

  OUTLINED_FUNCTION_106();

  return v3();
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[18];
  (*(v0[19] + 8))(v0[20], v0[15]);

  OUTLINED_FUNCTION_127();
  v3 = v0[22];

  return v2();
}

void TypedExtractionRule.extractInfo(query:result:assistantLocale:)()
{
  OUTLINED_FUNCTION_75();
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[9];
  SearchResultItem.associatedValue.getter(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  v4 = swift_dynamicCast();
  v5 = v0[15];
  if (v4)
  {
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[18];
    v44 = v0[13];
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
    (*(v7 + 32))(v6, v8, v5);
    v12 = *(v44 + 32);
    OUTLINED_FUNCTION_28_0();
    v43 = v13 + *v13;
    v15 = *(v14 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[21] = v16;
    *v16 = v17;
    v16[1] = TypedExtractionRule.extractInfo(query:result:assistantLocale:);
    v18 = v0[20];
    v19 = v0[13];
    v20 = v0[14];
    v21 = v0[11];
    v22 = v0[12];
    v23 = v0[10];
    v24 = v0[7];
    v25 = v0[8];
    OUTLINED_FUNCTION_44_1();

    __asm { BRAA            X7, X16 }
  }

  v29 = v0[17];
  v28 = v0[18];
  v30 = v0[16];
  v31 = v0[7];
  v32 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v5);
  (*(v29 + 8))(v28, v30);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = v0[20];
  v40 = v0[18];

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_44_1();

  __asm { BRAA            X1, X16 }
}

uint64_t protocol witness for TypedExtractionRule.extractInfo(query:typedResult:assistantLocale:) in conformance HotelLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_60(async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
  v10 = OUTLINED_FUNCTION_40_1();
  v11 = OUTLINED_FUNCTION_23(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_1(v11);
  OUTLINED_FUNCTION_44_1();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance HotelLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_60(&async function pointer to specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
  v10 = OUTLINED_FUNCTION_40_1();
  v11 = OUTLINED_FUNCTION_23(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_1(v11);
  OUTLINED_FUNCTION_44_1();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t protocol witness for TypedExtractionRule.extractInfo(query:typedResult:assistantLocale:) in conformance WalletLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
  v10 = OUTLINED_FUNCTION_40_1();
  v11 = OUTLINED_FUNCTION_23(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_1(v11);
  OUTLINED_FUNCTION_44_1();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance WalletLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_60(&async function pointer to specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
  v10 = OUTLINED_FUNCTION_40_1();
  v11 = OUTLINED_FUNCTION_23(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_1(v11);
  OUTLINED_FUNCTION_44_1();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t protocol witness for TypedExtractionRule.extractInfo(query:typedResult:assistantLocale:) in conformance FlightFromExtractedAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_60(async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
  v10 = OUTLINED_FUNCTION_40_1();
  v11 = OUTLINED_FUNCTION_23(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_1(v11);
  OUTLINED_FUNCTION_44_1();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance FlightFromExtractedAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_60(&async function pointer to specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
  v10 = OUTLINED_FUNCTION_40_1();
  v11 = OUTLINED_FUNCTION_23(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2_1(v11);
  OUTLINED_FUNCTION_44_1();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t static ExtractionRuleType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v79 = a2;
  v2 = type metadata accessor for Date();
  v3 = OUTLINED_FUNCTION_14(v2);
  v76 = v4;
  v77 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v71 = v8 - v7;
  v9 = type metadata accessor for FlightReservation();
  v10 = OUTLINED_FUNCTION_14(v9);
  v74 = v11;
  v75 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v70 = v15 - v14;
  v16 = type metadata accessor for URL();
  v17 = OUTLINED_FUNCTION_14(v16);
  v72 = v18;
  v73 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v23 = v22 - v21;
  v24 = type metadata accessor for ExtractionRuleType(0);
  v25 = OUTLINED_FUNCTION_17(v24);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v70 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v70 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v70 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = (&v70 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeO_ACtMd, &_s10OmniSearch18ExtractionRuleTypeO_ACtMR);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v46 = &v70 - v45;
  v47 = (&v70 + *(v44 + 56) - v45);
  outlined init with copy of SearchResult(v78, &v70 - v45);
  outlined init with copy of SearchResult(v79, v47);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_2();
      outlined init with copy of SearchResult(v46, v39);
      if (OUTLINED_FUNCTION_43_0() == 1)
      {
        v64 = v72;
        v63 = v73;
        (*(v72 + 32))(v23, v47, v73);
        v53 = static URL.== infix(_:_:)();
        v65 = *(v64 + 8);
        v65(v23, v63);
        v65(v39, v63);
        goto LABEL_17;
      }

      (*(v72 + 8))(v39, v73);
      goto LABEL_23;
    case 2u:
      OUTLINED_FUNCTION_1_2();
      outlined init with copy of SearchResult(v46, v36);
      if (OUTLINED_FUNCTION_43_0() == 2)
      {
        v56 = v74;
        v55 = v75;
        v57 = v70;
        (*(v74 + 32))(v70, v47, v75);
        v53 = static FlightReservation.== infix(_:_:)();
        v58 = *(v56 + 8);
        v58(v57, v55);
        v58(v36, v55);
        goto LABEL_17;
      }

      (*(v74 + 8))(v36, v75);
      goto LABEL_23;
    case 3u:
      OUTLINED_FUNCTION_1_2();
      outlined init with copy of SearchResult(v46, v33);
      v49 = *v33;
      v48 = v33[1];
      if (OUTLINED_FUNCTION_43_0() == 3)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    case 4u:
      OUTLINED_FUNCTION_1_2();
      outlined init with copy of SearchResult(v46, v30);
      if (OUTLINED_FUNCTION_43_0() != 4)
      {
        (*(v76 + 8))(v30, v77);
        goto LABEL_23;
      }

      v51 = v76;
      v50 = v77;
      v52 = v71;
      (*(v76 + 32))(v71, v47, v77);
      v53 = static Date.== infix(_:_:)();
      v54 = *(v51 + 8);
      v54(v52, v50);
      v54(v30, v50);
LABEL_17:
      OUTLINED_FUNCTION_5_2();
      outlined destroy of SearchResult(v46, v66);
      return v53 & 1;
    case 5u:
      if (OUTLINED_FUNCTION_43_0() == 5)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    default:
      OUTLINED_FUNCTION_1_2();
      outlined init with copy of SearchResult(v46, v41);
      v49 = *v41;
      v48 = v41[1];
      if (OUTLINED_FUNCTION_43_0())
      {
LABEL_3:

LABEL_23:
        outlined destroy of IntentApplication?(v46, &_s10OmniSearch18ExtractionRuleTypeO_ACtMd, &_s10OmniSearch18ExtractionRuleTypeO_ACtMR);
        goto LABEL_24;
      }

LABEL_9:
      if (v49 == *v47 && v48 == v47[1])
      {
        v67 = v47[1];
      }

      else
      {
        v60 = v47[1];
        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v61 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_2();
          outlined destroy of SearchResult(v46, v62);
LABEL_24:
          v53 = 0;
          return v53 & 1;
        }
      }

LABEL_26:
      OUTLINED_FUNCTION_5_2();
      outlined destroy of SearchResult(v46, v68);
      v53 = 1;
      return v53 & 1;
  }
}

uint64_t outlined init with copy of SearchResult(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_17(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

{
  v4 = type metadata accessor for SearchResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_17(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t ExtractionRuleType.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v40 = OUTLINED_FUNCTION_14(v2);
  v41 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v9 = type metadata accessor for FlightReservation();
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v17 = v16 - v15;
  v18 = type metadata accessor for URL();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_36();
  v26 = v25 - v24;
  v27 = type metadata accessor for ExtractionRuleType(0);
  v28 = OUTLINED_FUNCTION_17(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_36();
  v33 = (v32 - v31);
  OUTLINED_FUNCTION_1_2();
  outlined init with copy of SearchResult(v1, v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v21 + 32))(v26, v33, v18);
      MEMORY[0x25F8A0680](1);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      OUTLINED_FUNCTION_46_1();
      dispatch thunk of Hashable.hash(into:)();
      result = (*(v21 + 8))(v26, v18);
      break;
    case 2u:
      (*(v12 + 32))(v17, v33, v9);
      MEMORY[0x25F8A0680](2);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, MEMORY[0x277D37290]);
      OUTLINED_FUNCTION_46_1();
      dispatch thunk of Hashable.hash(into:)();
      result = (*(v12 + 8))(v17, v9);
      break;
    case 3u:
      v38 = *v33;
      v39 = v33[1];
      v36 = 3;
      goto LABEL_6;
    case 4u:
      (*(v41 + 32))(v8, v33, v40);
      MEMORY[0x25F8A0680](4);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      OUTLINED_FUNCTION_46_1();
      dispatch thunk of Hashable.hash(into:)();
      result = (*(v41 + 8))(v8, v40);
      break;
    case 5u:
      result = MEMORY[0x25F8A0680](5);
      break;
    default:
      v34 = *v33;
      v35 = v33[1];
      v36 = 0;
LABEL_6:
      MEMORY[0x25F8A0680](v36);
      String.hash(into:)();

      break;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int ExtractionRuleType.hashValue.getter()
{
  Hasher.init(_seed:)();
  ExtractionRuleType.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExtractionRuleType()
{
  Hasher.init(_seed:)();
  ExtractionRuleType.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ExtractedInfo.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExtractedInfo(0) + 20);
  OUTLINED_FUNCTION_1_2();
  return outlined init with copy of SearchResult(v1 + v4, a1);
}

uint64_t RegexExtractionRule.extractFromSource(query:answer:source:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[16] = v5;
  v1[17] = v6;
  v1[14] = v7;
  v1[15] = v8;
  v9 = *(v4 - 8);
  v1[22] = v9;
  v10 = *(v9 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v11 = type metadata accessor for Locale.Language();
  v1[25] = v11;
  v12 = *(v11 - 8);
  OUTLINED_FUNCTION_28_0();
  v1[26] = v13;
  v15 = *(v14 + 64);
  v1[27] = OUTLINED_FUNCTION_199();
  v16 = type metadata accessor for Locale();
  v1[28] = v16;
  v17 = *(v16 - 8);
  OUTLINED_FUNCTION_28_0();
  v1[29] = v18;
  v20 = *(v19 + 64);
  v1[30] = OUTLINED_FUNCTION_199();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR) - 8) + 64);
  v1[31] = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

{
  if (!*(v0 + 144))
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);
  v8 = *(v0 + 136);
  v9 = *(v0 + 144);

  Locale.init(identifier:)();
  Locale.language.getter();
  (*(v4 + 8))(v1, v3);
  Locale.Language.languageCode.getter();
  (*(v6 + 8))(v5, v7);
  v10 = type metadata accessor for Locale.LanguageCode();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v10);
  v12 = *(v0 + 248);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 248), &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_4:
    v13 = *(v0 + 112);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
LABEL_5:
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 216);
    v22 = *(v0 + 184);
    v21 = *(v0 + 192);

    OUTLINED_FUNCTION_106();

    return v23();
  }

  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 152);
  v28 = MEMORY[0x25F899710]();
  v30 = v29;
  (*(*(v10 - 8) + 8))(v12, v10);
  (*(v26 + 16))(v28, v30, v27, v26);

  if (!*(v0 + 80))
  {
    outlined destroy of IntentApplication?(v0 + 56, &_s17_StringProcessing14RegexComponent_pSgMd, &_s17_StringProcessing14RegexComponent_pSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 192);
    v46 = *(v0 + 168);
    v47 = *(v0 + 176);
    v48 = *(v0 + 152);
    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logging.answerSynthesis);
    v50 = *(v47 + 16);
    v50(v45, v46, v48);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 192);
    if (v53)
    {
      v69 = v52;
      v55 = *(v0 + 176);
      v56 = *(v0 + 184);
      v57 = *(v0 + 152);
      v67 = *(v0 + 136);
      v58 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v58 = 136315394;
      v50(v56, v54, v57);
      String.init<A>(describing:)();
      (*(v55 + 8))(v54, v57);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v58 + 4) = v59;
      *(v58 + 12) = 2080;
      *(v58 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v51, v69, "%s - failed to find a valid match for locale: %s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v70, -1, -1);
      MEMORY[0x25F8A1050](v58, -1, -1);
    }

    else
    {
      v65 = *(v0 + 176);
      v66 = *(v0 + 152);

      (*(v65 + 8))(v54, v66);
    }

    goto LABEL_4;
  }

  v31 = *(v0 + 120);
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v0 + 16);
  v32 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v33 = *(v31 + 24);
  *(v0 + 96) = *(v31 + 16);
  *(v0 + 104) = v33;
  lazy protocol witness table accessor for type String and conformance String();
  if ((BidirectionalCollection<>.contains<A>(_:)() & 1) == 0)
  {
    v60 = *(v0 + 112);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    goto LABEL_5;
  }

  v34 = *(*(v0 + 160) + 24);
  OUTLINED_FUNCTION_28_0();
  v68 = (v35 + *v35);
  v37 = *(v36 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 256) = v38;
  *v38 = v39;
  v38[1] = RegexExtractionRule.extractFromSource(query:answer:source:assistantLocale:);
  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  v42 = *(v0 + 152);
  v43 = *(v0 + 128);
  v44 = *(v0 + 112);

  return v68(v44, v43, v42, v40);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_78();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];

  OUTLINED_FUNCTION_106();

  return v6();
}

{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_127();
  v7 = v0[33];

  return v6();
}

uint64_t ExtractedInfo.newResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ExtractionRuleType(0);
  v4 = OUTLINED_FUNCTION_17(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  v10 = *(type metadata accessor for ExtractedInfo(0) + 20);
  OUTLINED_FUNCTION_1_2();
  outlined init with copy of SearchResult(v1 + v11, v9);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v1, a1);
    type metadata accessor for SearchResult(0);
    OUTLINED_FUNCTION_44_0();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    type metadata accessor for SearchResult(0);
    v17 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_5_2();
    return outlined destroy of SearchResult(v9, v21);
  }
}

uint64_t type metadata completion function for ExtractionRuleType()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FlightReservation();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for ExtractedInfo()
{
  result = type metadata accessor for SearchResult(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ExtractionRuleType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ExtractionRule.extractInfo(query:result:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(OUTLINED_FUNCTION_36_1(a1, a2, a3, a4, a5, a6, a7) + 16);
  OUTLINED_FUNCTION_28_0();
  v17 = v8 + *v8;
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_31_1(v12);

  return v15(v14);
}

uint64_t dispatch thunk of TypedExtractionRule.extractInfo(query:typedResult:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(OUTLINED_FUNCTION_36_1(a1, a2, a3, a4, a5, a6, a7) + 32);
  OUTLINED_FUNCTION_28_0();
  v17 = v8 + *v8;
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_31_1(v12);

  return v15(v14);
}

uint64_t dispatch thunk of AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a8 + 16);
  OUTLINED_FUNCTION_28_0();
  v24 = (v17 + *v17);
  v19 = *(v18 + 4);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_23(v20);
  *v21 = v22;
  v21[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v24(a1, a2, a3, a4, a5, a6, a7, a8);
}

void dispatch thunk of RegexExtractionRule.extractMatched(typedResult:)()
{
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_28_0();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_23(v5);
  *v6 = v7;
  v6[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_44_1();

  __asm { BRAA            X4, X16 }
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  v1 = v0[14];
  v2 = v0[12];
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v0[13]);

  return _s10OmniSearch0B6ResultVWObTm_0(v2, v1);
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 112);
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  result = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(v2 + 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_0()
{
  v2 = type metadata accessor for ExtractionRuleType(0);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  v3 = *(v1 + 112);
  v4 = *(v1 + 96);
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1)
{

  return outlined destroy of SearchResult(a1, type metadata accessor for SearchResult);
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1)
{
  *(a1 + 8) = AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:);
  v2 = v1[12];
  v4 = v1[9];
  result = v1[10];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[3];
  v10 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t a1)
{
  *(a1 + 8) = specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:);
  v2 = *(v1 + 72);
  v4 = *(v1 + 48);
  result = *(v1 + 56);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 24);
  v8 = *(v1 + 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

_OWORD *OUTLINED_FUNCTION_38_1()
{
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];

  return SearchResultItem.associatedValue.getter(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_40_1()
{
  v2 = *v0;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t FlightSnippet.flight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20]();
  v6 = OUTLINED_FUNCTION_69_1();
  v7 = *(type metadata accessor for FlightSnippet(v6) + 40);
  outlined init with copy of EagerResolutionService?();
  v8 = type metadata accessor for FlightSnippet.Flight(0);
  v9 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v9, v10, v8);
  if (v11)
  {
    UnknownStorage.init()();
    v12 = *(v8 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      OUTLINED_FUNCTION_68_1();
    }

    *(a1 + v12) = static FlightSnippet.Flight._StorageClass.defaultInstance;
    v13 = OUTLINED_FUNCTION_93_0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v8);

    if (EnumTagSinglePayload != 1)
    {
      return outlined destroy of IntentApplication?(v1, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_1();
    return outlined init with take of FlightSnippet.Flight();
  }

  return result;
}

uint64_t FlightSnippet.flight.setter()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v2 = type metadata accessor for FlightSnippet(v1);
  outlined destroy of IntentApplication?(v0 + *(v2 + 40), &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  OUTLINED_FUNCTION_3_1();
  outlined init with take of FlightSnippet.Flight();
  type metadata accessor for FlightSnippet.Flight(0);
  OUTLINED_FUNCTION_44_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void FlightSnippet.flight.modify()
{
  OUTLINED_FUNCTION_202();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for FlightSnippet.Flight(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_17(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for FlightSnippet(0) + 40);
  outlined init with copy of EagerResolutionService?();
  OUTLINED_FUNCTION_25_1();
  if (v11)
  {
    UnknownStorage.init()();
    v12 = *(v7 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      OUTLINED_FUNCTION_68_1();
    }

    *&v10[v12] = static FlightSnippet.Flight._StorageClass.defaultInstance;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of IntentApplication?(v6, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_130_0();
  }

  OUTLINED_FUNCTION_203();
}

{
  OUTLINED_FUNCTION_202();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    v8 = (*v0)[4];
    outlined init with copy of FlightSnippet.Flight();
    outlined destroy of IntentApplication?(v6 + v1, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
    outlined init with take of FlightSnippet.Flight();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
    outlined destroy of FlightSnippet.Flight();
  }

  else
  {
    outlined destroy of IntentApplication?(v6 + v1, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
    OUTLINED_FUNCTION_3_1();
    outlined init with take of FlightSnippet.Flight();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v5);
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_203();

  free(v15);
}

uint64_t FlightSnippet.hasFlight.getter()
{
  v1 = OUTLINED_FUNCTION_32_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_69_1();
  v8 = *(type metadata accessor for FlightSnippet(v7) + 40);
  outlined init with copy of EagerResolutionService?();
  type metadata accessor for FlightSnippet.Flight(0);
  v9 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v9, v10, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  outlined destroy of IntentApplication?(v0, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  return v13;
}

Swift::Void __swiftcall FlightSnippet.clearFlight()()
{
  v1 = *(type metadata accessor for FlightSnippet(0) + 40);
  outlined destroy of IntentApplication?(v0 + v1, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  v2 = type metadata accessor for FlightSnippet.Flight(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t FlightSnippet.queryIntendedFlightInfo.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_94();
}

uint64_t FlightSnippet.queryIntendedFlightInfo.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FlightSnippet.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = *(type metadata accessor for FlightSnippet(v0) + 36);
  v2 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_17(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_81_1();

  return v6(v5);
}

uint64_t FlightSnippet.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for FlightSnippet(v2) + 36);
  v4 = type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_17(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*FlightSnippet.unknownFields.modify())(void)
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = *(type metadata accessor for FlightSnippet(v0) + 36);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

void protocol witness for Enum.init(rawValue:) in conformance FlightSnippet.Status(uint64_t a1@<X8>)
{
  FlightSnippet.Status.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance FlightSnippet.Status(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  FlightSnippet.Status.init(rawValue:)();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FlightSnippet.Status@<X0>(uint64_t *a1@<X8>)
{
  result = FlightSnippet.Status.rawValue.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FlightSnippet.Status()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return specialized RawRepresentable<>.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlightSnippet.Status(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type FlightSnippet.Status and conformance FlightSnippet.Status();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlightSnippet.Status()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

uint64_t FlightSnippet.Flight.id.getter()
{
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Flight.id : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.id.setter();
}

void FlightSnippet.Flight.id.setter()
{
  OUTLINED_FUNCTION_102_0();
  v4 = OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_61_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_54_1(v8);
  }

  OUTLINED_FUNCTION_30_1();
  v9 = *(v6 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.id.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.id.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.id.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2();
    v12 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

void key path setter for FlightSnippet.Flight.contentHash : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.contentHash.setter();
}

void FlightSnippet.Flight.contentHash.setter()
{
  OUTLINED_FUNCTION_102_0();
  v4 = OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_61_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_54_1(v8);
  }

  OUTLINED_FUNCTION_30_1();
  v9 = *(v6 + 40);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.contentHash.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.contentHash.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.contentHash.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2();
    v12 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t FlightSnippet.Flight.carrierIata.getter()
{
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Flight.carrierIata : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.carrierIata.setter();
}

void FlightSnippet.Flight.carrierIata.setter()
{
  OUTLINED_FUNCTION_102_0();
  v4 = OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_61_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_54_1(v8);
  }

  OUTLINED_FUNCTION_30_1();
  v9 = *(v6 + 56);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.carrierIata.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.carrierIata.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.carrierIata.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2();
    v12 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v3;
  }

  free(v1);
}

void key path setter for FlightSnippet.Flight.carrierIcao : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.carrierIcao.setter();
}

void FlightSnippet.Flight.carrierIcao.setter()
{
  OUTLINED_FUNCTION_102_0();
  v4 = OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_61_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_54_1(v8);
  }

  OUTLINED_FUNCTION_30_1();
  v9 = *(v6 + 72);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.carrierIcao.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.carrierIcao.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.carrierIcao.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2();
    v12 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

void key path setter for FlightSnippet.Flight.carrierFs : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.carrierFs.setter();
}

void FlightSnippet.Flight.carrierFs.setter()
{
  OUTLINED_FUNCTION_102_0();
  v4 = OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_61_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_54_1(v8);
  }

  OUTLINED_FUNCTION_30_1();
  v9 = *(v6 + 88);
  *(v6 + 80) = v2;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.carrierFs.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.carrierFs.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.carrierFs.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2();
    v12 = *(v9 + 88);
    *(v9 + 80) = v4;
    *(v9 + 88) = v3;
  }

  free(v1);
}