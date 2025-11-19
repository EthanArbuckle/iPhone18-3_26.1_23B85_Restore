uint64_t sub_21533B044@<X0>(void *a1@<X8>)
{
  v2 = sub_21549E18C();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  sub_2154A1D6C();
  sub_2154A2D3C();
  if (!*(v3 + 16) || (v4 = sub_2153B1010(v11), (v5 & 1) == 0))
  {

    sub_21533FC34(v11);
LABEL_8:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_9;
  }

  sub_21533FC88(*(v3 + 56) + 32 * v4, &v12);
  sub_21533FC34(v11);

  if (!*(&v13 + 1))
  {
LABEL_9:
    sub_2151ADCD8(&v12, &qword_27CA5ABC0);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ABC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *a1 = 0;
  }

  v6 = sub_21549E18C();
  if (!v6)
  {
LABEL_18:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_19;
  }

  v7 = v6;
  sub_2154A1D6C();
  sub_2154A2D3C();
  if (!*(v7 + 16) || (v8 = sub_2153B1010(v11), (v9 & 1) == 0))
  {

    sub_21533FC34(v11);
    goto LABEL_18;
  }

  sub_21533FC88(*(v7 + 56) + 32 * v8, &v12);
  sub_21533FC34(v11);

  if (!*(&v13 + 1))
  {
LABEL_19:
    result = sub_2151ADCD8(&v12, &qword_27CA5ABC0);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ABC8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_20:
    a1[1] = 0;
  }

  return result;
}

uint64_t *sub_21533B250(uint64_t *result, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v2 = result[1];
  if (*result)
  {
    v54 = a2;
    v55 = 0;
    v53 = v2;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x277D84FA0];
      v58 = MEMORY[0x277D84FA0];

      sub_2154A2C3C();
      v5 = sub_2154A2CDC();
      if (v5)
      {
        v6 = v5;
        sub_2151A6C9C(0, &unk_27CA5AB90);
        v7 = v6;
        v8 = 1;
        do
        {
          v56 = v7;
          swift_dynamicCast();
          objc_opt_self();
          v9 = swift_dynamicCastObjCClass();
          if (v9 && ([v9 isMentionAttachment] & 1) != 0)
          {
            v10 = v57;
            v11 = v4[2];
            if (v4[3] <= v11)
            {
              sub_2153EB5C8(v11 + 1);
            }

            v4 = v58;
            v12 = sub_2154A290C();
            v13 = v58 + 56;
            v14 = -1 << *(v58 + 32);
            v15 = v12 & ~v14;
            v16 = v15 >> 6;
            if (((-1 << v15) & ~*(v58 + 56 + 8 * (v15 >> 6))) != 0)
            {
              v17 = __clz(__rbit64((-1 << v15) & ~*(v58 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v18 = 0;
              v19 = (63 - v14) >> 6;
              do
              {
                if (++v16 == v19 && (v18 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_55;
                }

                v20 = v16 == v19;
                if (v16 == v19)
                {
                  v16 = 0;
                }

                v18 |= v20;
                v21 = *(v13 + 8 * v16);
              }

              while (v21 == -1);
              v17 = __clz(__rbit64(~v21)) + (v16 << 6);
            }

            *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
            *(v4[6] + 8 * v17) = v10;
            ++v4[2];
          }

          else
          {
          }

          v7 = sub_2154A2CDC();
        }

        while (v7);
      }

LABEL_40:
      v2 = v53;
      v40 = sub_215364B0C(v4);

      v41 = sub_21533B868(v40);

      if (!v41)
      {
        goto LABEL_46;
      }

      if (v41 >> 62)
      {
        if (sub_2154A2C8C() >= 1)
        {
LABEL_43:
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v43 = Strong;
            sub_2153377AC(v41);
          }
        }
      }

      else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_46;
    }

    v22 = *(v3 + 32);
    v23 = v22 & 0x3F;
    v24 = ((1 << v22) + 63) >> 6;
    v25 = 8 * v24;

    if (v23 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v50 = swift_slowAlloc();
        v4 = sub_21533CAEC(v50, v24, v3, sub_21533B818);
        v55 = 0;

        MEMORY[0x21606B520](v50, -1, -1);
        goto LABEL_40;
      }
    }

    v51 = &v51;
    v52 = v24;
    MEMORY[0x28223BE20](v26);
    v27 = &v51 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v25);
    v28 = 0;
    v29 = 0;
    v30 = 1 << *(v3 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v3 + 56);
    v33 = (v30 + 63) >> 6;
    v8 = 0x277D35000uLL;
    while (v32)
    {
      v34 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_34:
      v37 = v34 | (v29 << 6);
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        if ([v38 isMentionAttachment])
        {
          *&v27[(v37 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v37;
          if (__OFADD__(v28++, 1))
          {
            __break(1u);
LABEL_39:
            v4 = sub_21531AF8C(v27, v52, v28, v3);
            goto LABEL_40;
          }
        }
      }
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
        goto LABEL_39;
      }

      v36 = *(v3 + 56 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v32 = (v36 - 1) & v36;
        goto LABEL_34;
      }
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_46:
  if (!v2)
  {
    return result;
  }

  sub_21533CB7C(v2);
  v8 = v44;

  swift_beginAccess();
  v45 = swift_unknownObjectWeakLoadStrong();
  if (v45)
  {
    v46 = OBJC_IVAR___ICSharedWithYouControllerInternal_objectIdsOfEditedNotes;
    v47 = v45;
    swift_beginAccess();
    *&v47[v46] = MEMORY[0x277D84FA0];
  }

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_51;
    }
  }

LABEL_56:
  if (sub_2154A2C8C() >= 1)
  {
LABEL_51:
    swift_beginAccess();
    v48 = swift_unknownObjectWeakLoadStrong();
    if (v48)
    {
      v49 = v48;
      sub_215337218(v8);
    }
  }
}

id sub_21533B818()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result isMentionAttachment];
  }

  return result;
}

uint64_t sub_21533B868(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_2154A2E2C();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x216069960](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_2154A2E0C();
      sub_2154A2E4C();
      sub_2154A2E5C();
      sub_2154A2E1C();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_2154A2C8C();
    sub_2154A2E2C();
  }

  return v8;
}

id sub_21533B9D0(unint64_t a1, id a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {
    v4 = sub_2154A2C8C();
    if (!v4)
    {
      return [a2 ic_save];
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return [a2 ic_save];
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  for (i = 0; i != v4; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x216069960](i, a1);
    }

    else
    {
      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    v14[0] = 0;
    v10 = [a2 existingObjectWithID:v8 error:v14];
    if (v10)
    {
      v6 = v10;
      v7 = v14[0];
      [a2 deleteObject_];
    }

    else
    {
      v11 = v14[0];
      v12 = sub_21549E3DC();

      swift_willThrow();
    }
  }

  return [a2 ic_save];
}

id SharedWithYouController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___ICSharedWithYouControllerInternal_shareObservers;
  swift_beginAccess();
  *&v1[v3] = MEMORY[0x277D84FA0];

  if (*&v1[OBJC_IVAR___ICSharedWithYouControllerInternal_viewContextObjectsDidChangeObserver])
  {

    sub_21549F31C();
  }

  if (*&v1[OBJC_IVAR___ICSharedWithYouControllerInternal_viewContextDidSaveObserver])
  {

    sub_21549F31C();
  }

  *&v1[OBJC_IVAR___ICSharedWithYouControllerInternal_accountsDidChangeObserver] = 0;

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for SharedWithYouController()
{
  result = qword_2811999A8;
  if (!qword_2811999A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21533BDA4()
{
  result = sub_21549F11C();
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

void sub_21533BED0(uint64_t a1, char a2, void *a3)
{
  v7 = sub_21549E56C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AAE0);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = v53 - v14;
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_22;
  }

  v53[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v57 = *(v13 + 72);
  v59 = a1;
  sub_215324EEC(a1 + v17, v53 - v14, &qword_27CA5AAE0);
  v54 = v8;
  v60 = *(v8 + 32);
  v61 = v7;
  v60(v10, v15, v7);
  v56 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_2153B0F3C(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_2153D95A4(v25, a2 & 1);
    v20 = sub_2153B0F3C(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_2154A300C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  sub_2153DC338();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v64 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88);
    v30 = swift_dynamicCast();
    v31 = v54;
    if ((v30 & 1) == 0)
    {

      (*(v31 + 8))(v10, v61);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v55 = *(v54 + 72);
  v35 = v20;
  v60((v34 + v55 * v20), v10, v61);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v59;
    if (v58 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v59 + v57 + v17;
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_215324EEC(v39, v15, &qword_27CA5AAE0);
      v60(v10, v15, v61);
      v18 = *&v15[v56];
      v41 = *a3;
      v42 = sub_2153B0F3C(v10);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v24 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v24)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_2153D95A4(v46, 1);
        v42 = sub_2153B0F3C(v10);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v50 = v42;
      v60((v49[6] + v55 * v42), v10, v61);
      *(v49[7] + 8 * v50) = v18;
      v51 = v49[2];
      v24 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v49[2] = v52;
      v39 += v57;
      v38 = v59;
      if (v58 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_2154A2D9C();
  MEMORY[0x2160689F0](0xD00000000000001BLL, 0x80000002154D6090);
  sub_2154A2E9C();
  MEMORY[0x2160689F0](39, 0xE100000000000000);
  sub_2154A2EDC();
  __break(1u);
}

void sub_21533C414(uint64_t a1, char a2, void *a3)
{
  v7 = sub_21549E56C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AAF0);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v65 = *(a1 + 16);
  if (!v65)
  {
    goto LABEL_22;
  }

  v16 = &v15[*(v12 + 48)];
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v64 = *(v13 + 72);
  v66 = a1;
  v59 = v17;
  v60 = v3;
  sub_215324EEC(a1 + v17, &v58 - v14, &qword_27CA5AAF0);
  v61 = v8;
  v67 = *(v8 + 32);
  v68 = v7;
  v67(v10, v15, v7);
  v63 = v16;
  v18 = *v16;
  v19 = *(v16 + 1);
  v69 = a3;
  v20 = *a3;
  v21 = sub_2153B0F3C(v10);
  v23 = *(v20 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v22;
  if (*(v20 + 24) < v26)
  {
    sub_2153D95B8(v26, a2 & 1);
    v21 = sub_2153B0F3C(v10);
    if ((v27 & 1) != (v28 & 1))
    {
LABEL_5:
      sub_2154A300C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v27)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v31 = v21;
  sub_2153DC360();
  v21 = v31;
  if (v27)
  {
LABEL_9:
    v29 = swift_allocError();
    swift_willThrow();
    v72 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v61 + 8))(v10, v68);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = v68;
  v33 = *v69;
  *(*v69 + 8 * (v21 >> 6) + 64) |= 1 << v21;
  v34 = v33[6];
  v62 = *(v61 + 72);
  v35 = v21;
  v67((v34 + v62 * v21), v10, v32);
  v36 = (v33[7] + 16 * v35);
  *v36 = v18;
  v36[1] = v19;
  v37 = v33[2];
  v25 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (!v25)
  {
    v33[2] = v38;
    v39 = v66;
    if (v65 == 1)
    {
LABEL_22:

      return;
    }

    v40 = v66 + v64 + v59;
    v41 = 1;
    while (v41 < *(v39 + 16))
    {
      sub_215324EEC(v40, v15, &qword_27CA5AAF0);
      v67(v10, v15, v68);
      v42 = *v63;
      v43 = *(v63 + 1);
      v44 = *v69;
      v45 = sub_2153B0F3C(v10);
      v47 = v44[2];
      v48 = (v46 & 1) == 0;
      v25 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v25)
      {
        goto LABEL_23;
      }

      v50 = v46;
      if (v44[3] < v49)
      {
        sub_2153D95B8(v49, 1);
        v45 = sub_2153B0F3C(v10);
        if ((v50 & 1) != (v51 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v50)
      {
        goto LABEL_9;
      }

      v52 = v68;
      v53 = *v69;
      *(*v69 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v54 = v45;
      v67((v53[6] + v62 * v45), v10, v52);
      v55 = (v53[7] + 16 * v54);
      *v55 = v42;
      v55[1] = v43;
      v56 = v53[2];
      v25 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      ++v41;
      v53[2] = v57;
      v40 += v64;
      v39 = v66;
      if (v65 == v41)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_2154A2D9C();
  MEMORY[0x2160689F0](0xD00000000000001BLL, 0x80000002154D6090);
  sub_2154A2E9C();
  MEMORY[0x2160689F0](39, 0xE100000000000000);
  sub_2154A2EDC();
  __break(1u);
}

void sub_21533C980(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_21531AF8C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_21533CAEC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_21533C980(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_21533CB7C(uint64_t a1)
{
  v1 = a1;
  v41 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2154A2C3C();
    sub_2151A6C9C(0, &unk_27CA5AB90);
    sub_21533FBE4(&unk_27CA5ABB0, &unk_27CA5AB90);
    sub_2154A20FC();
    v1 = v36;
    v2 = v37;
    v4 = v38;
    v3 = v39;
    v5 = v40;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  v9 = (v4 + 64) >> 6;
  v32 = v1;
  v33 = v2;
LABEL_8:
  v10 = v3;
  if ((v1 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      while (1)
      {
        v11 = v10;
        v12 = v5;
        v3 = v10;
        if (!v5)
        {
          while (1)
          {
            v3 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v3 >= v9)
            {
              goto LABEL_38;
            }

            v12 = *(v2 + 8 * v3);
            ++v11;
            if (v12)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          return;
        }

LABEL_15:
        v34 = (v12 - 1) & v12;
        v13 = *(*(v1 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v12)))));
        if (!v13)
        {
          goto LABEL_38;
        }

LABEL_19:
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            break;
          }
        }

        v10 = v3;
        v5 = v34;
        if (v1 < 0)
        {
          goto LABEL_17;
        }
      }

      v17 = OBJC_IVAR___ICSharedWithYouControllerInternal_objectIdsOfEditedNotes;
      v18 = Strong;
      swift_beginAccess();
      v19 = *&v18[v17];
      v20 = v13;

      v21 = [v15 objectID];
      v22 = v21;
      if ((v19 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (!*(v19 + 16))
      {

LABEL_24:
        v10 = v3;
        v5 = v34;
        goto LABEL_25;
      }

      v31 = v20;
      sub_2151A6C9C(0, &qword_2811995F0);
      v25 = sub_2154A290C();
      v26 = -1 << *(v19 + 32);
      v27 = v25 & ~v26;
      if ((*(v19 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v28 = ~v26;
        while (1)
        {
          v29 = *(*(v19 + 48) + 8 * v27);
          v30 = sub_2154A291C();

          if (v30)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v19 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v1 = v32;
LABEL_35:
        MEMORY[0x216068AC0]();
        v9 = (v4 + 64) >> 6;
        v2 = v33;
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2154A1F8C();
        }

        sub_2154A1FAC();
        v5 = v34;
        goto LABEL_8;
      }

LABEL_32:

      v10 = v3;
      v5 = v34;
      v1 = v32;
LABEL_25:
      v9 = (v4 + 64) >> 6;
      v2 = v33;
      if (v1 < 0)
      {
        goto LABEL_17;
      }
    }

    v23 = v21;
    v24 = sub_2154A2CEC();

    v1 = v32;
    if (v24)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

LABEL_17:
  if (sub_2154A2CDC())
  {
    sub_2151A6C9C(0, &unk_27CA5AB90);
    swift_dynamicCast();
    v13 = v35;
    v3 = v10;
    v34 = v5;
    if (v35)
    {
      goto LABEL_19;
    }
  }

LABEL_38:
  sub_2151A66EC();
}

void sub_21533D008(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F98];
  v8 = objc_allocWithZone(MEMORY[0x277CBC3F8]);
  sub_21549E56C();
  v9 = sub_2154A1F3C();
  v11 = [v8 initWithShareURLs_];

  [v11 setShouldFetchRootRecord_];
  [v11 setQualityOfService_];

  sub_2154A26CC();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v7;

  sub_2154A26DC();
  [a2 addOperation_];
}

uint64_t sub_21533D184(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void, void, void *), uint64_t a5)
{
  v97 = a4;
  v98 = a5;
  v96 = a3;
  v108 = a2;
  v109 = a1;
  v5 = sub_2154A112C();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v103 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = v93 - v8;
  v110 = sub_2154A244C();
  v102 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v101 = (v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2154A241C();
  MEMORY[0x28223BE20](v10);
  v100 = (v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2154A110C();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_2154A10CC();
  MEMORY[0x28223BE20](v13);
  *(v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = 10;
  v94 = v15;
  v16 = *(v15 + 104);
  v107 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v17;
  v16();
  v18 = [objc_opt_self() sharedContext];
  v19 = [v18 containersByAccountID];

  sub_2151A6C9C(0, &qword_2811996B0);
  v20 = sub_2154A1C8C();

  v99 = sub_2153399F8(v20);
  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x277D84F98];
  v93[0] = v21 + 16;
  sub_2151A6C9C(0, &unk_2811995C0);
  sub_2154A10FC();
  v111 = MEMORY[0x277D84F90];
  sub_215337144(&unk_2811995D0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA48);
  sub_2151ACC5C(&unk_2811996D0, &unk_27CA5AA48);
  sub_2154A2BEC();
  (v102)[13](v101, *MEMORY[0x277D85260], v110);
  v22 = sub_2154A247C();
  v23 = swift_allocObject();
  v24 = v108;
  v23[2] = v99;
  v23[3] = v24;
  v23[4] = v22;
  v23[5] = v21;
  v110 = v23;
  isa = v20[2].isa;
  v93[1] = v21;
  v102 = v22;
  if (isa)
  {
    v100 = sub_215319170(isa, 0);
    v101 = sub_215365080(&v111, v100 + 4, isa, v20);
    v26 = v24;
    v27 = v22;

    result = sub_2151A66EC();
    if (v101 != isa)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

    v29 = v100;
  }

  else
  {
    v30 = v24;
    v31 = v22;

    v29 = MEMORY[0x277D84F90];
  }

  v113 = v29;
  v32 = [objc_opt_self() sharedInstance];
  v33 = [v32 primaryICloudACAccount];

  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v35 = [v33 identifier];

    if (v35)
    {
      v111 = 0;
      v112 = 0;
      sub_2154A1D5C();

      v36 = v112;
      if (v112)
      {
        v37 = v29[2];
        if (!v37)
        {
          goto LABEL_24;
        }

        v38 = 0;
        v39 = v111;
        v40 = v29 + 5;
        while (1)
        {
          v41 = *(v40 - 1) == v39 && v36 == *v40;
          if (v41 || (sub_2154A2FAC() & 1) != 0)
          {
            break;
          }

          ++v38;
          v40 += 2;
          if (v37 == v38)
          {
            goto LABEL_24;
          }
        }

        v42 = sub_2153CE7B8(v38);
        if (v20[2].isa)
        {
          v44 = sub_2153B0D68(v42, v43);
          v46 = v45;

          if (v46)
          {
            v47 = *(v20[7].isa + v44);
            v48 = dispatch_semaphore_create(0);
            v49 = swift_allocObject();
            v49[2] = sub_21533DDF0;
            v49[3] = v110;
            v49[4] = v47;
            v49[5] = v48;

            v50 = v47;
            v51 = v48;
            sub_21533D008(v109, v50, sub_21533DE14, v49);

            v52 = v103;
            sub_2154A111C();
            v53 = v104;
            MEMORY[0x216067CE0](v52, v107);
            v54 = v106;
            v55 = *(v105 + 8);
            v55(v52, v106);
            sub_2154A253C();
            v55(v53, v54);
            if ((sub_2154A10DC() & 1) == 0)
            {
              v56 = sub_21549F0FC();
              v57 = sub_2154A226C();
              if (os_log_type_enabled(v56, v57))
              {
                v58 = swift_slowAlloc();
                *v58 = 0;
                _os_log_impl(&dword_2151A1000, v56, v57, "SharedWithYouController fetchShareMetadata primaryAccountContainer timed out", v58, 2u);
                MEMORY[0x21606B520](v58, -1, -1);
              }
            }
          }
        }

        else
        {
LABEL_24:
        }
      }
    }
  }

  v59 = v113;
  v111 = v34;
  v60 = v113[2];
  if (!v60)
  {
    v62 = v34;
    goto LABEL_38;
  }

  v61 = 0;
  v62 = MEMORY[0x277D84F90];
  do
  {
    v63 = &v59[2 * v61 + 5];
    v64 = v61;
    while (1)
    {
      if (v64 >= v59[2])
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v20[2].isa)
      {
        break;
      }

LABEL_29:
      ++v64;
      v63 += 2;
      if (v60 == v64)
      {
        goto LABEL_38;
      }
    }

    v65 = *(v63 - 1);
    v66 = *v63;

    v67 = sub_2153B0D68(v65, v66);
    if ((v68 & 1) == 0)
    {

      goto LABEL_29;
    }

    v69 = *(v20[7].isa + v67);

    MEMORY[0x216068AC0](v70);
    if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2154A1F8C();
    }

    v61 = v64 + 1;
    sub_2154A1FAC();
    v62 = v111;
  }

  while (v60 - 1 != v64);
LABEL_38:

  result = dispatch_group_create();
  v71 = v62;
  v20 = result;
  if (v62 >> 62)
  {
LABEL_47:
    result = sub_2154A2C8C();
    v71 = v62;
    v72 = result;
    if (!result)
    {
      goto LABEL_48;
    }

LABEL_40:
    if (v72 >= 1)
    {
      v73 = 0;
      v108 = v71 & 0xC000000000000001;
      v74 = v71;
      do
      {
        if (v108)
        {
          v75 = MEMORY[0x216069960](v73);
        }

        else
        {
          v75 = *(v71 + 8 * v73 + 32);
        }

        v76 = v75;
        ++v73;
        dispatch_group_enter(v20);
        v77 = swift_allocObject();
        v78 = v110;
        v77[2] = sub_21533DDF0;
        v77[3] = v78;
        v77[4] = v76;
        v77[5] = v20;
        v79 = swift_allocObject();
        *(v79 + 16) = MEMORY[0x277D84F98];
        v80 = objc_allocWithZone(MEMORY[0x277CBC3F8]);
        sub_21549E56C();

        v81 = v76;
        v82 = v20;
        v83 = sub_2154A1F3C();
        v84 = [v80 initWithShareURLs_];

        [v84 setShouldFetchRootRecord_];
        [v84 setQualityOfService_];

        sub_2154A26CC();
        v85 = swift_allocObject();
        v85[2] = sub_21533DDF4;
        v85[3] = v77;
        v85[4] = v79;

        sub_2154A26DC();
        [v81 addOperation_];

        v71 = v74;
      }

      while (v72 != v73);
      goto LABEL_48;
    }

    goto LABEL_53;
  }

  v72 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v72)
  {
    goto LABEL_40;
  }

LABEL_48:

  v86 = v103;
  sub_2154A111C();
  v87 = v104;
  MEMORY[0x216067CE0](v86, v107);
  v88 = v106;
  v89 = *(v105 + 8);
  v89(v86, v106);
  sub_2154A23FC();
  v89(v87, v88);
  if (sub_2154A10DC())
  {
    swift_beginAccess();

    sub_2153358E4(v90, 0, v96, v97, v98);
  }

  else
  {
    sub_2153358E4(1, 1, v96, v97, v98);
  }

  v91 = v95;
  v92 = v94;

  (*(v92 + 8))(v107, v91);
}

id sub_21533DE18(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

unint64_t sub_21533DE28()
{
  result = qword_27CA5AB00;
  if (!qword_27CA5AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5AB00);
  }

  return result;
}

void sub_21533DE7C(id a1)
{
  if (a1 >= 2)
  {
  }
}

id sub_21533DE8C(id result, char a2)
{
  if (a2)
  {
    return sub_21533DE18(result);
  }

  else
  {
  }
}

void sub_21533DE98(id a1, char a2)
{
  if (a2)
  {
    sub_21533DE7C(a1);
  }

  else
  {
  }
}

uint64_t sub_21533DEA4()
{
  v1 = *(sub_21549E56C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = v6[1];

  return sub_21533A4F0(v5, v0 + v2, v8, v9, v7);
}

uint64_t sub_21533DF4C(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void **a7, void *a8)
{
  v117 = a7;
  v116 = a4;
  v121 = a3;
  v133 = a2;
  v134 = a1;
  v10 = sub_2154A112C();
  v128 = *(v10 - 8);
  v129 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v126 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v127 = &v115 - v13;
  v135 = sub_2154A244C();
  v125 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v124 = (&v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_2154A241C();
  MEMORY[0x28223BE20](v15);
  v123 = (&v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2154A110C();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_2154A10CC();
  MEMORY[0x28223BE20](v18);
  *(&v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0)) = 10;
  v119 = v20;
  v21 = *(v20 + 104);
  v132 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v22;
  v21();
  v23 = objc_opt_self();
  v24 = a6;
  v25 = a8;
  v131 = v24;
  v130 = v25;
  v26 = [v23 sharedContext];
  v27 = [v26 containersByAccountID];

  sub_2151A6C9C(0, &qword_2811996B0);
  v28 = sub_2154A1C8C();

  v122 = sub_2153399F8(v28);
  v29 = swift_allocObject();
  *(v29 + 16) = MEMORY[0x277D84F98];
  v115 = v29 + 16;
  sub_2151A6C9C(0, &unk_2811995C0);
  sub_2154A10FC();
  v136 = MEMORY[0x277D84F90];
  sub_215337144(&unk_2811995D0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA48);
  sub_2151ACC5C(&unk_2811996D0, &unk_27CA5AA48);
  sub_2154A2BEC();
  (v125)[13](v124, *MEMORY[0x277D85260], v135);
  v30 = sub_2154A247C();
  v31 = swift_allocObject();
  v32 = v133;
  v31[2] = v122;
  v31[3] = v32;
  v31[4] = v30;
  v31[5] = v29;
  v135 = v31;
  v33 = *(v28 + 16);
  v118 = v29;
  v125 = v30;
  if (v33)
  {
    v123 = sub_215319170(v33, 0);
    v124 = sub_215365080(&v136, v123 + 4, v33, v28);
    v34 = v32;
    v35 = v30;

    result = sub_2151A66EC();
    if (v124 != v33)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      return result;
    }

    v37 = v123;
  }

  else
  {
    v38 = v32;
    v39 = v30;

    v37 = MEMORY[0x277D84F90];
  }

  v138 = v37;
  v40 = [objc_opt_self() sharedInstance];
  v41 = [v40 primaryICloudACAccount];

  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v43 = [v41 identifier];

    if (v43)
    {
      v136 = 0;
      v137 = 0;
      sub_2154A1D5C();

      v44 = v137;
      if (v137)
      {
        v45 = v37[2];
        if (!v45)
        {
          goto LABEL_24;
        }

        v46 = 0;
        v47 = v136;
        v48 = v37 + 5;
        while (1)
        {
          v49 = *(v48 - 1) == v47 && v44 == *v48;
          if (v49 || (sub_2154A2FAC() & 1) != 0)
          {
            break;
          }

          ++v46;
          v48 += 2;
          if (v45 == v46)
          {
            goto LABEL_24;
          }
        }

        v50 = sub_2153CE7B8(v46);
        if (*(v28 + 16))
        {
          v52 = sub_2153B0D68(v50, v51);
          v54 = v53;

          if (v54)
          {
            v55 = *(*(v28 + 56) + 8 * v52);
            v56 = dispatch_semaphore_create(0);
            v57 = swift_allocObject();
            v57[2] = sub_21533FE30;
            v57[3] = v135;
            v57[4] = v55;
            v57[5] = v56;

            v58 = v55;
            v59 = v56;
            sub_21533D008(v134, v58, sub_21533FE54, v57);

            v60 = v126;
            sub_2154A111C();
            v61 = v127;
            MEMORY[0x216067CE0](v60, v132);
            v62 = v129;
            v63 = *(v128 + 8);
            v63(v60, v129);
            sub_2154A253C();
            v63(v61, v62);
            if ((sub_2154A10DC() & 1) == 0)
            {
              v64 = sub_21549F0FC();
              v65 = sub_2154A226C();
              if (os_log_type_enabled(v64, v65))
              {
                v66 = swift_slowAlloc();
                *v66 = 0;
                _os_log_impl(&dword_2151A1000, v64, v65, "SharedWithYouController fetchShareMetadata primaryAccountContainer timed out", v66, 2u);
                MEMORY[0x21606B520](v66, -1, -1);
              }
            }
          }
        }

        else
        {
LABEL_24:
        }
      }
    }
  }

  v67 = v138;
  v136 = v42;
  v68 = v138[2];
  if (!v68)
  {
    v70 = v42;
    goto LABEL_38;
  }

  v69 = 0;
  v133 = v68 - 1;
  v70 = MEMORY[0x277D84F90];
  do
  {
    v71 = &v67[2 * v69 + 5];
    v72 = v69;
    while (1)
    {
      if (v72 >= v67[2])
      {
        __break(1u);
        goto LABEL_47;
      }

      if (*(v28 + 16))
      {
        break;
      }

LABEL_29:
      ++v72;
      v71 += 2;
      if (v68 == v72)
      {
        goto LABEL_38;
      }
    }

    v73 = *(v71 - 1);
    v69 = *v71;

    v74 = sub_2153B0D68(v73, v69);
    if ((v75 & 1) == 0)
    {

      goto LABEL_29;
    }

    v76 = *(*(v28 + 56) + 8 * v74);

    MEMORY[0x216068AC0](v77);
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2154A1F8C();
    }

    v69 = v72 + 1;
    sub_2154A1FAC();
    v70 = v136;
  }

  while (v133 != v72);
LABEL_38:

  result = dispatch_group_create();
  v78 = v70;
  v69 = result;
  if (v70 >> 62)
  {
LABEL_47:
    result = sub_2154A2C8C();
    v78 = v70;
    v79 = result;
    if (!result)
    {
      goto LABEL_48;
    }

LABEL_40:
    if (v79 >= 1)
    {
      v80 = 0;
      v133 = v78 & 0xC000000000000001;
      v81 = v78;
      do
      {
        if (v133)
        {
          v82 = MEMORY[0x216069960](v80);
        }

        else
        {
          v82 = *(v78 + 8 * v80 + 32);
        }

        v83 = v82;
        ++v80;
        dispatch_group_enter(v69);
        v84 = swift_allocObject();
        v85 = v135;
        v84[2] = sub_21533FE30;
        v84[3] = v85;
        v84[4] = v83;
        v84[5] = v69;
        v86 = swift_allocObject();
        *(v86 + 16) = MEMORY[0x277D84F98];
        v87 = objc_allocWithZone(MEMORY[0x277CBC3F8]);
        sub_21549E56C();

        v88 = v83;
        v89 = v69;
        v90 = sub_2154A1F3C();
        v91 = [v87 initWithShareURLs_];

        [v91 setShouldFetchRootRecord_];
        [v91 setQualityOfService_];

        sub_2154A26CC();
        v92 = swift_allocObject();
        v92[2] = sub_21533FE50;
        v92[3] = v84;
        v92[4] = v86;

        sub_2154A26DC();
        [v88 addOperation_];

        v78 = v81;
      }

      while (v79 != v80);
      goto LABEL_48;
    }

    goto LABEL_57;
  }

  v79 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v79)
  {
    goto LABEL_40;
  }

LABEL_48:

  v93 = v126;
  sub_2154A111C();
  v94 = v127;
  MEMORY[0x216067CE0](v93, v132);
  v95 = v129;
  v96 = *(v128 + 8);
  v96(v93, v129);
  sub_2154A23FC();
  v96(v94, v95);
  if (sub_2154A10DC())
  {
    swift_beginAccess();
    v97 = v131;
    v98 = v131;
    v99 = v130;
    v100 = v130;

    v102 = v121;
    sub_2153393E8(v101, v116);

    v103 = v120;
    v104 = v119;
  }

  else
  {
    v131;
    v130;
    v102 = v121;
    v105 = sub_21549F0FC();
    v106 = sub_2154A226C();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_2151A1000, v105, v106, "SharedWithYouController fetchShareMetadata failed", v107, 2u);
      MEMORY[0x21606B520](v107, -1, -1);
    }

    v108 = sub_21549F0FC();
    v109 = sub_2154A226C();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_2151A1000, v108, v109, "SharedWithYouController fetchObjectIDs failed", v110, 2u);
      MEMORY[0x21606B520](v110, -1, -1);
    }

    sub_21533DE28();
    v111 = swift_allocError();
    *v112 = 1;
    v113 = v117;
    swift_beginAccess();
    v114 = *v113;
    *v113 = v111;

    sub_2154A255C();

    v103 = v120;
    v104 = v119;
    v99 = v130;
    v97 = v131;
  }

  (*(v104 + 8))(v132, v103);
}

uint64_t sub_21533ED88(unint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v26 = a2;
  v27 = sub_21549E56C();
  v5 = *(v27 - 8);
  v6 = MEMORY[0x28223BE20](v27);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v28 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
  {
    v22 = v3;
    v23 = i;
    v12 = 0;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = a1 & 0xC000000000000001;
    v13 = v5 + 1;
    while (1)
    {
      if (v25)
      {
        v14 = MEMORY[0x216069960](v12, a1);
      }

      else
      {
        if (v12 >= *(v24 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(a1 + 8 * v12 + 32);
      }

      v5 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v14 URL];
      sub_21549E51C();

      sub_21549E42C();
      v17 = *v13;
      (*v13)(v8, v27);
      v18 = *v26;
      if (*(*v26 + 16) && (v19 = sub_2153B0F3C(v10), (v20 & 1) != 0))
      {
        v3 = *(*(v18 + 56) + 8 * v19);
        v17(v10, v27);
      }

      else
      {
        v17(v10, v27);
        v3 = &v28;
        sub_2154A2E0C();
        sub_2154A2E4C();
        sub_2154A2E5C();
        sub_2154A2E1C();
      }

      ++v12;
      if (v15 == v23)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21533F004(unint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void **a6, void *a7)
{
  v63 = a3;
  v77 = sub_21549E56C();
  v13 = *(v77 - 8);
  v14 = MEMORY[0x28223BE20](v77);
  v74 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v61 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AB38);
  MEMORY[0x28223BE20](v72);
  v67 = &v61 - v17;
  v66 = a5;
  v65 = a7;
  v18 = MEMORY[0x277D84F90];
  v79[0] = sub_215327FA8(MEMORY[0x277D84F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = v79;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21533F770;
  *(v20 + 24) = v19;
  v64 = v19;
  aBlock[4] = sub_215325950;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2152F1C04;
  aBlock[3] = &block_descriptor_77;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  [v22 performBlockAndWait_];
  _Block_release(v21);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    goto LABEL_33;
  }

  v68 = a4;
  v61 = v22;
  v62 = a6;

  v75 = sub_21533ED88(v23, v79);
  v70 = a1;

  v25 = v79[0] + 64;
  v24 = *(v79[0] + 64);
  aBlock[0] = v18;
  v26 = 1 << *(v79[0] + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v21 = (v26 + 63) >> 6;
  v69 = v13 + 16;
  v73 = v79[0];
  swift_bridgeObjectRetain_n();
  v29 = 0;
LABEL_5:
  v30 = v29;
  v71 = v18;
  v31 = v67;
  if (!v28)
  {
    goto LABEL_7;
  }

  do
  {
    v29 = v30;
LABEL_10:
    v32 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v73;
    v35 = (*(v13 + 16))(v31, *(v73 + 48) + *(v13 + 72) * v33, v77);
    *&v31[*(v72 + 48)] = *(*(v34 + 56) + 8 * v33);
    MEMORY[0x28223BE20](v35);
    *(&v61 - 2) = v31;
    v37 = v36;
    v38 = sub_215334174(sub_21533F778, (&v61 - 4), v70);
    if (!v38)
    {
      v39 = v37;
      v40 = sub_2151ADCD8(v31, &qword_27CA5AB38);
      MEMORY[0x216068AC0](v40);
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      sub_2154A1FAC();
      v18 = aBlock[0];
      goto LABEL_5;
    }

    sub_2151ADCD8(v31, &qword_27CA5AB38);
    v30 = v29;
    v18 = v71;
  }

  while (v28);
  while (1)
  {
LABEL_7:
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v29 >= v21)
    {
      break;
    }

    v28 = *(v25 + 8 * v29);
    ++v30;
    if (v28)
    {
      goto LABEL_10;
    }
  }

  v21 = v75;
  if (v75 >> 62)
  {
    goto LABEL_34;
  }

  v41 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42 = v68;
  if (v41)
  {
    while (1)
    {
      v43 = 0;
      v72 = v21 & 0xFFFFFFFFFFFFFF8;
      v73 = v21 & 0xC000000000000001;
      v18 = v13 + 32;
      v44 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v73)
        {
          v45 = MEMORY[0x216069960](v43, v21);
        }

        else
        {
          if (v43 >= *(v72 + 16))
          {
            goto LABEL_32;
          }

          v45 = *(v21 + 8 * v43 + 32);
        }

        v46 = v45;
        v47 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v48 = [v45 URL];
        v49 = v74;
        sub_21549E51C();

        sub_21549E42C();
        (*(v13 + 8))(v49, v77);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_215318180(0, v44[2] + 1, 1, v44);
        }

        v51 = v44[2];
        v50 = v44[3];
        v21 = v75;
        if (v51 >= v50 >> 1)
        {
          v44 = sub_215318180(v50 > 1, v51 + 1, 1, v44);
        }

        v44[2] = v51 + 1;
        (*(v13 + 32))(v44 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v51, v76, v77);
        ++v43;
        if (v47 == v41)
        {
          goto LABEL_37;
        }
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v52 = sub_2154A2C8C();
      v42 = v68;
      if (!v52)
      {
        break;
      }

      v41 = sub_2154A2C8C();
      if (!v41)
      {
        v44 = MEMORY[0x277D84F90];
LABEL_37:

        v53 = v63;
        v54 = v66;
        v55 = v66;
        v56 = v65;
        v57 = v65;
        v58 = v61;
        v59 = v53;
        v42 = v68;
        sub_21533DF4C(v44, v59, v59, v58, v68, v55, v62, v57);

        v18 = v71;
        goto LABEL_39;
      }
    }
  }

  v56 = v65;
  v54 = v66;
LABEL_39:
  swift_beginAccess();
  *v42 = v18;

  sub_2154A255C();
}

uint64_t objectdestroy_23Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_21533F818(uint64_t a1, char a2)
{
  v3 = *(v2 + 40);
  (*(v2 + 16))(a1, a2 & 1, *(v2 + 32), 0xD00000000000001BLL, 0x80000002154D60B0);

  dispatch_group_leave(v3);
}

uint64_t objectdestroy_32Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_21533F954()
{
  v1 = *(sub_21549E56C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_21533A6E8(v5, v0 + v2, v7, v8, v9, v10);
}

id sub_21533FA00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [a1 rootRecord];
  if (result)
  {
    v7 = result;
    v8 = [a1 rootRecordType];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() sharedContext];
      v11 = [v7 recordID];
      v12 = sub_2154A1D2C();
      v13 = [v10 existingCloudObjectForRecordID:v11 recordType:v9 accountID:v12 context:a4];

      return v13;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_21533FB7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21533FBE4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2151A6C9C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21533FC88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11NotesEditor23SharedWithYouControllerC10FetchError33_CD097E1EBBCD45D9C057FEE6D04B6426LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21533FD20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21533FD74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_21533FDD0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id ICPDFTextFindingResult.__allocating_init(titleRange:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC11NotesEditor22ICPDFTextFindingResult_result];
  *v6 = a1;
  *(v6 + 1) = a2;
  type metadata accessor for ICPDFTextFindingResult.ResultType(0);
  swift_storeEnumTagMultiPayload();
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v7 setAttachmentResult_];
  return v7;
}

uint64_t sub_21533FF14()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5ABD0);
  __swift_project_value_buffer(v0, qword_27CA5ABD0);
  v1 = ICNotesAppBundleIdentifier();
  sub_2154A1D6C();

  return sub_21549F10C();
}

NSComparisonResult __swiftcall ICPDFTextFindingResult.compare(_:)(ICTextFindingResult a1)
{
  isa = a1.super.isa;
  ObjectType = swift_getObjectType();
  v4 = sub_2154A12DC();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ABF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v34 - v17);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v42, sel_compare_, isa);
  if (v19 == NSOrderedSame)
  {
    v34 = v10;
    v35 = v15;
    v36 = v13;
    v37 = v7;
    v21 = v38;
    v22 = v39;
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v23 = OBJC_IVAR____TtC11NotesEditor22ICPDFTextFindingResult_result;
      v24 = *(v16 + 48);
      sub_2153417E4(v1 + OBJC_IVAR____TtC11NotesEditor22ICPDFTextFindingResult_result, v18);
      sub_2153417E4(v19 + v23, v18 + v24);
      type metadata accessor for ICPDFTextFindingResult.ResultType(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v26 = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        if (v26 == 1)
        {
          v27 = v21;
          v28 = *(v21 + 32);
          v29 = v35;
          v28(v35, v18, v22);
          v30 = v36;
          v28(v36, (v18 + v24), v22);
          v31 = *(v27 + 16);
          v31(v34, v29, v22);
          v31(v37, v30, v22);
          sub_215341848();
          v19 = sub_2154A24BC();
          v32 = *(v27 + 8);
          v32(v30, v22);
          v32(v29, v22);
        }

        else
        {
          (*(v21 + 8))(v18, v22);
          return 1;
        }
      }

      else if (v26 == 1)
      {
        sub_2153418A0(v18 + v24);
        return -1;
      }

      else
      {
        v33 = *v18;
        v40 = *(v18 + v24);
        v41 = v33;
        return sub_2154A24BC();
      }
    }
  }

  return v19;
}

id ICPDFTextFindingResult.init(titleRange:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11NotesEditor22ICPDFTextFindingResult_result];
  *v6 = a1;
  *(v6 + 1) = a2;
  type metadata accessor for ICPDFTextFindingResult.ResultType(0);
  swift_storeEnumTagMultiPayload();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v7 setAttachmentResult_];
  return v7;
}

Swift::Void __swiftcall ICPDFTextFindingResult.select(in:)(ICTextView_optional *in)
{
  v3 = [v1 range];
  if (in)
  {

    [(ICTextView_optional *)in setSelectedRange:v3, 0];
  }
}

id ICPDFTextFindingResult.framesForHighlight(in:)(void *a1)
{
  v7 = sub_2154A12DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ICPDFTextFindingResult.ResultType(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_215340B3C(a1);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v16 = v14;
  v75 = v10;
  v76 = v8;
  v17 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  if (!*&v16[v17] || (objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) == 0) || (v19 = [v18 attachment]) == 0)
  {

    return v15;
  }

  v20 = v19;
  sub_2153417E4(v1 + OBJC_IVAR____TtC11NotesEditor22ICPDFTextFindingResult_result, v13);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v23 = v75;
    v22 = v76;
    (*(v76 + 32))(v75, v13, v7);
    v24 = sub_215306800();
    v25 = *(v24 + 16);
    if (v25)
    {
      v73 = v7;
      v74 = v16;
      v78[0] = v15;
      v77 = v25;
      sub_2154A2E2C();
      v26 = objc_opt_self();
      v27 = 0;
      for (i = (v24 + 56); ; i += 4)
      {
        if (v27 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v29 = *(i - 3);
        v30 = *(i - 2);
        v31 = *(i - 1);
        v32 = *i;
        v33 = [v20 rangeInNote];
        [a1 ic:v33 rectForRange:v34];
        v36 = v35;
        v38 = v37;
        v80.origin.x = v29;
        v80.origin.y = v30;
        v80.size.width = v31;
        v80.size.height = v32;
        v81 = CGRectOffset(v80, v36, v38);
        x = v81.origin.x;
        y = v81.origin.y;
        width = v81.size.width;
        height = v81.size.height;
        [a1 textContainerInset];
        v40 = v39;
        [a1 textContainerInset];
        v42 = v41;
        v82.origin.x = x;
        v82.origin.y = y;
        v82.size.width = width;
        v82.size.height = height;
        v83 = CGRectOffset(v82, v40, v42);
        result = [v26 ic:v83.origin.x valueWithRect:{v83.origin.y, v83.size.width, v83.size.height}];
        if (!result)
        {
          break;
        }

        ++v27;
        sub_2154A2E0C();
        v23 = *(v78[0] + 16);
        sub_2154A2E4C();
        sub_2154A2E5C();
        sub_2154A2E1C();
        if (v77 == v27)
        {
          (*(v76 + 8))(v75, v73);

          return v78[0];
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    (*(v22 + 8))(v23, v7);
    return v15;
  }

  i = OBJC_IVAR___ICPaperDocumentTextAttachmentView_headerView;
  v43 = *&v16[OBJC_IVAR___ICPaperDocumentTextAttachmentView_headerView];
  if (!v43)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = v16;
  v45 = *v13;
  v44 = v13[1];
  v46 = v43;
  sub_2153065D4(v45, v44, v78);
  x = *v78;
  y = *&v78[1];
  width = *&v78[2];
  height = *&v78[3];

  if (v79)
  {
    if (qword_27CA59808 != -1)
    {
LABEL_25:
      swift_once();
    }

    v47 = sub_21549F11C();
    __swift_project_value_buffer(v47, qword_27CA5ABD0);
    v48 = sub_21549F0FC();
    a1 = sub_2154A226C();
    if (os_log_type_enabled(v48, a1))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2151A1000, v48, a1, "Unable to get frame for title finding result", v49, 2u);
      MEMORY[0x21606B520](v49, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2154BDB20;
    result = [objc_opt_self() ic:0.0 valueWithRect:{0.0, 0.0, 0.0}];
    if (result)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  [v23 convertRect:*(i + v23) fromView:{x, y, width, height}];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2154BDB20;
  v58 = objc_opt_self();
  v59 = [v20 rangeInNote];
  [a1 ic:v59 rectForRange:v60];
  v62 = v61;
  v64 = v63;
  v84.origin.x = v51;
  v84.origin.y = v53;
  v84.size.width = v55;
  v84.size.height = v57;
  v85 = CGRectOffset(v84, v62, v64);
  v65 = v85.origin.x;
  v66 = v85.origin.y;
  v67 = v85.size.width;
  v68 = v85.size.height;
  [a1 textContainerInset];
  v70 = v69;
  [a1 textContainerInset];
  v72 = v71;
  v86.origin.x = v65;
  v86.origin.y = v66;
  v86.size.width = v67;
  v86.size.height = v68;
  v87 = CGRectOffset(v86, v70, v72);
  result = [v58 ic:v87.origin.x valueWithRect:{v87.origin.y, v87.size.width, v87.size.height}];
  if (result)
  {
LABEL_22:
    *(v15 + 32) = result;

    return v15;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_215340B3C(void *a1)
{
  v3 = [a1 textStorage];
  if ([v3 attribute:*MEMORY[0x277D74060] atIndex:objc_msgSend(v1 effectiveRange:{sel_range), 0}])
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    sub_2151A6C9C(0, &qword_281199550);
    if (swift_dynamicCast())
    {
      v4 = sub_2153418FC(v15, a1);

      return v4;
    }
  }

  else
  {
    sub_2151ADCD8(v18, &qword_27CA5ABC0);
  }

  if (qword_27CA59808 != -1)
  {
    swift_once();
  }

  v6 = sub_21549F11C();
  __swift_project_value_buffer(v6, qword_27CA5ABD0);
  v7 = v1;
  v8 = sub_21549F0FC();
  v9 = sub_2154A226C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v18[0] = v11;
    *v10 = 136315138;
    [v7 range];
    v12 = sub_2154A2AFC();
    v14 = sub_215348D98(v12, v13, v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2151A1000, v8, v9, "Unable to get frames for find preview for range %s because no attachment is found at that range", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21606B520](v11, -1, -1);
    MEMORY[0x21606B520](v10, -1, -1);
  }

  return 0;
}

Swift::Void __swiftcall ICPDFTextFindingResult.scrollToVisible(in:)(ICTextView_optional *in)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for ICPDFTextFindingResult.ResultType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2154A12DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  [(ICTextView_optional *)&v16 scrollToVisibleInTextView:in];
  sub_2153417E4(v1 + OBJC_IVAR____TtC11NotesEditor22ICPDFTextFindingResult_result, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    if (in)
    {
      v11 = sub_215340B3C(in);
      if (v11)
      {
        v12 = v11;
        v13 = *(v11 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
        if (v13)
        {
          v14 = v13;
          v15 = sub_2154A12FC();

          if (v15)
          {
            sub_2154A12BC();

            v12 = v15;
          }
        }
      }

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_2153418A0(v6);
  }
}

uint64_t static ICPDFTextFindingResult.results(in:matching:textView:ignoreCase:wholeWords:startsWith:usePattern:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_215305EC8;

  return sub_215341C60(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_21534135C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  *(v8 + 40) = a8;
  *(v8 + 48) = ObjCClassMetadata;
  *(v8 + 90) = a6;
  *(v8 + 89) = a5;
  *(v8 + 88) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  sub_2154A1FFC();
  *(v8 + 56) = sub_2154A1FEC();
  v18 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_215341448, v18, v17);
}

uint64_t sub_215341448()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);

  *(v0 + 64) = _Block_copy(v1);
  v4 = sub_2154A1D6C();
  v6 = v5;
  *(v0 + 72) = v5;
  v7 = v3;
  v8 = v2;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_215341554;
  v10 = *(v0 + 90);
  v11 = *(v0 + 89);
  v12 = *(v0 + 88);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);

  return sub_215341C60(v14, v4, v6, v13, v12, v11, v10);
}

uint64_t sub_215341554()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v4 = sub_2154A1F3C();

  (v1)[2](v1, v4);

  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

id ICPDFTextFindingResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICPDFTextFindingResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2153417E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICPDFTextFindingResult.ResultType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_215341848()
{
  result = qword_27CA5A640;
  if (!qword_27CA5A640)
  {
    sub_2154A12DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5A640);
  }

  return result;
}

uint64_t sub_2153418A0(uint64_t a1)
{
  v2 = type metadata accessor for ICPDFTextFindingResult.ResultType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2153418FC(void *a1, id a2)
{
  v3 = [a2 icTextLayoutManager];
  v4 = [a1 viewIdentifier];
  if (!v4)
  {
    sub_2154A1D6C();
    v4 = sub_2154A1D2C();
  }

  v5 = [v3 existingAttachmentViewForIdentifier_];

  if (!v5)
  {
    if (qword_27CA59808 != -1)
    {
      swift_once();
    }

    v15 = sub_21549F11C();
    __swift_project_value_buffer(v15, qword_27CA5ABD0);
    v16 = a1;
    v9 = sub_21549F0FC();
    v17 = sub_2154A226C();

    if (os_log_type_enabled(v9, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v16;
      *v19 = v16;
      v20 = v16;
      _os_log_impl(&dword_2151A1000, v9, v17, "Unable to get existing attachment view for %@", v18, 0xCu);
      sub_2151ADCD8(v19, &unk_27CA59E90);
      MEMORY[0x21606B520](v19, -1, -1);
      MEMORY[0x21606B520](v18, -1, -1);
    }

    goto LABEL_14;
  }

  type metadata accessor for PaperDocumentTextAttachmentView();
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

  if (qword_27CA59808 != -1)
  {
    swift_once();
  }

  v7 = sub_21549F11C();
  __swift_project_value_buffer(v7, qword_27CA5ABD0);
  v8 = v5;
  v9 = sub_21549F0FC();
  v10 = sub_2154A226C();

  if (!os_log_type_enabled(v9, v10))
  {

LABEL_14:
    return 0;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v21 = v13;
  *v11 = 138412546;
  *(v11 + 4) = v8;
  *v12 = v5;
  *(v11 + 12) = 2080;
  v14 = v8;
  *(v11 + 14) = sub_215348D98(0xD00000000000001FLL, 0x80000002154D61C0, &v21);
  _os_log_impl(&dword_2151A1000, v9, v10, "Unexpected attachment view class, got %@, expected %s", v11, 0x16u);
  sub_2151ADCD8(v12, &unk_27CA59E90);
  MEMORY[0x21606B520](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x21606B520](v13, -1, -1);
  MEMORY[0x21606B520](v11, -1, -1);

  return 0;
}

uint64_t sub_215341C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v7 + 122) = a7;
  *(v7 + 121) = a6;
  *(v7 + 120) = a5;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_2154A1FFC();
  *(v7 + 64) = sub_2154A1FEC();
  v9 = sub_2154A1FCC();
  *(v7 + 72) = v9;
  *(v7 + 80) = v8;

  return MEMORY[0x2822009F8](sub_215341D08, v9, v8);
}

uint64_t sub_215341D08()
{
  if (ICInternalSettingsIsFindPDFsEnabled())
  {
    v1 = *(v0 + 56);
    v2 = [*(v0 + 32) rangeInNote];
    v4 = [v1 textAttachmentsInRange_];
    sub_2151A6C9C(0, &qword_281199590);
    v5 = sub_2154A1F4C();

    *(v0 + 16) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AC18);
    sub_215342450();
    sub_2154A211C();
    v6 = *(v0 + 24);
    *(v0 + 88) = v6;

    if (v6)
    {
      v7 = sub_2153418FC(v6, *(v0 + 56));
      *(v0 + 96) = v7;
      if (v7)
      {
        v8 = swift_task_alloc();
        *(v0 + 104) = v8;
        *v8 = v0;
        v8[1] = sub_215342010;
        v9 = *(v0 + 122);
        v10 = *(v0 + 121);
        v11 = *(v0 + 120);
        v13 = *(v0 + 40);
        v12 = *(v0 + 48);

        return sub_2153210F4(v13, v12, v11, v10, v9);
      }
    }

    else
    {

      if (qword_27CA59808 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 32);
      v16 = sub_21549F11C();
      __swift_project_value_buffer(v16, qword_27CA5ABD0);
      v17 = v15;
      v18 = sub_21549F0FC();
      v19 = sub_2154A226C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 32);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        *(v21 + 4) = v20;
        *v22 = v20;
        v23 = v20;
        _os_log_impl(&dword_2151A1000, v18, v19, "Unable to get text attachment for %@", v21, 0xCu);
        sub_2151ADCD8(v22, &unk_27CA59E90);
        MEMORY[0x21606B520](v22, -1, -1);
        MEMORY[0x21606B520](v21, -1, -1);
      }
    }
  }

  else
  {
  }

  v24 = *(v0 + 8);
  v25 = MEMORY[0x277D84F90];

  return v24(v25);
}

uint64_t sub_215342010(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_215342138, v4, v3);
}

uint64_t sub_215342138()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[14];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2153421D0()
{
  result = type metadata accessor for ICPDFTextFindingResult.ResultType(319);
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

void sub_2153422DC()
{
  type metadata accessor for _NSRange(319);
  if (v0 <= 0x3F)
  {
    sub_2154A12DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_215342350()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2151BD278;

  JUMPOUT(0x21534135CLL);
}

unint64_t sub_215342450()
{
  result = qword_27CA5AC20;
  if (!qword_27CA5AC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5AC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5AC20);
  }

  return result;
}

char *static TextFindingCoordinator.plainTextSearch(query:in:ignoreCase:wholeWords:startsWith:usePattern:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, char a8)
{
  if (a8)
  {

    v11 = a1;
    v12 = a2;
  }

  else
  {
    v13 = objc_opt_self();
    v14 = sub_2154A1D2C();
    v15 = [v13 escapedPatternForString_];

    v11 = sub_2154A1D6C();
    v12 = v16;
  }

  v17 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v24 = sub_215348CBC(v11, v12, a5 & 1);
  v25 = sub_2154A1D2C();
  v26 = sub_2154A1D2C();
  v27 = [v26 ic_range];
  v29 = v28;

  v30 = [v24 matchesInString:v25 options:0 range:{v27, v29}];
  v56 = v24;

  sub_2151A6C9C(0, &qword_281199580);
  v31 = sub_2154A1F4C();

  if (v31 >> 62)
  {
    v32 = sub_2154A2C8C();
    if (v32)
    {
      goto LABEL_10;
    }

LABEL_33:
    v34 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_33;
  }

LABEL_10:
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  while (2)
  {
    v57 = v34;
    v35 = v33;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x216069960](v35, v31);
      }

      else
      {
        if (v35 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v36 = *(v31 + 8 * v35 + 32);
      }

      v37 = v36;
      v33 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        swift_once();
        v18 = sub_21549F11C();
        __swift_project_value_buffer(v18, qword_27CA5AC30);

        v19 = sub_21549F0FC();
        v20 = sub_2154A226C();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v60 = v22;
          *v21 = 136315138;
          *(v21 + 4) = sub_215348D98(v31 & 0xFFFFFFFFFFFFFF8, v32, &v60);
          _os_log_impl(&dword_2151A1000, v19, v20, "Unable to create regular expression for find input string %s.", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v22);
          MEMORY[0x21606B520](v22, -1, -1);
          MEMORY[0x21606B520](v21, -1, -1);
        }

        return MEMORY[0x277D84F90];
      }

      if ((a6 & 1) == 0 || (v38 = sub_2154A1D2C(), v39 = [v37 range], v41 = objc_msgSend(v38, sel_ic_rangeEncapsulatesWord_, v39, v40), v38, v41))
      {
        if ((a7 & 1) == 0)
        {
          break;
        }

        v42 = sub_2154A1D2C();
        v43 = [v37 range];
        v45 = [v42 ic:v43 startsWithDelimeter:v44];

        if (v45)
        {
          break;
        }
      }

      ++v35;
      if (v33 == v32)
      {
        v34 = v57;
        goto LABEL_34;
      }
    }

    v46 = [v37 range];
    v48 = v47;

    v49 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_215317AC0(0, *(v57 + 2) + 1, 1, v57);
    }

    v50 = v49;
    v51 = *(v49 + 2);
    v52 = v50;
    v53 = *(v50 + 3);
    if (v51 >= v53 >> 1)
    {
      v52 = sub_215317AC0((v53 > 1), v51 + 1, 1, v52);
    }

    *(v52 + 2) = v51 + 1;
    v54 = &v52[16 * v51];
    v34 = v52;
    *(v54 + 4) = v46;
    *(v54 + 5) = v48;
    if (v33 != v32)
    {
      continue;
    }

    break;
  }

LABEL_34:
  v55 = v34;

  return v55;
}

uint64_t sub_215342968()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5AC30);
  __swift_project_value_buffer(v0, qword_27CA5AC30);
  v1 = ICNotesAppBundleIdentifier();
  sub_2154A1D6C();

  return sub_21549F10C();
}

id TextFindingCoordinator.__allocating_init(dataSource:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id TextFindingCoordinator.init(dataSource:)()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id TextFindingCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextFindingCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215342BD4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_opt_self() mainBundle];
    v8 = sub_2154A1D2C();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    sub_2154A1D6C();
    v10 = [objc_opt_self() standardUserDefaults];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BDB50;
    v12 = off_27CA5AC50;
    *(inited + 32) = qword_27CA5AC48;
    *(inited + 40) = v12;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;

    sub_215327A78(inited);
    swift_setDeallocating();
    sub_2151ADCD8(inited + 32, &unk_27CA5A490);
    v13 = sub_2154A1C7C();

    [v10 registerDefaults_];

    v14 = sub_2154A1D2C();

    [v10 BOOLForKey_];

    sub_2151A6C9C(0, &qword_281199480);
    v15 = swift_allocObject();
    *(v15 + 16) = v6;
    *(v15 + 24) = a3;
    v31 = v6;

    v16 = sub_2154A295C();
    if (a1 >> 62)
    {
LABEL_26:
      v17 = sub_2154A2C8C();
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = 0;
    while (1)
    {
      if (v17 == v18)
      {
        v24 = v16;
        MEMORY[0x216068AC0](v24, v25, v26, v27, v28);
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2154A1F8C();
        }

        sub_2154A1FAC();
        goto LABEL_23;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x216069960](v18, a1);
      }

      else
      {
        if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();

      if (v21)
      {
        break;
      }

      if (__OFADD__(v18++, 1))
      {
        goto LABEL_25;
      }
    }

    if (a1 >> 62)
    {
      result = sub_2154A2C8C();
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v18)
    {
      v29 = v16;
      sub_21532B04C(v18, v18, v29);

LABEL_23:
      sub_2151A6C9C(0, &qword_2811994E0);
      v30 = sub_2154A28AC();

      return v30;
    }

    __break(1u);
  }

  else
  {
    sub_2151A6C9C(0, &qword_2811994E0);

    return sub_2154A28AC();
  }

  return result;
}

void sub_215343090(void *a1)
{
  v1 = [a1 state] == 0;
  v2 = [objc_opt_self() standardUserDefaults];

  v3 = sub_2154A1D2C();

  [v2 setBool:v1 forKey:v3];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong activeFindSession];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 searchText];
      if (v8)
      {
        v9 = v8;
        sub_2154A1D6C();
      }

      v10 = sub_2154A1D2C();

      v11 = [v5 _configuredSearchOptions];
      [v7 performSearchWithQuery:v10 options:v11];

      v5 = v11;
    }
  }
}

uint64_t TextFindingCoordinator.matches(for:in:note:ignoreCase:wholeWords:startsWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v8 + 120) = a4;
  *(v8 + 128) = v7;
  *(v8 + 258) = a7;
  *(v8 + 257) = a6;
  *(v8 + 256) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  *(v8 + 136) = swift_getObjectType();
  *(v8 + 144) = sub_2154A1FFC();
  *(v8 + 152) = sub_2154A1FEC();
  v10 = sub_2154A1FCC();
  *(v8 + 160) = v10;
  *(v8 + 168) = v9;

  return MEMORY[0x2822009F8](sub_21534335C, v10, v9);
}

uint64_t sub_21534335C()
{
  v33 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong textView];
    *(v0 + 176) = v2;
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = *(v0 + 256);
      v4 = [objc_opt_self() standardUserDefaults];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2154BDB50;
      v6 = off_27CA5AC50;
      *(inited + 32) = qword_27CA5AC48;
      *(inited + 40) = v6;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = 1;

      sub_215327A78(inited);
      swift_setDeallocating();
      sub_2151ADCD8(inited + 32, &unk_27CA5A490);
      v7 = sub_2154A1C7C();

      [v4 registerDefaults_];

      v8 = sub_2154A1D2C();

      v9 = [v4 BOOLForKey_];

      v10 = *(v0 + 258);
      if (v3 == 1)
      {
        v11 = v10 == 0;
        if (*(v0 + 257))
        {
          v12 = 3;
          v13 = 19;
          goto LABEL_13;
        }

        v12 = 17;
        if (v11)
        {
          v12 = 1;
        }

        if (!v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v11 = v10 == 0;
        if (*(v0 + 257))
        {
          v12 = 2;
          v13 = 18;
LABEL_13:
          if (!v11)
          {
            v12 = v13;
          }

          if ((v9 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        v12 = 16;
        if (v11)
        {
          v12 = 0;
        }

        if ((v9 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_16:
      v12 |= 4uLL;
LABEL_17:
      *(v0 + 184) = v12;
      *(v0 + 192) = sub_2154A1FEC();
      v27 = sub_2154A1FCC();
      *(v0 + 200) = v27;
      *(v0 + 208) = v26;

      return MEMORY[0x2822009F8](sub_2153437A0, v27, v26);
    }
  }

  if (qword_27CA59810 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 128);
  v15 = sub_21549F11C();
  __swift_project_value_buffer(v15, qword_27CA5AC30);
  v16 = v14;
  v17 = sub_21549F0FC();
  v18 = sub_2154A224C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315138;
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = [v21 description];
      swift_unknownObjectRelease();
      v23 = sub_2154A1D6C();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    v28 = sub_215348D98(v23, v25, &v32);

    *(v19 + 4) = v28;
    _os_log_impl(&dword_2151A1000, v17, v18, "Short circuit find operation because data source (%s) provided no text view.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x21606B520](v20, -1, -1);
    MEMORY[0x21606B520](v19, -1, -1);
  }

  v29 = *(v0 + 8);
  v30 = MEMORY[0x277D84F90];

  return v29(v30);
}

uint64_t sub_2153437A0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = [*(v0 + 112) string];
  v4 = sub_2154A1D6C();
  v6 = v5;

  v7 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v7 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 128);
    v29 = *(v0 + 184);
    v30 = *(v0 + 136);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = swift_allocObject();
    *(v0 + 224) = v15;
    *(v15 + 16) = v4;
    *(v15 + 24) = v6;
    *(v15 + 32) = v14;
    *(v15 + 40) = v13;
    *(v15 + 48) = v29;
    *(v15 + 56) = v9;
    *(v15 + 64) = v12;
    *(v15 + 72) = v11;
    *(v15 + 88) = 0;
    *(v15 + 96) = 0;
    *(v15 + 80) = v10;
    *(v15 + 104) = 1;
    *(v15 + 112) = -1;
    *(v15 + 120) = v30;

    v16 = v9;
    v17 = v12;
    v18 = v11;
    v19 = v10;
    v20 = swift_task_alloc();
    *(v0 + 232) = v20;
    *v20 = v0;
    v20[1] = sub_215343B3C;

    return sub_21534B104(&unk_2154BECD0, v15, 10.0);
  }

  else
  {
LABEL_10:

    if (qword_27CA59810 != -1)
    {
      swift_once();
    }

    v22 = sub_21549F11C();
    __swift_project_value_buffer(v22, qword_27CA5AC30);

    v23 = sub_21549F0FC();
    v24 = sub_2154A224C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      *(v25 + 4) = sub_2154A1E0C();

      *(v25 + 12) = 2048;
      v26 = sub_2154A1E0C();

      *(v25 + 14) = v26;

      _os_log_impl(&dword_2151A1000, v23, v24, "Short circuit find operation because either:\n\t(a) Search string is empty (got: %ld characters)\n\t(b) Text storage is empty (got %ld characters)", v25, 0x16u);
      MEMORY[0x21606B520](v25, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    *(v0 + 216) = MEMORY[0x277D84F90];
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);

    return MEMORY[0x2822009F8](sub_215343ACC, v27, v28);
  }
}

uint64_t sub_215343ACC()
{
  v1 = v0[22];

  v2 = v0[27];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_215343B3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_215343CD8;
  }

  else
  {

    v4[31] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_215343C6C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_215343C6C()
{

  v0[27] = v0[31];
  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x2822009F8](sub_215343ACC, v1, v2);
}

uint64_t sub_215343CD8()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_215343D48, v1, v2);
}

uint64_t sub_215343D48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215343F7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 90) = a6;
  *(v8 + 89) = a5;
  *(v8 + 88) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  sub_2154A1FFC();
  *(v8 + 56) = sub_2154A1FEC();
  v10 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_215344028, v10, v9);
}

uint64_t sub_215344028()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);

  *(v0 + 64) = _Block_copy(v2);
  v5 = sub_2154A1D6C();
  v7 = v6;
  *(v0 + 72) = v6;
  v8 = v4;
  v9 = v3;
  v10 = v1;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_215344128;
  v12 = *(v0 + 90);
  v13 = *(v0 + 89);
  v14 = *(v0 + 88);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);

  return TextFindingCoordinator.matches(for:in:note:ignoreCase:wholeWords:startsWith:)(v5, v7, v15, v16, v14, v13, v12);
}

uint64_t sub_215344128()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_21549E3CC();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_2151A6C9C(0, &unk_27CA5AC70);
    v11 = sub_2154A1F3C();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 64);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_21534433C(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v5;
  v7 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v12 = [Strong textView], swift_unknownObjectRelease(), !v12))
  {
    if (qword_27CA59810 != -1)
    {
LABEL_41:
      swift_once();
    }

    v34 = sub_21549F11C();
    __swift_project_value_buffer(v34, qword_27CA5AC30);
    v35 = v7;
    v36 = sub_21549F0FC();
    v37 = sub_2154A224C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v78 = v39;
      *v38 = 136315138;
      v40 = swift_unknownObjectWeakLoadStrong();
      if (v40)
      {
        v41 = [v40 description];
        swift_unknownObjectRelease();
        v42 = sub_2154A1D6C();
        v44 = v43;
      }

      else
      {
        v44 = 0xE300000000000000;
        v42 = 7104878;
      }

      v45 = sub_215348D98(v42, v44, &v78);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_2151A1000, v36, v37, "Short circuit replace operation because data source (%s) provided no text view.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x21606B520](v39, -1, -1);
      MEMORY[0x21606B520](v38, -1, -1);
    }

    return 0;
  }

  if (!a1)
  {
LABEL_49:

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_55;
  }

  v13 = [v12 ic_selectedRanges];
  sub_2151A6C9C(0, &qword_2811994C8);
  v14 = sub_2154A1F4C();

  if (v14 >> 62)
  {
    goto LABEL_44;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:

    if (qword_27CA59810 == -1)
    {
LABEL_46:
      v46 = sub_21549F11C();
      __swift_project_value_buffer(v46, qword_27CA5AC30);
      v47 = sub_21549F0FC();
      v48 = sub_2154A226C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2151A1000, v47, v48, "Unable to replace in selection only if there's nothing selected.", v49, 2u);
        MEMORY[0x21606B520](v49, -1, -1);
      }

      goto LABEL_49;
    }

LABEL_85:
    swift_once();
    goto LABEL_46;
  }

LABEL_7:
  v70 = v6;
  v69 = a3;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x216069960](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;

  v6 = [v16 rangeValue];
  v76 = v17;

  v78 = MEMORY[0x277D84F90];
  v18 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_54;
    }

    goto LABEL_12;
  }

  v19 = sub_2154A2C8C();
  if (v19)
  {
LABEL_12:
    v71 = a1;
    v73 = v12;
    v12 = 0;
    v20 = a1 & 0xC000000000000001;
    v21 = &selRef_objectEnumerator;
    while (1)
    {
      if (v20)
      {
        v22 = MEMORY[0x216069960](v12, a1);
      }

      else
      {
        if (v12 >= *(v18 + 16))
        {
          goto LABEL_39;
        }

        v22 = *(a1 + 8 * v12 + 32);
      }

      v7 = v22;
      v23 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v24 = [v22 v21[287]];
      if (v24 < v6)
      {
        goto LABEL_13;
      }

      if (__OFSUB__(v24, v6))
      {
        goto LABEL_40;
      }

      if (v24 - v6 >= v76)
      {
LABEL_13:
      }

      else
      {
        a1 = v19;
        v14 = v20;
        v25 = v18;
        v26 = [v7 v21[287]];
        v27 = v21;
        v28 = v26;
        a3 = v27;
        [v7 v27 + 3192];
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          if (!sub_2154A2C8C())
          {
            goto LABEL_45;
          }

          goto LABEL_7;
        }

        v31 = __OFSUB__(v30, v6);
        v32 = v30 < v6;
        v33 = v30 - v6;
        if (v32)
        {
          goto LABEL_27;
        }

        if (v31)
        {
          goto LABEL_43;
        }

        if (v33 >= v76)
        {
LABEL_27:
        }

        else
        {
          sub_2154A2E0C();
          sub_2154A2E4C();
          sub_2154A2E5C();
          sub_2154A2E1C();
        }

        v21 = a3;
        v18 = v25;
        v20 = v14;
        v19 = a1;
        a1 = v71;
      }

      ++v12;
      if (v23 == v19)
      {
        v12 = v73;
        break;
      }
    }
  }

LABEL_54:

  v6 = v70;
  a3 = v69;
LABEL_55:

  v78 = sub_215432A04(v52);
  sub_215349784(&v78, sub_215349AB4, sub_21534993C);
  if (!v6)
  {

    v53 = v78;
    if (v78 < 0 || (v78 & 0x4000000000000000) != 0)
    {
LABEL_80:
      v54 = sub_2154A2C8C();
      v55 = a2;
      if (v54)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v54 = *(v78 + 16);
      v55 = a2;
      if (v54)
      {
LABEL_59:
        if (v54 >= 1)
        {
          v50 = 0;
          v56 = 0;
          v77 = v53 & 0xC000000000000001;
          v72 = v53;
          v74 = v12;
          do
          {
            if (v77)
            {
              v59 = MEMORY[0x216069960](v56, v53);
            }

            else
            {
              v59 = *(v53 + 8 * v56 + 32);
            }

            v60 = v59;
            objc_opt_self();
            v61 = swift_dynamicCastObjCClass();
            if (v61)
            {
              v57 = sub_21534B8A0(v61, v55, a3, v12);

              v58 = __CFADD__(v50, v57 & 1);
              v50 += v57 & 1;
              if (v58)
              {
                __break(1u);
LABEL_79:
                __break(1u);
                goto LABEL_80;
              }
            }

            else if ([v60 isAttachmentResult])
            {
            }

            else
            {
              v62 = [v12 textStorage];
              v12 = [v60 range];
              v64 = v63;
              v53 = sub_2154A1D2C();
              [v62 replaceCharactersInRange:v12 withString:{v64, v53}];

              v58 = __CFADD__(v50++, 1);
              if (v58)
              {
                goto LABEL_79;
              }

              v53 = v72;
              v12 = v74;
              v55 = a2;
            }

            ++v56;
          }

          while (v54 != v56);

          if (!v50)
          {
            goto LABEL_82;
          }

          v65 = swift_unknownObjectWeakLoadStrong();
          if (v65)
          {
            v66 = [v65 note];
            swift_unknownObjectRelease();
            if (v66)
            {
              [v66 updateModificationDateAndChangeCountAndSaveImmediately];
              v67 = [v66 calculateDocumentController];
              if (v67)
              {
                v68 = v67;
                [v67 scheduleUpdateAffectingChangeCounts:1 isHighPriority:0];
              }
            }
          }

          return v50;
        }

        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }
    }

LABEL_82:

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t TextFindingCoordinator.replaceAllOccurrences(of:with:in:note:ignoreCase:wholeWords:startsWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v9[3] = a4;
  v9[4] = v8;
  v9[2] = a3;
  v9[5] = sub_2154A1FFC();
  v9[6] = sub_2154A1FEC();
  v16 = swift_task_alloc();
  v9[7] = v16;
  *v16 = v9;
  v16[1] = sub_215344D10;

  return TextFindingCoordinator.matches(for:in:note:ignoreCase:wholeWords:startsWith:)(a1, a2, a5, a6, a7, a8, v19);
}

uint64_t sub_215344D10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  v6 = sub_2154A1FCC();
  if (v1)
  {
    v7 = sub_215344F28;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_215344E80;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_215344E80()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v0[2];

  sub_21534433C(v1, v3, v2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_215344F28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215345168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v13;
  *(v8 + 162) = a7;
  *(v8 + 161) = a6;
  *(v8 + 160) = a5;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 80) = sub_2154A1FFC();
  *(v8 + 88) = sub_2154A1FEC();
  v10 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_215345220, v10, v9);
}

uint64_t sub_215345220()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  *(v0 + 96) = _Block_copy(v1);
  v5 = sub_2154A1D6C();
  v7 = v6;
  *(v0 + 104) = v6;
  *(v0 + 16) = sub_2154A1D6C();
  *(v0 + 24) = v8;
  *(v0 + 112) = v8;
  v9 = v4;
  v10 = v3;
  v11 = v2;
  *(v0 + 120) = sub_2154A1FEC();
  v12 = swift_task_alloc();
  *(v0 + 128) = v12;
  *v12 = v0;
  v12[1] = sub_215345338;
  v13 = *(v0 + 162);
  v14 = *(v0 + 161);
  v15 = *(v0 + 160);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  return TextFindingCoordinator.matches(for:in:note:ignoreCase:wholeWords:startsWith:)(v5, v7, v16, v17, v15, v14, v13);
}

uint64_t sub_215345338(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {

    v4 = sub_2154A1FCC();
    v6 = v5;
    v7 = sub_215345618;
  }

  else
  {
    v3[19] = v3[2];
    v4 = sub_2154A1FCC();
    v6 = v8;
    v7 = sub_2153454D8;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_2153454D8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);

  sub_21534433C(v3, v2, v4, 0);
  if (v1)
  {
    v5 = *(v0 + 72);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);

    v8 = *(v0 + 96);
    v9 = sub_21549E3CC();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    v10 = *(v0 + 96);
    v11 = *(v0 + 72);
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);

    (*(v10 + 16))(v10, 0);
  }

  _Block_release(*(v0 + 96));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_215345618()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  v3 = *(v0 + 144);
  v4 = *(v0 + 96);
  v5 = sub_21549E3CC();

  (*(v4 + 16))(v4, v5);
  _Block_release(*(v0 + 96));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2153456D4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = sub_2154A2E7C();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215345798, 0, 0);
}

uint64_t sub_215345798()
{
  v1 = sub_2154A317C();
  v3 = v2;
  sub_2154A303C();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_21534587C;

  return sub_2153492CC(v1, v3, 500000000000000000, 0, 0);
}

uint64_t sub_21534587C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_215345AA4;
  }

  else
  {
    v5 = sub_2153459EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2153459EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AD00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88);
  sub_2154A205C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215345AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215345B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v16;
  *(v8 + 136) = v17;
  *(v8 + 232) = v15;
  *(v8 + 96) = v13;
  *(v8 + 112) = v14;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = sub_2154A1FFC();
  *(v8 + 160) = sub_2154A1FEC();
  v10 = sub_2154A1FCC();
  *(v8 + 168) = v10;
  *(v8 + 176) = v9;

  return MEMORY[0x2822009F8](sub_215345C04, v10, v9);
}

uint64_t sub_215345C04()
{
  v1 = v0[18];
  v29 = v0[12];
  v2 = v0[10];
  v26 = v0[17];
  v28 = v0[11];
  v3 = v0[8];
  v24 = v1;
  v25 = v0[9];
  v4 = v0[6];
  v32 = v0[13];
  v33 = v0[7];
  v5 = v0[5];
  v6 = sub_2154A1D2C();
  v7 = [v6 ic_range];
  v30 = v8;
  v31 = v7;

  v9 = sub_2154A202C();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);

  v11 = v2;
  v12 = sub_2154A1FEC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v33;
  v13[5] = v3;
  v13[6] = v5;
  v13[7] = v4;
  v13[8] = v25;
  v13[9] = v11;
  v13[10] = v26;
  v27 = sub_2152F5050(0, 0, v24, &unk_2154BEE08, v13);
  v0[23] = v27;
  v10(v24, 1, 1, v9);

  v15 = v11;
  v16 = v28;
  v17 = v29;
  v18 = v32;
  v19 = sub_2154A1FEC();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = MEMORY[0x277D85700];
  v20[4] = v16;
  v20[5] = v17;
  v20[6] = v31;
  v20[7] = v30;
  v20[8] = v25;
  v20[9] = v18;
  v20[10] = v33;
  v20[11] = v3;
  v20[12] = v15;
  v0[24] = sub_2152F5050(0, 0, v24, &unk_2154BEE18, v20);
  v21 = swift_task_alloc();
  v0[25] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD20);
  v0[26] = v22;
  *v21 = v0;
  v21[1] = sub_215345EC4;

  return MEMORY[0x282200460](v0 + 2, v27, v22);
}

uint64_t sub_215345EC4()
{
  v1 = *v0;
  v2 = *v0;

  v1[27] = v1[2];
  v3 = swift_task_alloc();
  v1[28] = v3;
  *v3 = v2;
  v3[1] = sub_21534603C;
  v4 = v1[26];
  v5 = v1[24];

  return MEMORY[0x282200460](v1 + 3, v5, v4);
}

uint64_t sub_21534603C()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_21534615C, v3, v2);
}

uint64_t sub_21534615C()
{
  v26 = v0;

  sub_21547EC58(*(v0 + 24));

  v25 = sub_215432A04(v2);
  v3 = 0;
  sub_215349784(&v25, sub_21534A058, sub_2153499F8);
  v4 = *(v0 + 232);

  v5 = v25;
  if ((v4 & 1) == 0)
  {
    v4 = sub_2153487DC(v25, *(v0 + 112), *(v0 + 120));
    v3 = v6;

    v25 = v3;
    sub_21547EC58(v4);
    v5 = v25;
  }

  v7 = v5 >> 62;
  if (v5 >> 62)
  {
    v8 = sub_2154A2C8C();
    if (v8 <= 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 <= 0)
    {
LABEL_46:

      goto LABEL_47;
    }
  }

  v9 = *(v0 + 128);
  if (v8 <= v9)
  {
    goto LABEL_46;
  }

  if (v7)
  {
    if (v5 < 0)
    {
      v4 = v5;
    }

    else
    {
      v4 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v3 = sub_2154A2C8C();
    if (sub_2154A2C8C() < 0)
    {
      goto LABEL_51;
    }

    v12 = *(v0 + 128);
    if (v3 >= v12)
    {
      v13 = *(v0 + 128);
    }

    else
    {
      v13 = v3;
    }

    if (v3 < 0)
    {
      v13 = *(v0 + 128);
    }

    if (v12)
    {
      v1 = v13;
    }

    else
    {
      v1 = 0;
    }

    v10 = sub_2154A2C8C();
  }

  else
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= v9)
    {
      v11 = *(v0 + 128);
    }

    else
    {
      v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v1 = v11;
    }

    else
    {
      v1 = 0;
    }
  }

  if (v10 < v1)
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {

    if (v1)
    {
      sub_2151A6C9C(0, &unk_27CA5AC70);
      v14 = 0;
      do
      {
        v15 = v14 + 1;
        sub_2154A2DBC();
        v14 = v15;
      }

      while (v1 != v15);
    }
  }

  else
  {
  }

  if (v7)
  {
    v4 = sub_2154A2F0C();
    v7 = v16;
    v3 = v17;
    v1 = v18;

    if (v1)
    {
      goto LABEL_38;
    }

LABEL_37:
    sub_215364B3C(v4, v7, v3, v1);
    v5 = v19;

    swift_unknownObjectRelease();
    goto LABEL_47;
  }

  v3 = 0;
  v4 = v5 & 0xFFFFFFFFFFFFFF8;
  v7 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
  v1 = (2 * v1) | 1;
  if ((v1 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_38:
  sub_2154A2FCC();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x277D84F90];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v1 >> 1, v3))
  {
    goto LABEL_52;
  }

  if (v21 != (v1 >> 1) - v3)
  {
LABEL_53:
    swift_unknownObjectRelease_n();
    goto LABEL_37;
  }

  v5 = swift_dynamicCastClass();
  swift_unknownObjectRelease();

  if (!v5)
  {
    swift_unknownObjectRelease();
    v5 = MEMORY[0x277D84F90];
  }

  swift_unknownObjectRelease();
LABEL_47:
  v22 = *(v0 + 32);

  *v22 = v5;
  *(v22 + 8) = 0;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_215346520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v13;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[3] = a1;
  v8[10] = sub_2154A1FFC();
  v8[11] = sub_2154A1FEC();
  v10 = sub_2154A1FCC();
  v8[12] = v10;
  v8[13] = v9;

  return MEMORY[0x2822009F8](sub_2153465D0, v10, v9);
}

uint64_t sub_2153465D0()
{
  v51 = v0;
  v1 = v0[8];
  v2 = v0[5];
  if ((v1 & 8) != 0)
  {

    v6 = v0[4];
  }

  else
  {
    v3 = objc_opt_self();
    v4 = sub_2154A1D2C();
    v5 = [v3 escapedPatternForString_];

    v6 = sub_2154A1D6C();
    v2 = v7;
  }

  v8 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v17 = sub_215348CBC(v6, v2, v1 & 1);
  v18 = sub_2154A1D2C();
  v19 = sub_2154A1D2C();
  v20 = [v19 ic_range];
  v22 = v21;

  v23 = [v17 matchesInString:v18 options:0 range:{v20, v22}];
  v47 = v17;

  sub_2151A6C9C(0, &qword_281199580);
  v24 = sub_2154A1F4C();

  if (v24 >> 62)
  {
    v49 = v24 & 0xFFFFFFFFFFFFFF8;
    v25 = sub_2154A2C8C();
    if (v25)
    {
      goto LABEL_10;
    }

LABEL_33:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v49 = v24 & 0xFFFFFFFFFFFFFF8;
  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_33;
  }

LABEL_10:
  v26 = 0;
  v16 = MEMORY[0x277D84F90];
  while (2)
  {
    v48 = v16;
    v27 = v26;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x216069960](v27, v24);
      }

      else
      {
        if (v27 >= *(v49 + 16))
        {
          goto LABEL_31;
        }

        v28 = *(v24 + 8 * v27 + 32);
      }

      v29 = v28;
      v26 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        swift_once();
        v9 = sub_21549F11C();
        __swift_project_value_buffer(v9, qword_27CA5AC30);

        v10 = sub_21549F0FC();
        v11 = sub_2154A226C();

        if (os_log_type_enabled(v10, v11))
        {
          v13 = v0[4];
          v12 = v0[5];
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v50 = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_215348D98(v13, v12, &v50);
          _os_log_impl(&dword_2151A1000, v10, v11, "Unable to create regular expression for find input string %s.", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v15);
          MEMORY[0x21606B520](v15, -1, -1);
          MEMORY[0x21606B520](v14, -1, -1);
        }

        v16 = MEMORY[0x277D84F90];
        goto LABEL_35;
      }

      if ((v1 & 2) == 0 || (v30 = sub_2154A1D2C(), v31 = [v29 range], v33 = objc_msgSend(v30, sel_ic_rangeEncapsulatesWord_, v31, v32), v30, v33))
      {
        if ((v1 & 0x10) == 0)
        {
          break;
        }

        v34 = sub_2154A1D2C();
        v35 = [v29 range];
        v37 = [v34 ic:v35 startsWithDelimeter:v36];

        if (v37)
        {
          break;
        }
      }

      ++v27;
      if (v26 == v25)
      {
        v16 = v48;
        goto LABEL_34;
      }
    }

    v38 = [v29 range];
    v40 = v39;

    v41 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_215317AC0(0, *(v48 + 2) + 1, 1, v48);
    }

    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    v44 = v41;
    if (v43 >= v42 >> 1)
    {
      v44 = sub_215317AC0((v42 > 1), v43 + 1, 1, v41);
    }

    *(v44 + 2) = v43 + 1;
    v45 = &v44[16 * v43];
    v16 = v44;
    *(v45 + 4) = v38;
    *(v45 + 5) = v40;
    if (v26 != v25)
    {
      continue;
    }

    break;
  }

LABEL_34:

LABEL_35:
  v0[14] = 0;
  v0[15] = v16;

  return MEMORY[0x2822009F8](sub_215346AAC, 0, 0);
}

uint64_t sub_215346AAC()
{
  *(v0 + 128) = sub_2154A1FEC();
  v2 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_215346B38, v2, v1);
}

void sub_215346B38()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[9];

  sub_215346C5C(v3, v1, v0 + 2);
  if (v2)
  {
  }

  else
  {
    v4 = v0[3];

    *v4 = v0[2];
    v5 = v0[12];
    v6 = v0[13];

    MEMORY[0x2822009F8](sub_215346BFC, v5, v6);
  }
}

uint64_t sub_215346BFC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_215346C5C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = [a1 textLayoutManager];
  if (!v6)
  {
    if (qword_27CA59810 != -1)
    {
      swift_once();
    }

    v13 = sub_21549F11C();
    __swift_project_value_buffer(v13, qword_27CA5AC30);
    v14 = a1;
    v15 = sub_21549F0FC();
    v16 = sub_2154A226C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_2151A1000, v15, v16, "Unable to provide match results because textView %@ has no textLayoutManager. Is this using TextKit1?", v17, 0xCu);
      sub_2151ADCD8(v18, &unk_27CA59E90);
      MEMORY[0x21606B520](v18, -1, -1);
      MEMORY[0x21606B520](v17, -1, -1);
    }

    goto LABEL_12;
  }

  v7 = *(a2 + 16);
  if (!v7)
  {

LABEL_12:
    v12 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v20 = v6;
  v21 = MEMORY[0x277D84F90];
  sub_2154A2E2C();
  v8 = (a2 + 40);
  do
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    v11 = [objc_allocWithZone(ICTextFindingResult) init];
    [v11 setRange_];
    [v11 setAttachmentResult_];
    sub_2154A2E0C();
    sub_2154A2E4C();
    sub_2154A2E5C();
    sub_2154A2E1C();
    v8 += 2;
    --v7;
  }

  while (v7);

  v12 = v21;
LABEL_13:
  *a3 = v12;
}

uint64_t sub_215346EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = v14;
  *(v8 + 216) = v15;
  *(v8 + 192) = v13;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 144) = a1;
  *(v8 + 152) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = sub_2154A1FFC();
  *(v8 + 248) = sub_2154A1FEC();
  v10 = sub_2154A1FCC();
  *(v8 + 256) = v10;
  *(v8 + 264) = v9;

  return MEMORY[0x2822009F8](sub_215346FB4, v10, v9);
}

uint64_t sub_215346FB4()
{
  v1 = [*(v0 + 152) managedObjectContext];
  *(v0 + 272) = v1;
  if (!v1)
  {
    v43 = *(v0 + 144);

    *v43 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v2 = v1;
  v3 = (v0 + 128);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  *(v0 + 128) = MEMORY[0x277D84F90];
  v7 = swift_allocObject();
  *(v0 + 280) = v7;
  v7[2] = v0 + 128;
  v7[3] = v6;
  v7[4] = v2;
  v7[5] = v5;
  v7[6] = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21534BFE0;
  *(v8 + 24) = v7;
  *(v0 + 48) = sub_2153252BC;
  *(v0 + 56) = v8;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_2152F1C04;
  *(v0 + 40) = &block_descriptor_73;
  v9 = _Block_copy((v0 + 16));
  v10 = v6;
  v11 = v2;

  [v11 performBlockAndWait_];
  _Block_release(v9);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_35;
  }

  v12 = *v3;
  if (*v3 >> 62)
  {
LABEL_35:
    v51 = v12;
    v15 = sub_2154A2C8C();
    v12 = v51;
    goto LABEL_5;
  }

  v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v60 = MEMORY[0x277D84F90];
    v17 = v12;

    v12 = sub_21531B58C(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v18 = 0;
    v19 = v60;
    v20 = v17;
    v52 = v17 & 0xC000000000000001;
    v53 = v15;
    v54 = v17;
    do
    {
      v58 = v18;
      v59 = v19;
      if (v52)
      {
        v21 = MEMORY[0x216069960]();
      }

      else
      {
        v21 = *(v20 + 8 * v18 + 32);
      }

      v22 = v21;
      v23 = *(v0 + 232);
      v24 = *(v0 + 216);
      v25 = *(v0 + 208);
      v56 = *(v0 + 200);
      v57 = *(v0 + 224);
      v26 = *(v0 + 192);
      v55 = *(v0 + 184);
      v27 = sub_2154A202C();
      v28 = *(v27 - 8);
      (*(v28 + 56))(v23, 1, 1, v27);
      v29 = v26;
      v30 = v22;

      v31 = v24;
      v32 = sub_2154A1FEC();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = MEMORY[0x277D85700];
      v33[4] = v55;
      v33[5] = v29;
      v33[6] = v30;
      v33[7] = v56;
      v33[8] = v25;
      v33[9] = v31;
      sub_21534C0DC(v23, v57);
      LODWORD(v25) = (*(v28 + 48))(v57, 1, v27);

      v34 = *(v0 + 224);
      if (v25 == 1)
      {
        sub_2151ADCD8(*(v0 + 224), &unk_27CA5ACE0);
      }

      else
      {
        sub_2154A201C();
        (*(v28 + 8))(v34, v27);
      }

      v35 = v33[2];
      swift_unknownObjectRetain();

      if (v35)
      {
        swift_getObjectType();
        v36 = sub_2154A1FCC();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      sub_2151ADCD8(*(v0 + 232), &unk_27CA5ACE0);
      v39 = swift_allocObject();
      *(v39 + 16) = &unk_2154BEE38;
      *(v39 + 24) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD20);
      if (v38 | v36)
      {
        *(v0 + 64) = 0;
        *(v0 + 72) = 0;
        *(v0 + 80) = v36;
        *(v0 + 88) = v38;
      }

      v40 = swift_task_create();

      v19 = v59;
      v42 = *(v59 + 16);
      v41 = *(v59 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_21531B58C((v41 > 1), v42 + 1, 1);
        v19 = v59;
      }

      v18 = v58 + 1;
      *(v19 + 16) = v42 + 1;
      *(v19 + 8 * v42 + 32) = v40;
      v20 = v54;
    }

    while (v53 != v58 + 1);

    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  *(v0 + 288) = v19;
  v44 = *(v19 + 16);
  *(v0 + 296) = v44;
  if (v44)
  {
    *(v0 + 304) = 0;
    *(v0 + 312) = v16;
    if (*(v19 + 16))
    {
      v45 = *(v19 + 32);
      *(v0 + 320) = v45;

      v46 = swift_task_alloc();
      *(v0 + 328) = v46;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD20);
      *(v0 + 336) = v14;
      *v46 = v0;
      v46[1] = sub_215347630;
      v12 = v0 + 136;
      v13 = v45;

      return MEMORY[0x282200460](v12, v13, v14);
    }

LABEL_37:
    __break(1u);
    return MEMORY[0x282200460](v12, v13, v14);
  }

  v47 = v16;

  v48 = *(v0 + 144);

  *v48 = v47;

LABEL_31:

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_215347630()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_215347750, v3, v2);
}

uint64_t sub_215347750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + 136;
  v4 = *(v3 + 136);
  v6 = v4 >> 62;
  if (v4 >> 62)
  {
    v7 = sub_2154A2C8C();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *(v3 + 312);
  v9 = v8 >> 62;
  if (!(v8 >> 62))
  {
    isUniquelyReferenced_nonNull_bridgeObject = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = isUniquelyReferenced_nonNull_bridgeObject + v7;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
    {
      goto LABEL_5;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  isUniquelyReferenced_nonNull_bridgeObject = sub_2154A2C8C();
  v11 = isUniquelyReferenced_nonNull_bridgeObject + v7;
  if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
  {
    goto LABEL_39;
  }

LABEL_5:
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!isUniquelyReferenced_nonNull_bridgeObject)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v9)
  {
LABEL_11:
    sub_2154A2C8C();
    goto LABEL_12;
  }

  v12 = v8 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v12 + 24) >> 1;
  if (v13 >= v11)
  {
    v14 = *(v3 + 312);
    goto LABEL_13;
  }

LABEL_12:
  isUniquelyReferenced_nonNull_bridgeObject = sub_2154A2DDC();
  v14 = isUniquelyReferenced_nonNull_bridgeObject;
  v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
  v13 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_13:
  v15 = *(v12 + 16);
  if (!v6)
  {
    v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (v7 <= 0)
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_22:
    if (v16 < 1)
    {
LABEL_43:
      __break(1u);
      return MEMORY[0x282200460](isUniquelyReferenced_nonNull_bridgeObject, a2, a3);
    }

    v31 = v14;
    sub_21534C14C();
    for (i = 0; i != v16; ++i)
    {
      v18 = sub_215327758((v3 + 96), i, v4);
      v20 = *v19;
      (v18)(v3 + 96, 0);
      *(v13 + 8 * i) = v20;
    }

    v5 = v3 + 136;
    v14 = v31;
    if (v7 <= 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  isUniquelyReferenced_nonNull_bridgeObject = sub_2154A2C8C();
  v16 = isUniquelyReferenced_nonNull_bridgeObject;
  if (!isUniquelyReferenced_nonNull_bridgeObject)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v13 - v15 < v7)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v13 = v12 + 8 * v15 + 32;
  if (v6)
  {
    goto LABEL_22;
  }

  sub_2151A6C9C(0, &unk_27CA5AC70);
  swift_arrayInitWithCopy();

  if (v7 <= 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  v21 = *(v12 + 16);
  v22 = __OFADD__(v21, v7);
  v23 = v21 + v7;
  if (v22)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v12 + 16) = v23;
LABEL_28:
  v24 = *(v3 + 304) + 1;
  if (v24 != *(v3 + 296))
  {
    *(v3 + 304) = v24;
    *(v3 + 312) = v14;
    v28 = *(v3 + 288);
    if (v24 < *(v28 + 16))
    {
      v29 = *(v28 + 8 * v24 + 32);
      *(v3 + 320) = v29;

      v30 = swift_task_alloc();
      *(v3 + 328) = v30;
      a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD20);
      *(v3 + 336) = a3;
      *v30 = v3;
      v30[1] = sub_215347630;
      isUniquelyReferenced_nonNull_bridgeObject = v5;
      a2 = v29;

      return MEMORY[0x282200460](isUniquelyReferenced_nonNull_bridgeObject, a2, a3);
    }

    goto LABEL_41;
  }

  v25 = *(v3 + 144);

  *v25 = v14;

  v26 = *(v3 + 8);

  return v26();
}

uint64_t sub_215347B24(uint64_t *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [a2 abstractAttachmentsInContext:a3 range:a4 options:{a5, 0}];
  sub_2151A6C9C(0, &qword_27CA5AD30);
  v7 = sub_2154A1F4C();

  *a1 = v7;
}

uint64_t sub_215347BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = a8;
  v8[32] = v13;
  v8[29] = a6;
  v8[30] = a7;
  v8[27] = a1;
  v8[28] = a4;
  sub_2154A1FFC();
  v8[33] = sub_2154A1FEC();
  v10 = sub_2154A1FCC();
  v8[34] = v10;
  v8[35] = v9;

  return MEMORY[0x2822009F8](sub_215347C5C, v10, v9);
}

uint64_t sub_215347C5C()
{
  if ((*(v0 + 224) & 4) == 0 && (sub_21534C1B0(*(v0 + 232)) & 1) == 0)
  {

    v17 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v1 = v0 + 208;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v0 + 80;
    v39 = *(v0 + 256);
    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    v7 = sub_2154A1D2C();
    *(v0 + 288) = v7;
    *(v0 + 80) = v0;
    *(v0 + 120) = v1;
    *(v0 + 88) = sub_2153481D4;
    v8 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD28);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_215348758;
    *(v0 + 168) = &block_descriptor_89;
    *(v0 + 176) = v8;
    [v3 textFindingResultsMatchingString:v7 textView:v39 ignoreCase:v5 & 1 wholeWords:(v5 >> 1) & 1 startsWith:(v5 >> 4) & 1 usePattern:(v5 >> 3) & 1 completion:v0 + 144];
    goto LABEL_7;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v4 = v0 + 16;
    v40 = *(v0 + 256);
    v11 = *(v0 + 224);
    v12 = *(v0 + 232);
    v13 = [v10 attachmentModel];
    *(v0 + 296) = v13;
    v14 = sub_2154A1D2C();
    *(v0 + 304) = v14;
    *(v0 + 16) = v0;
    *(v0 + 56) = v1;
    *(v0 + 24) = sub_215348494;
    v15 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD28);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_215348758;
    *(v0 + 168) = &block_descriptor_86;
    *(v0 + 176) = v15;
    [v13 textFindingResultsMatchingString:v14 textView:v40 ignoreCase:v11 & 1 wholeWords:(v11 >> 1) & 1 startsWith:(v11 >> 4) & 1 usePattern:(v11 >> 3) & 1 completion:v0 + 144];
LABEL_7:
    v16 = v4;

    return MEMORY[0x282200938](v16);
  }

  if (qword_27CA59810 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 232);
  v19 = sub_21549F11C();
  __swift_project_value_buffer(v19, qword_27CA5AC30);
  v20 = v18;
  v21 = sub_21549F0FC();
  v22 = sub_2154A226C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 232);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v23;
    *v25 = v23;
    v26 = v23;
    _os_log_impl(&dword_2151A1000, v21, v22, "Unexpected attachment class: %@.", v24, 0xCu);
    sub_2151ADCD8(v25, &unk_27CA59E90);
    MEMORY[0x21606B520](v25, -1, -1);
    MEMORY[0x21606B520](v24, -1, -1);
  }

  v27 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90] >> 62;
  if (MEMORY[0x277D84F90] >> 62)
  {
    v29 = sub_2154A2C8C();
    if (v29)
    {
      goto LABEL_17;
    }

LABEL_25:
    v17 = MEMORY[0x277D84F90];

    goto LABEL_26;
  }

  v29 = *((MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_25;
  }

LABEL_17:
  v41 = v27;
  v16 = sub_2154A2E2C();
  if (v29 < 0)
  {
    __break(1u);
    return MEMORY[0x282200938](v16);
  }

  v30 = 0;
  v31 = v27;
  do
  {
    if (v28)
    {
      v32 = MEMORY[0x216069960](v30, v27);
    }

    else
    {
      v32 = *(v27 + 8 * v30 + 32);
    }

    v33 = v32;
    v34 = *(v0 + 232);
    ++v30;
    [v32 setAttachmentResult_];
    v35 = [v34 rangeInNote];
    [v33 setRange_];
    sub_2154A2E0C();
    sub_2154A2E4C();
    sub_2154A2E5C();
    sub_2154A2E1C();
    v27 = v31;
  }

  while (v29 != v30);

  v17 = v41;
LABEL_26:
  **(v0 + 216) = v17;
  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2153481D4()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  return MEMORY[0x2822009F8](sub_2153482DC, v2, v1);
}

uint64_t sub_2153482DC()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 208);

  if (v2 >> 62)
  {
    v3 = sub_2154A2C8C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v13 = MEMORY[0x277D84F90];
  result = sub_2154A2E2C();
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216069960](v5, v2);
    }

    else
    {
      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = *(v0 + 232);
    ++v5;
    [v6 setAttachmentResult_];
    v9 = [v8 rangeInNote];
    [v7 setRange_];
    sub_2154A2E0C();
    sub_2154A2E4C();
    sub_2154A2E5C();
    sub_2154A2E1C();
  }

  while (v3 != v5);

  v11 = v13;
LABEL_12:
  **(v0 + 216) = v11;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_215348494()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  return MEMORY[0x2822009F8](sub_21534859C, v2, v1);
}

uint64_t sub_21534859C()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);

  v3 = *(v0 + 208);

  if (v3 >> 62)
  {
    v4 = sub_2154A2C8C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v14 = MEMORY[0x277D84F90];
  result = sub_2154A2E2C();
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x216069960](v6, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = *(v0 + 232);
    ++v6;
    [v7 setAttachmentResult_];
    v10 = [v9 rangeInNote];
    [v8 setRange_];
    sub_2154A2E0C();
    sub_2154A2E4C();
    sub_2154A2E5C();
    sub_2154A2E1C();
  }

  while (v4 != v6);

  v12 = v14;
LABEL_12:
  **(v0 + 216) = v12;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_215348758(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  sub_2151A6C9C(0, &unk_27CA5AC70);
  **(*(v1 + 64) + 40) = sub_2154A1F4C();

  return MEMORY[0x282200948](v1);
}

uint64_t sub_2153487DC(unint64_t a1, char *a2, uint64_t a3)
{
  v12[0] = MEMORY[0x277D84F90];
  v12[1] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x216069960](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_215348AF8(v12, v8, a2, a3);

      if (v10 == i)
      {
        return v12[0];
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_215348914(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, void *a6, void *a7, uint64_t a8)
{
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v19 = a2;
    v15 = [a6 icTextLayoutManager];
    v16 = [v15 tableViewControllerForAttachment:v14 createIfNeeded:0];

    if (v16)
    {
      *a5 = 1;
      v17 = sub_2154A1D2C();
      [a7 undoablyReplaceTextFindingResult:a8 withReplacementString:v17 tableViewController:v16];

      v18 = v17;
    }

    else
    {
      v18 = v19;
    }
  }
}

void sub_215348A4C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 32);

  v13 = a2;
  v12 = a3;
  v11(v13, v12, a4, a5, a6);
}

char *sub_215348AF8(void *a1, id a2, char *a3, uint64_t a4)
{
  v9 = a1 + 1;
  v8 = a1[1];
  if (v8 >> 62)
  {
    if (sub_2154A2C8C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if ([a2 range] == a3 && v10 == a4)
  {
    goto LABEL_13;
  }

  result = [a2 range];
  if (!__OFADD__(result, v13))
  {
    if (&result[v13] < a3)
    {
LABEL_13:
      a2;
      MEMORY[0x216068AC0]();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      return sub_2154A1FAC();
    }

LABEL_3:
    a2;
    MEMORY[0x216068AC0]();
    if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2154A1F8C();
    }

    return sub_2154A1FAC();
  }

  __break(1u);
  return result;
}

id sub_215348CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2154A1D2C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_21549E3DC();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_215348D98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_215348E64(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_21533FC88(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_215348E64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_215348F70(a5, a6);
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
    result = sub_2154A2DEC();
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

uint64_t sub_215348F70(uint64_t a1, unint64_t a2)
{
  v3 = sub_215348FBC(a1, a2);
  sub_2153490EC(&unk_28274D8B0);
  return v3;
}

uint64_t sub_215348FBC(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21536A938(v5, 0);
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

  result = sub_2154A2DEC();
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
        v10 = sub_2154A1E9C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21536A938(v10, 0);
        result = sub_2154A2D8C();
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

uint64_t sub_2153490EC(uint64_t result)
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

  result = sub_2153491D8(result, v11, 1, v3);
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

char *sub_2153491D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD38);
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

uint64_t sub_2153492CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2154A2E6C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2153493CC, 0, 0);
}

uint64_t sub_2153493CC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2154A2E7C();
  v5 = sub_21534BDA0(&qword_27CA5AD10, MEMORY[0x277D85928]);
  sub_2154A301C();
  sub_21534BDA0(&qword_27CA5AD18, MEMORY[0x277D858F8]);
  sub_2154A2E8C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21534955C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21534955C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_215349718, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_215349718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215349784(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_215433F34(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_215349818(v10, a2, a3);
  return sub_2154A2E1C();
}

uint64_t sub_215349818(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_2154A2F6C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2151A6C9C(0, &unk_27CA5AC70);
        v10 = sub_2154A1F9C();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

char *sub_21534993C(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      result = [*v11 compare_];
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = *v11;
      v9 = *(v11 + 8);
      *v11 = v9;
      *(v11 + 8) = v12;
      v11 -= 8;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_2153499F8(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
LABEL_5:
    result = *(v6 + 8 * v4);
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = [result compare_];
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v11;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_215349AB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v81 = a4;
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 8 * v6);
        v10 = 8 * v8;
        v11 = (*a3 + 8 * v8);
        v13 = *v11;
        v12 = v11 + 2;
        result = [v13 compare_];
        v14 = result;
        v82 = v8;
        v15 = (v8 + 2);
        while (v5 != v15)
        {
          result = [*(v12 - 1) compare_];
          ++v15;
          ++v12;
          if ((v14 == -1) == (result != -1))
          {
            v5 = (v15 - 1);
            break;
          }
        }

        v8 = v82;
        if (v14 == -1)
        {
          if (v5 < v82)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v82 < v5)
          {
            v16 = 8 * v5 - 8;
            v17 = v5;
            v18 = v82;
            do
            {
              if (v18 != --v17)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v19 = *(v20 + v10);
                *(v20 + v10) = *(v20 + v16);
                *(v20 + v16) = v19;
              }

              v18 = (v18 + 1);
              v16 -= 8;
              v10 += 8;
            }

            while (v18 < v17);
          }
        }

        v6 = v5;
      }

      v21 = a3[1];
      if (v6 < v21)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_116;
        }

        if (v6 - v8 < v81)
        {
          if (__OFADD__(v8, v81))
          {
            goto LABEL_117;
          }

          if (v8 + v81 >= v21)
          {
            v22 = a3[1];
          }

          else
          {
            v22 = (v8 + v81);
          }

          if (v22 < v8)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v6 != v22)
          {
            v23 = *a3;
            v24 = *a3 + 8 * v6 - 8;
            v83 = v8;
            v25 = (v8 - v6);
            do
            {
              v26 = *(v23 + 8 * v6);
              v27 = v25;
              v28 = v24;
              do
              {
                result = [*v28 compare_];
                if (result != -1)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_121;
                }

                v29 = *v28;
                v26 = *(v28 + 8);
                *v28 = v26;
                *(v28 + 8) = v29;
                v28 -= 8;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v24 += 8;
              --v25;
            }

            while (v6 != v22);
            v6 = v22;
            v8 = v83;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_215317AD4(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_215317AD4((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v33;
      v34 = &v7[16 * v32];
      *(v34 + 4) = v8;
      *(v34 + 5) = v6;
      v35 = *v84;
      if (!*v84)
      {
        goto LABEL_125;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v7 + 4);
            v38 = *(v7 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_104;
            }

            v53 = &v7[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_107;
            }

            v59 = &v7[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_111;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v63 = &v7[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_71:
          if (v58)
          {
            goto LABEL_106;
          }

          v66 = &v7[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_109;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_78:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_122;
          }

          v8 = *&v7[16 * v74 + 32];
          v75 = *&v7[16 * v36 + 40];
          sub_21534A5FC((*a3 + 8 * v8), (*a3 + 8 * *&v7[16 * v36 + 32]), (*a3 + 8 * v75), v35);
          if (v4)
          {
          }

          if (v75 < v8)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_21543284C(v7);
          }

          if (v74 >= *(v7 + 2))
          {
            goto LABEL_101;
          }

          v76 = &v7[16 * v74];
          *(v76 + 4) = v8;
          *(v76 + 5) = v75;
          result = sub_2154327C0(v36);
          v33 = *(v7 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v7[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_102;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_103;
        }

        v48 = &v7[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_105;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_112;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_88;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_88:
  v8 = *v84;
  if (!*v84)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_21543284C(v7);
    v7 = result;
  }

  v77 = *(v7 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v78 = *&v7[16 * v77];
      v79 = *&v7[16 * v77 + 24];
      sub_21534A5FC((*a3 + 8 * v78), (*a3 + 8 * *&v7[16 * v77 + 16]), (*a3 + 8 * v79), v8);
      if (v4)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21543284C(v7);
      }

      if (v77 - 2 >= *(v7 + 2))
      {
        goto LABEL_114;
      }

      v80 = &v7[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_2154327C0(v77 - 1);
      v77 = *(v7 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_21534A058(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v81 = a4;
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 8 * v6);
        v10 = 8 * v8;
        v11 = (*a3 + 8 * v8);
        v13 = *v11;
        v12 = (v11 + 2);
        result = [v9 compare_];
        v14 = result;
        v82 = v8;
        v15 = (v8 + 2);
        while (v5 != v15)
        {
          result = [*v12 compare_];
          ++v15;
          ++v12;
          if ((v14 == -1) == (result != -1))
          {
            v5 = (v15 - 1);
            break;
          }
        }

        v8 = v82;
        if (v14 == -1)
        {
          if (v5 < v82)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v82 < v5)
          {
            v16 = 8 * v5 - 8;
            v17 = v5;
            v18 = v82;
            do
            {
              if (v18 != --v17)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v19 = *(v20 + v10);
                *(v20 + v10) = *(v20 + v16);
                *(v20 + v16) = v19;
              }

              v18 = (v18 + 1);
              v16 -= 8;
              v10 += 8;
            }

            while (v18 < v17);
          }
        }

        v6 = v5;
      }

      v21 = a3[1];
      if (v6 < v21)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_116;
        }

        if (v6 - v8 < v81)
        {
          if (__OFADD__(v8, v81))
          {
            goto LABEL_117;
          }

          if (v8 + v81 >= v21)
          {
            v22 = a3[1];
          }

          else
          {
            v22 = (v8 + v81);
          }

          if (v22 < v8)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v6 != v22)
          {
            v23 = *a3;
            v24 = *a3 + 8 * v6 - 8;
            v83 = v8;
            v25 = (v8 - v6);
            do
            {
              v26 = *(v23 + 8 * v6);
              v27 = v25;
              v28 = v24;
              do
              {
                result = [v26 compare_];
                if (result != -1)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_121;
                }

                v29 = *v28;
                v26 = v28[1];
                *v28 = v26;
                v28[1] = v29;
                --v28;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v24 += 8;
              --v25;
            }

            while (v6 != v22);
            v6 = v22;
            v8 = v83;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_215317AD4(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_215317AD4((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v33;
      v34 = &v7[16 * v32];
      *(v34 + 4) = v8;
      *(v34 + 5) = v6;
      v35 = *v84;
      if (!*v84)
      {
        goto LABEL_125;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v7 + 4);
            v38 = *(v7 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_104;
            }

            v53 = &v7[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_107;
            }

            v59 = &v7[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_111;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v63 = &v7[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_71:
          if (v58)
          {
            goto LABEL_106;
          }

          v66 = &v7[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_109;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_78:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_122;
          }

          v8 = *&v7[16 * v74 + 32];
          v75 = *&v7[16 * v36 + 40];
          sub_21534A830((*a3 + 8 * v8), (*a3 + 8 * *&v7[16 * v36 + 32]), (*a3 + 8 * v75), v35);
          if (v4)
          {
          }

          if (v75 < v8)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_21543284C(v7);
          }

          if (v74 >= *(v7 + 2))
          {
            goto LABEL_101;
          }

          v76 = &v7[16 * v74];
          *(v76 + 4) = v8;
          *(v76 + 5) = v75;
          result = sub_2154327C0(v36);
          v33 = *(v7 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v7[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_102;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_103;
        }

        v48 = &v7[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_105;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_112;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_88;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_88:
  v8 = *v84;
  if (!*v84)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_21543284C(v7);
    v7 = result;
  }

  v77 = *(v7 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v78 = *&v7[16 * v77];
      v79 = *&v7[16 * v77 + 24];
      sub_21534A830((*a3 + 8 * v78), (*a3 + 8 * *&v7[16 * v77 + 16]), (*a3 + 8 * v79), v8);
      if (v4)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21543284C(v7);
      }

      if (v77 - 2 >= *(v7 + 2))
      {
        goto LABEL_114;
      }

      v80 = &v7[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_2154327C0(v77 - 1);
      v77 = *(v7 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_21534A5FC(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([*v17 compare_] == -1)
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while ([*v4 compare_] == -1)
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v7 = *v15;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_21534A830(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([v20 compare_] == -1)
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while ([*v6 compare_] == -1)
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v7 = *v15;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_21534AA64(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 32) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  v5[1] = sub_21534AB58;

  return v7(v4 + 16);
}

uint64_t sub_21534AB58()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_21534AC98;
  }

  else
  {
    v2 = sub_21534AC6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21534AC6C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_21534ACB0(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_21534ADA4;

  return v5(v2 + 16);
}

uint64_t sub_21534ADA4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

void _s11NotesEditor22TextFindingCoordinatorC9configure15findInteraction3forySo06UIFindH0C_So10ICTextViewCtF_0(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v6[4] = sub_21534C36C;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2153BF69C;
  v6[3] = &block_descriptor_101;
  v5 = _Block_copy(v6);

  [a1 setOptionsMenuProvider_];
  _Block_release(v5);
}

uint64_t sub_21534AFEC(uint64_t a1)
{
  v13 = v1[2];
  v10 = v1[4];
  v11 = v1[3];
  v9 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_215345B08(a1, v13, v11, v10, v9, v4, v5, v6);
}

uint64_t sub_21534B104(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 32) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21534B1A4, 0, 0);
}

uint64_t sub_21534B1A4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[4];
  v5 = sub_2154A202C();
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v7[5] = v1;

  v8 = sub_215354DF8(0, 0, v2, &unk_2154BEDE0, v7);
  v0[8] = v8;
  v6(v2, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v4;
  v9[5] = v8;

  v0[9] = sub_215354B4C(0, 0, v2, &unk_2154BEDF0, v9);
  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AD00);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88);
  v0[11] = v12;
  *v10 = v0;
  v10[1] = sub_21534B3B4;
  v13 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v8, v11, v12, v13);
}

uint64_t sub_21534B3B4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21534B57C;
  }

  else
  {
    v2 = sub_21534B4C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21534B4C8()
{
  sub_2154A205C();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_21534B57C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_21534B5FC()
{
  result = qword_27CA5AC68;
  if (!qword_27CA5AC68)
  {
    sub_2151A6C9C(255, &unk_27CA5AC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5AC68);
  }

  return result;
}

void sub_21534B6B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2151BD278;

  JUMPOUT(0x215345168);
}

uint64_t sub_21534B7B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  v7 = *(v0 + 42);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_2151BD36C;

  return sub_215343F7C(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21534B8A0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [a1 attachment];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 attachmentModel];

    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = [a4 icTextLayoutManager];
        v14 = [a1 range];
        v16 = v15;
        v17 = swift_allocObject();
        v17[2] = a4;
        v17[3] = v12;
        v17[4] = a1;
        v17[5] = a2;
        v17[6] = a3;
        v34[4] = sub_21534BBE0;
        v34[5] = v17;
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 1107296256;
        v34[2] = sub_215348A4C;
        v34[3] = &block_descriptor_4;
        v18 = _Block_copy(v34);
        v19 = a4;
        v20 = v10;
        v21 = a1;

        [v13 enumerateAttachmentViewsInRange:v14 usingBlock:{v16, v18}];

        _Block_release(v18);
        return 1;
      }
    }
  }

  if (qword_27CA59810 != -1)
  {
    swift_once();
  }

  v23 = sub_21549F11C();
  __swift_project_value_buffer(v23, qword_27CA5AC30);
  v24 = sub_21549F0FC();
  v25 = sub_2154A226C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34[0] = v27;
    *v26 = 136315394;
    sub_2151A6C9C(0, &qword_27CA5ACF0);
    v28 = sub_2154A318C();
    v30 = sub_215348D98(v28, v29, v34);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    sub_2151A6C9C(0, &qword_27CA5ACF8);
    v31 = sub_2154A318C();
    v33 = sub_215348D98(v31, v32, v34);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_2151A1000, v24, v25, "%s's attachment's attachmentModel is not of type %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21606B520](v27, -1, -1);
    MEMORY[0x21606B520](v26, -1, -1);
  }

  return 0;
}

uint64_t sub_21534BC10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD278;

  return sub_21534AA64(a1, v4, v5, v6);
}

uint64_t sub_21534BCDC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_2153456D4(v6, a1, v4, v5, v7);
}

uint64_t sub_21534BDA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21534BDE8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2151BD36C;

  return sub_215346520(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21534BEDC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2151BD36C;

  return sub_215346EB8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21534BFF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2151BD36C;

  return sub_215347BB4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21534C0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21534C14C()
{
  result = qword_27CA5DC00;
  if (!qword_27CA5DC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5AD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DC00);
  }

  return result;
}

uint64_t sub_21534C1B0(void *a1)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 attachmentType];
      if (v4 < 0xE)
      {
        v2 = 0x3600u >> v4;
        return v2 & 1;
      }
    }

    else
    {
      if (qword_27CA59810 != -1)
      {
        swift_once();
      }

      v5 = sub_21549F11C();
      __swift_project_value_buffer(v5, qword_27CA5AC30);
      v6 = a1;
      v7 = sub_21549F0FC();
      v8 = sub_2154A226C();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        *(v9 + 4) = v6;
        *v10 = v6;
        v11 = v6;
        _os_log_impl(&dword_2151A1000, v7, v8, "Unexpected attachment class: %@, skipping in find since attachments should not be included.", v9, 0xCu);
        sub_2151ADCD8(v10, &unk_27CA59E90);
        MEMORY[0x21606B520](v10, -1, -1);
        MEMORY[0x21606B520](v9, -1, -1);
      }
    }

    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  LOBYTE(v2) = 1;
  return v2 & 1;
}

void *sub_21534C394()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
    swift_beginAccess();
    sub_215330CCC(v1 + v6, v4);
    v7 = OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_currentSuggestionsContainer;
    swift_beginAccess();
    v8 = v5;
    sub_21534E69C(v4, v5 + v7);
    swift_endAccess();
    sub_21548D3CC();

    sub_215330D3C(v4);
  }

  v9 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  result = swift_beginAccess();
  if (*(v1 + v9))
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result acceleratorOriginNeedsUpdate];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21534C51C()
{
  v1 = sub_21549E83C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController);
  if (!v8)
  {
    goto LABEL_7;
  }

  v20 = v8;
  v9 = [v20 collectionView];
  if (!v9)
  {

LABEL_7:
    if (qword_27CA59818 != -1)
    {
      swift_once();
    }

    v15 = sub_21549F11C();
    __swift_project_value_buffer(v15, qword_27CA5AD40);
    v20 = sub_21549F0FC();
    v16 = sub_2154A226C();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2151A1000, v20, v16, "No collectionViewController/collectionView at deselect", v17, 2u);
      MEMORY[0x21606B520](v17, -1, -1);
    }

    goto LABEL_13;
  }

  v10 = v9;
  v11 = [v9 indexPathsForSelectedItems];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2154A1F4C();

    if (*(v13 + 16))
    {
      (*(v2 + 16))(v5, v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

      (*(v2 + 32))(v7, v5, v1);
      v14 = sub_21549E7BC();
      [v10 deselectItemAtIndexPath:v14 animated:0];

      (*(v2 + 8))(v7, v1);
      return;
    }
  }

LABEL_13:
  v18 = v20;
}

uint64_t sub_21534C7F0()
{
  v1 = sub_21549E93C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27[-v6];
  v8 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (!v9)
  {
    if (qword_27CA59818 != -1)
    {
      swift_once();
    }

    v19 = sub_21549F11C();
    __swift_project_value_buffer(v19, qword_27CA5AD40);
    v20 = sub_21549F0FC();
    v21 = sub_2154A226C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2151A1000, v20, v21, "No linkAcceleratorController at didSelectSuggestionRowAtIndex", v22, 2u);
      MEMORY[0x21606B520](v22, -1, -1);
    }

    return 0;
  }

  v10 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  swift_beginAccess();
  sub_215330CCC(v0 + v10, v7);
  v11 = sub_21549F8CC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  v14 = v9;
  if (v13 == 1)
  {
    sub_215330D3C(v7);
    if (qword_27CA59818 != -1)
    {
      swift_once();
    }

    v15 = sub_21549F11C();
    __swift_project_value_buffer(v15, qword_27CA5AD40);
    v16 = sub_21549F0FC();
    v17 = sub_2154A226C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2151A1000, v16, v17, "No noteSuggestions at didSelectSuggestionRowAtIndex", v18, 2u);
      MEMORY[0x21606B520](v18, -1, -1);
    }

    return 0;
  }

  v23 = sub_21549F86C();
  (*(v12 + 8))(v7, v11);
  v24 = sub_21549E82C();
  result = sub_21549E81C();
  v26 = v24 + result;
  if (__OFADD__(v24, result))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (*(v23 + 16) <= v26)
  {

    return 0;
  }

  if (v26 < 0)
  {
    goto LABEL_23;
  }

  (*(v2 + 16))(v4, v23 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v26, v1);

  if (sub_21549E8CC())
  {
    sub_21536FCCC();
  }

  else
  {
    sub_2153704B0();
  }

  (*(v2 + 8))(v4, v1);
  return 1;
}

uint64_t sub_21534CC30(char a1, const char *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController);
  if (v3)
  {
    v5 = v3;
    v6 = sub_215489F88(a1);
  }

  else
  {
    if (qword_27CA59818 != -1)
    {
      swift_once();
    }

    v8 = sub_21549F11C();
    __swift_project_value_buffer(v8, qword_27CA5AD40);
    v5 = sub_21549F0FC();
    v9 = sub_2154A226C();
    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2151A1000, v5, v9, a2, v10, 2u);
      MEMORY[0x21606B520](v10, -1, -1);
    }

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_21534CD3C()
{
  v1 = sub_21549E83C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController);
  if (!v8 || (v9 = [v8 collectionView]) == 0)
  {
    if (qword_27CA59818 != -1)
    {
      swift_once();
    }

    v15 = sub_21549F11C();
    __swift_project_value_buffer(v15, qword_27CA5AD40);
    v10 = sub_21549F0FC();
    v16 = sub_2154A226C();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2151A1000, v10, v16, "No collectionView at handleUseCurrentSuggestion", v17, 2u);
      MEMORY[0x21606B520](v17, -1, -1);
    }

    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v9 indexPathsForSelectedItems];
  if (!v11)
  {
LABEL_11:
    if (qword_27CA59818 != -1)
    {
      swift_once();
    }

    v18 = sub_21549F11C();
    __swift_project_value_buffer(v18, qword_27CA5AD40);
    v19 = sub_21549F0FC();
    v20 = sub_2154A226C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2151A1000, v19, v20, "No selection at handleUseCurrentSuggestion", v21, 2u);
      MEMORY[0x21606B520](v21, -1, -1);
    }

LABEL_16:
    v14 = 0;
    return v14 & 1;
  }

  v12 = v11;
  v13 = sub_2154A1F4C();

  if (!*(v13 + 16))
  {

    goto LABEL_11;
  }

  (*(v2 + 16))(v5, v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  (*(v2 + 32))(v7, v5, v1);
  v14 = sub_21534C7F0();

  (*(v2 + 8))(v7, v1);
  return v14 & 1;
}

void sub_21534D068(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
  }

  else
  {
    v3 = [a1 window];
    if (!v3)
    {
      if (qword_27CA59818 != -1)
      {
        swift_once();
      }

      v11 = sub_21549F11C();
      __swift_project_value_buffer(v11, qword_27CA5AD40);
      v12 = sub_21549F0FC();
      v13 = sub_2154A226C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2151A1000, v12, v13, "Tried to call minWidth for a container that did not have a window.", v14, 2u);
        MEMORY[0x21606B520](v14, -1, -1);
      }

      return;
    }
  }

  v5 = [v3 ic_hasCompactWidth];
  v6 = objc_opt_self();
  v7 = [v6 ic_isiPhone];
  v8 = [v6 currentDevice];
  v9 = [v8 orientation];

  if (v9 == 3)
  {
    if (v7 & 1 | ((v5 & 1) == 0))
    {
LABEL_6:

      return;
    }
  }

  else if (v7)
  {
    if (v9 == 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  [a1 frame];
  CGRectGetWidth(v15);
}

uint64_t sub_21534D27C()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5AD40);
  __swift_project_value_buffer(v0, qword_27CA5AD40);
  return sub_21549F0CC();
}

void sub_21534D2C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_kvoToken);
}

id iOSLinkAcceleratorViewController.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_kvoToken];
  if (v2)
  {
    v3 = v2;
    sub_21549E34C();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for iOSLinkAcceleratorViewController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_21534D428()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 keyWindow];

  if (v2)
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v2 addSubview_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_21534D4FC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 removeFromSuperview];
  }

  else
  {
    __break(1u);
  }
}

void sub_21534D55C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  v11 = *&v4[v10];
  if (v11)
  {
    v12 = v11;
    v13 = [v4 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 window];

      if (!v15)
      {
LABEL_67:

        return;
      }

      v16 = [v5 view];
      if (v16)
      {
        v17 = v16;
        [v16 frame];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v109.origin.x = v19;
        v109.origin.y = v21;
        v109.size.width = v23;
        v109.size.height = v25;
        Height = CGRectGetHeight(v109);
        v27 = v15;
        sub_21534D068(v27);
        v29 = v28;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v31 = [Strong writingDirection];
          swift_unknownObjectRelease();
          v32 = v31 == 1;
        }

        else
        {
          v32 = 0;
        }

        v110.origin.x = a1;
        v110.origin.y = a2;
        v110.size.width = a3;
        v110.size.height = a4;
        v33 = CGRectGetHeight(v110);
        v34 = v33 + a2;
        v35 = OBJC_IVAR___ICLinkAcceleratorController_mode;
        v36 = *&v12[OBJC_IVAR___ICLinkAcceleratorController_mode];
        v106 = v33;
        if (v36 == 1)
        {
          v111.origin.x = a1;
          v111.origin.y = a2;
          v111.size.width = a3;
          v111.size.height = a4;
          v37 = CGRectGetWidth(v111) + 32.0;
          a1 = a1 + -16.0;
          v34 = v34 + 4.0;
        }

        else
        {
          if (v36)
          {
LABEL_72:
            sub_2154A2FDC();
            __break(1u);
            return;
          }

          v38 = *MEMORY[0x277CBF3A8];
          v39 = *&v5[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController];
          if (!v39)
          {
            goto LABEL_18;
          }

          v40 = v33 + a2;
          v41 = v39;
          v42 = sub_21548DE08();
          if (qword_27CA59960 != -1)
          {
            swift_once();
          }

          v43 = *&qword_27CA5EBD0;

          v44 = v43 >= v42 ? v42 : v43;
          v34 = v40;
          if (v44 <= 0.0)
          {
LABEL_18:
            v44 = v38;
          }

          if (v44 <= v29)
          {
            v44 = v29;
          }

          if (*&v5[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_maxWidth] < v44)
          {
            v37 = *&v5[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_maxWidth];
          }

          else
          {
            v37 = v44;
          }
        }

        v45 = OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController;
        v46 = *&v5[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController];
        v107 = v34;
        if (v46 && Height == 0.0)
        {
          v47 = v46;
          sub_21548DE08();
          Height = v48 + 0.0;
          if ((*((*MEMORY[0x277D85000] & **&v47[OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_linkAcceleratorViewController]) + 0x138))())
          {
            if (qword_27CA59960 != -1)
            {
              swift_once();
            }

            Height = Height + *&qword_27CA5EBF0;
          }

          else if (qword_27CA59960 != -1)
          {
            swift_once();
          }

          if (byte_27CA5EBE8 == 1)
          {
            v49 = *&qword_27CA5EC08;

            Height = Height + v49 + v49;
          }

          else
          {
          }
        }

        v108 = Height;
        if (v32)
        {
          v50 = a1 - v37;
        }

        else
        {
          v50 = a1;
        }

        [v27 frame];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;

        v112.origin.x = v52;
        v112.origin.y = v54;
        v112.size.width = v56;
        v112.size.height = v58;
        Width = CGRectGetWidth(v112);
        if (*&v12[v35])
        {

          v60 = v107;
          goto LABEL_65;
        }

        v61 = v37 + v50 + 16.0 - Width;
        if (v32)
        {
          if (v61 <= 0.0)
          {
            v50 = a1 - v37;
          }

          else
          {
            v50 = a1 - v37 + v61;
          }

          if (v50 >= 0.0)
          {
LABEL_45:

            goto LABEL_52;
          }
        }

        else
        {
          if (v61 <= 0.0)
          {
            v50 = a1;
          }

          else
          {
            v50 = a1 - v61;
          }

          if (v50 >= 16.0)
          {
            goto LABEL_45;
          }
        }

        v50 = 16.0;
        [v27 frame];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;

        v113.origin.x = v63;
        v113.origin.y = v65;
        v113.size.width = v67;
        v113.size.height = v69;
        if (CGRectGetWidth(v113) < v37 + 16.0)
        {
          [v27 frame];
          v71 = v70;
          v73 = v72;
          v75 = v74;
          v77 = v76;

          v114.origin.x = v71;
          v114.origin.y = v73;
          v114.size.width = v75;
          v114.size.height = v77;
          v37 = CGRectGetWidth(v114) + -32.0;
          goto LABEL_53;
        }

LABEL_52:

LABEL_53:
        v78 = objc_opt_self();
        v79 = [v78 activeKeyboard];
        v80 = 0.0;
        if (v79)
        {
          v81 = v79;
          v82 = [v79 isMinimized];

          if ((v82 & 1) == 0)
          {
            v83 = [v5 ic_windowScene];
            v84 = [v83 effectiveGeometry];

            v85 = [v84 interfaceOrientation];
            [v78 sizeForInterfaceOrientation_];
            v80 = v86;
          }
        }

        v105 = v37;
        v87 = *&v5[v45];
        v88 = v108;
        if (v87)
        {
          v89 = [v87 collectionView];
          v88 = v108;
          if (v89)
          {
            if (v108 >= 1.0)
            {

              v88 = v108;
            }

            else
            {
              v90 = v89;
              [v89 contentSize];
              v88 = v91;
            }
          }
        }

        v60 = v107;
        [v27 safeAreaInsets];
        v93 = v92;

        v94 = v106 + v80 + v107 + v88 + v93;
        [v27 frame];
        v96 = v95;
        v98 = v97;
        v100 = v99;
        v102 = v101;

        v115.origin.x = v96;
        v115.origin.y = v98;
        v115.size.width = v100;
        v115.size.height = v102;
        if (v94 > CGRectGetHeight(v115) && v107 - v88 - v106 >= 0.0)
        {
          v60 = v107 - v88 - v106;
        }

        v37 = v105;
LABEL_65:
        v103 = [v5 view];
        if (v103)
        {
          v104 = v103;
          [v103 setFrame_];

          goto LABEL_67;
        }

        goto LABEL_71;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }
}

void sub_21534DC7C()
{
  v1 = sub_21549F2CC();
  MEMORY[0x28223BE20](v1 - 8);
  v64.receiver = v0;
  v64.super_class = type metadata accessor for iOSLinkAcceleratorViewController();
  objc_msgSendSuper2(&v64, sel_viewDidLoad);
  v2 = objc_allocWithZone(type metadata accessor for iOSLinkAcceleratorCollectionViewController(0));
  v3 = v0;
  sub_21548C308(v3);
  v4 = *(v3 + OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController);
  *(v3 + OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController) = v5;
  v6 = v5;

  v7 = [v6 collectionView];
  if (!v7)
  {
    if (qword_27CA59818 != -1)
    {
      swift_once();
    }

    v9 = sub_21549F11C();
    __swift_project_value_buffer(v9, qword_27CA5AD40);
    v10 = sub_21549F0FC();
    v11 = sub_2154A226C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2151A1000, v10, v11, "No collectionView at viewDidLoad", v12, 2u);
      MEMORY[0x21606B520](v12, -1, -1);
    }

    goto LABEL_26;
  }

  if (_UISolariumEnabled())
  {
    v8 = [objc_opt_self() ic_isVision] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v13 = (*((*MEMORY[0x277D85000] & *v3) + 0x1D8))();
  v14 = [v3 view];
  v15 = v14;
  if ((v13 & 1) == 0)
  {
    if (v14)
    {
      [v14 addSubview_];
LABEL_23:

      v59 = v7;
      [v59 ic:0 addAnchorsToFillSuperviewWithHorizontalPadding:10.0 verticalPadding:15.0 usesSafeAreaLayoutGuide:?];
      v60 = v59;
      if (v8)
      {
        v60 = [objc_opt_self() clearColor];
        [v59 setBackgroundColor_];
      }

      sub_21534C394();
      v63[0] = v59;
      swift_getKeyPath();
      *(swift_allocObject() + 16) = v3;
      v61 = v3;
      v62 = sub_21549E40C();

      v10 = *(v61 + OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_kvoToken);
      *(v61 + OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_kvoToken) = v62;
LABEL_26:

      return;
    }

    goto LABEL_28;
  }

  if (!v14)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = [v14 layer];

  v17 = [objc_opt_self() blackColor];
  v18 = [v17 CGColor];

  [v16 setShadowColor_];
  v19 = [v3 view];
  if (!v19)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v20 = v19;
  v21 = [v19 layer];

  LODWORD(v22) = 1043207291;
  [v21 setShadowOpacity_];

  v23 = [v3 view];
  if (!v23)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = v23;
  v25 = [v23 layer];

  [v25 setShadowOffset_];
  v26 = [v3 view];
  if (!v26)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = v26;
  v28 = [v26 layer];

  [v28 setShadowRadius_];
  v29 = [v3 view];
  if (!v29)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = v29;
  v31 = [v29 layer];

  v32 = [v3 view];
  if (!v32)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v33 = v32;
  [v32 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v42 = *(v3 + OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_cornerRadius);
  v43 = [objc_opt_self() bezierPathWithRoundedRect:v35 cornerRadius:{v37, v39, v41, v42}];
  v44 = [v43 CGPath];

  [v31 setShadowPath_];
  v45 = [v3 view];
  if (!v45)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v46 = v45;
  [v45 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v55 = [v15 layer];
  [v55 setCornerRadius_];

  v56 = [v15 layer];
  [v56 setMasksToBounds_];

  [v15 addSubview_];
  v57 = [v3 view];
  if (v57)
  {
    v58 = v57;
    [v57 addSubview_];

    if (v8)
    {
      sub_21549F2BC();
      v63[3] = sub_21549F2DC();
      v63[4] = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_0(v63);
      sub_21549F2EC();
      sub_2154A28BC();
    }

    [v15 ic_addConstraintsToFillSuperview];
    goto LABEL_23;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_21534E3D4(id *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  [*a1 frame];
  result = CGRectEqualToRect(v6, *MEMORY[0x277CBF3A0]);
  if ((result & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & *a3) + 0x1E0))(v4);
  }

  return result;
}

void sub_21534E4B0(void *a1)
{
  [a1 contentSize];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 frame];
  [v3 setFrame_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v4 layer];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [objc_opt_self() bezierPathWithRoundedRect:v10 cornerRadius:{v12, v14, v16, *&v1[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_cornerRadius]}];
  v18 = [v17 CGPath];

  [v6 setShadowPath_];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 updateConstraints];
}