uint64_t sub_2530E69D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for RelationshipObserver.Change();
  result = sub_253148E84();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2530E6AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = sub_253148944();
  if (v7 <= 0x3F)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = type metadata accessor for RelationshipObserver.Change();
    result = a4(319, v10);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  v8 = sub_253148944();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a3 + 16);
    v13 = *(a3 + 24);
    v14 = type metadata accessor for RelationshipObserver.Change();
    v15 = a4(0, v14);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 36);

    return v16(v17, a2, v15);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  v10 = sub_253148944();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = *(a4 + 16);
    v15 = *(a4 + 24);
    v16 = type metadata accessor for RelationshipObserver.Change();
    v17 = a5(0, v16);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + *(a4 + 36);

    return v18(v19, a2, a2, v17);
  }
}

uint64_t sub_2530E6DAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  updated = type metadata accessor for RelationshipObserver.State.PendingRelationshipUpdateState();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return updated;
}

uint64_t sub_2530E6E08(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 - 1 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  v11 = v9 + 2;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    if (v5 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v17 = v18 + 1;
    }

    else
    {
      v17 = (*(v4 + 48))(a1, v5);
    }

    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_23:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return (v10 | v16) + v7;
}

unsigned int *sub_2530E6F6C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a3 - v7 + 2;
  if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = a2 - v7;
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = result;
      bzero(result, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v17;
      *v17 = v15;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(result + v10) = v16;
      }

      else
      {
        *(result + v10) = v16;
      }
    }

    else if (v14)
    {
      *(result + v10) = v16;
    }

    return result;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_35;
    }

    *(result + v10) = 0;
  }

  else if (v14)
  {
    *(result + v10) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return result;
  }

LABEL_35:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = ((result + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (((a2 + 1) & 0x80000000) != 0)
    {
      v20 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v20 = a2;
    }

    *v19 = v20;
  }

  else
  {
    v18 = *(v5 + 56);

    return v18();
  }

  return result;
}

void sub_2530E714C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_2530E74C4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2530E71D4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_2530E7310(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_2530E74C4()
{
  if (!qword_27F5812D8)
  {
    sub_253148944();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F5812E0, qword_25314D860);
    sub_2530E836C(&qword_27F580560, MEMORY[0x277CC95F0]);
    v0 = sub_253148AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5812D8);
    }
  }
}

uint64_t sub_2530E757C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t *sub_2530E7618(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
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

    v8 = sub_2530E795C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_2530E7710(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v6 = *(*v3 + 120);
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  type metadata accessor for RelationshipObserver.ObserverState();
  *(v3 + v6) = sub_253148AA4();
  v9 = *(*v3 + 128);
  updated = type metadata accessor for RelationshipObserver.State.PendingRelationshipUpdateState();
  (*(*(updated - 8) + 56))(v3 + v9, 1, 1, updated);
  (*(*(v7 - 8) + 16))(v3 + *(*v3 + 96), a1, v7);
  *(v3 + *(*v3 + 104)) = sub_2530E9588(v7);
  sub_2530BDB14(a2, v3 + *(*v3 + 112));
  return v3;
}

uint64_t sub_2530E788C(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = type metadata accessor for RelationshipObserver.State();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_2530E7710(a1, a2);
}

uint64_t sub_2530E78E0()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_253149454();
  return sub_253149444();
}

uint64_t sub_2530E795C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a2;
  v43 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581368, &qword_25314D8F8);
  v6 = *(*(v59 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v59);
  v55 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v41 - v9;
  v10 = sub_253148944();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v54 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v15 = 0;
  v51 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v45 = (v19 + 63) >> 6;
  v48 = v13 + 16;
  v49 = v13;
  v47 = (v13 + 8);
  v50 = result;
  while (v21)
  {
    v27 = __clz(__rbit64(v21));
    v52 = (v21 - 1) & v21;
LABEL_13:
    v30 = v27 | (v15 << 6);
    v31 = v51;
    v32 = *(v49 + 16);
    v33 = v54;
    v32(v54, v51[6] + *(v49 + 72) * v30, v10);
    v34 = v31[7];
    v46 = v30;
    sub_2530C25FC(v34 + 40 * v30, v58);
    v35 = v53;
    v32(v53, v33, v10);
    sub_2530C25FC(v58, v35 + *(v59 + 48));
    v36 = v35;
    v37 = v55;
    sub_2530E7F5C(v36, v55);
    if (*(a4 + 16) && (v38 = sub_25311D834(v37), (v39 & 1) != 0))
    {
      sub_2530C25FC(*(a4 + 56) + 40 * v38, v56);
      sub_2530CD33C(v53, &qword_27F581368, &qword_25314D8F8);
      v22 = 0;
    }

    else
    {
      sub_2530CD33C(v53, &qword_27F581368, &qword_25314D8F8);
      memset(v56, 0, sizeof(v56));
      v22 = 1;
      v57 = 0;
    }

    v23 = *(v59 + 48);
    sub_2530CD33C(v56, &qword_27F581370, &qword_25314D908);
    v24 = v55;
    __swift_destroy_boxed_opaque_existential_0((v55 + v23));
    v25 = *v47;
    v26 = v24;
    v10 = v50;
    (*v47)(v26, v50);
    __swift_destroy_boxed_opaque_existential_0(v58);
    result = v25(v54, v10);
    v21 = v52;
    if (v22)
    {
      *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v44++, 1))
      {
        __break(1u);
        return sub_2531307B0(v43, v42, v44, v51);
      }
    }
  }

  v28 = v15;
  while (1)
  {
    v15 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v15 >= v45)
    {
      return sub_2531307B0(v43, v42, v44, v51);
    }

    v29 = v17[v15];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v52 = (v29 - 1) & v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2530E7D4C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_2530E7618(v13, v7, a1, a2);
      MEMORY[0x259BFDC60](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_2530E795C((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2530E7F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581368, &qword_25314D8F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530E7FCC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8) - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530BF218;

  return sub_253114D00(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

uint64_t sub_2530E80D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530E813C(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(type metadata accessor for HomesStore.AnyChanges(0) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2530BF218;

  return sub_2530E2620(a1, v8, v9, v1 + v7, v10, v5, v4);
}

uint64_t sub_2530E8270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2530E82D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530E8338(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  return sub_2530E33A8(v2);
}

uint64_t sub_2530E836C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2530E83B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t sub_2530E844C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_2530E5C38(a1, a2);
}

uint64_t sub_2530E848C(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD000000000000020, 0x800000025314AF90);
    swift_getErrorValue();
    sub_253149714();
    result = sub_253149594();
    __break(1u);
  }

  return result;
}

void sub_2530E853C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t HomesStore.CoreData.PersistentContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_2530E8640@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = v2;
  return v2;
}

id sub_2530E8650@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = v2;
  return v2;
}

id sub_2530E8660@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = v2;
  return v2;
}

uint64_t _s11HomeKitCore10HomesStoreC0C4DataO19PersistentContainerC13configurationAgE13ConfigurationV_tcfC_0(char *a1)
{
  v45 = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  v2 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_253148884();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  (*(v6 + 16))(v9, &a1[*(v10 + 20)], v5);
  v11 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v12 = sub_253148864();
  v13 = [v11 initWithContentsOfURL_];

  v14 = *(v6 + 8);
  v43 = v5;
  v44 = v14;
  v14(v9, v5);
  if (!v13)
  {
LABEL_17:
    aBlock = 0;
    v49 = 0xE000000000000000;
    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD000000000000035, 0x800000025314AEE0);
    sub_2530E8DEC(&qword_27F581388, MEMORY[0x277CC9260]);
    v41 = sub_2531496F4();
    MEMORY[0x259BFC7D0](v41);

    goto LABEL_18;
  }

  v15 = objc_allocWithZone(MEMORY[0x277CBE4D8]);
  v47 = v13;
  v46 = [v15 initWithManagedObjectModel_];
  v16 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
  sub_2530CF970(0, &qword_27F581390, 0x277CCABB0);
  v17 = sub_253149174();
  [v16 setOption:v17 forKey:*MEMORY[0x277CBE210]];

  v18 = sub_253149174();
  [v16 setOption:v18 forKey:*MEMORY[0x277CBE270]];

  v19 = *a1;
  v20 = *(a1 + 1);
  v21 = sub_253148B54();
  [v16 setConfiguration_];

  [v16 setShouldInferMappingModelAutomatically_];
  [v16 setShouldMigrateStoreAutomatically_];
  [v16 setShouldAddStoreAsynchronously_];
  sub_2530E8E34(&a1[*(v10 + 24)], v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v43;
      (*(v6 + 32))(v9, v4, v43);
      v24 = sub_253148864();
      [v16 setURL_];

      [v16 setType_];
      v44(v9, v23);
    }

    else
    {
      [v16 setType_];
    }
  }

  else
  {
    v25 = *v4;
    v26 = v4[1];
    [v16 setType_];
    v27 = sub_253148B54();

    [v16 setOption:v27 forKey:*MEMORY[0x277CBE340]];

    v28 = sub_253149174();
    [v16 setOption:v28 forKey:*MEMORY[0x277CBE328]];
  }

  v29 = v46;
  v30 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  [v30 setPersistentStoreCoordinator_];
  v31 = sub_253148B54();
  [v30 setName_];

  v52 = sub_2530E848C;
  v53 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_2530E853C;
  v51 = &block_descriptor_0;
  v32 = _Block_copy(&aBlock);
  [v29 addPersistentStoreWithDescription:v16 completionHandler:v32];
  _Block_release(v32);
  v33 = [v29 persistentStores];
  sub_2530CF970(0, &qword_27F581398, 0x277CBE4D0);
  v34 = sub_253148C94();

  if (v34 >> 62)
  {
    v40 = sub_2531492E4();
    v35 = v47;
    if (v40)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v35 = v47;
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((v34 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x259BFD000](0, v34);
        goto LABEL_12;
      }

      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v36 = *(v34 + 32);
LABEL_12:
        v37 = v36;

        type metadata accessor for HomesStore.CoreData.PersistentContainer();
        v38 = swift_allocObject();
        v38[2] = v29;
        v38[3] = v37;
        v38[4] = v30;
        sub_2530D20A8(a1);
        return v38;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

LABEL_18:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_2530E8DEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2530E8E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2530E8EB0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25314D9C0;
  *(v2 + 32) = [a1 entity];
  v68 = v2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314D9C0;
  v60 = a1;
  *(inited + 32) = [a1 entity];
  v4 = sub_2530DA568(inited);
  swift_setDeallocating();
  v5 = *(inited + 16);
  swift_arrayDestroy();
  v67 = v4;
  v6 = sub_2530E9790();
  if (!v6)
  {
LABEL_53:

    return 0;
  }

  v7 = v6;
LABEL_4:
  v8 = [v7 name];
  if (!v8)
  {
    sub_2530EB040();
    goto LABEL_13;
  }

  v9 = v8;
  v10 = sub_253148B64();
  v12 = v11;

  v13 = sub_2530EB040();
  if (!v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (v10 == v13 && v12 == v14)
  {
    goto LABEL_55;
  }

  v16 = sub_253149734();

  if (v16)
  {
    goto LABEL_56;
  }

LABEL_14:
  v61 = v7;
  v17 = [v7 relationshipsByName];
  sub_2530CF970(0, &qword_27F580918, 0x277CBE500);
  v18 = sub_253148AD4();

  v19 = 0;
  v66 = MEMORY[0x277D84F90];
  v7 = (v18 + 64);
  v20 = 1 << *(v18 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v18 + 64);
  v23 = ((v20 + 63) >> 6);
  if (v22)
  {
    while (2)
    {
      v25 = v19;
LABEL_24:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = *(*(v18 + 56) + ((v25 << 9) | (8 * v26)));
      if ([v27 isToMany])
      {

        v19 = v25;
        if (v22)
        {
          continue;
        }
      }

      else
      {
        sub_253149494();
        v24 = *(v66 + 16);
        sub_2531494D4();
        sub_2531494E4();
        sub_2531494A4();
        v19 = v25;
        if (v22)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      v28 = v66;
      if ((v66 & 0x8000000000000000) != 0 || (v66 & 0x4000000000000000) != 0)
      {
        v29 = sub_2531492E4();
        if (!v29)
        {
          goto LABEL_3;
        }

LABEL_30:
        v30 = 0;
        v64 = v28;
        v65 = v28 & 0xC000000000000001;
        v62 = v28 + 32;
        v63 = v29;
        while (2)
        {
          if (v65)
          {
            v33 = MEMORY[0x259BFD000](v30, v28);
          }

          else
          {
            if (v30 >= *(v28 + 16))
            {
              goto LABEL_61;
            }

            v33 = *(v62 + 8 * v30);
          }

          v34 = v33;
          if (__OFADD__(v30++, 1))
          {
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v36 = [v33 destinationEntity];
          if (v36)
          {
            v37 = v36;
            v38 = v67;
            if ((v67 & 0xC000000000000001) != 0)
            {
              v39 = v36;
              v40 = sub_253149324();

              if (v40)
              {
                goto LABEL_34;
              }

LABEL_31:
              v31 = v37;
              sub_2530D60DC(&v66, v31);

              v32 = v31;
              MEMORY[0x259BFC870]();
              if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_253148CD4();
              }

              sub_253148D14();
            }

            else
            {
              if (!*(v67 + 16))
              {
                goto LABEL_31;
              }

              sub_2530CF970(0, &qword_27F580910, 0x277CBE408);
              v41 = *(v38 + 40);
              v42 = sub_253149184();
              v23 = (v38 + 56);
              v43 = -1 << *(v38 + 32);
              v44 = v42 & ~v43;
              if (((*(v38 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_31;
              }

              v45 = ~v43;
              while (1)
              {
                v46 = *(*(v38 + 48) + 8 * v44);
                v47 = sub_253149194();

                if (v47)
                {
                  break;
                }

                v44 = (v44 + 1) & v45;
                if (((*&v23[(v44 >> 3) & 0xFFFFFFFFFFFFFF8] >> v44) & 1) == 0)
                {
                  goto LABEL_31;
                }
              }
            }

LABEL_34:

            v29 = v63;
            v28 = v64;
          }

          if (v30 == v29)
          {
            goto LABEL_3;
          }

          continue;
        }
      }

      v29 = *(v66 + 16);
      if (v29)
      {
        goto LABEL_30;
      }

LABEL_3:

      v7 = sub_2530E9790();
      if (!v7)
      {
        goto LABEL_53;
      }

      goto LABEL_4;
    }

    v22 = *&v7[8 * v25];
    ++v19;
    if (v22)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_55:

LABEL_56:
  v23 = v7;

  if (qword_27F580230 != -1)
  {
LABEL_62:
    swift_once();
  }

  v49 = sub_253148A94();
  __swift_project_value_buffer(v49, qword_27F5813A0);
  v50 = v60;
  v51 = sub_253148A74();
  v52 = sub_2531490A4();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v66 = v55;
    *v53 = 138412546;
    *(v53 + 4) = v50;
    *v54 = v50;
    *(v53 + 12) = 2080;
    v56 = v50;
    v57 = sub_2531498D4();
    v59 = sub_253146498(v57, v58, &v66);

    *(v53 + 14) = v59;
    _os_log_impl(&dword_2530B8000, v51, v52, "Relationship %@ is contained by %s", v53, 0x16u);
    sub_2530E9CB0(v54);
    MEMORY[0x259BFDC60](v54, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x259BFDC60](v55, -1, -1);
    MEMORY[0x259BFDC60](v53, -1, -1);
  }

  return 1;
}

uint64_t sub_2530E9588(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5812E0, qword_25314D860);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813B8, "։");
  v5 = sub_2530C0100(v1, v3, sub_2530E970C, 0, a1, v3, v4);
  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C0, &qword_25314D9F8);
    v6 = sub_2531495D4();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;
  sub_2530E9914(v5, 1, &v8);

  return v8;
}

uint64_t sub_2530E968C()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5813A0);
  __swift_project_value_buffer(v0, qword_27F5813A0);
  return sub_253148A84();
}

uint64_t sub_2530E970C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813B8, "։") + 48);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = *(v5 + 32);
  sub_2531493D4();
  return sub_2530C25FC(a1, a2 + v4);
}

unint64_t sub_2530E9790()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_2530E98B0();
    if (result)
    {
      return result;
    }

    v3 = *v0;
    if (*v0 >> 62)
    {
      if (v3 < 0)
      {
        v7 = *v0;
      }

      v8 = sub_2531492E4();
      v5 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (!v5)
      {
        return sub_2530E9820(result);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_2530E9820(result);
      }
    }

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  result = sub_2531492E4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2530E9820(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2530CB5D4(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2530E98B0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_2530CB5D4(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2530E9914(uint64_t a1, char a2, uint64_t *a3)
{
  v44 = a3;
  v5 = sub_253148944();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813B8, "։");
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9);
  v41 = &v36 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(result + 48);
    v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v40 = v15;
    v42 = (v38 + 32);
    v37 = (v38 + 8);
    while (1)
    {
      v18 = v41;
      sub_2530E9C40(v16, v41);
      v19 = *v42;
      v20 = v5;
      (*v42)(v8, v18, v5);
      sub_2530E8468((v18 + v40), v43);
      v21 = *v44;
      v23 = sub_25311D834(v8);
      v24 = *(v21 + 16);
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (*(v21 + 24) >= v26)
      {
        if ((a2 & 1) == 0)
        {
          sub_25312B884();
        }
      }

      else
      {
        v28 = v44;
        sub_25312CBA4(v26, a2 & 1);
        v29 = *v28;
        v30 = sub_25311D834(v8);
        if ((v27 & 1) != (v31 & 1))
        {
          goto LABEL_17;
        }

        v23 = v30;
      }

      v32 = *v44;
      if (v27)
      {
        v5 = v20;
        (*v37)(v8, v20);
        v17 = (v32[7] + 40 * v23);
        __swift_destroy_boxed_opaque_existential_0(v17);
        result = sub_2530E8468(v43, v17);
      }

      else
      {
        v32[(v23 >> 6) + 8] |= 1 << v23;
        v5 = v20;
        v19((v32[6] + *(v38 + 72) * v23), v8, v20);
        result = sub_2530E8468(v43, v32[7] + 40 * v23);
        v33 = v32[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_16;
        }

        v32[2] = v35;
      }

      v16 += v39;
      a2 = 1;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_253149784();
    __break(1u);
  }

  return result;
}

uint64_t sub_2530E9C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813B8, "։");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530E9CB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E10, &qword_25314F640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HomesStore.Room.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomesStore.Room.name.getter()
{
  v1 = (v0 + *(type metadata accessor for HomesStore.Room() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for HomesStore.Room()
{
  result = qword_27F581438;
  if (!qword_27F581438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static HomesStore.Room.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HomesStore.Room() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_253149734();
}

uint64_t sub_2530E9E98()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_2530E9EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_2530E9F94(uint64_t a1)
{
  v2 = sub_2530EA1C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530E9FD0(uint64_t a1)
{
  v2 = sub_2530EA1C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.Room.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813E8, &qword_25314DA08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530EA1C8();
  sub_253149894();
  v15[15] = 0;
  sub_253148944();
  sub_2530EAE2C(&qword_27F580630, MEMORY[0x277CC95F0]);
  sub_2531496D4();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for HomesStore.Room() + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_2531496B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2530EA1C8()
{
  result = qword_27F5813F0;
  if (!qword_27F5813F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5813F0);
  }

  return result;
}

uint64_t HomesStore.Room.hash(into:)()
{
  sub_253148944();
  sub_2530EAE2C(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = (v0 + *(type metadata accessor for HomesStore.Room() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_253148BB4();
}

uint64_t HomesStore.Room.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_2530EAE2C(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = (v0 + *(type metadata accessor for HomesStore.Room() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_253148BB4();
  return sub_253149844();
}

uint64_t HomesStore.Room.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_253148944();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813F8, &qword_25314DA10);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for HomesStore.Room();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530EA1C8();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_2530EAE2C(&qword_27F5805E8, MEMORY[0x277CC95F0]);
  v18 = v30;
  sub_253149664();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_253149644();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_2530EA8B4(v23, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2530EA918(v23);
}

uint64_t sub_2530EA6CC(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_2530EAE2C(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_2530EA774(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_2530EAE2C(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_253148BB4();
}

uint64_t sub_2530EA810(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_2530EAE2C(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_2530EA8B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Room();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530EA918(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.Room();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2530EA974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_253149734();
}

uint64_t static PartialModelRelationshipDescriptor<>.room.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581400, &qword_25314DA18);

  return MEMORY[0x2821FEAF0](v0, &unk_27F580350);
}

{
  return sub_2530EABF8(&qword_27F5802B8, &qword_27F581AA0);
}

uint64_t sub_2530EAA3C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581470, &unk_25314DD20);
  swift_allocObject();

  v1 = sub_253141828(v0);

  qword_27F5813D0 = v1;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.accessories.getter()
{
  return sub_2530EABF8(&qword_27F580238, &qword_27F5813D0);
}

{
  return sub_2530EABF8(&qword_27F5802F0, &qword_27F5820E8);
}

uint64_t sub_2530EAAD0()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581468, qword_25314DCE0);
  swift_allocObject();

  v1 = sub_253141848(v0);

  qword_27F5813D8 = v1;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.zones.getter()
{
  return sub_2530EABF8(&qword_27F580240, &qword_27F5813D8);
}

{
  return sub_2530EABF8(&qword_27F580308, &qword_27F582100);
}

uint64_t sub_2530EAB64()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581460, &unk_25314DCA8);
  swift_allocObject();

  v1 = sub_253141884(v0);

  qword_27F5813E0 = v1;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.home.getter()
{
  return sub_2530EABF8(&qword_27F580248, &qword_27F5813E0);
}

{
  return sub_2530EABF8(&qword_27F580280, &qword_27F581758);
}

{
  return sub_2530EABF8(&qword_27F5802B0, &qword_27F581A98);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582120, &qword_253150BB8);

  return MEMORY[0x2821FEAF0](v0, &unk_27F5803F0);
}

uint64_t sub_2530EABF8(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_2530EAC58(void *a1)
{
  a1[1] = sub_2530EAE2C(&qword_27F581408, type metadata accessor for HomesStore.Room);
  a1[2] = sub_2530EAE2C(&qword_27F581410, type metadata accessor for HomesStore.Room);
  a1[3] = sub_2530EAE2C(&qword_27F581418, type metadata accessor for HomesStore.Room);
  a1[4] = sub_2530EAE2C(&qword_27F581420, type metadata accessor for HomesStore.Room);
  result = sub_2530EAE2C(&qword_27F581428, type metadata accessor for HomesStore.Room);
  a1[5] = result;
  return result;
}

uint64_t sub_2530EAE2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2530EAE9C()
{
  result = sub_253148944();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2530EAF24()
{
  result = qword_27F581448;
  if (!qword_27F581448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581448);
  }

  return result;
}

unint64_t sub_2530EAF7C()
{
  result = qword_27F581450;
  if (!qword_27F581450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581450);
  }

  return result;
}

unint64_t sub_2530EAFD4()
{
  result = qword_27F581458;
  if (!qword_27F581458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581458);
  }

  return result;
}

uint64_t sub_2530EB040()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

void sub_2530EB0CC()
{
  v0 = objc_opt_self();
  v1 = &unk_2864F1D80;
  v2 = [v0 interfaceWithProtocol_];

  v3 = &unk_2864F10F0;
  v4 = [v0 interfaceWithProtocol_];

  v5 = &unk_2864F1D00;
  v6 = [v0 interfaceWithProtocol_];

  [v6 setInterface:v2 forSelector:sel_registerObserver_modelTypes_completionHandler_ argumentIndex:0 ofReply:0];
  [v6 setInterface:v4 forSelector:sel_registerObserver_modelTypes_completionHandler_ argumentIndex:0 ofReply:1];

  qword_27F58D088 = v6;
}

uint64_t HomesStore.Accessory.AppleMediaDevice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for HomesStore.Accessory.AppleMediaDevice()
{
  result = qword_27F5814D0;
  if (!qword_27F5814D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomesStore.Accessory.AppleMediaDevice.idsDestination.getter()
{
  v1 = (v0 + *(type metadata accessor for HomesStore.Accessory.AppleMediaDevice() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2530EB318()
{
  v1 = 0x6E65727275437369;
  if (*v0 != 1)
  {
    v1 = 0x6974736544736469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2530EB380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2530EC468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2530EB3A8(uint64_t a1)
{
  v2 = sub_2530EBF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530EB3E4(uint64_t a1)
{
  v2 = sub_2530EBF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.Accessory.AppleMediaDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581480, &qword_25314DD60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530EBF1C();
  sub_253149894();
  v17[15] = 0;
  sub_253148944();
  sub_2530EC204(&qword_27F580630, MEMORY[0x277CC95F0]);
  sub_2531496D4();
  if (!v2)
  {
    v11 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
    v12 = *(v3 + *(v11 + 20));
    v17[14] = 1;
    sub_2531496C4();
    v13 = (v3 + *(v11 + 24));
    v14 = *v13;
    v15 = v13[1];
    v17[13] = 2;
    sub_2531496A4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HomesStore.Accessory.AppleMediaDevice.hash(into:)()
{
  sub_253148944();
  sub_2530EC204(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
  v2 = *(v0 + *(v1 + 20));
  sub_253149834();
  v3 = (v0 + *(v1 + 24));
  if (!v3[1])
  {
    return sub_253149834();
  }

  v4 = *v3;
  sub_253149834();

  return sub_253148BB4();
}

uint64_t HomesStore.Accessory.AppleMediaDevice.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_2530EC204(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
  v2 = *(v0 + *(v1 + 20));
  sub_253149834();
  v3 = (v0 + *(v1 + 24));
  if (v3[1])
  {
    v4 = *v3;
    sub_253149834();
    sub_253148BB4();
  }

  else
  {
    sub_253149834();
  }

  return sub_253149844();
}

uint64_t HomesStore.Accessory.AppleMediaDevice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_253148944();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581490, &qword_25314DD68);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v26 - v8;
  v10 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530EBF1C();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v13;
  v16 = v28;
  v15 = v29;
  v34 = 0;
  sub_2530EC204(&qword_27F5805E8, MEMORY[0x277CC95F0]);
  v17 = v30;
  sub_253149664();
  (*(v15 + 32))(v26, v31, v4);
  v33 = 1;
  v26[*(v10 + 20)] = sub_253149654() & 1;
  v32 = 2;
  v18 = sub_253149634();
  v31 = v19;
  v20 = v18;
  (*(v16 + 8))(v9, v17);
  v22 = v26;
  v21 = v27;
  v23 = &v26[*(v10 + 24)];
  v24 = v31;
  *v23 = v20;
  v23[1] = v24;
  sub_2530EBF70(v22, v21);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2530EBFD4(v22);
}

uint64_t sub_2530EBB9C(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_2530EC204(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = *(v2 + *(a2 + 20));
  sub_253149834();
  v5 = (v2 + *(a2 + 24));
  if (!v5[1])
  {
    return sub_253149834();
  }

  v6 = *v5;
  sub_253149834();

  return sub_253148BB4();
}

uint64_t sub_2530EBC90(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_2530EC204(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = *(v2 + *(a2 + 20));
  sub_253149834();
  v5 = (v2 + *(a2 + 24));
  if (v5[1])
  {
    v6 = *v5;
    sub_253149834();
    sub_253148BB4();
  }

  else
  {
    sub_253149834();
  }

  return sub_253149844();
}

uint64_t static PartialModelRelationshipDescriptor<>.appleMediaDevice.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581498, &qword_25314DD70);

  return MEMORY[0x2821FEAF0](v0, &unk_27F580378);
}

{
  return sub_2530EABF8(&qword_27F5802C0, &qword_27F581AA8);
}

uint64_t sub_2530EBDB8()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581500, &qword_25314E018);
  swift_allocObject();

  v1 = sub_2531418B0(v0);

  qword_27F581478 = v1;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.accessory.getter()
{
  if (qword_27F580258 != -1)
  {
    swift_once();
  }
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581AD8, &qword_25314FAC0);

  return MEMORY[0x2821FEAF0](v0, &unk_27F5803C8);
}

uint64_t _s11HomeKitCore10HomesStoreC9AccessoryV16AppleMediaDeviceV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_253149734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_2530EBF1C()
{
  result = qword_27F581488;
  if (!qword_27F581488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581488);
  }

  return result;
}

uint64_t sub_2530EBF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530EBFD4(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2530EC030(void *a1)
{
  a1[1] = sub_2530EC204(&qword_27F5814A0, type metadata accessor for HomesStore.Accessory.AppleMediaDevice);
  a1[2] = sub_2530EC204(&qword_27F5814A8, type metadata accessor for HomesStore.Accessory.AppleMediaDevice);
  a1[3] = sub_2530EC204(&qword_27F5814B0, type metadata accessor for HomesStore.Accessory.AppleMediaDevice);
  a1[4] = sub_2530EC204(&qword_27F5814B8, type metadata accessor for HomesStore.Accessory.AppleMediaDevice);
  result = sub_2530EC204(&qword_27F5814C0, type metadata accessor for HomesStore.Accessory.AppleMediaDevice);
  a1[5] = result;
  return result;
}

uint64_t sub_2530EC204(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2530EC274()
{
  sub_253148944();
  if (v0 <= 0x3F)
  {
    sub_2530EC300();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2530EC300()
{
  if (!qword_27F5814E0)
  {
    v0 = sub_2531491F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5814E0);
    }
  }
}

unint64_t sub_2530EC364()
{
  result = qword_27F5814E8;
  if (!qword_27F5814E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5814E8);
  }

  return result;
}

unint64_t sub_2530EC3BC()
{
  result = qword_27F5814F0;
  if (!qword_27F5814F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5814F0);
  }

  return result;
}

unint64_t sub_2530EC414()
{
  result = qword_27F5814F8;
  if (!qword_27F5814F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5814F8);
  }

  return result;
}

uint64_t sub_2530EC468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65727275437369 && a2 == 0xEF65636976654474 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974736544736469 && a2 == 0xEE006E6F6974616ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_253149734();

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

void sub_2530EC594(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 handle];
  v4 = sub_253148B64();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_2530EC5EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 home];
  *a2 = result;
  return result;
}

id sub_2530EC63C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userSharedSettings];
  *a2 = result;
  return result;
}

id HMCDUserModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDUserModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDUserModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDUserModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDUserModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_2530EC81C(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2530EC88C(v2);
  return sub_2530D0B14;
}

void (*sub_2530EC88C(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

unint64_t sub_2530ECA2C(uint64_t a1)
{
  result = sub_2530ECA54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2530ECA54()
{
  result = qword_27F581508;
  if (!qword_27F581508)
  {
    type metadata accessor for HMCDUserModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581508);
  }

  return result;
}

uint64_t sub_2530ECAA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for HMCDUserModel();
  result = sub_2531493E4();
  *a1 = result;
  return result;
}

uint64_t sub_2530ECB00()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581510);
  __swift_project_value_buffer(v0, qword_27F581510);
  return sub_253148A84();
}

id sub_2530ECC14()
{
  v2.receiver = v0;
  v2.super_class = _s14descr2864E9699O21RequestHandlingPolicyCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2530ECC6C(id result)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = result;
  result = [result entitlements];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = sub_253148AD4();

  v4 = sub_25311EF54(v3);
  v5 = sub_25312AA68(v4);

  if ((v5 & 1) == 0)
  {
    if (qword_27F580260 != -1)
    {
      swift_once();
    }

    v6 = sub_253148A94();
    __swift_project_value_buffer(v6, qword_27F581510);
    v7 = v1;
    v8 = sub_253148A74();
    v9 = sub_2531490B4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v1;
      v12 = v7;
      _os_log_impl(&dword_2530B8000, v8, v9, "Denying access to XPC store server for client context: %@", v10, 0xCu);
      sub_2530E9CB0(v11);
      MEMORY[0x259BFDC60](v11, -1, -1);
      MEMORY[0x259BFDC60](v10, -1, -1);
    }
  }

  return (v5 & 1);
}

uint64_t HomesStore.makeRelationshipResolver<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v9 = sub_2531491F4();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = *(a3 - 8);
  v5[11] = v12;
  v13 = *(v12 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v14 = swift_task_alloc();
  v5[14] = v14;
  v15 = *(a4 + 8);
  v5[15] = v15;
  *v14 = v5;
  v14[1] = sub_2530ECF98;

  return sub_2531132A0(a2, a3, v15);
}

uint64_t sub_2530ECF98(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_2530ED524;
  }

  else
  {
    v5 = sub_2530ED0AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2530ED0AC()
{
  v22 = v0;
  v0[2] = v0[16];
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  sub_253148D64();
  swift_getWitnessTable();
  sub_253149034();
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[16];
  if (v4 == 1)
  {
    v6 = v0[15];
    v7 = v0[4];
    v8 = v0[5];
    (*(v0[9] + 8))(v0[10], v0[8]);

    type metadata accessor for HomesStore.Error(0);
    sub_2530EEB48();
    swift_allocError();
    v10 = v9;
    (*(v6 + 48))(&v21, v8, v6);
    *v10 = v21;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[10];

    v14 = v0[1];

    return v14();
  }

  else
  {
    (*(v0[11] + 32))(v0[13], v0[10], v0[5]);

    v16 = swift_task_alloc();
    v0[18] = v16;
    *v16 = v0;
    v16[1] = sub_2530ED2EC;
    v17 = v0[13];
    v18 = v0[6];
    v19 = v0[7];
    v20 = v0[5];

    return sub_2530ED640(v17, v20, v18);
  }
}

uint64_t sub_2530ED2EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_2530ED5A4;
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = sub_2530ED414;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2530ED414()
{
  v12 = v0;
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[5];
  v6 = v0[3];
  (*(v4 + 16))(v2, v3, v5);
  v10 = &type metadata for ModelProvider;
  v11 = &off_2864ECFE0;
  *&v9 = v1;
  (*(v4 + 8))(v3, v5);
  sub_2531477CC(v2, &v9, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2530ED524()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2530ED5A4()
{
  (*(v0[11] + 8))(v0[13], v0[5]);
  v1 = v0[19];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2530ED640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2530ED664, 0, 0);
}

uint64_t sub_2530ED664()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_2530E9588(v0[3]);
  v0[6] = v3;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_2530ED70C;
  v5 = v0[5];

  return sub_2530EE100(v3);
}

uint64_t sub_2530ED70C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2530ED864, 0, 0);
  }

  else
  {
    v7 = *(v4 + 48);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_2530ED864()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t HomesStore.makeRelationshipObserver<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a3;
  v9 = sub_2531491F4();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = *(a3 - 8);
  v5[10] = v12;
  v13 = *(v12 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v14 = swift_task_alloc();
  v5[13] = v14;
  v15 = *(a4 + 8);
  v5[14] = v15;
  *v14 = v5;
  v14[1] = sub_2530EDA48;

  return sub_2531132A0(a2, a3, v15);
}

uint64_t sub_2530EDA48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_2530EDFE4;
  }

  else
  {
    v5 = sub_2530EDB5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2530EDB5C()
{
  v21 = v0;
  v0[2] = v0[15];
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[4];
  sub_253148D64();
  swift_getWitnessTable();
  sub_253149034();
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[15];
  if (v4 == 1)
  {
    v6 = v0[14];
    v7 = v0[4];
    (*(v0[8] + 8))(v0[9], v0[7]);

    type metadata accessor for HomesStore.Error(0);
    sub_2530EEB48();
    swift_allocError();
    v9 = v8;
    (*(v6 + 48))(&v20, v7, v6);
    *v9 = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[9];

    v13 = v0[1];

    return v13();
  }

  else
  {
    (*(v0[10] + 32))(v0[12], v0[9], v0[4]);

    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_2530EDDA0;
    v16 = v0[12];
    v17 = v0[5];
    v18 = v0[6];
    v19 = v0[4];

    return sub_2530ED640(v16, v19, v17);
  }
}

uint64_t sub_2530EDDA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_2530EE064;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_2530EDEC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2530EDEC8()
{
  v12 = v0;
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  (*(v4 + 16))(v2, v3, v7);
  v11[3] = &type metadata for ModelProvider;
  v11[4] = &off_2864ECFE0;
  v11[0] = v1;

  sub_2530E1ACC(v2, v5, v11, v7, v6, v8);
  (*(v4 + 8))(v3, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2530EDFE4()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2530EE064()
{
  (*(v0[10] + 8))(v0[12], v0[4]);
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2530EE100(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581530, &qword_25314E0D8) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v4 = sub_253148944();
  v2[21] = v4;
  v5 = *(v4 - 8);
  v2[22] = v5;
  v6 = *(v5 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530EE210, 0, 0);
}

uint64_t sub_2530EE210()
{
  v1 = v0[22];
  v2 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581538, &qword_25314E0E0);
  result = sub_2531495B4();
  v4 = result;
  v5 = 0;
  v0[25] = result;
  v6 = v2 + 64;
  v25 = v2;
  v26 = v1;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v24 = result + 64;
  v27 = result;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v28 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v29 = v0[24];
      v15 = v0[21];
      v16 = *(v26 + 72) * v14;
      v17 = *(v25 + 48) + v16;
      (*(v26 + 16))();
      sub_2530C25FC(*(v25 + 56) + 40 * v14, (v0 + 2));
      v18 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_253133AC0();
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v4 = v27;
      result = (*(v26 + 32))(v27[6] + v16, v29, v15);
      *(v27[7] + v14) = v30;
      v19 = v27[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v27[2] = v21;
      v9 = v28;
      if (!v28)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v28 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    v22 = swift_task_alloc();
    v0[26] = v22;
    *v22 = v0;
    v22[1] = sub_2530EE48C;
    v23 = v0[18];

    return sub_253116048(v4);
  }

  return result;
}

uint64_t sub_2530EE48C(uint64_t a1)
{
  v3 = *(*v2 + 208);
  v4 = *v2;
  v4[27] = a1;

  if (v1)
  {
    v5 = v4[25];

    v7 = v4[23];
    v6 = v4[24];
    v8 = v4[19];
    v9 = v4[20];

    v10 = v4[1];

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2530EE5F8, 0, 0);
  }
}

void sub_2530EE5F8()
{
  v1 = 0;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  v6 = *(v3 + 64);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v7 = v4 & v6;
  v57 = (63 - v5) >> 6;
  v58 = *(v0 + 216);
  v59 = (*(v0 + 176) + 8);
  v8 = &unk_27F581540;
  if ((v4 & v6) != 0)
  {
    while (1)
    {
      v9 = *(v0 + 200);
LABEL_13:
      v13 = *(v0 + 192);
      v14 = *(v0 + 168);
      v15 = *(v0 + 176);
      v16 = *(v0 + 152);
      v17 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v18 = v17 | (v1 << 6);
      (*(v15 + 16))(v13, *(v9 + 48) + *(v15 + 72) * v18, v14);
      v60 = *(*(v9 + 56) + v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, &qword_25314E0E8);
      v20 = v8;
      v21 = *(v19 + 48);
      (*(v15 + 32))(v16, v13, v14);
      *(v16 + v21) = v60;
      v8 = v20;
      (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
      v11 = v1;
      v2 = v58;
LABEL_14:
      v22 = *(v0 + 160);
      sub_2530EEBA0(*(v0 + 152), v22);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, &qword_25314E0E8);
      if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
      {
        break;
      }

      v24 = *(v0 + 168);
      v25 = *(*(v0 + 160) + *(v23 + 48));
      (*(*(v0 + 176) + 32))(*(v0 + 184));
      if (!*(v2 + 16) || (v26 = *(v0 + 216), v27 = sub_25311D834(*(v0 + 184)), (v28 & 1) == 0))
      {
        v33 = *(v0 + 216);
        v34 = *(v0 + 200);
        v36 = *(v0 + 176);
        v35 = *(v0 + 184);
        v37 = *(v0 + 168);

        type metadata accessor for HomesStore.Error(0);
        sub_2530EEB48();
        swift_allocError();
        (*(v36 + 16))(v38, v35, v37);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*v59)(v35, v37);
LABEL_26:
        v53 = *(v0 + 184);
        v52 = *(v0 + 192);
        v55 = *(v0 + 152);
        v54 = *(v0 + 160);

        v56 = *(v0 + 8);

        v56();
        return;
      }

      sub_2530C25FC(*(v2 + 56) + 40 * v27, v0 + 96);
      sub_2530BDB14((v0 + 96), v0 + 56);
      v29 = *(v0 + 80);
      v30 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v29);
      sub_2530D2104(v29, v30);
      if (v61 != v25)
      {
        v46 = *(v0 + 216);
        v47 = *(v0 + 200);
        v48 = *(v0 + 184);
        v49 = *(v0 + 168);

        type metadata accessor for HomesStore.Error(0);
        sub_2530EEB48();
        swift_allocError();
        v50 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        v51 = *(v50 + 32);
        sub_2531493D4();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*v59)(v48, v49);
        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        goto LABEL_26;
      }

      (*v59)(*(v0 + 184), *(v0 + 168));
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      v1 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v40 = *(v0 + 192);
    v39 = *(v0 + 200);
    v41 = *(v0 + 184);
    v42 = *(v0 + 152);
    v43 = *(v0 + 160);

    v44 = *(v0 + 8);
    v45 = *(v0 + 216);

    v44(v45);
  }

  else
  {
LABEL_5:
    if (v57 <= v1 + 1)
    {
      v10 = v1 + 1;
    }

    else
    {
      v10 = v57;
    }

    v11 = v10 - 1;
    while (1)
    {
      v12 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v12 >= v57)
      {
        v31 = *(v0 + 152);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, &qword_25314E0E8);
        (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
        v7 = 0;
        goto LABEL_14;
      }

      v9 = *(v0 + 200);
      v7 = *(v9 + 8 * v12 + 64);
      ++v1;
      if (v7)
      {
        v1 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_2530EEB48()
{
  result = qword_27F581528;
  if (!qword_27F581528)
  {
    type metadata accessor for HomesStore.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581528);
  }

  return result;
}

uint64_t sub_2530EEBA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581530, &qword_25314E0D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530EEC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530EECF8, 0, 0);
}

uint64_t sub_2530EECF8()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  (*(v0[7] + 24))(v0[5], v0[7]);
  v4 = swift_task_alloc();
  v0[12] = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *v4 = v0;
  v4[1] = sub_2530EEDFC;
  v6 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return sub_25311E60C(v11, v9, v10, v7, v8, AssociatedConformanceWitness);
}

uint64_t sub_2530EEDFC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *v1;
  v6[13] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2530EEFA4, 0, 0);
  }

  else
  {
    v7 = v6[11];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_2530EEFA4()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

unint64_t sub_2530EF00C()
{
  result = qword_27F580970;
  if (!qword_27F580970)
  {
    type metadata accessor for HMCDRoomModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580970);
  }

  return result;
}

uint64_t sub_2530EF070@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v8 modelID];
  sub_253148924();

  v12 = [a1 name];
  v13 = sub_253148B64();
  v15 = v14;

  v16 = &v10[*(a2 + 20)];
  *v16 = v13;
  v16[1] = v15;
  sub_2530EF2EC(v10, a3);
  return (*(v6 + 56))(a3, 0, 1, a2);
}

uint64_t sub_2530EF1AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314E1C0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D090 = v1;
  return result;
}

uint64_t sub_2530EF290()
{
  if (qword_27F580268 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2530EF2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Room();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530EF350(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2530EF408()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581548);
  __swift_project_value_buffer(v0, qword_27F581548);
  return sub_253148A84();
}

uint64_t sub_2530EF488()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 112)));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 120)));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 128)));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2530EF554()
{
  sub_2530EF488();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2530EF5EC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2530EF628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2530EF650, v5, 0);
}

uint64_t sub_2530EF650()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = *(v0 + 24);
  *(v4 + 48) = v3;

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_2530EF768;
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 16);

  return sub_2530EFA98(v8, sub_2530F5D68, v4, v6);
}

uint64_t sub_2530EF768()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_2530EF8A4, v4, 0);
  }

  else
  {
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2530EF8A4()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_2530EF908(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  sub_2530C25FC(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815F0, &qword_25314E3B8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 88);
  _s5ProxyCMa();
  if (swift_dynamicCast())
  {
    v13 = v20;
    v14 = *(*v20 + 96);
    v15 = _s14descr2864E9281O8CoreDataCMa();
    WitnessTable = swift_getWitnessTable();
    sub_253146CC4(a3, v13 + v14, a4, a5, v15, a6, WitnessTable);
  }

  else
  {
    sub_2530F5D8C();
    swift_allocError();
    *v18 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_2530EFA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *v4;
  v6 = swift_task_alloc();
  v5[9] = v6;
  *v6 = v5;
  v6[1] = sub_2530EFB58;

  return sub_2530F0D10();
}

uint64_t sub_2530EFB58()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2530EFC68, v2, 0);
}

uint64_t sub_2530EFC68()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v0[2] = v1;
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v4;
  v6[3] = v1;
  v6[4] = v5;
  v6[5] = v3;

  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = *(v2 + 80);
  v9 = *(v2 + 88);
  v10 = _s14descr2864E9281O8CoreDataCMa();
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_2530EFDB0;
  v12 = v0[6];
  v13 = v0[3];

  return sub_2530EEC10(v13, sub_2530F4410, v6, v10, v12, WitnessTable);
}

uint64_t sub_2530EFDB0()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_2530CE6D8, v4, 0);
  }

  else
  {
    v5 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2530EFEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v8[12] = *v7;
  v8[2] = a6;
  sub_253148974();
  v9 = sub_2531491F4();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v8[15] = *(v10 + 64);
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530F0000, v7, 0);
}

uint64_t sub_2530F0000()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[9];
  v18 = v1;
  v19 = v0[10];
  v24 = v0[8];
  v22 = v0[11];
  v23 = v0[7];
  v7 = v0[6];
  v21 = v0[5];
  v20 = v0[4];
  (*(v4 + 16))();
  v8 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[17] = v11;
  *(v11 + 2) = *(v5 + 80);
  *(v11 + 3) = v6;
  *(v11 + 4) = *(v5 + 88);
  *(v11 + 5) = v19;
  (*(v4 + 32))(&v11[v8], v18, v3);
  *&v11[v9] = v22;
  v12 = &v11[v10];
  *v12 = v20;
  *(v12 + 1) = v21;
  v13 = &v11[(v10 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v13 = v23;
  *(v13 + 1) = v24;

  v14 = swift_task_alloc();
  v0[18] = v14;
  v15 = sub_253148D64();
  *v14 = v0;
  v14[1] = sub_2530F01D0;
  v16 = v0[11];

  return sub_2530EFA98((v0 + 3), sub_2530F5F4C, v11, v15);
}

uint64_t sub_2530F01D0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_2530F0364;
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 88);

    v5 = sub_2530F02F8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2530F02F8()
{
  v1 = v0[16];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2530F0364()
{
  v2 = v0[16];
  v1 = v0[17];

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_2530F03D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v79 = a9;
  v83 = a6;
  v84 = a7;
  v85 = a4;
  v86 = a5;
  v82 = a2;
  v12 = *(*a3 + 88);
  v13 = *(*a3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v87 = &v74 - v15;
  v89 = a8;
  v93 = a8;
  v16 = sub_253148974();
  v17 = sub_2531491F4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v74 - v21;
  v23 = *(v16 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v88 = &v74 - v28;
  sub_2530C25FC(a1, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815F0, &qword_25314E3B8);
  _s5ProxyCMa();
  if (swift_dynamicCast())
  {
    v77 = v12;
    v29 = v91;
    (*(v18 + 16))(v22, v82, v17);
    if ((*(v23 + 48))(v22, 1, v16) == 1)
    {
      (*(v18 + 8))(v22, v17);
      v30 = *(*v29 + 96);
      v31 = swift_allocObject();
      v32 = v89;
      v31[2] = v13;
      v31[3] = v32;
      v31[4] = v77;
      v31[5] = a10;
      v33 = v84;
      v31[6] = v83;
      v31[7] = v33;
      v34 = _s14descr2864E9281O8CoreDataCMa();
      v35 = sub_253148D64();

      WitnessTable = swift_getWitnessTable();
      sub_253146AE8(v85, v86, &v29[v30], 0, sub_2530F6048, v31, v34, v35, WitnessTable);
    }

    else
    {
      v39 = v88;
      (*(v23 + 32))(v88, v22, v16);
      v40 = v78;
      v41 = *(v78 + 16);
      v74 = *(*v29 + 96);
      v41(v87, &v29[v74], AssociatedTypeWitness);
      v42 = *(v23 + 16);
      v82 = v16;
      v42(v27, v39, v16);
      v43 = v89;
      v44 = v80;
      sub_2530FD73C(v27, v89, a10);
      v46 = v44;
      v75 = a10;
      v76 = v23;
      if (v44)
      {
        v47 = v29;
        v48 = v77;
        (*(v40 + 8))(v87, AssociatedTypeWitness);
        v55 = v88;
        if (qword_27F580270 != -1)
        {
          swift_once();
        }

        v56 = sub_253148A94();
        __swift_project_value_buffer(v56, qword_27F581548);
        v57 = v44;
        v58 = sub_253148A74();
        v59 = sub_253149094();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v60 = 138412290;
          v62 = v44;
          v63 = _swift_stdlib_bridgeErrorToNSError();
          *(v60 + 4) = v63;
          *v61 = v63;
          _os_log_impl(&dword_2530B8000, v58, v59, "Failed to fetch models with error: %@, filtering in-memory instead.", v60, 0xCu);
          sub_2530E9CB0(v61);
          v64 = v61;
          v55 = v88;
          MEMORY[0x259BFDC60](v64, -1, -1);
          v65 = v60;
          v46 = v44;
          MEMORY[0x259BFDC60](v65, -1, -1);
        }

        v66 = swift_allocObject();
        v67 = v89;
        v66[2] = v13;
        v66[3] = v67;
        v68 = v75;
        v66[4] = v48;
        v66[5] = v68;
        v69 = v84;
        v66[6] = v83;
        v66[7] = v69;
        v70 = _s14descr2864E9281O8CoreDataCMa();
        v71 = sub_253148D64();

        v72 = swift_getWitnessTable();
        sub_253146AE8(v85, v86, &v47[v74], 0, sub_2530F665C, v66, v70, v71, v72);

        v90 = v91;
        swift_getWitnessTable();
        v73 = sub_253148C04();

        result = (*(v76 + 8))(v55, v82);
        *v79 = v73;
      }

      else
      {
        v49 = v45;
        v80 = v29;
        v50 = swift_allocObject();
        v50[2] = v13;
        v50[3] = v43;
        v50[4] = v77;
        v50[5] = a10;
        v51 = v84;
        v50[6] = v83;
        v50[7] = v51;
        v52 = _s14descr2864E9281O8CoreDataCMa();
        v53 = sub_253148D64();

        v54 = swift_getWitnessTable();
        sub_253146AE8(v85, v86, v87, v49, sub_2530F665C, v50, v52, v53, v54);

        (*(v40 + 8))(v87, AssociatedTypeWitness);
        return (*(v76 + 8))(v88, v82);
      }
    }
  }

  else
  {
    sub_2530F5D8C();
    swift_allocError();
    *v38 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2530F0D10()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DB8, &unk_25314D418);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530F0DDC, v0, 0);
}

uint64_t sub_2530F0DDC()
{
  v1 = v0[2];
  v2 = *v1;
  v3 = *(*v1 + 136);
  v0[6] = v3;
  if (*(v1 + v3))
  {
    v4 = v0[5];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = *(v2 + 120);
    v0[7] = v7;
    v8 = *(v1 + v7 + 24);
    v9 = *(v1 + v7 + 32);
    __swift_project_boxed_opaque_existential_1((v1 + v7), v8);
    v10 = *(v9 + 16);
    v14 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[8] = v12;
    *v12 = v0;
    v12[1] = sub_2530F0F9C;
    v13 = v0[5];

    return v14(v13, v8, v9);
  }
}

uint64_t sub_2530F0F9C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2530F10AC, v2, 0);
}

uint64_t sub_2530F10AC()
{
  v1 = (v0[2] + *(*v0[2] + 112));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_2530F11F0;
  v7 = v0[5];

  return v9(v7, v2, v3);
}

uint64_t sub_2530F11F0()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2530F1300, v2, 0);
}

uint64_t sub_2530F1300()
{
  v1 = (v0[2] + v0[7]);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_2530F142C;

  return v8(v2, v3);
}

uint64_t sub_2530F142C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2530F153C, v2, 0);
}

uint64_t sub_2530F153C()
{
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);
  *(v2 + v1) = 1;
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2530F15C0(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *))
{
  v4 = *a2;
  v5 = *(*a2 + 80);
  v6 = *(*a2 + 88);
  v7 = _s5ProxyCMa();
  v8 = *(v4 + 104);
  sub_2530C25FC(a2 + *(v4 + 128), &v22);
  v20 = v7;
  v9 = sub_2531328F8(a2 + v8, &v22);
  v10 = [objc_opt_self() currentQueryGenerationToken];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 80);
  v13 = swift_checkMetadataState();
  v14 = v25;
  v12(v10, v13, AssociatedConformanceWitness);
  if (v14)
  {

    if (qword_27F580270 != -1)
    {
      swift_once();
    }

    v15 = sub_253148A94();
    __swift_project_value_buffer(v15, qword_27F581548);
    v16 = sub_253148A74();
    v17 = sub_2531490B4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2530B8000, v16, v17, "Failed to pin managed object context.", v18, 2u);
      MEMORY[0x259BFDC60](v18, -1, -1);
    }

    swift_willThrow();
  }

  else
  {

    v23 = v20;
    v24 = &off_2864ED0E8;
    *&v22 = v9;

    a3(&v22);
    __swift_destroy_boxed_opaque_existential_0(&v22);
    sub_2530F18C4();
  }
}

uint64_t sub_2530F18C4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 80);
  v2 = swift_checkMetadataState();
  return v1(0, v2, AssociatedConformanceWitness);
}

uint64_t sub_2530F1AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  v6 = swift_task_alloc();
  v5[13] = v6;
  *v6 = v5;
  v6[1] = sub_2530F1B70;

  return sub_2530F0D10();
}

uint64_t sub_2530F1B70()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2530F1C80, v2, 0);
}

uint64_t sub_2530F1C80()
{
  v1 = dynamic_cast_existential_2_conditional(*(v0 + 56));
  if (v1)
  {
    v4 = v3;
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    v22 = *(v0 + 80);
    v8 = *(*v5 + 128);
    v9 = v1;
    v10 = v2;
    v23 = sub_2530EB040();
    v12 = v11;
    *(v0 + 112) = v11;
    sub_2530C25FC(v5 + v8, v0 + 16);
    v13 = swift_allocObject();
    *(v0 + 120) = v13;
    v13[2] = *(v6 + 80);
    v13[3] = v7;
    v13[4] = *(v6 + 88);
    v13[5] = v22;
    sub_2530BDB14((v0 + 16), (v13 + 6));
    v13[11] = v9;
    v13[12] = v10;
    v13[13] = v4;
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_2530F1E70;
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    v17 = *(v0 + 64);
    v18 = *(v0 + 72);

    return sub_2530EFEEC(v23, v12, v17, sub_2530F5F14, v13, v18, v15);
  }

  else
  {
    sub_2530F5D8C();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_2530F1E70(uint64_t a1)
{
  v4 = *(*v2 + 128);
  v5 = *v2;
  v5[17] = v1;

  if (v1)
  {
    v7 = v5[14];
    v6 = v5[15];
    v8 = v5[11];

    return MEMORY[0x2822009F8](sub_2530F1FE0, v8, 0);
  }

  else
  {
    v9 = v5[14];
    v10 = v5[15];

    v11 = v5[1];

    return v11(a1);
  }
}

uint64_t sub_2530F1FF8()
{
  swift_getAssociatedTypeWitness();
  sub_253148D64();
  swift_getWitnessTable();
  return sub_253148C34();
}

uint64_t sub_2530F20C0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_project_boxed_opaque_existential_1(a2, v12);
  v15 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  result = (*(v13 + 40))(v11, a3, a3, a4, v12, v13);
  if (!v6)
  {
    v17 = swift_dynamicCast();
    return (*(*(a5 - 8) + 56))(a6, v17 ^ 1u, 1, a5);
  }

  return result;
}

uint64_t sub_2530F2200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = *v4;
  v5[2] = swift_getAssociatedTypeWitness();
  sub_253148974();
  v6 = sub_2531491F4();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[14] = v8;
  *v8 = v5;
  v8[1] = sub_2530F235C;

  return sub_2530F0D10();
}

uint64_t sub_2530F235C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2530F246C, v2, 0);
}

uint64_t sub_2530F246C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v13 = v0[4];
  v14 = v0[7];
  (*(v3 + 16))(v1, v0[5], v2);
  v7 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[15] = v8;
  *(v8 + 2) = *(v5 + 80);
  *(v8 + 3) = v6;
  *(v8 + 4) = *(v5 + 88);
  *(v8 + 5) = v14;
  *(v8 + 6) = v4;
  *(v8 + 7) = v13;
  (*(v3 + 32))(&v8[v7], v1, v2);

  v9 = swift_task_alloc();
  v0[16] = v9;
  v10 = sub_253148D64();
  *v9 = v0;
  v9[1] = sub_2530F25E8;
  v11 = v0[8];

  return sub_2530EFA98((v0 + 3), sub_2530F5DE0, v8, v10);
}

uint64_t sub_2530F25E8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_2530F277C;
  }

  else
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 64);

    v5 = sub_2530F2710;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2530F2710()
{
  v1 = v0[13];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2530F277C()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_2530F27EC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v27 = a2;
  v28 = a3;
  v26 = a6;
  v9 = *a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = v9[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = v9[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = v14;
  v30 = AssociatedTypeWitness;
  v31 = v16;
  v32 = AssociatedConformanceWitness;
  _s15ComposableProxyCMa();
  v18 = v9[13];
  v19 = v9[16];
  v20 = sub_253148944();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  sub_25312ABB8(a1 + v18, a1 + v19, MEMORY[0x277D84FA0], v13);
  v21 = v33;
  sub_25312919C(v27, 0, v28, a4, a5);
  v23 = v22;

  if (!v21)
  {
    *v26 = v23;
  }

  return result;
}

uint64_t sub_2530F29E0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  v3 = swift_task_alloc();
  v2[11] = v3;
  *v3 = v2;
  v3[1] = sub_2530F2A98;

  return sub_2530F0D10();
}

uint64_t sub_2530F2A98()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2530F2BA8, v2, 0);
}

uint64_t sub_2530F2BA8()
{
  v40 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v6 = *v3++;
      v5 = v6;
      if (v6 > 3)
      {
        if (v5 > 5)
        {
          if (v5 == 6)
          {
            v7 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
            v8 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
            v9 = &qword_27F5806F0;
          }

          else
          {
            v7 = type metadata accessor for HomesStore.User.SharedSettings();
            v8 = type metadata accessor for HomesStore.User.SharedSettings;
            v9 = &unk_27F5806E8;
          }
        }

        else if (v5 == 4)
        {
          v7 = type metadata accessor for HomesStore.User();
          v8 = type metadata accessor for HomesStore.User;
          v9 = &unk_27F580700;
        }

        else
        {
          v7 = type metadata accessor for HomesStore.Zone();
          v8 = type metadata accessor for HomesStore.Zone;
          v9 = &unk_27F5806F8;
        }
      }

      else if (v5 > 1)
      {
        if (v5 == 2)
        {
          v7 = type metadata accessor for HomesStore.Home();
          v8 = type metadata accessor for HomesStore.Home;
          v9 = &unk_27F580710;
        }

        else
        {
          v7 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
          v8 = type metadata accessor for HomesStore.HomesRelationshipModel;
          v9 = &unk_27F580708;
        }
      }

      else if (v5)
      {
        v7 = type metadata accessor for HomesStore.Room();
        v8 = type metadata accessor for HomesStore.Room;
        v9 = &qword_27F580718;
      }

      else
      {
        v7 = type metadata accessor for HomesStore.Accessory();
        v8 = type metadata accessor for HomesStore.Accessory;
        v9 = &unk_27F580720;
      }

      v10 = sub_2530F5D1C(v9, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2530F4904(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v4 = sub_2530F4904((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v13;
      v14 = &v4[16 * v12];
      *(v14 + 4) = v7;
      *(v14 + 5) = v10;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    v15 = MEMORY[0x277D84F90];
    if (!v13)
    {
      goto LABEL_36;
    }
  }

  v15 = MEMORY[0x277D84F90];
  v16 = 32;
  do
  {
    v18 = *&v4[v16];
    if (swift_conformsToProtocol2())
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = sub_2530EB040();
      v22 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2530F459C(0, *(v15 + 2) + 1, 1, v15);
      }

      v24 = *(v15 + 2);
      v23 = *(v15 + 3);
      if (v24 >= v23 >> 1)
      {
        v15 = sub_2530F459C((v23 > 1), v24 + 1, 1, v15);
      }

      *(v15 + 2) = v24 + 1;
      v17 = &v15[16 * v24];
      *(v17 + 4) = v20;
      *(v17 + 5) = v22;
    }

    v16 += 16;
    --v13;
  }

  while (v13);
LABEL_36:
  *(v0 + 96) = v15;

  if (qword_27F580270 != -1)
  {
    swift_once();
  }

  v25 = sub_253148A94();
  __swift_project_value_buffer(v25, qword_27F581548);

  v26 = sub_253148A74();
  v27 = sub_253149094();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 136315138;
    v30 = MEMORY[0x259BFC8A0](v15, MEMORY[0x277D837D0]);
    v32 = sub_253146498(v30, v31, &v39);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2530B8000, v26, v27, "Fetching entities: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x259BFDC60](v29, -1, -1);
    MEMORY[0x259BFDC60](v28, -1, -1);
  }

  v33 = *(v0 + 80);
  sub_2530C25FC(*(v0 + 72) + *(**(v0 + 72) + 128), v0 + 16);
  v34 = swift_allocObject();
  *(v0 + 104) = v34;
  *(v34 + 16) = *(v33 + 80);
  *(v34 + 24) = *(v33 + 88);
  sub_2530BDB14((v0 + 16), v34 + 32);
  v35 = swift_task_alloc();
  *(v0 + 112) = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815E0, &qword_25314E3A8);
  *v35 = v0;
  v35[1] = sub_2530F31C8;
  v37 = *(v0 + 72);

  return sub_2530EF628(v0 + 56, v15, sub_2530F5CFC, v34, v36);
}

uint64_t sub_2530F31C8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[9];
  if (v0)
  {

    v8 = sub_2530F3364;
  }

  else
  {

    v8 = sub_2530F3348;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2530F337C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v45 = a2;
  v39 = a3;
  v44 = sub_253148944();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_253148D44();
  if (!result)
  {
    v12 = MEMORY[0x277D84F98];
LABEL_23:
    *v39 = v12;
    return result;
  }

  v11 = 0;
  v40 = v6 + 16;
  v41 = v6;
  v43 = (v6 + 8);
  v12 = MEMORY[0x277D84F98];
  v42 = AssociatedTypeWitness;
  while (1)
  {
    v14 = sub_253148CF4();
    sub_253148CC4();
    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = *(a1 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_25;
    }

LABEL_7:
    v17 = v45[3];
    v18 = v45[4];
    __swift_project_boxed_opaque_existential_1(v45, v17);
    (*(v18 + 32))(v49, v15, v17, v18);
    if (v4)
    {

      return swift_unknownObjectRelease();
    }

    v46 = 0;
    v19 = a1;
    v20 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v21 = *(v20 + 32);
    v22 = v47;
    sub_2531493D4();
    sub_2530C25FC(v49, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v12;
    v25 = sub_25311D834(v22);
    v26 = v12[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_26;
    }

    v29 = v24;
    if (v12[3] >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v12 = v50;
        if (v24)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_25312B6DC();
        v12 = v50;
        if (v29)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_25312C8DC(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_25311D834(v47);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_28;
      }

      v25 = v30;
      v12 = v50;
      if (v29)
      {
LABEL_3:
        v13 = (v12[7] + 40 * v25);
        __swift_destroy_boxed_opaque_existential_0(v13);
        sub_2530BDB14(v48, v13);
        swift_unknownObjectRelease();
        (*v43)(v47, v44);
        goto LABEL_4;
      }
    }

    v12[(v25 >> 6) + 8] |= 1 << v25;
    v32 = v41;
    v33 = v47;
    v34 = v44;
    (*(v41 + 16))(v12[6] + *(v41 + 72) * v25, v47, v44);
    sub_2530BDB14(v48, v12[7] + 40 * v25);
    swift_unknownObjectRelease();
    (*(v32 + 8))(v33, v34);
    v35 = v12[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_27;
    }

    v12[2] = v37;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v49);
    a1 = v19;
    result = sub_253148D44();
    ++v11;
    v4 = v46;
    if (v16 == result)
    {
      goto LABEL_23;
    }
  }

  v15 = sub_2531493F4();
  v16 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_7;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_253149784();
  __break(1u);
  return result;
}

uint64_t sub_2530F3770(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581610, &qword_25314E3F0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[10] = v6;
  *v6 = v3;
  v6[1] = sub_2530F3880;

  return sub_2530F0D10();
}

uint64_t sub_2530F3880()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2530F3990, v2, 0);
}

uint64_t sub_2530F3990()
{
  v20 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2530F4DB0(0, v2, 0);
    v3 = v18;
    v4 = v1 + 40;
    do
    {
      v5 = *(v4 - 8);
      (*(*v4 + 48))(&v19);
      v6 = v19;
      v8 = *(v18 + 16);
      v7 = *(v18 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2530F4DB0((v7 > 1), v8 + 1, 1);
      }

      *(v18 + 16) = v8 + 1;
      *(v18 + v8 + 32) = v6;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v0[11] = v3;
  v9 = (v0[4] + *(*v0[4] + 112));
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v12 = *(v11 + 16);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_2530F3B94;
  v15 = v0[9];

  return v17(v15, v3, v10, v11);
}

uint64_t sub_2530F3B94()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2530F3CC0, v3, 0);
}

uint64_t sub_2530F3CC0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  v5 = v0[2];
  (*(v3 + 16))(v2, v1, v4);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v2, v4);
  type metadata accessor for AnyModelStateChange(0);
  sub_253148F34();
  (*(v3 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2530F3DFC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581618, &qword_25314E408);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530F3EC8, 0, 0);
}

uint64_t sub_2530F3EC8()
{
  v1 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581610, &qword_25314E3F0);
  sub_253148E54();
  v3 = *(MEMORY[0x277D857A0] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_2530F3F8C;
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x2822003F0](v7, v6);
}

uint64_t sub_2530F3F8C()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2530C5B70, 0, 0);
}

uint64_t sub_2530F4088(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2530BF218;

  return sub_2530F3770(a1, a2);
}

uint64_t sub_2530F4134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2530CD6C0;

  return sub_2530F1AB0(a1, a2, a3, a4);
}

uint64_t sub_2530F41F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2530C8C20;

  return sub_2530F2200(a1, a2, a3, a4);
}

uint64_t sub_2530F42B4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530CD6C0;

  return sub_2530F29E0(a1);
}

uint64_t sub_2530F434C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2530CD684;

  return sub_2530EFA98(a1, a2, a3, a4);
}

uint64_t sub_2530F4410(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  return sub_2530F15C0(a1, *(v1 + 24), *(v1 + 32));
}

void *sub_2530F4454(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581630, &qword_25314E420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2530F459C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815E8, &qword_25314E3B0);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_2530F471C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_2530F4904(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581600, &qword_25314E3C0);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2530F4A08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816B0, &qword_25314E490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

size_t sub_2530F4B74(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2530F4D50(char *a1, int64_t a2, char a3)
{
  result = sub_2530F4F78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2530F4D70(size_t a1, int64_t a2, char a3)
{
  result = sub_2530F58D4(a1, a2, a3, *v3, &qword_27F581628, &qword_25314E418, &qword_27F5806C0, &qword_25314C460);
  *v3 = result;
  return result;
}

char *sub_2530F4DB0(char *a1, int64_t a2, char a3)
{
  result = sub_2530F507C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2530F4DD0(void *a1, int64_t a2, char a3)
{
  result = sub_2530F5170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2530F4DF0(char *a1, int64_t a2, char a3)
{
  result = sub_2530F52B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2530F4E10(size_t a1, int64_t a2, char a3)
{
  result = sub_2530F55E8(a1, a2, a3, *v3, &qword_27F581650, &qword_25314E440, type metadata accessor for AnyModelStateChange);
  *v3 = result;
  return result;
}

char *sub_2530F4E54(char *a1, int64_t a2, char a3)
{
  result = sub_2530F53C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2530F4E74(char *a1, int64_t a2, char a3)
{
  result = sub_2530F54C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2530F4E94(size_t a1, int64_t a2, char a3)
{
  result = sub_2530F55E8(a1, a2, a3, *v3, &qword_27F581670, &qword_25314E460, type metadata accessor for AnyModelStateChange.Tombstone);
  *v3 = result;
  return result;
}

char *sub_2530F4ED8(char *a1, int64_t a2, char a3)
{
  result = sub_2530F57C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2530F4EF8(size_t a1, int64_t a2, char a3)
{
  result = sub_2530F58D4(a1, a2, a3, *v3, &qword_27F581698, &qword_25314E480, &qword_27F5816A0, &qword_253151500);
  *v3 = result;
  return result;
}

char *sub_2530F4F38(char *a1, int64_t a2, char a3)
{
  result = sub_2530F5ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2530F4F58(void *a1, int64_t a2, char a3)
{
  result = sub_2530F5BC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2530F4F78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581638, &qword_25314E428);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2530F507C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581620, &qword_25314E410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_2530F5170(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816B8, &qword_25314E498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5816C0, &qword_25314E4A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2530F52B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815E8, &qword_25314E3B0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2530F53C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581600, &qword_25314E3C0);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2530F54C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581678, &qword_25314E468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2530F55E8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2530F57C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_2530F58D4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_2530F5ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581668, &qword_25314E458);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2530F5BC8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581658, &qword_25314E448);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581660, &qword_25314E450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2530F5CFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_2530F337C(a1, v2 + 4, a2);
}

uint64_t sub_2530F5D1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2530F5D8C()
{
  result = qword_27F5815F8;
  if (!qword_27F5815F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5815F8);
  }

  return result;
}

uint64_t sub_2530F5DE0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  sub_253148974();
  v5 = *(sub_2531491F4() - 8);
  return sub_2530F27EC(*(v1 + 48), *(v1 + 56), v1 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), v3, v4, a1);
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2530F5F14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[13];
  v8 = v0[5];
  return sub_2530F1FF8();
}

uint64_t sub_2530F5F4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  sub_253148974();
  v7 = *(sub_2531491F4() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2530F03D0(a1, v2 + v8, *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v5, a2, v6);
}

uint64_t sub_2530F6060@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2530F6094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 72);
  v7 = *(v2 + 40);
  return sub_2530F20C0(a1, *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 24), a2);
}

uint64_t sub_2530F60C8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581610, &qword_25314E3F0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2530BF218;

  return sub_2530F3DFC(a1, v1 + v5);
}

uint64_t sub_2530F61B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = sub_2530F6600(319, &qword_27F581748);
    if (v5 <= 0x3F)
    {
      result = sub_2530F6600(319, &qword_27F581750);
      if (v6 <= 0x3F)
      {
        v7 = *(a1 + 24);
        swift_getAssociatedTypeWitness();
        swift_getExtendedExistentialTypeMetadata_unique();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2530F62BC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_2530F6408(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v20 = &a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v20 + 8) = 0u;
          *(v20 + 24) = 0u;
          *v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 24) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 40);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

uint64_t sub_2530F6600(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2530F6678()
{
  result = qword_27F580978;
  if (!qword_27F580978)
  {
    type metadata accessor for HMCDAccessoryModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580978);
  }

  return result;
}

uint64_t sub_2530F66DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomesStore.Accessory();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 modelID];
  sub_253148924();

  v10 = [a1 name];
  v11 = sub_253148B64();
  v13 = v12;

  v14 = &v8[v4[5]];
  *v14 = v11;
  v14[1] = v13;
  v15 = &v8[v4[7]];
  sub_2530FBCA4();
  HomesStore.Accessory.Category.init(rawValue:)([a1 category], &v31);
  v16 = v31;
  if (v31 == 36)
  {
    v16 = 0;
  }

  v8[v4[6]] = v16;
  v17 = [a1 model];
  if (v17)
  {
    v18 = v17;
    v19 = sub_253148B64();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = &v8[v4[8]];
  *v22 = v19;
  v22[1] = v21;
  v23 = [a1 firmwareVersion];
  if (v23)
  {
    v24 = v23;
    v25 = sub_253148B64();
    v27 = v26;
  }

  else
  {

    v25 = 0;
    v27 = 0;
  }

  v28 = &v8[v4[9]];
  *v28 = v25;
  v28[1] = v27;
  sub_2530F6AB8(v8, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_2530F68F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314CE10;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x79726F6765746163;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x6C65646F6DLL;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x657261776D726966;
  *(inited + 144) = 0xEF6E6F6973726556;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D098 = v1;
  return result;
}

uint64_t sub_2530F6A5C()
{
  if (qword_27F580278 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2530F6AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Accessory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HomesStore.User.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomesStore.User.handle.getter()
{
  v1 = (v0 + *(type metadata accessor for HomesStore.User() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for HomesStore.User()
{
  result = qword_27F5817B8;
  if (!qword_27F5817B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static HomesStore.User.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HomesStore.User() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_253149734();
}

uint64_t sub_2530F6C9C()
{
  if (*v0)
  {
    result = 0x656C646E6168;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_2530F6CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_2530F6D98(uint64_t a1)
{
  v2 = sub_2530F6FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530F6DD4(uint64_t a1)
{
  v2 = sub_2530F6FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.User.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581768, &qword_25314E5A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530F6FCC();
  sub_253149894();
  v15[15] = 0;
  sub_253148944();
  sub_2530F7AB4(&qword_27F580630, MEMORY[0x277CC95F0]);
  sub_2531496D4();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for HomesStore.User() + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_2531496B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2530F6FCC()
{
  result = qword_27F581770;
  if (!qword_27F581770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581770);
  }

  return result;
}

uint64_t HomesStore.User.hash(into:)()
{
  sub_253148944();
  sub_2530F7AB4(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = (v0 + *(type metadata accessor for HomesStore.User() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_253148BB4();
}

uint64_t HomesStore.User.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_2530F7AB4(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = (v0 + *(type metadata accessor for HomesStore.User() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_253148BB4();
  return sub_253149844();
}

uint64_t HomesStore.User.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_253148944();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581778, &qword_25314E5A8);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for HomesStore.User();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530F6FCC();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_2530F7AB4(&qword_27F5805E8, MEMORY[0x277CC95F0]);
  v18 = v30;
  sub_253149664();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_253149644();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_2530F76B8(v23, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2530F771C(v23);
}

uint64_t sub_2530F74D0(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_2530F7AB4(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_2530F7578(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_2530F7AB4(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_253148BB4();
}

uint64_t sub_2530F7614(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_2530F7AB4(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_2530F76B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.User();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530F771C(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.User();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PartialModelRelationshipDescriptor<>.user.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581780, &qword_25314E5B0);

  return MEMORY[0x2821FEAF0](v0, &unk_27F5803A0);
}

{
  if (qword_27F580338 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2530F77B8()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5817E8, &qword_25314E888);
  swift_allocObject();

  v1 = sub_253141CE4(v0);

  qword_27F581758 = v1;
  return result;
}

uint64_t sub_2530F784C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5817E0, &unk_25314E850);
  swift_allocObject();

  v1 = sub_253141D10(v0);

  qword_27F581760 = v1;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.userSharedSettings.getter()
{
  return sub_2530EABF8(&qword_27F580288, &qword_27F581760);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582950, &qword_253152818);

  return MEMORY[0x2821FEAF0](v0, &unk_27F580440);
}

uint64_t sub_2530F78E0(void *a1)
{
  a1[1] = sub_2530F7AB4(&qword_27F581788, type metadata accessor for HomesStore.User);
  a1[2] = sub_2530F7AB4(&qword_27F581790, type metadata accessor for HomesStore.User);
  a1[3] = sub_2530F7AB4(&qword_27F581798, type metadata accessor for HomesStore.User);
  a1[4] = sub_2530F7AB4(&qword_27F5817A0, type metadata accessor for HomesStore.User);
  result = sub_2530F7AB4(&qword_27F5817A8, type metadata accessor for HomesStore.User);
  a1[5] = result;
  return result;
}

uint64_t sub_2530F7AB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2530F7B38()
{
  result = qword_27F5817C8;
  if (!qword_27F5817C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5817C8);
  }

  return result;
}

unint64_t sub_2530F7B90()
{
  result = qword_27F5817D0;
  if (!qword_27F5817D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5817D0);
  }

  return result;
}

unint64_t sub_2530F7BE8()
{
  result = qword_27F5817D8;
  if (!qword_27F5817D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5817D8);
  }

  return result;
}

uint64_t sub_2530F7C3C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2530F7D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807F0, &qword_25314C5C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818C0, &unk_25314E9E0);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807E0, &qword_25314C5B8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  swift_beginAccess();
  result = *(v4 + 112);
  v21 = *(result + 16);
  if (v21)
  {
    v22 = *(v15 + 36);
    v23 = result + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v36 = *(v16 + 72);
    v37 = v22;
    v24 = v7;
    v34 = (v7 + 16);
    v35 = a2;
    v26 = v30;
    v25 = v31;
    v32 = (v24 + 8);
    v33 = v11;
    v27 = (v29 + 8);
    v29 = result;

    do
    {
      sub_2530FB9F4(v23, v19);
      (*v34)(v10, &v19[v37], v6);
      sub_2530CD33C(v19, &qword_27F5807E0, &qword_25314C5B8);
      v38 = v26;
      v39 = v35;
      v40 = v25;

      sub_253148E34();
      (*v32)(v10, v6);
      (*v27)(v14, v33);
      v23 += v36;
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t sub_2530F800C()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5817F0);
  __swift_project_value_buffer(v0, qword_27F5817F0);
  return sub_253148A84();
}

uint64_t *sub_2530F8088()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 128);
  if (*(v0 + v3))
  {
    v4 = *(v0 + v3);

    sub_253148EA4();

    v1 = *v0;
  }

  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 104));

  v5 = *(v0 + *(*v0 + 120));

  v6 = *(v0 + v3);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2530F81D4()
{
  sub_2530F8088();

  return MEMORY[0x282200960](v0);
}

void sub_2530F8218()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[11];
  v4 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v40 - v7;
  v9 = v2[13];
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_2530FB890(v11, v11);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = *(*(v11 - 8) + 72);
  v16 = *(*(v11 - 8) + 80);
  swift_allocObject();
  v17 = sub_253148CB4();
  (*(v3 + 48))(v4, v3);
  sub_253148D64();
  v18 = (*(AssociatedConformanceWitness + 32))(v17, AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v41 + 8))(v8, AssociatedTypeWitness);
  if (v18)
  {
    v19 = *(*v1 + 136);
    v20 = *(v1 + v19);
    *(v1 + v19) = v18;
    v21 = v18;

    if (qword_27F580290 != -1)
    {
      swift_once();
    }

    v22 = sub_253148A94();
    __swift_project_value_buffer(v22, qword_27F5817F0);

    v23 = sub_253148A74();
    v24 = sub_253149094();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 136315138;
      v42 = *(v1 + v19);
      v43 = v26;
      v27 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818B0, &qword_25314E9C8);
      v28 = sub_253148B74();
      v30 = sub_253146498(v28, v29, &v43);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_2530B8000, v23, v24, "Setting current token to %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x259BFDC60](v26, -1, -1);
      MEMORY[0x259BFDC60](v25, -1, -1);
    }
  }

  else
  {
    if (qword_27F580290 != -1)
    {
      swift_once();
    }

    v31 = sub_253148A94();
    __swift_project_value_buffer(v31, qword_27F5817F0);

    v32 = sub_253148A74();
    v33 = sub_253149094();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *v34 = 136315138;
      v42 = *(v1 + *(*v1 + 136));
      v36 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818B0, &qword_25314E9C8);
      v37 = sub_253148B74();
      v39 = sub_253146498(v37, v38, &v43);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2530B8000, v32, v33, "Unable to update current token, leaving as %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x259BFDC60](v35, -1, -1);
      MEMORY[0x259BFDC60](v34, -1, -1);
    }
  }
}

uint64_t sub_2530F8750(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581888, &qword_25314E9A8);
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v2[13] = *(v5 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = *(v3 + 88);
  v2[17] = *(v3 + 80);
  v2[18] = swift_getAssociatedTypeWitness();
  v2[19] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[20] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v2[21] = v7;
  v8 = *(v7 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530F8934, v1, 0);
}

uint64_t sub_2530F8934()
{
  v61 = v0;
  if (qword_27F580290 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_253148A94();
  __swift_project_value_buffer(v2, qword_27F5817F0);

  v3 = sub_253148A74();
  v4 = sub_2531490A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = v0[22];
    v7 = v0[20];
    v56 = v0[18];
    v58 = v0[19];
    v55 = v0[17];
    v8 = v0[16];
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v60 = v54;
    *v10 = 136315138;
    v11 = v9 + *(*v9 + 104);
    (*(v8 + 48))(v55, v8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = (*(AssociatedConformanceWitness + 8))(v7, AssociatedConformanceWitness);
    v15 = v14;
    (*(v5 + 8))(v6, v7);

    if (!v15)
    {
      __break(1u);
      return result;
    }

    v17 = sub_253146498(v13, v15, &v60);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_2530B8000, v3, v4, "Persistent store changed: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x259BFDC60](v54, -1, -1);
    MEMORY[0x259BFDC60](v10, -1, -1);
  }

  else
  {
    v18 = v0[10];
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  v22 = *(*v20 + 136);
  v23 = *(v20 + v22);
  v0[23] = v23;
  v24 = v23;
  sub_253148994();
  v25 = *(v20 + v22);
  *(v20 + v22) = v0[5];

  if (v23)
  {
    v26 = v0[16];
    v27 = v0[14];
    v28 = v0[15];
    v29 = v0[12];
    v57 = v0[13];
    v59 = v0[17];
    v30 = v0[10];
    v31 = v0[11];
    v0[7] = v24;
    v32 = sub_2530CF970(0, &qword_27F5818A8, 0x277CBE4C0);
    v33 = v24;
    MEMORY[0x259BFC580](v0 + 7, v32);
    v0[8] = v30;
    (*(v29 + 16))(v27, v28, v31);
    v34 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v35 = swift_allocObject();
    v0[24] = v35;
    *(v35 + 16) = v59;
    *(v35 + 24) = v26;
    (*(v29 + 32))(v35 + v34, v27, v31);
    v36 = swift_task_alloc();
    v0[25] = v36;
    v37 = _s21ManagedObjectListenerCMa();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818B8, &unk_25314E9D0);
    WitnessTable = swift_getWitnessTable();
    *v36 = v0;
    v36[1] = sub_2530F8EBC;

    return sub_2530EEC10((v0 + 2), sub_2530FB958, v35, v37, v38, WitnessTable);
  }

  else
  {
    v40 = v0[10];

    v41 = sub_253148A74();
    v42 = sub_2531490C4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v60 = v44;
      *v43 = 136315138;
      v45 = *(v20 + v22);
      v0[6] = v45;
      v46 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818B0, &qword_25314E9C8);
      v47 = sub_253148B74();
      v49 = sub_253146498(v47, v48, &v60);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_2530B8000, v41, v42, "No previous CoreData token - ignoring change notification (current token: %s.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x259BFDC60](v44, -1, -1);
      MEMORY[0x259BFDC60](v43, -1, -1);
    }

    v50 = v0[22];
    v51 = v0[14];
    v52 = v0[15];

    v53 = v0[1];

    return v53();
  }
}

void sub_2530F8EBC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 192);
    v6 = *(v2 + 80);

    MEMORY[0x2822009F8](sub_2530F8FFC, v6, 0);
  }
}

uint64_t sub_2530F8FFC()
{
  v1 = *(v0 + 16);
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = *(v0 + 80);
    *(v0 + 216) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
    v3 = *(v2 + *(*v2 + 120));
    *(v0 + 232) = v3;

    return MEMORY[0x2822009F8](sub_2530F9104, v3, 0);
  }

  else
  {
    v4 = *(v0 + 184);
    (*(*(v0 + 96) + 8))(*(v0 + 120), *(v0 + 88));

    v5 = *(v0 + 176);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2530F9104()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[10];
  sub_2530F7D04(v2, v0[28], v0[27]);
  sub_2530DCF54(v2);

  return MEMORY[0x2822009F8](sub_2530F91A0, v3, 0);
}

uint64_t sub_2530F91A0()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];

  (*(v4 + 8))(v2, v3);
  v5 = v0[22];
  v6 = v0[14];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

void sub_2530F9248(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818C8, &unk_25314E9F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v72 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581888, &qword_25314E9A8);
  sub_253148994();
  v9 = v77;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_2530F9A48(v9, a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v2)
  {

    goto LABEL_3;
  }

  v13 = v12;
  v76 = v8;
  v72[1] = 0;

  if (v13 >> 62)
  {
    goto LABEL_51;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v16 = v76;
  if (!v15)
  {
    goto LABEL_52;
  }

  do
  {
    v72[0] = a2;
    *&v77 = MEMORY[0x277D84F98];
    *(&v77 + 1) = MEMORY[0x277D84F98];
    v78 = MEMORY[0x277D84F98];
    v75 = v15 - 1;
    if (v15 < 1)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      sub_2530CF970(0, &qword_27F5818D0, 0x277CBE448);
      sub_253149784();
      __break(1u);
      return;
    }

    v17 = 0;
    a2 = v13 & 0xC000000000000001;
    *&v14 = 138412290;
    v74 = v14;
    *&v14 = 134218242;
    v73 = v14;
    if ((v13 & 0xC000000000000001) != 0)
    {
LABEL_8:
      v18 = MEMORY[0x259BFD000](v17, v13);
      goto LABEL_10;
    }

    while (1)
    {
      v18 = *(v13 + 8 * v17 + 32);
LABEL_10:
      v19 = v18;
      if (qword_27F580290 != -1)
      {
        swift_once();
      }

      v20 = sub_253148A94();
      __swift_project_value_buffer(v20, qword_27F5817F0);
      v21 = v19;
      v22 = sub_253148A74();
      v23 = sub_2531490A4();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = v74;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&dword_2530B8000, v22, v23, "Processing change: %@", v24, 0xCu);
        sub_2530CD33C(v25, &qword_27F581E10, &qword_25314F640);
        v27 = v25;
        v16 = v76;
        MEMORY[0x259BFDC60](v27, -1, -1);
        MEMORY[0x259BFDC60](v24, -1, -1);
      }

      v28 = [v21 changeType];
      if (v28 == 2)
      {
        sub_25310D890(v21);

        goto LABEL_44;
      }

      if (v28 == 1)
      {
        sub_25310D68C(v21);

        goto LABEL_44;
      }

      if (!v28)
      {
        break;
      }

      if (qword_27F5802A8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v20, qword_27F581A28);
      v45 = v21;
      v46 = sub_253148A74();
      v47 = sub_2531490B4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = v73;
        *(v48 + 4) = [v45 changeType];

        *(v48 + 12) = 2112;
        *(v48 + 14) = v45;
        *v49 = v45;
        v50 = v45;
        _os_log_impl(&dword_2530B8000, v46, v47, "Skipping change with unknown change type %ld: %@", v48, 0x16u);
        sub_2530CD33C(v49, &qword_27F581E10, &qword_25314F640);
        v51 = v49;
        v16 = v76;
        MEMORY[0x259BFDC60](v51, -1, -1);
        MEMORY[0x259BFDC60](v48, -1, -1);
      }

      else
      {
      }

LABEL_44:
      if (v75 == v17)
      {

        v66 = v78;
        v67 = v72[0];
        *v72[0] = v77;
        *(v67 + 16) = v66;
        return;
      }

      ++v17;
      if (a2)
      {
        goto LABEL_8;
      }
    }

    v29 = [v21 changedObjectID];
    v30 = v29;
    if (*(v77 + 16))
    {
      sub_25311DB04(v29);
      if (v31)
      {
        goto LABEL_54;
      }
    }

    v32 = v78;
    if (v78[2])
    {
      v33 = sub_25311DB04(v30);
      if (v34)
      {
        goto LABEL_49;
      }
    }

    v35 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
    (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
    sub_2530CD33C(v16, &qword_27F5818C8, &unk_25314E9F0);
    v36 = v30;
    v32 = v77;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v32;
    v16 = sub_25311DB04(v36);
    v39 = v32[2];
    v40 = (v38 & 1) == 0;
    v33 = v39 + v40;
    if (!__OFADD__(v39, v40))
    {
      v41 = v38;
      if (v32[3] < v33)
      {
        sub_25312DBC4(v33, isUniquelyReferenced_nonNull_native);
        v42 = sub_25311DB04(v36);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_55;
        }

        v16 = v42;
        v44 = v79;
        if ((v41 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_35:
        v52 = v44[7];
        v53 = *(v52 + 8 * v16);
        *(v52 + 8 * v16) = v36;

LABEL_39:
        *&v77 = v44;
        v58 = *(&v77 + 1);
        v59 = sub_25311DB04(v36);
        v16 = v76;
        if (v60)
        {
          v61 = v59;
          v62 = swift_isUniquelyReferenced_nonNull_native();
          v79 = v58;
          if ((v62 & 1) == 0)
          {
            sub_25312C0C0();
            v58 = v79;
          }

          v63 = *(v58 + 56) + 16 * v61;
          v65 = *v63;
          v64 = *(v63 + 8);
          sub_25312F03C(v61, v58);

          *(&v77 + 1) = v58;
          v16 = v76;
        }

        else
        {
        }

        goto LABEL_44;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v44 = v79;
        if (v38)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_25312C244();
        v44 = v79;
        if (v41)
        {
          goto LABEL_35;
        }
      }

LABEL_37:
      v44[(v16 >> 6) + 8] |= 1 << v16;
      *(v44[6] + 8 * v16) = v36;
      *(v44[7] + 8 * v16) = v36;
      v54 = v44[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_50;
      }

      v44[2] = v56;
      v57 = v36;
      goto LABEL_39;
    }

    __break(1u);
LABEL_49:
    v68 = v32[7];
    a2 = v33;
    v69 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
    v70 = *(v69 - 8);
    sub_2530FBB74(v68 + *(v70 + 72) * a2, v16);
    v71 = *(v70 + 56);
    v13 = v70 + 56;
    v71(v16, 0, 1, v69);
    sub_2530CD33C(v16, &qword_27F5818C8, &unk_25314E9F0);
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v15 = sub_2531492E4();
    v16 = v76;
  }

  while (v15);
LABEL_52:

LABEL_3:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

unint64_t sub_2530F9A48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = [objc_opt_self() fetchHistoryAfterToken_];
  [v9 setResultType_];
  [v9 setFetchBatchSize_];
  if (qword_27F580290 != -1)
  {
    swift_once();
  }

  v10 = sub_253148A94();
  __swift_project_value_buffer(v10, qword_27F5817F0);
  v11 = a1;
  v12 = sub_253148A74();
  v13 = sub_253149094();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = v9;
    v16 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v16 = a1;
    v17 = v11;
    _os_log_impl(&dword_2530B8000, v12, v13, "Fetching history since %@", v14, 0xCu);
    sub_2530CD33C(v16, &qword_27F581E10, &qword_25314F640);
    v18 = v16;
    v9 = v15;
    MEMORY[0x259BFDC60](v18, -1, -1);
    v19 = v14;
    v5 = v4;
    MEMORY[0x259BFDC60](v19, -1, -1);
  }

  (*(a4 + 80))(0, a3, a4);
  if (v5)
  {
    v20 = sub_253148A74();
    v21 = sub_2531490B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2530B8000, v20, v21, "Failed to unpin managed object context.", v22, 2u);
      MEMORY[0x259BFDC60](v22, -1, -1);
    }

    swift_willThrow();
    return v21;
  }

  v23 = (*(a4 + 40))(v9, a3, a4);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    goto LABEL_21;
  }

  if ([v24 result])
  {
    sub_253149224();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (!*(&v32 + 1))
  {
    sub_2530CD33C(v33, &qword_27F5818A0, &qword_25314E9C0);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818D8, &qword_25314EA00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    return MEMORY[0x277D84F90];
  }

  v26 = v34;

  v27 = sub_253148A74();
  v28 = sub_253149094();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    if (v26 >> 62)
    {
      v30 = sub_2531492E4();
    }

    else
    {
      v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v29 + 4) = v30;

    _os_log_impl(&dword_2530B8000, v27, v28, "Found %ld transactions since last token.", v29, 0xCu);
    MEMORY[0x259BFDC60](v29, -1, -1);
  }

  else
  {
  }

  v21 = sub_2530FB4F8(v26);

  return v21;
}

uint64_t sub_2530F9FBC()
{
  v1[2] = v0;
  v2 = *v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = *(v2 + 88);
  v1[5] = *(v2 + 80);
  v1[6] = swift_getAssociatedTypeWitness();
  v1[7] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[8] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530FA15C, v0, 0);
}

uint64_t sub_2530FA15C()
{
  v2 = v0[4].i64[1];
  v1 = v0[5].i64[0];
  v4 = v0[3].i64[1];
  v3 = v0[4].i64[0];
  v6 = v0[2].i64[1];
  v5 = v0[3].i64[0];
  v7 = v0[2].i64[0];
  v8 = v0[1].i64[0];
  sub_2530F8218();
  v9 = v8 + *(*v8 + 104);
  (*(v7 + 48))(v6, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 8))(v3, AssociatedConformanceWitness);
  v13 = v12;
  result = (*(v2 + 8))(v1, v3);
  if (v13)
  {
    v15 = v0[5].i64[0];
    v17 = v0[1].i64[0];
    v16 = v0[1].i64[1];
    v18 = *(v17 + *(*v17 + 112));
    v19 = *MEMORY[0x277CBE260];
    v28 = v0[2];
    v20 = sub_253149134();
    v21 = sub_253148DE4();
    (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[1].i64[0] = 0;
    v23[1].i64[1] = 0;
    v23[2] = vextq_s8(v28, v28, 8uLL);
    v23[3].i64[0] = v20;
    v23[3].i64[1] = v22;
    v23[4].i64[0] = v11;
    v23[4].i64[1] = v13;
    v24 = sub_253112858(0, 0, v16, &unk_25314E9A0, v23);
    v25 = *(*v17 + 128);
    v26 = *(v17 + v25);
    *(v17 + v25) = v24;

    v27 = v0->i64[1];

    return v27();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2530FA3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581888, &qword_25314E9A8);
  v7[36] = v8;
  v9 = *(v8 - 8);
  v7[37] = v9;
  v10 = *(v9 + 64) + 15;
  v7[38] = swift_task_alloc();
  v11 = sub_253148414();
  v7[39] = v11;
  v12 = *(v11 - 8);
  v7[40] = v12;
  v13 = *(v12 + 64) + 15;
  v7[41] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581890, &unk_25314E9B0) - 8) + 64) + 15;
  v7[42] = swift_task_alloc();
  v15 = sub_253149124();
  v7[43] = v15;
  v16 = *(v15 - 8);
  v7[44] = v16;
  v17 = *(v16 + 64) + 15;
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530FA57C, 0, 0);
}

uint64_t sub_2530FA57C()
{
  v1 = v0[45];
  v2 = v0[32];
  v3 = v0[33];

  sub_253149114();
  swift_beginAccess();
  v4 = *MEMORY[0x277CBE200];
  v0[46] = *MEMORY[0x277CBE300];
  v0[47] = v4;
  v5 = sub_2530FB4A0();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[48] = v7;
  *v7 = v0;
  v7[1] = sub_2530FA66C;
  v8 = v0[45];
  v9 = v0[42];
  v10 = v0[43];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_2530FA66C()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_2530FAF08;
  }

  else
  {
    v3 = sub_2530FA780;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2530FA79C()
{
  v67 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v4 = *(v0 + 264);
    (*(v3 + 32))(*(v0 + 328), v1, v2);
    Strong = swift_weakLoadStrong();
    *(v0 + 400) = Strong;
    if (Strong)
    {
      v6 = sub_253148404();
      if (v6)
      {
        v7 = v6;
        v8 = *(v0 + 368);
        *(v0 + 184) = sub_253148B64();
        *(v0 + 192) = v9;
        sub_253149364();
        if (*(v7 + 16))
        {
          v10 = sub_25311D980(v0 + 16);
          if (v11)
          {
            sub_2530C0304(*(v7 + 56) + 32 * v10, v0 + 96);
            sub_2530FB904(v0 + 16);

            if (*(v0 + 120))
            {
              if (swift_dynamicCast())
              {
                v13 = *(v0 + 200);
                v12 = *(v0 + 208);
                if (v13 != *(v0 + 272) || v12 != *(v0 + 280))
                {
                  v14 = *(v0 + 200);
                  v15 = *(v0 + 208);
                  if ((sub_253149734() & 1) == 0)
                  {
                    if (qword_27F580290 != -1)
                    {
                      swift_once();
                    }

                    v51 = *(v0 + 280);
                    v52 = sub_253148A94();
                    __swift_project_value_buffer(v52, qword_27F5817F0);

                    v53 = sub_253148A74();
                    v54 = sub_2531490A4();

                    v55 = os_log_type_enabled(v53, v54);
                    v56 = *(v0 + 320);
                    v57 = *(v0 + 328);
                    v58 = *(v0 + 312);
                    if (v55)
                    {
                      v62 = *(v0 + 272);
                      v63 = *(v0 + 280);
                      v65 = *(v0 + 312);
                      v59 = swift_slowAlloc();
                      v64 = v57;
                      v60 = swift_slowAlloc();
                      v66 = v60;
                      *v59 = 136315394;
                      *(v59 + 4) = sub_253146498(v62, v63, &v66);
                      *(v59 + 12) = 2080;
                      v61 = sub_253146498(v13, v12, &v66);

                      *(v59 + 14) = v61;
                      _os_log_impl(&dword_2530B8000, v53, v54, "Persistent store identifier mismatch: expected %s, got %s", v59, 0x16u);
                      swift_arrayDestroy();
                      MEMORY[0x259BFDC60](v60, -1, -1);
                      MEMORY[0x259BFDC60](v59, -1, -1);

                      (*(v56 + 8))(v64, v65);
                    }

                    else
                    {

                      (*(v56 + 8))(v57, v58);
                    }

                    goto LABEL_32;
                  }
                }

                v16 = *(v0 + 328);

                v17 = sub_253148404();
                if (v17)
                {
                  v18 = v17;
                  v19 = *(v0 + 376);
                  *(v0 + 216) = sub_253148B64();
                  *(v0 + 224) = v20;
                  sub_253149364();
                  if (*(v18 + 16))
                  {
                    v21 = sub_25311D980(v0 + 56);
                    if (v22)
                    {
                      sub_2530C0304(*(v18 + 56) + 32 * v21, v0 + 128);
                      sub_2530FB904(v0 + 56);

                      if (*(v0 + 152))
                      {
                        v23 = sub_2530CF970(0, &qword_27F5818A8, 0x277CBE4C0);
                        if (swift_dynamicCast())
                        {
                          v24 = *(v0 + 304);
                          v25 = *(v0 + 240);
                          *(v0 + 408) = v25;
                          *(v0 + 248) = v25;
                          v26 = v25;
                          MEMORY[0x259BFC580](v0 + 248, v23);
                          v27 = swift_task_alloc();
                          *(v0 + 416) = v27;
                          *v27 = v0;
                          v27[1] = sub_2530FAF94;
                          v28 = *(v0 + 304);

                          return sub_2530F8750(v28);
                        }

                        goto LABEL_38;
                      }

LABEL_37:
                      sub_2530CD33C(v0 + 128, &qword_27F5818A0, &qword_25314E9C0);
LABEL_38:
                      if (qword_27F580290 != -1)
                      {
                        swift_once();
                      }

                      v49 = sub_253148A94();
                      __swift_project_value_buffer(v49, qword_27F5817F0);
                      v35 = sub_253148A74();
                      v36 = sub_2531490A4();
                      v50 = os_log_type_enabled(v35, v36);
                      v39 = *(v0 + 320);
                      v38 = *(v0 + 328);
                      v40 = *(v0 + 312);
                      if (!v50)
                      {
                        goto LABEL_31;
                      }

                      v41 = swift_slowAlloc();
                      *v41 = 0;
                      v42 = "NSPersistentStoreRemoteChange notification missing history token";
LABEL_30:
                      _os_log_impl(&dword_2530B8000, v35, v36, v42, v41, 2u);
                      MEMORY[0x259BFDC60](v41, -1, -1);
LABEL_31:

                      (*(v39 + 8))(v38, v40);
LABEL_32:
                      v43 = sub_2530FB4A0();
                      v44 = *(MEMORY[0x277D856D0] + 4);
                      v45 = swift_task_alloc();
                      *(v0 + 384) = v45;
                      *v45 = v0;
                      v45[1] = sub_2530FA66C;
                      v46 = *(v0 + 360);
                      v47 = *(v0 + 336);
                      v48 = *(v0 + 344);

                      return MEMORY[0x282200308](v47, v48, v43);
                    }
                  }

                  sub_2530FB904(v0 + 56);
                }

                *(v0 + 128) = 0u;
                *(v0 + 144) = 0u;
                goto LABEL_37;
              }

LABEL_26:
              if (qword_27F580290 != -1)
              {
                swift_once();
              }

              v34 = sub_253148A94();
              __swift_project_value_buffer(v34, qword_27F5817F0);
              v35 = sub_253148A74();
              v36 = sub_2531490A4();
              v37 = os_log_type_enabled(v35, v36);
              v39 = *(v0 + 320);
              v38 = *(v0 + 328);
              v40 = *(v0 + 312);
              if (!v37)
              {
                goto LABEL_31;
              }

              v41 = swift_slowAlloc();
              *v41 = 0;
              v42 = "No store identifier in persistent store changed notification.";
              goto LABEL_30;
            }

LABEL_25:
            sub_2530CD33C(v0 + 96, &qword_27F5818A0, &qword_25314E9C0);
            goto LABEL_26;
          }
        }

        sub_2530FB904(v0 + 16);
      }

      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      goto LABEL_25;
    }

    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    v30 = *(v0 + 336);
  }

  v31 = *(v0 + 328);
  v32 = *(v0 + 304);
  (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_2530FAF08()
{
  *(v0 + 232) = *(v0 + 392);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2530FAF94()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v4 = *(*v0 + 288);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2530FB0EC, 0, 0);
}

uint64_t sub_2530FB0EC()
{
  v1 = v0[50];
  v2 = v0[51];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];

  (*(v4 + 8))(v3, v5);
  v6 = sub_2530FB4A0();
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = sub_2530FA66C;
  v9 = v0[45];
  v10 = v0[42];
  v11 = v0[43];

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_2530FB1C8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2530FB1E8, v1, 0);
}

uint64_t sub_2530FB1E8()
{
  v1 = *(*(v0 + 24) + *(**(v0 + 24) + 120));
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2530FB220, v1, 0);
}

uint64_t sub_2530FB220()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_2530C38D8(1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2530FB288()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2530CD684;

  return sub_2530F9FBC();
}

uint64_t sub_2530FB318(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530BF218;

  return sub_2530FB1C8(a1);
}

uint64_t sub_2530FB3B4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2530BF218;

  return sub_2530FA3B8(a1, v6, v7, v8, v9, v11, v10);
}

unint64_t sub_2530FB4A0()
{
  result = qword_27F581898;
  if (!qword_27F581898)
  {
    sub_253149124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581898);
  }

  return result;
}

unint64_t sub_2530FB4F8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = &qword_27F5818E8;
    v31 = v1;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x259BFD000](v2, v30);
      }

      else
      {
        if (v2 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject changes];
      if (v7)
      {
        v8 = v7;
        sub_2530CF970(0, &qword_27F5818E0, 0x277CBE4A8);
        v9 = sub_253148C94();

        v5 = v8;
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = sub_2531492E4();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2531492E4();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_43:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_43;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v12)
        {
          goto LABEL_24;
        }

        v14 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = v3;
          goto LABEL_26;
        }
      }

      else
      {
        if (v12)
        {
LABEL_24:
          sub_2531492E4();
          goto LABEL_25;
        }

        v14 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_25:
      isUniquelyReferenced_nonNull_bridgeObject = sub_253149414();
      v38 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_2531492E4();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_30:
          if (((v17 >> 1) - v16) < v11)
          {
            goto LABEL_47;
          }

          v36 = v2;
          v20 = v14 + 8 * v16 + 32;
          v32 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_49;
            }

            sub_2530FBBD8();
            for (i = 0; i != v18; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v4, qword_25314EA08);
              v22 = v4;
              v23 = sub_2530FBAEC(v37, i, v9);
              v25 = *v24;
              (v23)(v37, 0);
              v4 = v22;
              *(v20 + 8 * i) = v25;
            }
          }

          else
          {
            sub_2530CF970(0, &qword_27F5818E0, 0x277CBE4A8);
            swift_arrayInitWithCopy();
          }

          v2 = v36;
          v1 = v31;
          v3 = v38;
          if (v11 >= 1)
          {
            v26 = *(v32 + 16);
            v6 = __OFADD__(v26, v11);
            v27 = v26 + v11;
            if (v6)
            {
              goto LABEL_48;
            }

            *(v32 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_30;
        }
      }

      v3 = v38;
      if (v11 > 0)
      {
        goto LABEL_46;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_2531492E4();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2530FB890(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

void sub_2530FB958(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581888, &qword_25314E9A8) - 8) + 80);
  sub_2530F9248(a1, a2);
}

uint64_t sub_2530FB9F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807E0, &qword_25314C5B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_2530FBA64(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x259BFD000](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_2530FBAE4;
  }

  __break(1u);
  return result;
}

void (*sub_2530FBAEC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259BFD000](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2530FBB6C;
  }

  __break(1u);
  return result;
}

uint64_t sub_2530FBB74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2530FBBD8()
{
  result = qword_27F5818F0;
  if (!qword_27F5818F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5818E8, qword_25314EA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5818F0);
  }

  return result;
}

unint64_t sub_2530FBC40()
{
  result = qword_27F580968;
  if (!qword_27F580968)
  {
    type metadata accessor for HMCDHomeModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580968);
  }

  return result;
}

void sub_2530FBCA8()
{
  v1 = v0;
  v2 = sub_253148944();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 managedObjectContext];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [v7 persistentStoreCoordinator];

  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = [v9 persistentStores];

  sub_2530FC2B4();
  v11 = sub_253148C94();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_15;
  }

  if (!sub_2531492E4())
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x259BFD000](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  sub_253145A04(&v21);
  v14 = *(&v21 + 1);
  if (*(&v21 + 1) >> 60 != 15)
  {
    v15 = v21;
    v16 = objc_opt_self();
    v17 = [v1 modelID];
    sub_253148924();

    v18 = sub_253148904();
    (*(v3 + 8))(v6, v2);
    v19 = sub_2531488A4();
    v20 = [v16 hmf:v18 UUIDWithNamespace:v19 data:0 salts:?];

    sub_253148924();
    sub_2530FC300(v15, v14);

    return;
  }

LABEL_15:
  sub_253149594();
  __break(1u);
}

uint64_t sub_2530FBFCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v8 modelID];
  sub_253148924();

  v12 = [a1 name];
  v13 = sub_253148B64();
  v15 = v14;

  v16 = *(a2 + 24);
  v17 = &v10[*(a2 + 20)];
  *v17 = v13;
  v17[1] = v15;
  sub_2530FBCA8();

  sub_2530FC250(v10, a3);
  return (*(v6 + 56))(a3, 0, 1, a2);
}

uint64_t sub_2530FC110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314E1C0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D0A0 = v1;
  return result;
}

uint64_t sub_2530FC1F4()
{
  if (qword_27F580298 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2530FC250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Home();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2530FC2B4()
{
  result = qword_27F581398;
  if (!qword_27F581398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F581398);
  }

  return result;
}

uint64_t sub_2530FC300(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2530C2478(a1, a2);
  }

  return a1;
}

uint64_t sub_2530FC314@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[2] = a5;
  v13 = type metadata accessor for AnyModelStateChange(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(a6 + 32))(&v20, a2, a4, a6);
  (*(*(a4 - 8) + 8))(a3, a4);
  swift_unknownObjectRelease();
  sub_2530BDB14(&v20, v21);
  sub_2530BDB14(v21, v17);
  swift_storeEnumTagMultiPayload();
  sub_2530FD070(v17, a7);
  return (*(v14 + 56))(a7, 0, 1, v13);
}

uint64_t sub_2530FC678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[2] = a5;
  v13 = type metadata accessor for AnyModelStateChange(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = *(a1 + 8);

  (*(a6 + 32))(&v22, a2, a4, a6);
  (*(*(a4 - 8) + 8))(a3, a4);
  swift_unknownObjectRelease();
  sub_2530BDB14(&v22, v23);
  sub_2530BDB14(v23, v17);
  swift_storeEnumTagMultiPayload();
  sub_2530FD070(v17, a7);
  return (*(v14 + 56))(a7, 0, 1, v13);
}