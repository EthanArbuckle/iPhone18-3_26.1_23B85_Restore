void sub_24EAFA820(void (*a1)(void, void, void *, void *), uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    sub_24EAFE1A0();
    v9[0] = 0;
    v9[1] = 0;
    v7 = swift_allocError();
    *v8 = a3;
    *(v8 + 8) = 0;
    *(v8 + 16) = a4;

    a1(0, 0, v9, v7);
  }
}

uint64_t ArtworkLoader.prefetchArtwork(using:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F941C80;
  *(v2 + 32) = a1;

  ArtworkLoader.prefetchArtwork(using:)(v2);
}

Swift::Void __swiftcall ArtworkLoader.prefetchArtwork(using:)(Swift::OpaquePointer using)
{
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  v7 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = v1[4];
  v10 = swift_allocObject();
  v10[2]._rawValue = using._rawValue;
  v10[3]._rawValue = v1;
  aBlock[4] = sub_24EAFE9D4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_28_2;
  v11 = _Block_copy(aBlock);

  sub_24F927DA8();
  v14 = MEMORY[0x277D84F90];
  sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v13);
}

void sub_24EAFAC04(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v40 = sub_24F91E968();
  v2 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v35 - v13;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  if (v15 >> 62)
  {
    v33 = v15;
    v34 = sub_24F92C738();
    v15 = v33;
    v19 = v34;
    if (!v34)
    {
      return;
    }
  }

  else
  {
    v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      return;
    }
  }

  if (v19 >= 1)
  {
    v20 = 0;
    v21 = (v10 + 48);
    v46 = (v10 + 32);
    v47 = v15 & 0xC000000000000001;
    v45 = (v10 + 8);
    v36 = (v2 + 8);
    v37 = (v10 + 16);
    v48 = v15;
    v41 = v18;
    while (1)
    {
      if (v47)
      {
        v22 = MEMORY[0x253052270](v20, v16);
      }

      else
      {
        v22 = *(v15 + 8 * v20 + 32);
      }

      sub_24F91F488();
      v23 = *v21;
      if ((*v21)(v8, 1, v9) == 1)
      {
        sub_24E601704(v8, &qword_27F228530);
      }

      else
      {
        (*v46)(v18, v8, v9);
        v24 = sub_24F91F478();
        if (v25)
        {
          if (v24 == 0x6D696D6574737973 && v25 == 0xEB00000000656761)
          {

            (*v45)(v18, v9);
            goto LABEL_21;
          }

          v26 = sub_24F92CE08();

          (*v45)(v18, v9);
          if (v26)
          {
            goto LABEL_21;
          }
        }

        else
        {
          (*v45)(v18, v9);
        }
      }

      if (*(v22 + 32) <= 0.0 || *(v22 + 40) <= 0.0)
      {

        goto LABEL_6;
      }

LABEL_21:
      v27 = v44;
      sub_24F2A197C();
      if (v23(v27, 1, v9) != 1)
      {
        v28 = v42;
        (*v46)(v42, v27, v9);
        v29 = v43;
        sub_24EAF8BA8(v22);
        if (v30)
        {
          (*v45)(v28, v9);
        }

        else
        {
          (*v37)(v38, v28, v9);
          v31 = v39;
          sub_24F91E918();
          v32 = sub_24EAF9664(v22, v31);
          [*(v29 + 16) prefetchResourceWithRequest_];

          (*v36)(v31, v40);
          (*v45)(v28, v9);
        }

        v15 = v48;
        v18 = v41;
        goto LABEL_7;
      }

      sub_24E601704(v27, &qword_27F228530);
LABEL_6:
      v15 = v48;
LABEL_7:
      if (v19 == ++v20)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a4;
  v28 = a5;
  v29 = a2;
  v30 = a1;
  v7 = *v5;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927E38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E69A5C4(0, &qword_27F222300);
  *v15 = sub_24F92BEF8();
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v16 = sub_24F927E68();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v32 = sub_24F92AFE8();
    sub_24F92C7F8();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v6[6];
    v6[6] = 0x8000000000000000;
    sub_24E81DA0C(v18, v20, v33, isUniquelyReferenced_nonNull_native);
    sub_24E6585F8(v33);
    v6[6] = v31;
    swift_endAccess();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v25 = v28;
    v24[2] = v27;
    v24[3] = v25;
    v24[4] = v23;
    v24[5] = v22;
    v24[6] = v18;
    v24[7] = v20;
    v24[8] = v7;
    v32 = sub_24F92AFE8();
    sub_24F92C7F8();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v30, v29 & 1, v33, sub_24EAFEA5C, v24);

    return sub_24E601704(v33, &qword_27F235830);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EAFB558(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = sub_24F927E38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 8);
  sub_24E69A5C4(0, &qword_27F222300);
  *v18 = sub_24F92BEF8();
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v19 = sub_24F927E68();
  result = (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v30 = sub_24F92AFE8();
      sub_24F92C7F8();
      swift_beginAccess();
      v23 = *(v22 + 48);
      if (!*(v23 + 16) || (v24 = sub_24E76D934(v31), (v25 & 1) == 0))
      {
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_24E6585F8(v31);
      }

      v26 = (*(v23 + 56) + 16 * v24);
      v28 = *v26;
      v27 = v26[1];
      swift_endAccess();

      sub_24E6585F8(v31);

      if (v28 == a7 && v27 == a8)
      {

LABEL_11:
        (*(a11 + 40))(a1, (a2 & 1) == 0, a10);
        return swift_unknownObjectRelease();
      }

      v29 = sub_24F92CE08();

      if (v29)
      {
        goto LABEL_11;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24EAFB804(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_24F927E38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + 32);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_24F927E68();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v15 = [a1 requestKey];
    swift_beginAccess();
    sub_24E98F96C(v15, &aBlock);
    swift_endAccess();
    if (aBlock)
    {
      v42 = a2;
      v43 = a3;
      v39 = v46;
      v40 = v45;
      v16 = *(aBlock + 16);
      v41 = v15;
      if (v16)
      {
        v17 = aBlock + 32;
        v18 = MEMORY[0x277D84F90];
        do
        {
          sub_24E65864C(v17, &aBlock);
          swift_beginAccess();
          v19 = *(v4 + 40);
          if (*(v19 + 16) && (v20 = sub_24E76D934(&aBlock), (v21 & 1) != 0))
          {
            v22 = *(v19 + 56) + 24 * v20;
            v23 = *v22;
            v24 = *(v22 + 8);
            v25 = *(v22 + 16);
            v26 = swift_allocObject();
            *(v26 + 16) = v24;
            *(v26 + 24) = v25;
            swift_endAccess();
            swift_unknownObjectRetain();

            LOBYTE(v24) = [v23 isEqual_];
            swift_unknownObjectRelease();
            sub_24E6585F8(&aBlock);
            swift_unknownObjectRelease();
            if (v24)
            {
              v27 = swift_allocObject();
              *(v27 + 16) = sub_24EAFEF0C;
              *(v27 + 24) = v26;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v18 = sub_24E6186B0(0, v18[2] + 1, 1, v18);
              }

              v29 = v18[2];
              v28 = v18[3];
              if (v29 >= v28 >> 1)
              {
                v18 = sub_24E6186B0((v28 > 1), v29 + 1, 1, v18);
              }

              v18[2] = v29 + 1;
              v30 = &v18[2 * v29];
              v30[4] = sub_24EAFEF54;
              v30[5] = v27;
            }

            else
            {
            }
          }

          else
          {
            swift_endAccess();
            sub_24E6585F8(&aBlock);
          }

          v17 += 40;
          --v16;
        }

        while (v16);
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      v31 = [*(v4 + 16) notificationQueue];
      v32 = swift_allocObject();
      v34 = v42;
      v33 = v43;
      v32[2] = v18;
      v32[3] = v34;
      v35 = v39;
      v32[4] = v40;
      v32[5] = v35;
      v32[6] = v33;
      v48 = sub_24EAFEEFC;
      v49 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24EAF8248;
      v47 = &block_descriptor_58;
      v36 = _Block_copy(&aBlock);
      v37 = v34;
      v38 = v33;

      [v31 addOperationWithBlock_];
      _Block_release(v36);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24EAFBC4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  if (v5)
  {
    v10 = result + 40;
    do
    {
      v11 = *(v10 - 8);
      v15[0] = a3;
      v15[1] = a4;
      v14 = a2;
      v13 = 0;
      v12 = a5;

      v11(&v14, &v13, v15, &v12);

      v10 += 16;
      --v5;
    }

    while (v5);
  }

  return result;
}

void ArtworkLoader.imageRequest(_:didFailWithError:)(void *a1, void *a2)
{
  if (qword_27F2105D8 != -1)
  {
    swift_once();
  }

  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F39C488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v5 = [a1 urlRequest];
  v9 = sub_24F91E968();
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_24F91E908();

  sub_24F928438();
  sub_24E601704(v8, &qword_27F2129B0);
  sub_24F9283A8();
  swift_getErrorValue();
  v9 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(v8, &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24EAFB804(a1, 0, a2);
}

uint64_t sub_24EAFC070(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  v6 = sub_24E76D934(a2);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 40);
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_24E8B1B8C();
  }

  sub_24E6585F8(*(v10 + 48) + 40 * v8);
  v11 = *(*(v10 + 56) + 24 * v8);
  sub_24EB54AE8(v8, v10);
  *(a1 + 40) = v10;
  swift_endAccess();

  if (a3)
  {
    [*(a1 + 16) setDidGoOffScreenForRequestWithKey_];
  }

  return swift_unknownObjectRelease();
}

uint64_t ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)(uint64_t a1, char a2)
{
  v4[5] = sub_24F92AFE8();
  sub_24F92C7F8();
  ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(v4, a2);
  return sub_24E6585F8(v4);
}

uint64_t ArtworkLoader.isOccluded.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
  return sub_24EAFC244();
}

uint64_t sub_24EAFC244()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v0 + 88);
  v12 = *(v0 + 32);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v0;
  aBlock[4] = sub_24EAFEE80;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_52;
  v10 = _Block_copy(aBlock);

  sub_24F927DA8();
  v14 = MEMORY[0x277D84F90];
  sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v10);
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t (*ArtworkLoader.isOccluded.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EAFC56C;
}

uint64_t sub_24EAFC56C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24EAFC244();
  }

  return result;
}

Swift::Void __swiftcall ArtworkLoader.discardInMemoryCache()()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927DC8();
  v5 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 32);
  aBlock[4] = sub_24EAFEA94;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_38_0;
  v8 = _Block_copy(aBlock);

  sub_24F927DA8();
  v11 = MEMORY[0x277D84F90];
  sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

id sub_24EAFC840(uint64_t a1)
{
  if (qword_27F2105D8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v3 = *(a1 + 16);

  return [v3 removeAllCachedResources];
}

uint64_t ArtworkLoader.assetObserver.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 104) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ArtworkLoader.assetObserver.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 104);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EAFCB28;
}

uint64_t ArtworkLoader.pageRenderMetrics.setter()
{
  swift_beginAccess();
  swift_weakAssign();
  if (qword_27F2105D8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A598();

  swift_beginAccess();
  *(v0 + 120) = MEMORY[0x277D84FA0];
}

void (*ArtworkLoader.pageRenderMetrics.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_24EAFCD98;
}

void sub_24EAFCD98(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    if (qword_27F2105D8 != -1)
    {
      swift_once();
    }

    v4 = v3[4];
    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F39C488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A598();

    swift_beginAccess();
    *(v4 + 120) = MEMORY[0x277D84FA0];
  }

  free(v3);
}

uint64_t sub_24EAFD200()
{
  v0 = sub_24F92A088();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_24F91EB48();
    if (v5)
    {
      v6 = v5;
      v11[1] = sub_24F92B0D8();
      v11[2] = v7;
      sub_24F92C7F8();
      if (*(v6 + 16) && (v8 = sub_24E76D934(v12), (v9 & 1) != 0))
      {
        sub_24E643A9C(*(v6 + 56) + 32 * v8, &v13);
        sub_24E6585F8(v12);

        if (*(&v14 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
          }

          v10 = v12[0];
          swift_beginAccess();
          sub_24ED7EC80(&v13, v10);
          swift_endAccess();
          *v3 = sub_24EAFED38();
          (*(v1 + 104))(v3, *MEMORY[0x277D22298], v0);
          sub_24F92A0D8();

          return (*(v1 + 8))(v3, v0);
        }
      }

      else
      {

        sub_24E6585F8(v12);
        v13 = 0u;
        v14 = 0u;
      }
    }

    else
    {

      v13 = 0u;
      v14 = 0u;
    }

    return sub_24E601704(&v13, &qword_27F2129B0);
  }

  return result;
}

uint64_t sub_24EAFD48C()
{
  v1 = sub_24F92A078();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = v0;
  v7 = sub_24F91EB48();
  if (!v7)
  {

    v16 = 0u;
    v17 = 0u;
    return sub_24E601704(&v16, &qword_27F2129B0);
  }

  v8 = v7;
  v14[1] = sub_24F92B0D8();
  v14[2] = v9;
  sub_24F92C7F8();
  if (!*(v8 + 16) || (v10 = sub_24E76D934(v15), (v11 & 1) == 0))
  {

    sub_24E6585F8(v15);
    v16 = 0u;
    v17 = 0u;
    goto LABEL_11;
  }

  sub_24E643A9C(*(v8 + 56) + 32 * v10, &v16);
  sub_24E6585F8(v15);

  if (!*(&v17 + 1))
  {
LABEL_11:

    return sub_24E601704(&v16, &qword_27F2129B0);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v12 = v15[0];
  swift_beginAccess();
  if (sub_24F4D95E4(v12, *(v6 + 120)))
  {
    *v4 = sub_24EAFED38();
    (*(v2 + 104))(v4, *MEMORY[0x277D22288], v1);
    sub_24F92A0C8();
    (*(v2 + 8))(v4, v1);
    swift_beginAccess();
    sub_24F7A5B4C(v12);
    swift_endAccess();
  }

  if (qword_27F2105D8 != -1)
  {
    swift_once();
  }

  v13 = sub_24F92AAE8();
  __swift_project_value_buffer(v13, qword_27F39C488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A598();
}

uint64_t sub_24EAFD850(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_24F91EB58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EAFD9D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 104) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_24EAFDA38(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 104);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EAFF158;
}

void sub_24EAFDACC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 104) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void (*sub_24EAFDB8C(uint64_t **a1))(void *a1)
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
  v2[4] = ArtworkLoader.pageRenderMetrics.modify(v2);
  return sub_24E622878;
}

uint64_t sub_24EAFDC14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EAFDC4C()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24EAFDCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v5 = sub_24F92AAE8();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v35 = a1;
  sub_24F91E928();
  v13 = sub_24F91F4A8();
  v14 = *(v13 - 8);
  v31 = *(v14 + 48);
  if (v31(v12, 1, v13) == 1)
  {
    sub_24E601704(v12, &qword_27F228530);
  }

  else
  {
    v15 = sub_24F91F478();
    v17 = v16;
    (*(v14 + 8))(v12, v13);
    if (v17)
    {
      v18 = v32;
      swift_beginAccess();
      if (*(*(v18 + 80) + 16))
      {
        sub_24E76D644(v15, v17);
        if (v19)
        {
          swift_endAccess();

          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          goto LABEL_14;
        }
      }

      swift_endAccess();
    }
  }

  v30 = a2;
  if (qword_27F2105D8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v5, qword_27F39C488);
  (*(v34 + 16))(v33, v21, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  sub_24F91E928();
  if (v31(v10, 1, v13) == 1)
  {
    sub_24E601704(v10, &qword_27F228530);
    v36 = 0u;
    v37 = 0u;
  }

  else
  {
    *(&v37 + 1) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(v14 + 32))(boxed_opaque_existential_1, v10, v13);
  }

  sub_24F928438();
  sub_24E601704(&v36, &qword_27F2129B0);
  sub_24F9283A8();
  v23 = v33;
  sub_24F92A5A8();

  (*(v34 + 8))(v23, v5);
  ObjCClassFromMetadata = ASKLoadImageResourceOperation;
  a2 = v30;
LABEL_14:
  v24 = *(v32 + 24);
  v25 = objc_allocWithZone(ObjCClassFromMetadata);
  v26 = v24;
  v27 = sub_24F91E8E8();
  v28 = [v25 initWithURLRequest:v27 URLSession:v26 dataConsumer:a2];

  return v28;
}

unint64_t sub_24EAFE1A0()
{
  result = qword_27F228328;
  if (!qword_27F228328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228328);
  }

  return result;
}

uint64_t sub_24EAFE1F4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24EAFE244(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = sub_24E60D1E4(MEMORY[0x277D84F90]);
  v5 = MEMORY[0x277D84F98];
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = sub_24E60D324(v3);
  *(v1 + 72) = 5;
  *(v1 + 104) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(v1 + 120) = MEMORY[0x277D84FA0];
  v6 = a1[4];
  *(v1 + 32) = v6;
  v7 = a1[3];
  *(v1 + 24) = v7;
  v8 = a1[2];
  v9 = objc_allocWithZone(ASKResourceLoader);
  v10 = v6;
  v11 = v7;
  *(v1 + 16) = [v9 initWithParentResourceLoader_];
  *(v1 + 88) = 1;
  *(v1 + 64) = a1[8];
  swift_beginAccess();
  *(v1 + 80) = a1[10];

  sub_24EAF8550();
  return v1;
}

uint64_t sub_24EAFE350()
{
  v0 = sub_24E69A5C4(0, &qword_27F2283A8);
  v1 = [swift_getObjCClassFromMetadata() supportedScheme];
  v2 = sub_24F92B0D8();
  v4 = v3;

  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81EB70(v0, v2, v4, isUniquelyReferenced_nonNull_native);

  v7 = v5;
  v8 = sub_24E69A5C4(0, &qword_27F2283B0);
  v9 = [swift_getObjCClassFromMetadata() supportedScheme];
  v10 = sub_24F92B0D8();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81EB70(v8, v10, v12, v13);

  v14 = sub_24E69A5C4(0, &qword_27F2283B8);
  v15 = [swift_getObjCClassFromMetadata() supportedScheme];
  v16 = sub_24F92B0D8();
  v18 = v17;

  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81EB70(v14, v16, v18, v19);

  return v7;
}

void *sub_24EAFE4EC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v30 = a4;
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v6 = sub_24F92BEE8();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92BE88();
  MEMORY[0x28223BE20](v9);
  v10 = sub_24F927DC8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = MEMORY[0x277D84F90];
  v12 = sub_24E60D1E4(MEMORY[0x277D84F90]);
  v13 = MEMORY[0x277D84F98];
  v4[5] = v12;
  v4[6] = v13;
  v4[7] = sub_24E60D324(v11);
  v4[9] = 5;
  v4[13] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v4[15] = MEMORY[0x277D84FA0];
  v27 = sub_24E69A5C4(0, &qword_27F222300);
  sub_24F927DA8();
  v34 = v11;
  sub_24EAFF060(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v28 + 104))(v8, *MEMORY[0x277D85260], v29);
  v14 = sub_24F92BF38();
  v15 = v30;
  v4[3] = v30;
  v4[4] = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v17 = v15;
  v18 = [v16 init];
  [v18 setMaxConcurrentOperationCount_];
  [v18 setUnderlyingQueue_];
  v19 = sub_24F92B098();
  [v18 setName_];

  v20 = objc_opt_self();
  v21 = v31;
  v22 = v18;
  v23 = [v20 mainQueue];
  v24 = objc_allocWithZone(ASKResourceLoader);
  v25 = [v24 initWithRequestQueue:v21 accessQueue:v22 notificationQueue:v23 cacheLimit:v32];

  v5[2] = v25;
  *(v5 + 88) = 0;
  v5[8] = v33;
  v5[10] = sub_24EAFE350();
  sub_24EAF8550();

  return v5;
}

uint64_t sub_24EAFE8C8()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EAFE994()
{

  return swift_deallocObject();
}

uint64_t sub_24EAFE9DC()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EAFEA14()
{

  return swift_deallocObject();
}

uint64_t sub_24EAFEAA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_24EAFEAE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;
  return sub_24EAFC244();
}

uint64_t sub_24EAFEB30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 104);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EAFEB80(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EAFEBD8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

unint64_t sub_24EAFECE4()
{
  result = qword_27F228398;
  if (!qword_27F228398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228398);
  }

  return result;
}

BOOL sub_24EAFED38()
{
  v0 = sub_24F91EB48();
  if (!v0)
  {
    goto LABEL_13;
  }

  v1 = v0;
  sub_24F92B0D8();
  sub_24F92C7F8();
  if (!*(v1 + 16) || (v2 = sub_24E76D934(v6), (v3 & 1) == 0))
  {

    sub_24E6585F8(v6);
LABEL_13:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_14;
  }

  sub_24E643A9C(*(v1 + 56) + 32 * v2, &v7);
  sub_24E6585F8(v6);

  if (!*(&v8 + 1))
  {
LABEL_14:
    sub_24E601704(&v7, &qword_27F2129B0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v6[0] == 5 || v6[0] == 3;
}

uint64_t sub_24EAFEE48()
{

  return swift_deallocObject();
}

id sub_24EAFEE80()
{
  if (*(v0 + 16))
  {
    v1 = &selRef_enterBackground;
  }

  else
  {
    v1 = &selRef_enterForeground;
  }

  return [*(*(v0 + 24) + 16) *v1];
}

uint64_t sub_24EAFEEAC()
{

  return swift_deallocObject();
}

uint64_t sub_24EAFEF0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v9 = a1;
  v8 = a2;
  v7 = a4;
  return v5(&v9, &v8, a3, &v7);
}

uint64_t objectdestroy_72Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_66Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EAFF060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EAFF164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v47 - v7;
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v53 = &v47 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  if ((sub_24F928328() & 1) == 0)
  {
    v48 = v8;
    v49 = v9;
    v50 = a2;
    v52 = a3;
    sub_24F928398();
    sub_24EB02020();
    sub_24F928208();
    v27 = *(v12 + 8);
    v25 = (v12 + 8);
    v26 = v27;
    v27(v19, v11);
    v28 = v57;
    v29 = v11;
    v30 = a1;
    sub_24F928398();
    sub_24EB02074();
    sub_24F928208();
    v51 = v29;
    v27(v19, v29);
    v22 = v57;
    if (v28 <= 3)
    {
      if (v28 > 1)
      {
        (*(v49 + 8))(v50, v48);
        result = v26(v30, v51);
        v22 = 0;
        v23 = 0uLL;
        v24 = 0x8000;
        if (v28 == 2)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        goto LABEL_26;
      }

      v31 = v50;
      if (v28)
      {
        v40 = v53;
        sub_24F928398();
        v21 = JSONObject.appStoreColor.getter();
        (*(v49 + 8))(v31, v48);
        v41 = v51;
        v26(v30, v51);
        result = v26(v40, v41);
        v23 = 0uLL;
        if (v21)
        {
          v24 = 0x2000;
          goto LABEL_26;
        }
      }

      else
      {
        type metadata accessor for Artwork();
        sub_24F928398();
        v32 = v48;
        v33 = v49;
        (*(v49 + 16))(v55, v31, v48);
        sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork);
        sub_24F929548();
        (*(v33 + 8))(v31, v32);
        result = v26(v30, v51);
        v21 = v57;
        v23 = 0uLL;
        if (v57)
        {
          v24 = 0;
LABEL_26:
          a3 = v52;
          goto LABEL_27;
        }
      }

      v22 = 0;
LABEL_25:
      v24 = 0x8000;
      goto LABEL_26;
    }

    if (v28 > 5)
    {
      if (v28 == 6)
      {
        (*(v49 + 8))(v50, v48);
        result = v26(v30, v51);
        v22 = 0;
        v23 = 0uLL;
        v24 = 0x8000;
        v21 = 3;
        goto LABEL_26;
      }

      (*(v49 + 8))(v50, v48);
      v38 = v30;
      v39 = v51;
    }

    else
    {
      if (v28 != 4)
      {
        sub_24F928398();
        v43 = v49;
        v42 = v50;
        v44 = v48;
        (*(v49 + 16))(v55, v50, v48);
        sub_24EB020C8();
        sub_24F929548();
        (*(v43 + 8))(v42, v44);
        result = v26(v30, v51);
        if (v60 != 255)
        {
          v23 = v59;
          v45 = v60 | (v22 << 8);
          v21 = v57;
          v22 = v58;
          v24 = v45 | 0x6000;
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      sub_24F928398();
      v34 = v54;
      sub_24F9282B8();
      v35 = v51;
      v26(v14, v51);
      v36 = sub_24F92AC28();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v34, 1, v36) != 1)
      {
        sub_24E69A5C4(0, &qword_27F2394A0);
        v55 = v25;
        v21 = sub_24F92ABB8();
        (*(v37 + 8))(v34, v36);
        sub_24F928398();
        sub_24EB0211C();
        sub_24F928208();
        v26(v19, v35);
        v46 = v57;
        sub_24F928398();
        sub_24F928208();
        (*(v49 + 8))(v50, v48);
        v26(v30, v35);
        result = v26(v19, v35);
        v22 = v46 | (v22 << 16) | (v56 << 8);
        v23 = 0uLL;
        v24 = 0x4000;
        goto LABEL_26;
      }

      sub_24E601704(v34, &qword_27F2213B0);
      (*(v49 + 8))(v50, v48);
      v38 = v30;
      v39 = v35;
    }

    result = v26(v38, v39);
LABEL_23:
    v21 = 0;
    v22 = 0;
    v23 = 0uLL;
    goto LABEL_25;
  }

  (*(v9 + 8))(a2, v8);
  result = (*(v12 + 8))(a1, v11);
  v21 = 0;
  v22 = 0;
  v23 = 0uLL;
  v24 = 0x8000;
LABEL_27:
  *a3 = v21;
  *(a3 + 8) = v22;
  *(a3 + 16) = v23;
  *(a3 + 32) = v24;
  return result;
}

GameStoreKit::ShelfBackgroundStyle_optional __swiftcall ShelfBackgroundStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ShelfBackgroundStyle.rawValue.getter()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6974616D6F747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802658148;
  }
}

uint64_t sub_24EAFFAC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 0x6974616D6F747561;
    v3 = 0xE900000000000063;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1802658148;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 0x6974616D6F747561;
    v7 = 0xE900000000000063;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1802658148;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

void sub_24EAFFBCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 0x6974616D6F747561;
    v4 = 0xE900000000000063;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1802658148;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24EAFFC24()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAFFCC0()
{
  sub_24F92B218();
}

uint64_t sub_24EAFFD48()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

GameStoreKit::ShelfBackgroundGradientLocation_optional __swiftcall ShelfBackgroundGradientLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ShelfBackgroundGradientLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x696461654C706F74;
  v3 = 0x654C6D6F74746F62;
  if (v1 != 6)
  {
    v3 = 0x676E696461656CLL;
  }

  v4 = 0x72546D6F74746F62;
  if (v1 != 4)
  {
    v4 = 0x6D6F74746F62;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C69617254706F74;
  if (v1 != 2)
  {
    v5 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v2 = 7368564;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_24EAFFF88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x696461654C706F74;
  v5 = 0xED0000676E696461;
  v6 = 0x654C6D6F74746F62;
  if (v2 != 6)
  {
    v6 = 0x676E696461656CLL;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEE00676E696C6961;
  v8 = 0x72546D6F74746F62;
  if (v2 != 4)
  {
    v8 = 0x6D6F74746F62;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000676E69;
  v10 = 0x6C69617254706F74;
  if (v2 != 2)
  {
    v10 = 0x676E696C69617274;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 7368564;
    v3 = 0xE300000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24EB000C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB00194()
{
  sub_24F92B218();
}

uint64_t sub_24EB0024C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB00314@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EB01FD4();
  *a1 = result;
  return result;
}

void sub_24EB00344(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x726F6C6F43656E6FLL;
  v4 = 0xEA0000000000726FLL;
  v5 = 0x6C6F436565726874;
  if (*v1 != 2)
  {
    v5 = 0x6F6C6F4372756F66;
    v4 = 0xE900000000000072;
  }

  if (*v1)
  {
    v3 = 0x726F6C6F436F7774;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t ShelfBackgroundMaterialGradientColors.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v96 = a2;
  v93 = a3;
  v97 = sub_24F928388();
  v4 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v89 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v86 - v7;
  MEMORY[0x28223BE20](v8);
  v92 = &v86 - v9;
  MEMORY[0x28223BE20](v10);
  v94 = &v86 - v11;
  MEMORY[0x28223BE20](v12);
  v90 = &v86 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v86 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v86 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v86 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v86 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v86 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v86 - v30;
  sub_24F928398();
  sub_24EB00F64();
  v32 = v95;
  sub_24F928218();
  if (!v32)
  {
    v87 = v16;
    v88 = v22;
    v37 = v94;
    v95 = 0;
    v38 = v31;
    v39 = v97;
    v40 = *(v4 + 8);
    v40(v38);
    v41 = v98;
    if (v98 > 1u)
    {
      if (v98 != 2)
      {
        v65 = a1;
        sub_24F928398();
        v66 = JSONObject.appStoreColor.getter();
        v67 = v37;
        v53 = v40;
        v49 = v66;
        (v40)(v67, v39);
        if (v49)
        {
          v68 = v92;
          sub_24F928398();
          v69 = JSONObject.appStoreColor.getter();
          (v40)(v68, v39);
          if (v69)
          {
            v92 = v69;
            v70 = v91;
            sub_24F928398();
            v71 = v65;
            v52 = JSONObject.appStoreColor.getter();
            v53(v70, v39);
            if (v52)
            {
              v72 = v89;
              v94 = v71;
              sub_24F928398();
              v51 = JSONObject.appStoreColor.getter();
              v53(v72, v39);
              if (v51)
              {
                v50 = v92;
                goto LABEL_17;
              }

              v49 = v52;
              v65 = v94;
            }

            else
            {

              v49 = v92;
              v65 = v71;
            }
          }
        }

        v83 = sub_24F92AC38();
        sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548]);
        swift_allocError();
        *v84 = 0x73726F6C6F63;
        v84[1] = 0xE600000000000000;
        v84[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
        (*(*(v83 - 8) + 104))(v84, *MEMORY[0x277D22530], v83);
        swift_willThrow();
        v85 = sub_24F9285B8();
        (*(*(v85 - 8) + 8))(v96, v85);
        return (v53)(v65, v39);
      }

      v54 = a1;
      sub_24F928398();
      v55 = JSONObject.appStoreColor.getter();
      v56 = v19;
      v57 = v40;
      v49 = v55;
      (v40)(v56, v39);
      if (v49)
      {
        v58 = v87;
        sub_24F928398();
        v50 = JSONObject.appStoreColor.getter();
        v57(v58, v39);
        v86 = v57;
        if (v50)
        {
          v59 = v90;
          v94 = a1;
          sub_24F928398();
          v51 = JSONObject.appStoreColor.getter();
          v57(v59, v39);
          if (v51)
          {
            v52 = 0;
            v53 = v86;
            v39 = v97;
LABEL_17:
            v63 = sub_24F9285B8();
            (*(*(v63 - 8) + 8))(v96, v63);
            result = (v53)(v94, v39);
            v64 = v93;
            *v93 = v49;
            v64[1] = v50;
            v64[2] = v51;
            v64[3] = v52;
            *(v64 + 32) = v41;
            return result;
          }

          v76 = v94;

          v49 = v50;
        }

        else
        {
          v76 = a1;
        }

        v57 = v86;
        v39 = v97;
        v54 = v76;
      }

      v80 = sub_24F92AC38();
      sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548]);
      swift_allocError();
      *v81 = 0x73726F6C6F63;
      v81[1] = 0xE600000000000000;
      v81[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
      (*(*(v80 - 8) + 104))(v81, *MEMORY[0x277D22530], v80);
      swift_willThrow();
      v82 = sub_24F9285B8();
      (*(*(v82 - 8) + 8))(v96, v82);
      return (v57)(v54, v39);
    }

    if (!v98)
    {
      v42 = v28;
      v43 = a1;
      sub_24F928398();
      v44 = JSONObject.appStoreColor.getter();
      v45 = v42;
      v46 = v39;
      v47 = v39;
      v48 = v40;
      v49 = v44;
      (v40)(v45, v47);
      if (!v49)
      {
        v73 = sub_24F92AC38();
        sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548]);
        swift_allocError();
        *v74 = 0x726F6C6F63;
        v74[1] = 0xE500000000000000;
        v74[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
        (*(*(v73 - 8) + 104))(v74, *MEMORY[0x277D22530], v73);
        swift_willThrow();
        v75 = sub_24F9285B8();
        (*(*(v75 - 8) + 8))(v96, v75);
        return (v40)(v43, v46);
      }

      v94 = a1;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = v48;
      goto LABEL_16;
    }

    sub_24F928398();
    v60 = v40;
    v49 = JSONObject.appStoreColor.getter();
    (v40)(v25, v39);
    if (v49)
    {
      v61 = v88;
      sub_24F928398();
      v50 = JSONObject.appStoreColor.getter();
      v62 = v61;
      v46 = v39;
      v60(v62, v39);
      v53 = v60;
      if (v50)
      {
        v94 = a1;
        v51 = 0;
        v52 = 0;
LABEL_16:
        v39 = v46;
        goto LABEL_17;
      }
    }

    v77 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v78 = 0x73726F6C6F63;
    v78[1] = 0xE600000000000000;
    v78[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
    (*(*(v77 - 8) + 104))(v78, *MEMORY[0x277D22530], v77);
    swift_willThrow();
    v79 = sub_24F9285B8();
    (*(*(v79 - 8) + 8))(v96, v79);
    return (v60)(a1, v39);
  }

  v33 = sub_24F9285B8();
  (*(*(v33 - 8) + 8))(v96, v33);
  v34 = *(v4 + 8);
  v35 = v97;
  v34(a1, v97);
  return (v34)(v31, v35);
}

unint64_t sub_24EB00F64()
{
  result = qword_27F2283C0;
  if (!qword_27F2283C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283C0);
  }

  return result;
}

uint64_t ShelfBackgroundMaterialGradientColors.hash(into:)()
{
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      MEMORY[0x253052A00](2);
    }

    else
    {
      MEMORY[0x253052A00](3);
      sub_24F92C418();
    }

    sub_24F92C418();
    sub_24F92C418();
  }

  else if (*(v0 + 32))
  {
    MEMORY[0x253052A00](1);
    sub_24F92C418();
  }

  else
  {
    MEMORY[0x253052A00](0);
  }

  return sub_24F92C418();
}

uint64_t ShelfBackgroundMaterialGradientColors.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_24F92D068();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      MEMORY[0x253052A00](2);
    }

    else
    {
      MEMORY[0x253052A00](3);
      sub_24F92C418();
    }

    sub_24F92C418();
    sub_24F92C418();
  }

  else if (v1)
  {
    MEMORY[0x253052A00](1);
    sub_24F92C418();
  }

  else
  {
    MEMORY[0x253052A00](0);
  }

  sub_24F92C418();
  return sub_24F92D0B8();
}

uint64_t sub_24EB011C8()
{
  sub_24F92D068();
  ShelfBackgroundMaterialGradientColors.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24EB01220()
{
  sub_24F92D068();
  ShelfBackgroundMaterialGradientColors.hash(into:)();
  return sub_24F92D0B8();
}

id sub_24EB01274@<X0>(void *a1@<X8>)
{
  result = JSONObject.appStoreColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24EB012E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EB01F88();
  *a1 = result;
  return result;
}

void sub_24EB01310(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6B726F77747261;
  v5 = 0xED00006563696F68;
  v6 = 0x4373726F74696465;
  if (v2 != 6)
  {
    v6 = 1701736302;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x746E656964617267;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000024FA42360;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB0000000079616CLL;
  v10 = 0x7265764F6B726164;
  if (v2 != 2)
  {
    v10 = 0x7463617265746E69;
    v9 = 0xEB00000000657669;
  }

  if (*v1)
  {
    v4 = 0x726F6C6F63;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t _s12GameStoreKit37ShelfBackgroundMaterialGradientColorsO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v14[0] = *a1;
  v14[1] = v2;
  v14[2] = v4;
  v14[3] = v5;
  v15 = v6;
  v16 = v8;
  v17 = v7;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v11 != 2)
      {
        goto LABEL_18;
      }

      sub_24E69A5C4(0, &qword_27F21BCB0);
      sub_24E951F4C(v8, v7, v9, v10, 2u);
      sub_24E951F4C(v3, v2, v4, v5, 2u);
      if (sub_24F92C408() & 1) != 0 && (sub_24F92C408())
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_18;
      }

      sub_24E69A5C4(0, &qword_27F21BCB0);
      sub_24E951F4C(v8, v7, v9, v10, 3u);
      sub_24E951F4C(v3, v2, v4, v5, 3u);
      if (sub_24F92C408() & 1) != 0 && (sub_24F92C408() & 1) != 0 && (sub_24F92C408())
      {
        goto LABEL_12;
      }
    }

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (v6)
  {
    if (v11 != 1)
    {
      goto LABEL_18;
    }

    sub_24E69A5C4(0, &qword_27F21BCB0);
    sub_24E951F4C(v8, v7, v9, v10, 1u);
    sub_24E951F4C(v3, v2, v4, v5, 1u);
    if (sub_24F92C408())
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (v11)
  {
LABEL_18:
    sub_24E951F4C(v8, v7, v9, v10, v11);
    sub_24E951F4C(v3, v2, v4, v5, v6);
    goto LABEL_19;
  }

  sub_24E69A5C4(0, &qword_27F21BCB0);
  sub_24E951F4C(v8, v7, v9, v10, 0);
  sub_24E951F4C(v3, v2, v4, v5, 0);
LABEL_12:
  v12 = sub_24F92C408();
LABEL_20:
  sub_24E601704(v14, &qword_27F2283F0);
  return v12 & 1;
}

uint64_t _s12GameStoreKit15ShelfBackgroundO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v39[0] = v3;
  v39[1] = v2;
  v39[2] = v5;
  v39[3] = v4;
  v40 = v6;
  v41 = v7;
  v42 = v8;
  v43 = v9;
  v44 = v10;
  v12 = v6 >> 13;
  v45 = v11;
  if (v6 >> 13 <= 1)
  {
    if (v12)
    {
      if ((v11 & 0xE000) != 0x2000)
      {
        goto LABEL_73;
      }

      v22 = v7;
      v23 = v9;
      v24 = v11;
      v25 = v10;
      sub_24E69A5C4(0, &qword_27F21BCB0);
      sub_24E951F10(v22, v8, v23, v25, v24);
      sub_24E951F10(v3, v2, v5, v4, v6);
      if ((sub_24F92C408() & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v11 >= 0x2000)
      {
        goto LABEL_73;
      }

      v19 = v7;
      sub_24E951F10(v7, v8, v9, v10, v11);
      sub_24E951F10(v3, v2, v5, v4, v6);
      if ((_s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v3, v19) & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    if (v2)
    {
      if (v2 == 1)
      {
        v21 = 0x746867696CLL;
      }

      else
      {
        v21 = 0x6974616D6F747561;
      }

      if (v2 == 1)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE900000000000063;
      }

      v26 = v8;
      if (!v8)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      v21 = 1802658148;
      v26 = v8;
      if (!v8)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_44;
  }

  if (v12 == 2)
  {
    if ((v11 & 0xE000) != 0x4000)
    {
      goto LABEL_73;
    }

    v20 = v7;
    sub_24E951F10(v7, v8, v9, v10, v11);
    sub_24E951F10(v3, v2, v5, v4, v6);
    if ((sub_24EA16B68(v3, v20) & 1) == 0 || (sub_24F0CA580(v2, v8) & 1) == 0 || (sub_24F0CA580(BYTE1(v2), BYTE1(v8)) & 1) == 0)
    {
      goto LABEL_74;
    }

    if (BYTE2(v2))
    {
      if (BYTE2(v2) == 1)
      {
        v21 = 0x746867696CLL;
      }

      else
      {
        v21 = 0x6974616D6F747561;
      }

      if (BYTE2(v2) == 1)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE900000000000063;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      v21 = 1802658148;
    }

    v26 = BYTE2(v8);
    if (!BYTE2(v8))
    {
LABEL_67:
      v28 = 0xE400000000000000;
      if (v21 != 1802658148)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    }

LABEL_44:
    if (v26 == 1)
    {
      v27 = 0x746867696CLL;
    }

    else
    {
      v27 = 0x6974616D6F747561;
    }

    if (v26 == 1)
    {
      v28 = 0xE500000000000000;
    }

    else
    {
      v28 = 0xE900000000000063;
    }

    if (v21 != v27)
    {
      goto LABEL_89;
    }

    goto LABEL_86;
  }

  if (v12 != 3)
  {
    if (!(v5 | v2 | v3 | v4) && v6 == 0x8000)
    {
      if ((v11 & 0xE000) == 0x8000 && !(v9 | v8 | v7 | v10) && v11 == 0x8000)
      {
        goto LABEL_88;
      }

      goto LABEL_73;
    }

    v29 = v5 | v2 | v4;
    if (v6 == 0x8000 && v3 == 1 && !v29)
    {
      if ((v11 & 0xE000) != 0x8000 || v11 != 0x8000 || v7 != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v6 == 0x8000 && v3 == 2 && !v29)
    {
      if ((v11 & 0xE000) != 0x8000 || v11 != 0x8000 || v7 != 2)
      {
        goto LABEL_73;
      }
    }

    else if ((v11 & 0xE000) != 0x8000 || v11 != 0x8000 || v7 != 3)
    {
      goto LABEL_73;
    }

    if (!(v9 | v8 | v10))
    {
LABEL_88:
      v30 = 1;
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  if ((v11 & 0xE000) != 0x6000)
  {
LABEL_73:
    sub_24E951F10(v7, v8, v9, v10, v11);
    sub_24E951F10(v3, v2, v5, v4, v6);
    goto LABEL_74;
  }

  v37[0] = v3;
  v37[1] = v2;
  v37[2] = v5;
  v37[3] = v4;
  v38 = v6;
  v35[0] = v7;
  v35[1] = v8;
  v35[2] = v9;
  v35[3] = v10;
  v36 = v11;
  v13 = v8;
  v14 = v11;
  sub_24E951F10(v7, v13, v9, v10, v11);
  sub_24E951F10(v3, v2, v5, v4, v6);
  if (_s12GameStoreKit37ShelfBackgroundMaterialGradientColorsO2eeoiySbAC_ACtFZ_0(v37, v35))
  {
    v15 = (v6 >> 8) & 0x1F;
    v16 = (v14 >> 8) & 0x1F;
    if (v15)
    {
      if (v15 == 1)
      {
        v17 = 0x746867696CLL;
      }

      else
      {
        v17 = 0x6974616D6F747561;
      }

      if (v15 == 1)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE900000000000063;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      v17 = 1802658148;
    }

    v32 = 0xE500000000000000;
    v33 = 0x746867696CLL;
    if (v16 != 1)
    {
      v33 = 0x6974616D6F747561;
      v32 = 0xE900000000000063;
    }

    if (v16)
    {
      v34 = v33;
    }

    else
    {
      v34 = 1802658148;
    }

    if (v16)
    {
      v28 = v32;
    }

    else
    {
      v28 = 0xE400000000000000;
    }

    if (v17 != v34)
    {
      goto LABEL_89;
    }

LABEL_86:
    if (v18 == v28)
    {

      goto LABEL_88;
    }

LABEL_89:
    v30 = sub_24F92CE08();

    goto LABEL_75;
  }

LABEL_74:
  v30 = 0;
LABEL_75:
  sub_24E601704(v39, &qword_27F2283E8);
  return v30 & 1;
}

unint64_t sub_24EB01C04()
{
  result = qword_27F2283C8;
  if (!qword_27F2283C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283C8);
  }

  return result;
}

unint64_t sub_24EB01C5C()
{
  result = qword_27F2283D0;
  if (!qword_27F2283D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283D0);
  }

  return result;
}

unint64_t sub_24EB01CB4()
{
  result = qword_27F2283D8;
  if (!qword_27F2283D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283D8);
  }

  return result;
}

uint64_t sub_24EB01D48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EB01D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit15ShelfBackgroundO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 13;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_24EB01E10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFC && *(a1 + 34))
  {
    return (*a1 + 4092);
  }

  v3 = ((*(a1 + 32) >> 13) | (8 * ((*(a1 + 32) >> 4) & 0x1C0 | (*(a1 + 32) >> 2)))) ^ 0xFFF;
  if (v3 >= 0xFFB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24EB01E6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 4092;
    *(result + 8) = 0;
    if (a3 >= 0xFFC)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFC)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x1FF) - (a2 << 9);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (16 * v3) & 0xFC00 | (4 * (v3 & 0x3F));
    }
  }

  return result;
}

uint64_t sub_24EB01EE0(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 32) = *(result + 32) & 0x303 | (a2 << 13);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x8000;
  }

  return result;
}

unint64_t sub_24EB01F34()
{
  result = qword_27F2283E0;
  if (!qword_27F2283E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283E0);
  }

  return result;
}

uint64_t sub_24EB01F88()
{
  v0 = sub_24F92CB88();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24EB01FD4()
{
  v0 = sub_24F92CB88();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24EB02020()
{
  result = qword_27F2283F8;
  if (!qword_27F2283F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2283F8);
  }

  return result;
}

unint64_t sub_24EB02074()
{
  result = qword_27F228400;
  if (!qword_27F228400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228400);
  }

  return result;
}

unint64_t sub_24EB020C8()
{
  result = qword_27F228408;
  if (!qword_27F228408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228408);
  }

  return result;
}

unint64_t sub_24EB0211C()
{
  result = qword_27F228410;
  if (!qword_27F228410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228410);
  }

  return result;
}

unint64_t sub_24EB0218C()
{
  result = qword_27F228418;
  if (!qword_27F228418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228418);
  }

  return result;
}

uint64_t ResolveAllError.hashValue.getter()
{
  sub_24F92D068();
  MEMORY[0x253052A00](0);
  return sub_24F92D0B8();
}

uint64_t resolveAll<A>(futures:publisherQueue:andThen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a4;
  v40 = a2;
  v7 = sub_24F927D88();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92C4A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = dispatch_group_create();
  v16 = swift_allocObject();
  (*(*(a5 - 8) + 56))(v14, 1, 1, a5);
  sub_24F92A9F8();
  v17 = sub_24F92B648();
  v18 = sub_24EB03004(v14, v17, v11);
  (*(v12 + 8))(v14, v11);
  *(v16 + 16) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x277D84F90];
  v50 = a1;
  v20 = sub_24F92B6E8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x253050DD0](&aBlock, v20, WitnessTable);
  v49 = aBlock;
  sub_24F92CAF8();
  sub_24F92CAC8();
  sub_24F92CAE8();
  sub_24F92CAD8();
  if (v44)
  {
    v22 = aBlock;
    do
    {

      dispatch_group_enter(v15);
      sub_24F92B758();
      v23 = swift_allocObject();
      v23[2] = a5;
      v23[3] = v16;
      v23[4] = v22;
      v23[5] = v15;
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      *(v24 + 24) = v15;
      v25 = v15;

      sub_24ED90514(&aBlock);
      sub_24F92A958();

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      sub_24F92CAD8();
      v22 = aBlock;
    }

    while (v44);
  }

  v26 = swift_allocObject();
  v27 = v34;
  v28 = v35;
  v26[2] = a5;
  v26[3] = v27;
  v26[4] = v28;
  v26[5] = v16;
  v26[6] = v19;
  v47 = sub_24EB03150;
  v48 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_24EAF8248;
  v46 = &block_descriptor_48;
  v29 = _Block_copy(&aBlock);

  v30 = v36;
  sub_24F927DA8();
  v50 = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  v31 = v39;
  v32 = v42;
  sub_24F92C6A8();
  sub_24F92BE68();
  _Block_release(v29);

  (*(v41 + 8))(v31, v32);
  (*(v37 + 8))(v30, v38);
}

uint64_t sub_24EB027EC()
{

  return swift_deallocObject();
}

uint64_t sub_24EB02828(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  swift_beginAccess();
  v8 = *(a4 + 16);

  a1(v7, v8);
}

uint64_t resolveAllSequentially<A>(futures:publisherQueue:andThen:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v23[2] = a4;
  v24 = a3;
  v7 = sub_24F92C4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  v11 = dispatch_group_create();
  v12 = swift_allocObject();
  (*(*(a5 - 8) + 56))(v10, 1, 1, a5);
  sub_24F92A9F8();
  v13 = sub_24F92B648();
  v14 = sub_24EB03004(v10, v13, v7);
  (*(v8 + 8))(v10, v7);
  *(v12 + 16) = v14;
  v23[1] = v12 + 16;
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  v28 = a1;
  v16 = sub_24F92B6E8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x253050DD0](&v25, v16, WitnessTable);
  v27 = v25;
  sub_24F92CAF8();
  sub_24F92CAC8();
  sub_24F92CAE8();
  sub_24F92CAD8();
  if (v26)
  {
    v18 = v25;
    do
    {

      v19 = objc_autoreleasePoolPush();
      sub_24EB02BD8(v11, a1, v18, v12, v15, a5);
      objc_autoreleasePoolPop(v19);
      sub_24F92BE58();
      sub_24F92CAD8();
      v18 = v25;
    }

    while (v26);
  }

  swift_beginAccess();
  v20 = *(v12 + 16);
  swift_beginAccess();
  v21 = *(v15 + 16);

  v24(v20, v21);
}

uint64_t sub_24EB02BD8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  dispatch_group_enter(a1);
  sub_24F92A9F8();
  sub_24F92B758();
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a4;
  v11[4] = a3;
  v11[5] = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a1;
  v13 = a1;

  sub_24ED90514(v15);
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void sub_24EB02D18(uint64_t a1, uint64_t a2, unint64_t a3, NSObject *a4, uint64_t a5)
{
  v10 = sub_24F92C4A8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  v15 = *(a5 - 8);
  (*(v15 + 16))(&v17 - v13, a1, a5, v12);
  (*(v15 + 56))(v14, 0, 1, a5);
  swift_beginAccess();
  sub_24F92B6E8();
  sub_24F92B5F8();
  v16 = *(a2 + 16);
  sub_24EB02FB0(a3, v16);
  (*(v11 + 40))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a3, v14, v10);
  swift_endAccess();
  dispatch_group_leave(a4);
}

void sub_24EB02ECC(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24E617130(0, v6[2] + 1, 1, v6);
    *(a2 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_24E617130((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v6[v9 + 4] = a1;
  *(a2 + 16) = v6;
  swift_endAccess();
  v10 = a1;
  dispatch_group_leave(a3);
}

uint64_t sub_24EB02FB0(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24EB03004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_24F92B608();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_24F92B6E8();
    return v8;
  }

  return result;
}

uint64_t sub_24EB03108()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24EB031BC()
{
  result = qword_27F228420;
  if (!qword_27F228420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228420);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t PageEnvironment.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F923E98();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for PageEnvironment()
{
  result = qword_27F228428;
  if (!qword_27F228428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageEnvironment.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageEnvironment() + 28);
  v4 = sub_24F923F78();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_24EB03470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24EB035C0(a2, &v10 - v7);
  sub_24EB035C0(a3, &v8[*(v6 + 56)]);
  sub_24EB03630(v8);
  return 0.0;
}

double PageGridProvider.bottomPadding(for:surroundedBy:containerSize:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24EB035C0(a2, &v10 - v7);
  sub_24EB035C0(a3, &v8[*(v6 + 56)]);
  sub_24EB03630(v8);
  return 0.0;
}

uint64_t sub_24EB035C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB03630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EB03698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24EB035C0(a2, &v10 - v7);
  sub_24EB035C0(a3, &v8[*(v6 + 56)]);
  sub_24EB03630(v8);
  return 0;
}

uint64_t PageGridProvider.shouldAddDividerBelow(shelf:surroundedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24EB035C0(a2, &v10 - v7);
  sub_24EB035C0(a3, &v8[*(v6 + 56)]);
  sub_24EB03630(v8);
  return 0;
}

double PageGridProvider.dividerPadding(shelf:surroundedBy:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24EB035C0(a2, &v10 - v7);
  sub_24EB035C0(a3, &v8[*(v6 + 56)]);
  sub_24EB03630(v8);
  return 0.0;
}

uint64_t PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v5 = sub_24F923F78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-v10];
  v24 = sub_24F923E98();
  v12 = *(v24 - 8);
  *&v13 = MEMORY[0x28223BE20](v24).n128_u64[0];
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  DynamicTypeSize.init(contentSizeCategory:)([a1 preferredContentSizeCategory], v15);
  v23 = sub_24F92BF68();
  v16 = [a1 verticalSizeClass];
  v17 = [a1 layoutDirection];

  if (v17 + 1 > 2)
  {
    v18 = MEMORY[0x277CDFA88];
  }

  else
  {
    v18 = qword_27968C8F8[v17 + 1];
  }

  (*(v6 + 104))(v8, *v18, v5);
  v19 = *(v6 + 32);
  v19(v11, v8, v5);
  (*(v12 + 32))(a3, v15, v24);
  v20 = type metadata accessor for PageEnvironment();
  *(a3 + v20[5]) = v23 & 1;
  *(a3 + v20[6]) = v16 == 1;
  result = v19(a3 + v20[7], v11, v5);
  *(a3 + v20[8]) = v25 & 1;
  return result;
}

uint64_t DynamicTypeSize.init(contentSizeCategory:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F92B0D8();
  v6 = v5;
  if (v4 == sub_24F92B0D8() && v6 == v7)
  {
    goto LABEL_29;
  }

  v9 = sub_24F92CE08();

  if (v9)
  {
LABEL_6:

LABEL_30:
    v16 = MEMORY[0x277CDF9D8];
    goto LABEL_31;
  }

  v10 = sub_24F92B0D8();
  v12 = v11;
  if (v10 == sub_24F92B0D8() && v12 == v13)
  {

    goto LABEL_14;
  }

  v15 = sub_24F92CE08();

  if (v15)
  {

LABEL_14:
    v16 = MEMORY[0x277CDF9F8];
    goto LABEL_31;
  }

  v17 = sub_24F92B0D8();
  v19 = v18;
  if (v17 == sub_24F92B0D8() && v19 == v20)
  {

LABEL_20:
    v16 = MEMORY[0x277CDF9E0];
    goto LABEL_31;
  }

  v21 = sub_24F92CE08();

  if (v21)
  {

    goto LABEL_20;
  }

  v22 = sub_24F92B0D8();
  v24 = v23;
  if (v22 == sub_24F92B0D8() && v24 == v25)
  {

LABEL_26:
    v16 = MEMORY[0x277CDF9E8];
    goto LABEL_31;
  }

  v26 = sub_24F92CE08();

  if (v26)
  {

    goto LABEL_26;
  }

  v27 = sub_24F92B0D8();
  v29 = v28;
  if (v27 == sub_24F92B0D8() && v29 == v30)
  {
LABEL_29:

    goto LABEL_30;
  }

  v35 = sub_24F92CE08();

  if (v35)
  {
    goto LABEL_6;
  }

  v36 = sub_24F92B0D8();
  v38 = v37;
  if (v36 == sub_24F92B0D8() && v38 == v39)
  {

LABEL_40:
    v16 = MEMORY[0x277CDF9F0];
    goto LABEL_31;
  }

  v40 = sub_24F92CE08();

  if (v40)
  {

    goto LABEL_40;
  }

  v41 = sub_24F92B0D8();
  v43 = v42;
  if (v41 == sub_24F92B0D8() && v43 == v44)
  {

LABEL_46:
    v16 = MEMORY[0x277CDFA00];
    goto LABEL_31;
  }

  v45 = sub_24F92CE08();

  if (v45)
  {

    goto LABEL_46;
  }

  v46 = sub_24F92B0D8();
  v48 = v47;
  if (v46 == sub_24F92B0D8() && v48 == v49)
  {

LABEL_52:
    v16 = MEMORY[0x277CDFA10];
    goto LABEL_31;
  }

  v50 = sub_24F92CE08();

  if (v50)
  {

    goto LABEL_52;
  }

  v51 = sub_24F92B0D8();
  v53 = v52;
  if (v51 == sub_24F92B0D8() && v53 == v54)
  {

LABEL_58:
    v16 = MEMORY[0x277CDF988];
    goto LABEL_31;
  }

  v55 = sub_24F92CE08();

  if (v55)
  {

    goto LABEL_58;
  }

  v56 = sub_24F92B0D8();
  v58 = v57;
  if (v56 == sub_24F92B0D8() && v58 == v59)
  {

LABEL_64:
    v16 = MEMORY[0x277CDF998];
    goto LABEL_31;
  }

  v60 = sub_24F92CE08();

  if (v60)
  {

    goto LABEL_64;
  }

  v61 = sub_24F92B0D8();
  v63 = v62;
  if (v61 == sub_24F92B0D8() && v63 == v64)
  {

LABEL_70:
    v16 = MEMORY[0x277CDF9A8];
    goto LABEL_31;
  }

  v65 = sub_24F92CE08();

  if (v65)
  {

    goto LABEL_70;
  }

  v66 = sub_24F92B0D8();
  v68 = v67;
  if (v66 == sub_24F92B0D8() && v68 == v69)
  {

LABEL_76:
    v16 = MEMORY[0x277CDF9B8];
    goto LABEL_31;
  }

  v70 = sub_24F92CE08();

  if (v70)
  {

    goto LABEL_76;
  }

  v71 = sub_24F92B0D8();
  v73 = v72;
  if (v71 == sub_24F92B0D8() && v73 == v74)
  {

    v16 = MEMORY[0x277CDF9D0];
  }

  else
  {
    v75 = sub_24F92CE08();

    v16 = MEMORY[0x277CDF9D8];
    if (v75)
    {
      v16 = MEMORY[0x277CDF9D0];
    }
  }

LABEL_31:
  v31 = *v16;
  v32 = sub_24F923E98();
  v33 = *(*(v32 - 8) + 104);

  return v33(a2, v31, v32);
}

uint64_t LayoutDirection.init(layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F923F78();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 + 1) > 2)
  {
    v6 = MEMORY[0x277CDFA88];
  }

  else
  {
    v6 = qword_27968C8F8[a1 + 1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_24EB04340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F923E98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_24F923F78();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EB04484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F923E98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_24F923F78();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24EB045A4()
{
  result = sub_24F923E98();
  if (v1 <= 0x3F)
  {
    result = sub_24F923F78();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

GameStoreKit::AdPlacementType_optional __swiftcall AdPlacementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdPlacementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x614C686372616573;
  v3 = 0x7961646F74;
  v4 = 0x50746375646F7270;
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
    v2 = 0x6552686372616573;
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

unint64_t sub_24EB047E0()
{
  result = qword_27F228438;
  if (!qword_27F228438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228438);
  }

  return result;
}

uint64_t sub_24EB04834()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB0493C()
{
  sub_24F92B218();
}

uint64_t sub_24EB04A30()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EB04B40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E69646ELL;
  v4 = 0x614C686372616573;
  v5 = 0xE500000000000000;
  v6 = 0x7961646F74;
  v7 = 0xEF4C414D59656761;
  v8 = 0x50746375646F7270;
  if (v2 != 3)
  {
    v8 = 0xD00000000000001DLL;
    v7 = 0x800000024FA41CD0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6552686372616573;
    v3 = 0xED000073746C7573;
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

uint64_t LargeHeroBreakout.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LargeHeroBreakout.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *LargeHeroBreakout.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v94 = a2;
  v86 = *v2;
  v99 = sub_24F9285B8();
  v93 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v100 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v85 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v85 - v9;
  v101 = sub_24F91F6B8();
  v97 = *(v101 - 1);
  MEMORY[0x28223BE20](v101);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v88 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v85 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v85 - v21;
  v23 = v2;
  v2[16] = 0;
  v89 = v2 + 16;
  sub_24F928398();
  v24 = sub_24F928348();
  v107 = v12;
  v95 = v7;
  v96 = v13;
  v98 = a1;
  if (v25)
  {
    v102 = v24;
    v103 = v25;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v28 = v27;
    (*(v97 + 8))(v11, v101);
    v102 = v26;
    v103 = v28;
    v7 = v95;
  }

  sub_24F92C7F8();
  v101 = *(v13 + 8);
  v101(v22, v12);
  v29 = v105;
  *(v23 + 17) = v104;
  *(v23 + 19) = v29;
  v23[21] = v106;
  sub_24F929608();
  sub_24F928398();
  v30 = v94;
  v31 = *(v93 + 16);
  v97 = v93 + 16;
  v32 = v7;
  v33 = v99;
  v31(v32, v94, v99);
  v34 = v19;
  v35 = v91;
  sub_24F929548();
  v90 = v23;
  v85 = OBJC_IVAR____TtC12GameStoreKit17LargeHeroBreakout_impressionMetrics;
  v36 = v35;
  v37 = v34;
  sub_24E65E0D4(v36, v23 + OBJC_IVAR____TtC12GameStoreKit17LargeHeroBreakout_impressionMetrics);
  v38 = v100;
  v31(v100, v30, v33);
  type metadata accessor for BreakoutDetails(0);
  sub_24F928398();
  v92 = v31;
  v31(v95, v38, v33);
  sub_24EB06168(&qword_27F225B08, type metadata accessor for BreakoutDetails);
  sub_24F929548();
  v39 = v104;
  if (v104)
  {
    v40 = v90;
    v90[4] = v104;
    v91 = v39;

    sub_24F928398();
    v41 = sub_24F928348();
    v43 = v42;
    v44 = v96 + 8;
    v45 = v34;
    v46 = v107;
    v47 = v101;
    v101(v45, v107);
    v40[2] = v41;
    v40[3] = v43;
    v48 = v87;
    sub_24F928398();
    sub_24F928398();
    sub_24E9619AC();
    sub_24F928208();
    v47(v37, v46);
    LOBYTE(v43) = v104;
    v49 = v88;
    sub_24F928398();
    LOBYTE(v41) = sub_24F928278();
    v96 = v44;
    v101 = v47;
    v47(v49, v46);
    v47(v48, v46);
    *(v40 + 40) = v43;
    *(v40 + 41) = v41 & 1;
    v50 = type metadata accessor for Artwork();
    sub_24F928398();
    v51 = v95;
    v52 = v99;
    v53 = v92;
    v92(v95, v100, v99);
    v86 = sub_24EB06168(&qword_27F219660, type metadata accessor for Artwork);
    v88 = v50;
    sub_24F929548();
    v40[6] = v104;
    v54 = type metadata accessor for Video();
    sub_24F928398();
    v55 = v51;
    v56 = v51;
    v57 = v100;
    v53(v56, v100, v52);
    v58 = v55;
    v85 = sub_24EB06168(&qword_27F221590, type metadata accessor for Video);
    v87 = v54;
    sub_24F929548();
    v40[7] = v104;
    sub_24F928398();
    v59 = JSONObject.appStoreColor.getter();
    v101(v37, v107);
    v40[8] = v59;
    type metadata accessor for Lockup();
    sub_24F928398();
    v60 = v99;
    v53(v58, v57, v99);
    sub_24EB06168(&qword_27F221FB8, type metadata accessor for Lockup);
    sub_24F929548();
    v40[9] = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650);
    sub_24F928398();
    v53(v58, v57, v60);
    sub_24E705AFC();
    sub_24F929548();
    v40[10] = v104;
    type metadata accessor for Action();
    sub_24F928398();
    v61 = static Action.tryToMakeInstance(byDeserializing:using:)(v37, v57);
    v101(v37, v107);
    swift_beginAccess();
    v40[16] = v61;

    sub_24F928398();
    v53(v58, v57, v99);
    sub_24E951DC0();
    sub_24F929548();
    v62 = v102 | ((WORD2(v102) | (BYTE6(v102) << 16)) << 32);
    if (v102 == 2)
    {
      if (qword_27F2110F8 != -1)
      {
        swift_once();
      }

      LOBYTE(v62) = dword_27F23E728;
      LOBYTE(v63) = BYTE1(dword_27F23E728);
      LOBYTE(v64) = BYTE2(dword_27F23E728);
      LOBYTE(v65) = HIBYTE(dword_27F23E728);
      LOBYTE(v66) = byte_27F23E72C;
      LOBYTE(v67) = byte_27F23E72D;
      LOBYTE(v68) = byte_27F23E72E;
    }

    else
    {
      v63 = (v62 >> 8) & 1;
      v64 = (v62 >> 16) & 1;
      v65 = (v62 >> 24) & 1;
      v66 = HIDWORD(v62) & 1;
      v67 = (v62 >> 40) & 1;
      v68 = HIWORD(v62) & 1;
    }

    *(v40 + 88) = v62 & 1;
    *(v40 + 89) = v63;
    *(v40 + 90) = v64;
    *(v40 + 91) = v65;
    *(v40 + 92) = v66;
    *(v40 + 93) = v67;
    *(v40 + 94) = v68;
    v73 = v98;
    sub_24F928398();
    v74 = sub_24F928278();
    v101(v37, v107);
    *(v40 + 95) = v74;
    sub_24F928398();
    v75 = v95;
    v76 = v99;
    v77 = v100;
    v78 = v92;
    v92(v95, v100, v99);
    sub_24F929548();
    v40[12] = v102;
    sub_24F928398();
    v78(v75, v77, v76);
    sub_24F929548();
    v40[13] = v102;
    sub_24F928398();
    v79 = JSONObject.appStoreColor.getter();
    v80 = v107;
    v81 = v101;
    v101(v37, v107);
    v40[14] = v79;
    sub_24F928398();
    LOBYTE(v79) = sub_24F928278();
    v81(v37, v80);
    *(v40 + 120) = v79;
    type metadata accessor for FlowPreviewActionsConfiguration();
    sub_24F928398();
    v82 = v100;
    v92(v75, v100, v76);
    sub_24EB06168(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration);
    sub_24F929548();

    v83 = *(v93 + 8);
    v83(v94, v76);
    v81(v73, v107);
    v83(v82, v76);
    *(v40 + OBJC_IVAR____TtC12GameStoreKit17LargeHeroBreakout_flowPreviewActionsConfiguration) = v102;
  }

  else
  {
    v69 = sub_24F92AC38();
    sub_24EB06168(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v70 = 0x736C6961746564;
    v70[1] = 0xE700000000000000;
    v70[2] = v86;
    (*(*(v69 - 8) + 104))(v70, *MEMORY[0x277D22530], v69);
    swift_willThrow();
    v71 = *(v93 + 8);
    v72 = v99;
    v71(v94, v99);
    v101(v98, v107);
    v71(v100, v72);
    v40 = v90;

    sub_24E6585F8((v40 + 17));
    sub_24EB05BC8(v40 + v85);
    type metadata accessor for LargeHeroBreakout();
    swift_deallocPartialClassInstance();
  }

  return v40;
}

uint64_t sub_24EB05BC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LargeHeroBreakout()
{
  result = qword_27F228448;
  if (!qword_27F228448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LargeHeroBreakout.heading.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void LargeHeroBreakout.detailsDisplayProperties.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 41);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

void *LargeHeroBreakout.backgroundColor.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void LargeHeroBreakout.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[89];
  v3 = v1[90];
  v4 = v1[91];
  v5 = v1[92];
  v6 = v1[93];
  v7 = v1[94];
  *a1 = v1[88];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

void *LargeHeroBreakout.rtlBackgroundColor.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

uint64_t sub_24EB05D94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 128) = v2;
}

uint64_t sub_24EB05E2C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t LargeHeroBreakout.deinit()
{

  sub_24E6585F8(v0 + 136);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit17LargeHeroBreakout_impressionMetrics);

  return v0;
}

uint64_t LargeHeroBreakout.__deallocating_deinit()
{
  LargeHeroBreakout.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_24EB06004@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for LargeHeroBreakout();
  v7 = swift_allocObject();
  result = LargeHeroBreakout.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24EB060C8(_BYTE *a1@<X8>)
{
  v2 = *(*v1 + 89);
  v3 = *(*v1 + 90);
  v4 = *(*v1 + 91);
  v5 = *(*v1 + 92);
  v6 = *(*v1 + 93);
  v7 = *(*v1 + 94);
  *a1 = *(*v1 + 88);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t sub_24EB06168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EB061B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

void sub_24EB06208()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void ItemLayoutContext.indexPath.getter()
{
  type metadata accessor for ItemLayoutContext();
  type metadata accessor for ShelfLayoutContext();

  JUMPOUT(0x253045380);
}

uint64_t ItemLayoutContext.id.getter()
{
  type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A48();
}

uint64_t ItemLayoutContext.typedModel<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  v4 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v4 ^ 1u, 1, a1);
}

{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  v4 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v4 ^ 1u, 1, a1);
}

uint64_t ItemLayoutContext.subscript.getter()
{
  type metadata accessor for ItemLayoutContext();

  return swift_getAtKeyPath();
}

uint64_t type metadata accessor for ItemLayoutContext()
{
  result = qword_27F228478;
  if (!qword_27F228478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ItemLayoutContext.MetadataKey.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static ItemLayoutContext.MetadataKey.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

uint64_t ItemLayoutContext.MetadataKey.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EB067A4()
{
  sub_24F92D068();
  ItemLayoutContext.MetadataKey.hash(into:)();
  return sub_24F92D0B8();
}

GameStoreKit::ItemLayoutContext::Metadata __swiftcall ItemLayoutContext.Metadata.init()()
{
  v1 = v0;
  result.contents._rawValue = sub_24E60D43C(MEMORY[0x277D84F90]);
  v1->contents._rawValue = result.contents._rawValue;
  return result;
}

uint64_t ItemLayoutContext.Metadata.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  if (*(v6 + 16) && (v7 = sub_24E76D644(*a1, a1[1]), (v8 & 1) != 0))
  {
    sub_24E615E00(*(v6 + 56) + 40 * v7, v11);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223240);
  v9 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v9 ^ 1u, 1, a2);
}

uint64_t sub_24EB068EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *a2;
  v9[1] = a2[1];
  v9[2] = v6;
  v9[0] = v7;

  ItemLayoutContext.Metadata.subscript.getter(v9, v5, a4);
}

uint64_t sub_24EB06964(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;

  return sub_24EB07508(a1, v9, v5, v6);
}

uint64_t ItemLayoutContext.Metadata.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_24EB07508(a1, a2, a3, a4);
  v5 = sub_24F92C4A8();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*ItemLayoutContext.Metadata.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_24F92C4A8();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v18 = a2[1];
  v11[6] = v15;
  v11[7] = v17;
  v11[8] = v18;
  v19 = *v4;
  v21[1] = v18;
  v21[2] = v19;
  v21[0] = v17;
  swift_bridgeObjectRetain_n();
  ItemLayoutContext.Metadata.subscript.getter(v21, a3, v16);

  return sub_24EB06B98;
}

void sub_24EB06B98(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[5], v6, v7);
    v12 = v4;
    v13 = v3;
    sub_24EB07508(v5, &v12, v10, v9);
    v11 = *(v8 + 8);
    v11(v5, v7);
    v11(v6, v7);
  }

  else
  {
    v12 = (*a1)[7];
    v13 = v3;
    sub_24EB07508(v6, &v12, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v2);
}

uint64_t ItemLayoutContext.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ItemLayoutContext() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ItemLayoutContext.metadata.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ItemLayoutContext() + 24));
}

uint64_t sub_24EB06DBC(uint64_t (*a1)(char *, void *, void, uint64_t, unint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-1] - v4;
  v6 = type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A48();

  sub_24F92AD68();
  v7 = v1 + *(v6 + 32);
  v12[0] = *(v7 + *(type metadata accessor for ShelfLayoutContext() + 36));

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0);
  v9 = sub_24EB076A4();
  return a1(v5, v12, MEMORY[0x277D84A98], v8, v9);
}

uint64_t ItemLayoutContext.componentLayoutOptions.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ItemLayoutContext();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ItemLayoutContext.parentShelfLayoutContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ItemLayoutContext() + 32);

  return sub_24EB07708(v3, a1);
}

uint64_t ItemLayoutContext.withUpdatedLayoutOptions(_:)@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *)@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ItemLayoutContext();
  v14 = *(v2 + v6[7]);
  v7 = *v2;
  v8 = v6[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  (*(*(v9 - 8) + 16))(&a2[v8], v2 + v8, v9);
  v10 = *(v2 + v6[6]);

  a1(&v13, &v14);
  v11 = v13;
  result = sub_24EB07708(v3 + v6[8], &a2[v6[8]]);
  *a2 = v7;
  *&a2[v6[6]] = v10;
  *&a2[v6[7]] = v11;
  return result;
}

uint64_t ItemLayoutContext.typedModel<A>(is:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    (*(v3 + 8))(v5, a2);
    return v7;
  }

  return result;
}

{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    (*(v3 + 8))(v5, a2);
    return v7;
  }

  return result;
}

uint64_t sub_24EB07340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(char *, void *, void, uint64_t, unint64_t), uint64_t (*a7)(char *, uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24[-1] - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24[-1] - v16;
  v18 = type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A48();

  sub_24F92AD68();
  v19 = v7 + *(v18 + 32);
  v24[0] = *(v19 + *(type metadata accessor for ShelfLayoutContext() + 36));

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0);
  v21 = sub_24EB076A4();
  a6(v14, v24, MEMORY[0x277D84A98], v20, v21);
  return a7(v17, a2);
}

uint64_t sub_24EB07508(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F92C4A8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = *a2;
  v14 = a2[1];
  (*(v9 + 16))(&v18 - v11, a1, v8, v10);
  v15 = *(a3 - 8);
  if ((*(v15 + 48))(v12, 1, a3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = a3;
    v20 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(v15 + 32))(boxed_opaque_existential_1, v12, a3);
  }

  return sub_24E989D08(&v18, v13, v14);
}

unint64_t sub_24EB076A4()
{
  result = qword_27F228460;
  if (!qword_27F228460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228460);
  }

  return result;
}

uint64_t sub_24EB07708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfLayoutContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_24EB0779C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24EB077BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
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
    v13 = type metadata accessor for ShelfLayoutContext();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24EB07904(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for ShelfLayoutContext();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24EB07A38()
{
  sub_24EB07AE4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ShelfLayoutContext();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EB07AE4()
{
  if (!qword_27F228488[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23A6A0);
    v0 = sub_24F928A68();
    if (!v1)
    {
      atomic_store(v0, qword_27F228488);
    }
  }
}

uint64_t sub_24EB07B48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t LargeHeroBreakoutLayout.DetailsVerticalPostion.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t LargeHeroBreakoutLayout.init(metrics:backgroundMediaView:headerLabel:detailsView:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[11];
  *(a5 + 160) = a1[10];
  *(a5 + 176) = v5;
  v6 = a1[12];
  v7 = a1[7];
  *(a5 + 96) = a1[6];
  *(a5 + 112) = v7;
  v8 = a1[9];
  *(a5 + 128) = a1[8];
  *(a5 + 144) = v8;
  v9 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v9;
  v10 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v10;
  v11 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v11;
  v12 = *a2;
  v13 = a2[1];
  *(a5 + 192) = v6;
  *(a5 + 208) = v12;
  *(a5 + 224) = v13;
  v14 = *(a3 + 16);
  *(a5 + 248) = *a3;
  *(a5 + 240) = *(a2 + 4);
  *(a5 + 264) = v14;
  *(a5 + 280) = *(a3 + 32);
  return sub_24E612C80(a4, a5 + 288);
}

uint64_t LargeHeroBreakoutLayout.Metrics.init(headerSpace:headerMaxWidth:detailPosition:detailsWidth:detailsVerticalPostion:layoutMargins:height:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _OWORD *a4@<X3>, char *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v19 = *a3;
  v20 = *a5;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0;
  *(a7 + 40) = 0u;
  v21 = a7 + 40;
  sub_24E612C80(a1, a7);
  sub_24EA63A70(a2, v21);
  *(a7 + 80) = v19;
  v22 = a4[1];
  *(a7 + 88) = *a4;
  *(a7 + 104) = v22;
  *(a7 + 113) = *(a4 + 25);
  *(a7 + 129) = v20;
  *(a7 + 136) = a8;
  *(a7 + 144) = a9;
  *(a7 + 152) = a10;
  *(a7 + 160) = a11;

  return sub_24E612C80(a6, a7 + 168);
}

uint64_t LargeHeroBreakoutLayout.Metrics.headerSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

void LargeHeroBreakoutLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
}

uint64_t LargeHeroBreakoutLayout.Metrics.height.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 168);

  return sub_24E612C80(a1, v1 + 168);
}

__n128 LargeHeroBreakoutLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(a1 + 192);
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_24EB080BC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(a1 + 192);
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double static LargeHeroBreakoutLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, double a2)
{
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 168), *(a1 + 192));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v5 + 8))(v7, v4);
  return a2;
}

uint64_t LargeHeroBreakoutLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_24F92CDB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v4 + 208, v37, &qword_27F229780);
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_24E601704(v37, &qword_27F229780);
  }

  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  sub_24F92C1C8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_24E60169C(v4 + 248, &v35, &unk_27F22B200);
  if (v36)
  {
    sub_24E612C80(&v35, v37);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    if (sub_24F9221E8())
    {
      sub_24E60169C(v4 + 40, &v33, &qword_27F22F780);
      if (v34)
      {
        sub_24E612C80(&v33, &v35);
        __swift_project_boxed_opaque_existential_1(&v35, v36);
        sub_24E8ED7D8();
        sub_24F9223A8();
        v22 = v21;
        (*(v10 + 8))(v12, v9);
        if (v22 >= v18)
        {
          v22 = v18;
        }

        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
        sub_24E601704(&v33, &qword_27F22F780);
        v22 = v18;
      }

      *&v31[2] = v22;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      sub_24F922288();
      v31[1] = v23;
      v31[0] = v24;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v39.origin.x = v14;
      v39.origin.y = v16;
      v39.size.width = v18;
      v39.size.height = v20;
      CGRectGetMinX(v39);
      v40.origin.x = v14;
      v40.origin.y = v16;
      v40.size.width = v18;
      v40.size.height = v20;
      CGRectGetMinY(v40);
      __swift_project_boxed_opaque_existential_1(v4, *(v4 + 24));
      sub_24F9223C8();
      sub_24F92C1D8();
      sub_24F922228();
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_24E601704(&v35, &unk_27F22B200);
  }

  v41.origin.x = v14;
  v41.origin.y = v16;
  v41.size.width = v18;
  v41.size.height = v20;
  Width = CGRectGetWidth(v41);
  sub_24E9D43B0(Width);
  v42.origin.x = v14;
  v42.origin.y = v16;
  v42.size.width = v18;
  v42.size.height = v20;
  CGRectGetHeight(v42);
  __swift_project_boxed_opaque_existential_1((v4 + 288), *(v4 + 312));
  sub_24F922288();
  if (*(v4 + 80))
  {
    v26 = v14;
    v27 = v16;
    v28 = v18;
    v29 = v20;
    if (*(v4 + 80) == 1)
    {
      CGRectGetMaxX(*&v26);
    }

    else
    {
      CGRectGetMidX(*&v26);
    }
  }

  else
  {
    v43.origin.x = v14;
    v43.origin.y = v16;
    v43.size.width = v18;
    v43.size.height = v20;
    CGRectGetMinX(v43);
  }

  if (*(v4 + 129) == 1)
  {
    v44.origin.x = v14;
    v44.origin.y = v16;
    v44.size.width = v18;
    v44.size.height = v20;
    CGRectGetMaxY(v44);
  }

  else
  {
    CGRectGetMidY(v32);
  }

  __swift_project_boxed_opaque_existential_1((v4 + 288), *(v4 + 312));
  sub_24F92C1D8();
  sub_24F922228();
  return sub_24F922128();
}

unint64_t sub_24EB087E8()
{
  result = qword_27F228510;
  if (!qword_27F228510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228510);
  }

  return result;
}

uint64_t sub_24EB08840(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EB08B60();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

unint64_t sub_24EB088B0()
{
  result = qword_27F228518;
  if (!qword_27F228518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228518);
  }

  return result;
}

double sub_24EB08904(uint64_t a1, double a2)
{
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 168), *(a1 + 192));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v5 + 8))(v7, v4);
  return a2;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_24EB08A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_24EB08ADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EB08B60()
{
  result = qword_27F228520;
  if (!qword_27F228520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228520);
  }

  return result;
}

uint64_t ErrorPresenter.ReasonForNoInternet.localizedReason.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (!*v0)
    {
      v4._countAndFlagsBits = 0x5F434952454E4547;
      v4._object = 0xED0000524F525245;
      v5._countAndFlagsBits = 0;
      v5._object = 0xE000000000000000;
      return localizedString(_:comment:)(v4, v5)._countAndFlagsBits;
    }

    v7 = 0x800000024FA52EC0;
    v3 = 0xD000000000000012;
  }

  else
  {
    if (v1 == 2)
    {
      v2 = "CELLULAR_DATA_DEVICE_ERROR";
      v3 = 0xD000000000000013;
    }

    else if (v1 == 3)
    {
      v2 = "CELLULAR_DATA_APP_ERROR";
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v2 = "rk";
      v3 = 0xD000000000000017;
    }

    v7 = v2 | 0x8000000000000000;
  }

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  return localizedStringReferencingWiFi(_:comment:)(*&v3, v8)._countAndFlagsBits;
}

uint64_t ErrorPresenter.ReasonForNoInternet.solutionSensitiveURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = *v1;
  if ((v9 - 3) < 2)
  {
    v10 = [objc_opt_self() settingsURL];
    if (v10)
    {
      v11 = v10;
      sub_24F91F428();

      v12 = sub_24F91F4A8();
      (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    }

    else
    {
      v19 = sub_24F91F4A8();
      (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    }

    v20 = v5;
    return sub_24E911D90(v20, a1);
  }

  if (v9 == 2)
  {
    v13 = [objc_opt_self() settingsURL];
    if (v13)
    {
      v14 = v13;
      sub_24F91F428();

      v15 = sub_24F91F4A8();
      (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    }

    else
    {
      v21 = sub_24F91F4A8();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    }

    v20 = v8;
    return sub_24E911D90(v20, a1);
  }

  v16 = sub_24F91F4A8();
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 1, 1, v16);
}

uint64_t ErrorPresenter.ReasonForNoInternet.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

id ErrorPresenter.init(networkInquiry:airplaneModeInquiry:cellularDataInquiry:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkObservation];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_reasonForNoInternet] = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_error] = 0;
  sub_24E615E00(a1, &v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry]);
  *&v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_airplaneModeInquiry] = a2;
  *&v4[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_cellularDataInquiry] = a3;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v10 = a2;
  v20 = a3;
  v11 = objc_msgSendSuper2(&v23, sel_init);
  [v10 setDelegate_];
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_24E74EC40();
  v15 = sub_24F92BEF8();
  v21[3] = v14;
  v21[4] = MEMORY[0x277D225C0];
  v21[0] = v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v13 + 40);

  v17(v22, v21, sub_24EB0930C, v16, v12, v13);

  __swift_destroy_boxed_opaque_existential_1(v21);
  v18 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkObservation;
  swift_beginAccess();
  sub_24EA043F8(v22, v11 + v18);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_24EB091E0()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

void sub_24EB09218()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ErrorPresenter.update()();
    v2 = *&v1[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry + 24];
    v3 = *&v1[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry], v2);
    if ((*(v3 + 8))(v2, v3))
    {
      v4 = &v1[OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        (*(v5 + 16))(ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }
  }
}

id ErrorPresenter.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = v0 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkObservation;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_24E615E00(v3, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

Swift::Void __swiftcall ErrorPresenter.update()()
{
  v1 = sub_24F927D88();
  v17 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F927DC8();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927D98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  (*(v8 + 104))(v10, *MEMORY[0x277D851B8], v7);
  v11 = sub_24F92BF48();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_24EB09CC8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_49;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_24F927DA8();
  v18 = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v6, v3, v13);
  _Block_release(v13);

  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);
}

uint64_t sub_24EB098A4(uint64_t a1)
{
  v2 = sub_24F927D88();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F927DC8();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry);
  v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry + 24);
  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_networkInquiry), v9);
  if ((*(v10 + 8))(v9, v10))
  {
    v11 = 0;
  }

  else if ([*(a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_airplaneModeInquiry) isEnabled])
  {
    v11 = 2;
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_cellularDataInquiry);
    if ([v12 isSupported] && !objc_msgSend(v12, sel_isEnabledForDevice))
    {
      v11 = 3;
    }

    else if ([v12 isSupported] && (v13 = v8[3], v14 = v8[4], __swift_project_boxed_opaque_existential_1(v8, v13), (*(v14 + 16))(aBlock, v13, v14), LOBYTE(aBlock[0]) == 3) && !objc_msgSend(v12, sel_isEnabledForBundle))
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }
  }

  sub_24E74EC40();
  v15 = sub_24F92BEF8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v11;
  aBlock[4] = sub_24EB0AD50;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_21;
  v18 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v18);
  _Block_release(v18);

  (*(v21 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_24EB09C90()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24EB09CE8(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    sub_24EB09D48(&v5);
  }
}

uint64_t sub_24EB09D48(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_reasonForNoInternet;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v5 != v2)
  {
    v6 = v1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(ObjectType, v7);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t ErrorPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ErrorPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

void sub_24EB09F58(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ErrorPresenter.reasonForNoInternet.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_reasonForNoInternet;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ErrorPresenter.message.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _s12GameStoreKit14ErrorPresenterC7message10describingSSSgs0D0_p_tFZ_0(v2);

  return v4;
}

uint64_t ErrorPresenter.settingsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_reasonForNoInternet;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if ((v10 - 3) >= 2)
  {
    if (v10 != 2)
    {
      v17 = sub_24F91F4A8();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    v14 = [objc_opt_self() settingsURL];
    if (v14)
    {
      v15 = v14;
      sub_24F91F428();

      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v21 = sub_24F91F4A8();
    (*(*(v21 - 8) + 56))(v8, v16, 1, v21);
    v20 = v8;
  }

  else
  {
    v11 = [objc_opt_self() settingsURL];
    if (v11)
    {
      v12 = v11;
      sub_24F91F428();

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v19 = sub_24F91F4A8();
    (*(*(v19 - 8) + 56))(v5, v13, 1, v19);
    v20 = v5;
  }

  return sub_24E911D90(v20, a1);
}

void *ErrorPresenter.error.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ErrorPresenter.error.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = v1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t (*ErrorPresenter.error.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EB0A4C4;
}

uint64_t sub_24EB0A4C4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24) + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(ObjectType, v6);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id ErrorPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t _s12GameStoreKit14ErrorPresenterC7message10describingSSSgs0D0_p_tFZ_0(void *a1)
{
  v2 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F9479A0;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"convergence";
  *(v3 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"convergence";
  v6 = @"internal";
  v7 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  result = 0;
  if (IsAnyOf)
  {
    v10 = a1;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      swift_getErrorValue();
      v12 = a1;
      v13 = sub_24F92CFE8();
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_24E615CF4(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_24E615CF4((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v19 = sub_24F91F268();
      v20 = [v19 userInfo];

      v21 = sub_24F92AE38();
      v22 = sub_24F92B0D8();
      if (!*(v21 + 16))
      {

        goto LABEL_13;
      }

      v24 = sub_24E76D644(v22, v23);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        break;
      }

      sub_24E643A9C(*(v21 + 56) + 32 * v24, &v31);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      a1 = v30;
    }

LABEL_13:

LABEL_14:
    v31 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E602068(&qword_27F23E240, &unk_27F2285F0);
    v27 = sub_24F92AF68();
    v29 = v28;

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_24F92C888();

    v31 = 0x6C616E7265746E49;
    v32 = 0xEF0A3A796C6E4F20;
    MEMORY[0x253050C20](v27, v29);

    return v31;
  }

  return result;
}

unint64_t sub_24EB0A9F4()
{
  result = qword_27F228578;
  if (!qword_27F228578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228578);
  }

  return result;
}

uint64_t sub_24EB0AA48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EB0AAA4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EB0AB08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_reasonForNoInternet;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_24EB0AB98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return v5;
}

void sub_24EB0ABF4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  ErrorPresenter.error.setter(v1);
}

uint64_t sub_24EB0ACB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EB0AD18()
{

  return swift_deallocObject();
}

char *sub_24EB0AD64(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  a1(&v15, a3 + 32);
  while (!v3)
  {
    if (*(&v16 + 1))
    {
      v12 = v15;
      v13 = v16;
      v14 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E616FEC(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_24E616FEC((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      v10 = &v6[40 * v9];
      *(v10 + 8) = v14;
      *(v10 + 2) = v12;
      *(v10 + 3) = v13;
    }

    else
    {
      sub_24E601704(&v15, &qword_27F228658);
    }

    v7 += 40;
    if (!--v4)
    {
      return v6;
    }

    a1(&v15, v7);
  }

  return v6;
}

void *sub_24EB0AEC0(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  a1(&v11, a3 + 32);
  while (!v3)
  {
    if (v12)
    {
      sub_24E612C80(&v11, v13);
      sub_24E612C80(v13, &v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E61710C(0, v6[2] + 1, 1, v6);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_24E61710C((v8 > 1), v9 + 1, 1, v6);
      }

      v6[2] = v9 + 1;
      sub_24E612C80(&v11, &v6[5 * v9 + 4]);
    }

    else
    {
      sub_24E601704(&v11, &qword_27F2171D0);
    }

    v7 += 40;
    if (!--v4)
    {
      return v6;
    }

    a1(&v11, v7);
  }

  return v6;
}

void *sub_24EB0B01C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v5;
    v16 = *(v5 - 1);
    v17 = v8;

    v18(&v14, &v16);
    if (v3)
    {
      break;
    }

    v9 = v14;
    if (v14)
    {
      v10 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E6182C4(0, v6[2] + 1, 1, v6);
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v6 = sub_24E6182C4((v11 > 1), v12 + 1, 1, v6);
      }

      v6[2] = v12 + 1;
      v7 = &v6[2 * v12];
      v7[4] = v9;
      *(v7 + 40) = v10 & 1;
    }

    v5 += 16;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

char *sub_24EB0B16C(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  MEMORY[0x28223BE20](v9);
  v31 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v29 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = a3 + 32;
  v17 = (v12 + 48);
  v26 = v12;
  v30 = (v12 + 32);
  v18 = MEMORY[0x277D84F90];
  v27 = v9;
  v28 = a1;
  v25 = (v12 + 48);
  while (1)
  {
    a1(v16, v13);
    if (v3)
    {
      break;
    }

    if ((*v17)(v8, 1, v9) == 1)
    {
      sub_24E601704(v8, &unk_27F23A690);
    }

    else
    {
      v19 = v29;
      v20 = *v30;
      (*v30)(v29, v8, v9);
      v20(v31, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_24E619734(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_24E619734(v21 > 1, v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v9 = v27;
      v20(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v31, v27);
      a1 = v28;
      v17 = v25;
    }

    v16 += 40;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

char *sub_24EB0B440(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  MEMORY[0x28223BE20](v9);
  v31 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v29 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = a3 + 32;
  v17 = (v12 + 48);
  v26 = v12;
  v30 = (v12 + 32);
  v18 = MEMORY[0x277D84F90];
  v27 = v9;
  v28 = a1;
  v25 = (v12 + 48);
  while (1)
  {
    a1(v16, v13);
    if (v3)
    {
      break;
    }

    if ((*v17)(v8, 1, v9) == 1)
    {
      sub_24E601704(v8, &qword_27F228650);
    }

    else
    {
      v19 = v29;
      v20 = *v30;
      (*v30)(v29, v8, v9);
      v20(v31, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_24E619758(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_24E619758(v21 > 1, v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v9 = v27;
      v20(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v31, v27);
      a1 = v28;
      v17 = v25;
    }

    v16 += 40;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_24EB0B714(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x253052270](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_24F92C738();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_24EB0B828(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 16)
    {
      v7 = *i;
      v8 = *(i - 1);
      v9 = v7;

      v5(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_24EB0B8C4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v13 << 6)));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ImpressionsCalculator.__allocating_init(impressionableThreshold:tracker:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_allocObject();
  v6 = sub_24EB0E424(a3, a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t ImpressionsCalculator.__allocating_init(configurationTrackerPairs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ImpressionsCalculator.init(configurationTrackerPairs:)(a1);
  return v2;
}

uint64_t ImpressionsCalculator.init(configurationTrackerPairs:)(uint64_t a1)
{
  v2 = v1;
  v43 = sub_24F929B38();
  v37 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228610);
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = MEMORY[0x277D84F90];
  *(v1 + 24) = sub_24E60A0C8(MEMORY[0x277D84F90]);
  v12 = &unk_27F228000;
  v13 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  v14 = sub_24F929598();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v35 = v15 + 56;
  v36 = v16;
  v16((v2 + v13), 1, 1, v14);
  v17 = v2 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 1;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) = 2;
  v18 = *(a1 + 16);
  if (v18)
  {
    v32 = v14;
    v33 = v10;
    v34 = v2;
    v44 = v11;
    sub_24F4586BC(0, v18, 0);
    v39 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v40 = v5;
    v19 = v44;
    result = sub_24F929BC8();
    v21 = 0;
    v37 += 2;
    v38 = result;
    while (v21 < *(a1 + 16))
    {
      v22 = v18;
      v23 = a1;
      sub_24EB0E690(v39 + *(v40 + 72) * v21, v7);
      v24 = v7[*(v41 + 64)];
      (*v37)(v42, v7, v43);
      swift_unknownObjectRetain();
      v25 = sub_24F929B48();
      result = sub_24E601704(v7, &qword_27F228610);
      v44 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_24F4586BC((v26 > 1), v27 + 1, 1);
        v19 = v44;
      }

      ++v21;
      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      v18 = v22;
      a1 = v23;
      if (v22 == v21)
      {

        v10 = v33;
        v2 = v34;
        v12 = &unk_27F228000;
        v14 = v32;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
LABEL_9:
    *(v2 + 16) = v19;
    v36(v10, 1, 1, v14);
    v29 = v12[196];
    swift_beginAccess();
    sub_24EB0E700(v10, v2 + v29);
    swift_endAccess();
    *(v2 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_impressionIdCount) = sub_24E60A2B0(MEMORY[0x277D84F90]);
    v30 = [objc_opt_self() defaultCenter];
    [v30 addObserver:v2 selector:sel_applicationDidEnterBackgroundWithNote_ name:*MEMORY[0x277D76660] object:0];
    [v30 addObserver:v2 selector:sel_applicationWillEnterForegroundWithNote_ name:*MEMORY[0x277D76758] object:0];

    return v2;
  }

  return result;
}

uint64_t ImpressionsCalculator.init(impressionableThreshold:tracker:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_24EB0E424(a3, a1, a2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_24EB0BF18(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  *(v2 + 24) = sub_24E60A0C8(MEMORY[0x277D84F90]);
  v8 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  v9 = sub_24F929598();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v2 + v8, 1, 1, v9);
  v12 = v2 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 1;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) = 2;
  *(v2 + 16) = a1;
  (*(v10 + 16))(v7, a2, v9);
  v11(v7, 0, 1, v9);
  v13 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  sub_24EB0E700(v7, v2 + v13);
  swift_endAccess();
  v14 = sub_24E60A2B0(MEMORY[0x277D84F90]);
  (*(v10 + 8))(a2, v9);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_impressionIdCount) = v14;
  return v2;
}

uint64_t ImpressionsCalculator.isVisible.getter()
{
  if (!*(*(v0 + 16) + 16))
  {
    return 0;
  }

  v1 = sub_24F929BA8();

  return v1 & 1;
}

uint64_t sub_24EB0C144@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(*(*result + 16) + 16))
  {

    v3 = sub_24F929BA8();
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3 & 1;
  return result;
}

uint64_t ImpressionsCalculator.isVisible.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v4 += 16;

      sub_24F929BB8();

      if (v2 == v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t (*ImpressionsCalculator.isVisible.modify(uint64_t a1))()
{
  *a1 = v1;
  if (*(*(v1 + 16) + 16))
  {

    v3 = sub_24F929BA8();
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 8) = v3 & 1;
  return sub_24EB0C2B0;
}

double ImpressionsCalculator.viewBounds.getter()
{
  if (!*(*(v0 + 16) + 16))
  {
    return 0.0;
  }

  sub_24F929AF8();
  v2 = v1;

  return v2;
}

uint64_t sub_24EB0C35C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(*(*result + 16) + 16))
  {

    sub_24F929AF8();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v8 = 0;
    v10 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

uint64_t ImpressionsCalculator.viewBounds.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = v0 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  result = swift_beginAccess();
  if (v2)
  {
    v5 = 0;
    v6 = (v1 + 40);
    while (v5 < *(v1 + 16))
    {
      if (*v6 != 1 || (*(v3 + 32) & 1) != 0)
      {
      }

      else
      {

        sub_24F92C208();
      }

      ++v5;
      sub_24F929B08();

      v6 += 16;
      if (v2 == v5)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void (*ImpressionsCalculator.viewBounds.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  *(v3 + 88) = v5;
  if (*(v5 + 16))
  {

    sub_24F929AF8();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v11 = 0;
    v13 = 0;
  }

  *v4 = v7;
  v4[1] = v9;
  v4[2] = v11;
  v4[3] = v13;
  return sub_24EB0C5EC;
}

void sub_24EB0C5EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(*a1 + 88) + 16);
  v4 = *(*a1 + 80) + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  if (a2)
  {
    swift_beginAccess();
    if (v3)
    {
      v5 = 0;
      v6 = (v2[11] + 40);
      while (v5 < *(v2[11] + 16))
      {
        if (*v6 & 1) == 0 || (*(v4 + 32))
        {
        }

        else
        {

          sub_24F92C208();
        }

        ++v5;
        sub_24F929B08();

        v6 += 16;
        if (v3 == v5)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }
  }

  else
  {
    swift_beginAccess();
    if (v3)
    {
      v7 = 0;
      v8 = (v2[11] + 40);
      while (v7 < *(v2[11] + 16))
      {
        if (*v8 != 1 || (*(v4 + 32) & 1) != 0)
        {
        }

        else
        {

          sub_24F92C208();
        }

        ++v7;
        sub_24F929B08();

        v8 += 16;
        if (v3 == v7)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }
  }

LABEL_18:

  free(v2);
}

__n128 ImpressionsCalculator.viewSafeAreaInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 ImpressionsCalculator.viewSafeAreaInsets.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t ImpressionsCalculator.addElement(_:at:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v38 = a1;
  v11 = sub_24F929598();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v37 = sub_24F929608();
  v18 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  v22 = (*(v12 + 48))(v5 + v21, 1, v11);
  v23 = 0;
  v24 = 0;
  if (!v22)
  {
    v23 = sub_24F929588();
    v24 = v25;
  }

  swift_endAccess();
  ImpressionMetrics.withParentId(_:)(v23, v24, v20);

  sub_24F9295B8();
  sub_24F9295B8();
  v26 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_impressionIdCount;
  swift_beginAccess();
  v27 = *(v6 + v26);
  if (*(v27 + 16) && (v28 = sub_24E76DDAC(v14), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 8 * v28);
  }

  else
  {
    v30 = 0;
  }

  swift_endAccess();
  v31 = *(v12 + 8);
  result = v31(v14, v11);
  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v6 + v26);
    *(v6 + v26) = 0x8000000000000000;
    sub_24E81E0B0(v30 + 1, v17, isUniquelyReferenced_nonNull_native);
    v31(v17, v11);
    *(v6 + v26) = v39;
    v34 = swift_endAccess();
    MEMORY[0x28223BE20](v34);
    *(&v36 - 6) = v20;
    *(&v36 - 5) = a2;
    *(&v36 - 4) = a3;
    *(&v36 - 3) = a4;
    *(&v36 - 2) = a5;
    sub_24EB0B828(sub_24EB0E770, (&v36 - 8), v35);
    return (*(v18 + 8))(v20, v37);
  }

  return result;
}

uint64_t ImpressionsCalculator.removeElement(_:)(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_24F929598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v45 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = sub_24F929608();
  v46 = *(v17 - 8);
  v47 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  v21 = v3;
  v22 = (*(v4 + 48))(v2 + v20, 1, v3);
  v23 = 0;
  v24 = 0;
  if (!v22)
  {
    v23 = sub_24F929588();
    v24 = v25;
  }

  swift_endAccess();
  ImpressionMetrics.withParentId(_:)(v23, v24, v19);

  sub_24F9295B8();
  sub_24F9295B8();
  v26 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_impressionIdCount;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (*(v27 + 16) && (v28 = sub_24E76DDAC(v13), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 8 * v28);
  }

  else
  {
    v30 = 0;
  }

  swift_endAccess();
  v31 = *(v4 + 8);
  v32 = v13;
  v33 = v21;
  result = v31(v32, v21);
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v2 + v26);
  *(v2 + v26) = 0x8000000000000000;
  sub_24E81E0B0(v30 - 1, v16, isUniquelyReferenced_nonNull_native);
  v31(v16, v21);
  *(v2 + v26) = v50;
  swift_endAccess();
  sub_24F9295B8();
  swift_beginAccess();
  v36 = *(v2 + v26);
  if (*(v36 + 16) && (v37 = sub_24E76DDAC(v10), (v38 & 1) != 0))
  {
    v39 = *(*(v36 + 56) + 8 * v37);
    swift_endAccess();
    v31(v10, v21);
    v40 = v48;
    if (v39 > 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    swift_endAccess();
    v31(v10, v21);
    v40 = v48;
  }

  sub_24F9295B8();
  swift_beginAccess();
  sub_24E9897B4(0, 1, v40);
  v41 = swift_endAccess();
  MEMORY[0x28223BE20](v41);
  *(&v45 - 2) = v19;
  sub_24EB0B828(sub_24EB0E7AC, (&v45 - 4), v42);
LABEL_14:
  v43 = v45;
  sub_24F9295B8();
  swift_beginAccess();
  if (*(*(v2 + 24) + 16) && (sub_24E76DDAC(v43), (v44 & 1) != 0))
  {
    swift_endAccess();

    v31(v43, v33);
    ImpressionsCalculator.removeAllElements()();
    sub_24F9295B8();
    swift_beginAccess();
    sub_24E989968(0, v40);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v31(v43, v33);
  }

  return (*(v46 + 8))(v19, v47);
}

Swift::Void __swiftcall ImpressionsCalculator.removeAllElements()()
{
  v1 = v0;
  v2 = sub_24E60A2B0(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_impressionIdCount;
  swift_beginAccess();
  *(v1 + v3) = v2;

  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v7 += 16;

      sub_24F929B68();

      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    swift_beginAccess();
    v8 = *(v1 + 24);
    v11 = *(v8 + 64);
    v10 = v8 + 64;
    v9 = v11;
    v12 = 1 << *(*(v1 + 24) + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v9;
    v15 = (v12 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v16 = 0;
    if (v14)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        *(v1 + 24) = MEMORY[0x277D84F98];

        return;
      }

      v14 = *(v10 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        do
        {
LABEL_13:
          v14 &= v14 - 1;

          ImpressionsCalculator.removeAllElements()();
        }

        while (v14);
        continue;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t ImpressionsCalculator.makeChildCalculator(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F929598();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 16);
  v13 = a1;
  v14 = v2;
  v9 = sub_24EB0B01C(sub_24EB0E7E0, v12, v8);
  if (v9[2])
  {
    v10 = v9;
    (*(v5 + 16))(v7, a1, v4);
    swift_allocObject();
    return sub_24EB0BF18(v10, v7);
  }

  else
  {

    return 0;
  }
}

uint64_t ImpressionsCalculator.childCalculator(for:viewBounds:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v6 = sub_24F929598();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v2 + 24);
  if (*(v10 + 16) && (v11 = sub_24E76DDAC(a1), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    if (a2[2])
    {

      return v13;
    }

    v27 = *(v13 + 16);
    v28 = *(v27 + 16);
    v29 = v13 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;

    result = swift_beginAccess();
    if (!v28)
    {
      return v13;
    }

    v30 = 0;
    v31 = (v27 + 40);
    while (v30 < *(v27 + 16))
    {
      v32 = *v31;
      v33 = a2[1];
      v34 = *a2;
      v35 = v33;
      if (v32 != 1 || (*(v29 + 32) & 1) != 0)
      {
      }

      else
      {

        sub_24F92C208();
      }

      ++v30;
      sub_24F929B08();

      v31 += 16;
      if (v28 == v30)
      {
        return v13;
      }
    }
  }

  else
  {
    v14 = swift_endAccess();
    MEMORY[0x28223BE20](v14);
    *(&v34 - 2) = a1;
    *(&v34 - 1) = v3;
    v16 = sub_24EB0B01C(sub_24EB0E810, (&v34 - 2), v15);
    if (!v16[2])
    {

      (*(v7 + 16))(v9, a1, v6);
      swift_beginAccess();
      sub_24E989968(0, v9);
      swift_endAccess();
      return 0;
    }

    v17 = v16;
    (*(v7 + 16))(v9, a1, v6);
    swift_allocObject();
    v13 = sub_24EB0BF18(v17, v9);
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_24E81E24C(v13, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + 24) = v36;
    swift_endAccess();
    if ((a2[2] & 1) != 0 || (v19 = *(v13 + 16), v20 = *(v19 + 16), v21 = v13 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets, result = swift_beginAccess(), !v20))
    {
LABEL_15:

      return v13;
    }

    v23 = 0;
    v24 = (v19 + 40);
    while (v23 < *(v19 + 16))
    {
      v25 = *v24;
      v26 = a2[1];
      v34 = *a2;
      v35 = v26;
      if (v25 & 1) == 0 || (*(v21 + 32))
      {
      }

      else
      {

        sub_24F92C208();
      }

      ++v23;
      sub_24F929B08();

      v24 += 16;
      if (v20 == v23)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EB0D8C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *)@<X3>, uint64_t a5@<X8>)
{
  v20 = a4;
  v9 = sub_24F929598();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  if ((*(v10 + 48))(a3 + v14, 1, v9))
  {
    swift_endAccess();
    (*(v10 + 16))(v12, a2, v9);
  }

  else
  {
    v15 = sub_24F929588();
    v19[0] = v16;
    v19[1] = v15;
    swift_endAccess();
    sub_24F929588();
    v19[2] = v13;
    sub_24F929558();
    sub_24F929568();
  }

  v17 = v20(v12);
  result = (*(v10 + 8))(v12, v9);
  *a5 = v17;
  *(a5 + 8) = 0;
  return result;
}

uint64_t ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = *(v6 + 16);
  v9[2] = a1;
  *&v9[4] = a3;
  *&v9[5] = a4;
  *&v9[6] = a5;
  *&v9[7] = a6;
  v10 = a2;
  return sub_24EB0B828(sub_24EB0E840, v9, v7);
}

uint64_t sub_24EB0DAEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15[1] = a4;
  v5 = sub_24F929608();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  v10 = sub_24F929598();
  v11 = 0;
  v12 = 0;
  if (!(*(*(v10 - 8) + 48))(a3 + v9, 1, v10))
  {
    v11 = sub_24F929588();
    v12 = v13;
  }

  swift_endAccess();
  ImpressionMetrics.withParentId(_:)(v11, v12, v8);

  sub_24F929B98();
  return (*(v6 + 8))(v8, v5);
}

uint64_t ImpressionsCalculator.changeImpressionableBounds(_:forElementWithID:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *(v5 + 16);
  *&v8[2] = a2;
  *&v8[3] = a3;
  *&v8[4] = a4;
  *&v8[5] = a5;
  v8[6] = a1;
  return sub_24EB0B828(sub_24EB0E868, v8, v6);
}

uint64_t sub_24EB0DD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F929598();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  if ((*(v7 + 48))(a3 + v10, 1, v6))
  {
    swift_endAccess();
    (*(v7 + 16))(v9, a2, v6);
  }

  else
  {
    v12[0] = sub_24F929588();
    v12[9] = v3;
    swift_endAccess();
    sub_24F929588();
    sub_24F929558();
    sub_24F929568();
  }

  sub_24F929B88();
  return (*(v7 + 8))(v9, v6);
}

uint64_t ImpressionsCalculator.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID, &qword_27F228618);

  return v0;
}

uint64_t ImpressionsCalculator.__deallocating_deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID, &qword_27F228618);

  return swift_deallocClassInstance();
}

void sub_24EB0E0D8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v34 = a2;
  v35 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v30 = sub_24F91F008();
  MEMORY[0x28223BE20](v30);
  v33 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v29 = &v28 - v15;
  v16 = a5 >> 1;
  v17 = (a5 >> 1) - a4;
  if (a5 >> 1 == a4)
  {
    v39 = MEMORY[0x277D84F90];
  }

  else
  {
    v28 = v14;
    v31 = (v14 + 32);
    v32 = (v14 + 48);
    if (a4 > v16)
    {
      v16 = a4;
    }

    v18 = v16 - a4;
    v19 = (a3 + 32 * a4);
    v39 = MEMORY[0x277D84F90];
    v20 = v30;
    while (v18)
    {
      v21 = v19[3];
      v36 = *v19;
      v37 = *(v19 + 1);
      v38 = v21;

      v35(&v36);
      if (v5)
      {

        return;
      }

      if ((*v32)(v11, 1, v20) == 1)
      {
        sub_24E601704(v11, &qword_27F215340);
      }

      else
      {
        v22 = *v31;
        v23 = v29;
        (*v31)(v29);
        (v22)(v33, v23, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_24E619A60(0, v39[2] + 1, 1, v39);
        }

        v25 = v39[2];
        v24 = v39[3];
        if (v25 >= v24 >> 1)
        {
          v39 = sub_24E619A60(v24 > 1, v25 + 1, 1, v39);
        }

        v26 = v39;
        v39[2] = v25 + 1;
        v27 = v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25;
        v20 = v30;
        (v22)(v27, v33, v30);
      }

      --v18;
      v19 += 4;
      if (!--v17)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24EB0E424(double a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  *(v4 + 24) = sub_24E60A0C8(MEMORY[0x277D84F90]);
  v10 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  v11 = sub_24F929598();
  v12 = *(*(v11 - 8) + 56);
  v12(v4 + v10, 1, 1, v11);
  v13 = v4 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BD8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93DE60;
  sub_24F929BC8();
  v15 = swift_unknownObjectRetain();
  *(v14 + 32) = MEMORY[0x25304F500](v15, a3, a1);
  *(v14 + 40) = 0;
  *(v4 + 16) = v14;
  v12(v9, 1, 1, v11);
  v16 = OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  sub_24EB0E700(v9, v4 + v16);
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_impressionIdCount) = sub_24E60A2B0(MEMORY[0x277D84F90]);
  v17 = [objc_opt_self() defaultCenter];
  [v17 addObserver:v4 selector:sel_applicationDidEnterBackgroundWithNote_ name:*MEMORY[0x277D76660] object:0];
  [v17 addObserver:v4 selector:sel_applicationWillEnterForegroundWithNote_ name:*MEMORY[0x277D76758] object:0];

  return v4;
}

uint64_t sub_24EB0E690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB0E700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ImpressionsCalculator()
{
  result = qword_27F228638;
  if (!qword_27F228638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EB0E93C()
{
  sub_24EB0EA30();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EB0EA30()
{
  if (!qword_27F228648)
  {
    sub_24F929598();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F228648);
    }
  }
}

uint64_t sub_24EB0EEE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_24F4578E0(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_24F92C6B8();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v13 = *(v25 + 16);
    v12 = *(v25 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_24F4578E0((v12 > 1), v13 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v13 + 1;
    v14 = v25 + 16 * v13;
    *(v14 + 32) = 0x6F65646976;
    *(v14 + 40) = 0xE500000000000000;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_24E6586A8(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_24E6586A8(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t MediaPlatform.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v51 - v4;
  v5 = sub_24F92AC28();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v51 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = 0xEB000000006D726FLL;
  v62 = 0x6674616C50707061;
  v22 = a1;
  sub_24F928398();
  sub_24EB0F834();
  sub_24F928248();
  v23 = *(v8 + 8);
  v23(v20, v7);
  if (v64 == 7)
  {
    goto LABEL_6;
  }

  LODWORD(v62) = v64;
  v21 = 0xEF656D614E656761;
  v54 = v22;
  sub_24F928398();
  v24 = sub_24F928348();
  v26 = v25;
  v23(v17, v7);
  v53 = v26;
  if (!v26)
  {
    v62 = 0x6D496D6574737973;
    v22 = v54;
LABEL_6:
    v34 = sub_24F92AC38();
    sub_24EB10DA8(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    v35 = v63;
    *v36 = v62;
    v36[1] = v21;
    v36[2] = v35;
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    v37 = sub_24F9285B8();
    (*(*(v37 - 8) + 8))(v65, v37);
    v23(v22, v7);
    return v21;
  }

  v51 = v24;
  v27 = v23;
  v28 = v54;
  sub_24F928398();
  v29 = v56;
  sub_24F9282B8();
  v52 = v7;
  v27(v14, v7);
  v30 = v57;
  v31 = v58;
  v32 = v28;
  if ((*(v57 + 48))(v29, 1, v58) == 1)
  {
    sub_24E8F2EE8(v29);
    v33 = MEMORY[0x277D84F90];
  }

  else
  {
    v38 = v55;
    (*(v30 + 32))(v55, v29, v31);
    v39 = v61;
    v33 = sub_24F92ABB8();
    v61 = v39;
    (*(v30 + 8))(v38, v31);
  }

  sub_24F928398();
  v58 = sub_24F928308();
  LODWORD(v57) = v40;
  v41 = v52;
  v27(v20, v52);
  v42 = v59;
  sub_24F928398();
  v56 = sub_24F928308();
  LODWORD(v55) = v43;
  v27(v42, v41);
  v44 = v60;
  sub_24F928398();
  v45 = sub_24F928308();
  LODWORD(v59) = v46;
  v27(v44, v41);
  v21 = swift_allocObject();
  *(v21 + 40) = MEMORY[0x277D84FA0];
  *(v21 + 16) = v62;
  v47 = v53;
  *(v21 + 24) = v51;
  *(v21 + 32) = v47;
  v48 = sub_24F45D6EC(v33);

  v49 = sub_24F9285B8();
  (*(*(v49 - 8) + 8))(v65, v49);
  v27(v32, v41);
  swift_beginAccess();
  *(v21 + 40) = v48;
  *(v21 + 48) = v58;
  *(v21 + 56) = v57 & 1;
  *(v21 + 64) = v56;
  *(v21 + 72) = v55 & 1;
  *(v21 + 80) = v45;
  *(v21 + 88) = v59 & 1;
  return v21;
}

unint64_t sub_24EB0F834()
{
  result = qword_27F228668;
  if (!qword_27F228668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228668);
  }

  return result;
}

uint64_t static MediaPlatform.systemImages(platforms:)(unint64_t a1)
{
  v19 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_23:
    v2 = sub_24F92C738();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x253052270](v4, a1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v5 = *(a1 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:
          v11 = v19;
          v3 = MEMORY[0x277D84F90];
          v12 = *(v19 + 16);
          if (!v12)
          {
            goto LABEL_20;
          }

LABEL_14:
          v20 = v3;
          sub_24F92C978();
          v13 = objc_opt_self();
          v14 = v11 + 40;
          do
          {

            v15 = sub_24F92B098();
            v16 = [v13 systemImageNamed:v15 withConfiguration:0];

            if (!v16)
            {
              [objc_allocWithZone(MEMORY[0x277D755B8]) init];
            }

            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
            v14 += 16;
            --v12;
          }

          while (v12);

          return v20;
        }
      }

      swift_beginAccess();

      v8 = sub_24EB0EEE4(v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      v10 = *(v5 + 32);
      *(inited + 32) = *(v5 + 24);
      *(inited + 40) = v10;
      v18 = inited;

      sub_24EA0A4AC(v8);

      sub_24EA0A4AC(v18);
      ++v4;
      if (v6 == v2)
      {
        goto LABEL_13;
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_20:

  return MEMORY[0x277D84F90];
}

uint64_t static MediaPlatform.systemImageNames(platforms:)(unint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_14:
    v2 = sub_24F92C738();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x253052270](i, a1);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_11:
            __break(1u);
            return v12;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v4 = *(a1 + 8 * i + 32);

          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_11;
          }
        }

        swift_beginAccess();

        v7 = sub_24EB0EEE4(v6);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F93DE60;
        v9 = *(v4 + 32);
        *(inited + 32) = *(v4 + 24);
        *(inited + 40) = v9;
        v11 = inited;

        sub_24EA0A4AC(v7);

        sub_24EA0A4AC(v11);
        if (v5 == v2)
        {
          return v12;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t MediaPlatform.systemImageName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MediaPlatform.supplementaryAppPlatforms.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t MediaPlatform.isIOS.getter()
{
  if (*(v0 + 16) <= 2u && !*(v0 + 16))
  {
    v2 = 1;
LABEL_9:

    return v2 & 1;
  }

  v1 = sub_24F92CE08();

  if ((v1 & 1) == 0)
  {
    if (*(v0 + 16) == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_24F92CE08();
    }

    goto LABEL_9;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t MediaPlatform.__allocating_init(appPlatform:systemImageName:supplementaryAppPlatforms:deviceCornerRadiusFactor:deviceBorderThickness:outerDeviceCornerRadiusFactor:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  result = swift_allocObject();
  v19 = *a1;
  *(result + 40) = MEMORY[0x277D84FA0];
  v20 = (result + 40);
  *(result + 16) = v19;
  *(result + 24) = a2;
  *(result + 32) = a3;
  if (a4)
  {
    v21 = result;
    v22 = sub_24F45D6EC(a4);

    swift_beginAccess();
    result = v21;
    *v20 = v22;
  }

  *(result + 48) = a5;
  *(result + 56) = a6 & 1;
  *(result + 64) = a7;
  *(result + 72) = a8 & 1;
  *(result + 80) = a9;
  *(result + 88) = a10 & 1;
  return result;
}

uint64_t MediaPlatform.init(appPlatform:systemImageName:supplementaryAppPlatforms:deviceCornerRadiusFactor:deviceBorderThickness:outerDeviceCornerRadiusFactor:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  v15 = *a1;
  *(v10 + 40) = MEMORY[0x277D84FA0];
  *(v10 + 16) = v15;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  if (a4)
  {
    v16 = sub_24F45D6EC(a4);

    swift_beginAccess();
    *(v10 + 40) = v16;
  }

  *(v10 + 48) = a5;
  *(v10 + 56) = a6 & 1;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8 & 1;
  *(v10 + 80) = a9;
  *(v10 + 88) = a10 & 1;
  return v10;
}

uint64_t MediaPlatform.__allocating_init(from:)(void *a1)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v23 = sub_24F928388();
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  sub_24E615E00(a1, v24);
  sub_24F928298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v22 = v4;
    v16 = a1[3];
    v21 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v16);
    v20[1] = v1;
    v17 = v22;
    sub_24F92D0E8();
    sub_24F928598();
    v18 = v23;
    (*(v25 + 16))(v12, v15, v23);
    (*(v5 + 16))(v7, v10, v17);
    v1 = MediaPlatform.__allocating_init(deserializing:using:)(v12, v7);
    (*(v5 + 8))(v10, v17);
    (*(v25 + 8))(v15, v18);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v1;
}

uint64_t MediaPlatform.hash(into:)()
{
  sub_24F92B218();

  if ((*(v0 + 56) & 1) == 0)
  {
    if ((*(v0 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = *(v0 + 48);
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x253052A30](v2);
  }

  return result;
}

unint64_t sub_24EB105A4()
{
  v1 = *v0;
  v2 = 0x6674616C50707061;
  v3 = 0xD000000000000018;
  v4 = 0xD00000000000001DLL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v1 == 1)
  {
    v5 = 0x6D496D6574737973;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EB10680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EB10FC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EB106A8(uint64_t a1)
{
  v2 = sub_24EB10BE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EB106E4(uint64_t a1)
{
  v2 = sub_24EB10BE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaPlatform.deinit()
{

  return v0;
}

uint64_t MediaPlatform.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MediaPlatform.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228670);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EB10BE0();
  sub_24F92D128();
  v12 = *(v3 + 16);
  LOBYTE(v11) = 0;
  sub_24EB10C34();
  sub_24F92CD48();
  if (!v2)
  {
    v12 = 1;
    sub_24F92CD08();
    swift_beginAccess();
    v11 = *(v3 + 40);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228688);
    sub_24EB10C88();
    sub_24F92CD48();
    LOBYTE(v11) = 3;
    sub_24F92CCC8();
    LOBYTE(v11) = 4;
    sub_24F92CCC8();
    LOBYTE(v11) = 5;
    sub_24F92CCC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MediaPlatform.hashValue.getter()
{
  sub_24F92D068();
  MediaPlatform.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24EB10A54@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MediaPlatform.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EB10A8C()
{
  sub_24F92D068();
  MediaPlatform.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24EB10AF4()
{
  sub_24F92D068();
  MediaPlatform.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24EB10B34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MediaPlatform.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t _s12GameStoreKit13MediaPlatformC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_24F0CD880(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  result = *(a2 + 56);
  if ((*(a1 + 56) & 1) == 0)
  {
    return (*(a1 + 48) == *(a2 + 48)) & ~result;
  }

  return result;
}

unint64_t sub_24EB10BE0()
{
  result = qword_27F228678;
  if (!qword_27F228678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228678);
  }

  return result;
}

unint64_t sub_24EB10C34()
{
  result = qword_27F228680;
  if (!qword_27F228680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228680);
  }

  return result;
}

unint64_t sub_24EB10C88()
{
  result = qword_27F228690;
  if (!qword_27F228690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228688);
    sub_24EB10D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228690);
  }

  return result;
}

unint64_t sub_24EB10D0C()
{
  result = qword_27F228698;
  if (!qword_27F228698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228698);
  }

  return result;
}

uint64_t sub_24EB10DA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EB10EC0()
{
  result = qword_27F2286A8;
  if (!qword_27F2286A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2286A8);
  }

  return result;
}

unint64_t sub_24EB10F18()
{
  result = qword_27F2286B0;
  if (!qword_27F2286B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2286B0);
  }

  return result;
}

unint64_t sub_24EB10F70()
{
  result = qword_27F2286B8;
  if (!qword_27F2286B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2286B8);
  }

  return result;
}

uint64_t sub_24EB10FC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6674616C50707061 && a2 == 0xEB000000006D726FLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA531E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA53200 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA53220 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA53240 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_24EB111D0()
{
  result = qword_27F2286C0[0];
  if (!qword_27F2286C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F2286C0);
  }

  return result;
}

uint64_t sub_24EB11224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for RematchChallengeAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24EB12568(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RematchChallengeAction);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24EB123C0(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F982BA8;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EB11468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v4[24] = type metadata accessor for RematchChallengeActionIntent();
  v4[25] = swift_task_alloc();
  type metadata accessor for ChallengeDetail(0);
  v4[26] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v6 = swift_task_alloc();
  v4[27] = v6;
  *v6 = v4;
  v6[1] = sub_24EB11588;

  return MEMORY[0x28217F228](v4 + 2, v5, v5);
}

uint64_t sub_24EB11588()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_24EB12024;
  }

  else
  {
    v2 = sub_24EB1169C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB1169C()
{
  v1 = *(v0 + 176);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  *(v0 + 136) = 256;
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  v7 = sub_24E72971C();
  *v6 = v0;
  v6[1] = sub_24EB11794;
  v8 = *(v0 + 208);
  v9 = *(v0 + 168);

  return MEMORY[0x28217F4B0](v8, v0 + 120, v9, &type metadata for ChallengeDetailDataIntent, v7, v4, v5);
}

uint64_t sub_24EB11794()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_24EB12090;
  }

  else
  {
    v2 = sub_24EB118A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB118A8()
{
  *(v0 + 248) = sub_24F92B7F8();
  *(v0 + 256) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EB11940, v2, v1);
}

uint64_t sub_24EB11940()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 264) = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_24EB119C8, 0, 0);
}

uint64_t sub_24EB119C8()
{
  *(v0 + 272) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EB11A54, v2, v1);
}

uint64_t sub_24EB11A54()
{
  v1 = v0[33];

  swift_getKeyPath();
  v0[19] = v1;
  sub_24EB125D0(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[35] = *v2;
  v0[36] = v2[1];

  return MEMORY[0x2822009F8](sub_24EB11B70, 0, 0);
}

uint64_t sub_24EB11B70()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[25];
  v4 = v0[24];
  sub_24EB12568(v0[26], v3, type metadata accessor for ChallengeDetail);
  v5 = (v3 + *(v4 + 20));
  *v5 = v2;
  v5[1] = v1;
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = swift_task_alloc();
  v0[37] = v8;
  v9 = sub_24EB125D0(&qword_27F228748, type metadata accessor for RematchChallengeActionIntent);
  *v8 = v0;
  v8[1] = sub_24EB11CA0;
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[21];

  return MEMORY[0x28217F4B0](v0 + 7, v10, v12, v11, v9, v6, v7);
}

uint64_t sub_24EB11CA0()
{
  v2 = *v1;
  v2[38] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EB12104, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[39] = v3;
    v4 = type metadata accessor for RematchChallengeActionImplementation();
    WitnessTable = swift_getWitnessTable();
    *v3 = v2;
    v3[1] = sub_24EB11E58;
    v6 = v2[20];
    v7 = v2[21];

    return sub_24F1487B0(v6, (v2 + 7), v7, v4, WitnessTable);
  }
}

uint64_t sub_24EB11E58()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_24EB121B0;
  }

  else
  {
    v2 = sub_24EB11F6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB11F6C()
{
  v1 = v0[25];
  v2 = v0[26];
  sub_24E6D0824((v0 + 7));
  sub_24EB12618(v1, type metadata accessor for RematchChallengeActionIntent);
  sub_24EB12618(v2, type metadata accessor for ChallengeDetail);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EB12024()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB12090()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB12104()
{
  v1 = v0[26];
  sub_24EB12618(v0[25], type metadata accessor for RematchChallengeActionIntent);
  sub_24EB12618(v1, type metadata accessor for ChallengeDetail);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_24EB121B0()
{
  v1 = v0[25];
  v2 = v0[26];
  sub_24E6D0824((v0 + 7));
  sub_24EB12618(v1, type metadata accessor for RematchChallengeActionIntent);
  sub_24EB12618(v2, type metadata accessor for ChallengeDetail);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EB122D0()
{
  v1 = (type metadata accessor for RematchChallengeAction() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EB123C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RematchChallengeAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB12424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for RematchChallengeAction() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EB11468(a1, v7, v1 + v6, v4);
}

uint64_t sub_24EB12518()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EB12568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EB125D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EB12618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EB12720()
{
  sub_24E77ACC8();
  result = sub_24F92C3A8();
  qword_27F228768 = result;
  return result;
}

uint64_t sub_24EB12790()
{
  sub_24E77ACC8();
  result = sub_24F92C3A8();
  qword_27F228770 = result;
  return result;
}

uint64_t sub_24EB12800()
{
  sub_24E77ACC8();
  result = sub_24F92C3A8();
  qword_27F228778 = result;
  return result;
}

uint64_t sub_24EB12870()
{
  sub_24E77ACC8();
  result = sub_24F92C3A8();
  qword_27F228780 = result;
  return result;
}

id sub_24EB12A84()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.2];
  qword_27F2287B8 = result;
  return result;
}

id sub_24EB12BDC(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  v5 = *a3;
  *a4 = *a3;

  return v5;
}

void sub_24EB12E3C(double a1, uint64_t a2, SEL *a3, void *a4)
{
  v6 = [objc_opt_self() *a3];
  v7 = [v6 colorWithAlphaComponent_];

  *a4 = v7;
}

id sub_24EB12EF0(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id ArtworkItemProvider.init(artworkLoader:config:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC12GameStoreKit19ArtworkItemProvider_artworkLoader] = a1;
  *&v3[OBJC_IVAR____TtC12GameStoreKit19ArtworkItemProvider_artworkLoaderConfig] = a2;
  v14.receiver = v3;
  v14.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = *MEMORY[0x277CC2120];
  v13[4] = sub_24E678F24;
  v13[5] = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24EB130E8;
  v13[3] = &block_descriptor_50;
  v9 = _Block_copy(v13);
  v10 = v7;
  v11 = v8;
  [v10 registerDataRepresentationForTypeIdentifier:v11 visibility:3 loadHandler:v9];
  _Block_release(v9);

  return v10;
}

id sub_24EB130E8(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_24EB13B2C, v4);

  return v5;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ArtworkItemProvider.loadDataRepresentation(forTypeIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (sub_24F92B0D8() == a1 && v11 == a2)
  {
  }

  else
  {
    v13 = sub_24F92CE08();

    if ((v13 & 1) == 0)
    {
      v14 = sub_24F92B098();
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EB13450;
      aBlock[3] = &block_descriptor_3_1;
      v15 = _Block_copy(aBlock);

      v25.receiver = v5;
      v25.super_class = ObjectType;
      v16 = objc_msgSendSuper2(&v25, sel_loadDataRepresentationForTypeIdentifier_completionHandler_, v14, v15);
      _Block_release(v15);

      return v16;
    }
  }

  v18 = [objc_opt_self() progressWithTotalUnitCount_];
  v19 = *&v5[OBJC_IVAR____TtC12GameStoreKit19ArtworkItemProvider_artworkLoaderConfig];
  v20 = [sub_24F2A1CF8() hash];
  swift_unknownObjectRelease();
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;

  sub_24F92C7F8();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = v21;
  v23[4] = v22;
  v23[5] = v20;
  v24 = v18;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v19, 1, aBlock, sub_24EB13A98, v23);

  sub_24E9BBAA8(aBlock);

  return v24;
}

uint64_t sub_24EB13450(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_24F91F4E8();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_24E71CBAC(v4, v8);
}

uint64_t sub_24EB134FC(UIImage *a1, int a2, int a3, uint64_t a4, id a5, uint64_t a6)
{
  [a5 setCompletedUnitCount_];
  swift_beginAccess();
  v9 = *(a6 + 16);
  if (v9)
  {
    if (a1)
    {

      v10 = UIImagePNGRepresentation(a1);
      if (v10)
      {
        v11 = v10;
        a1 = sub_24F91F4E8();
        v13 = v12;

LABEL_8:
        v9(a1, v13, a4);
        sub_24E824448(v9);
        sub_24E71CBAC(a1, v13);
        goto LABEL_9;
      }

      a1 = 0;
    }

    else
    {
    }

    v13 = 0xF000000000000000;
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24F92C7F8();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(v16, 1);

    sub_24E6585F8(v16);
  }

  swift_beginAccess();
  v14 = *(a6 + 16);
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  return sub_24E824448(v14);
}

void sub_24EB13744(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_24F91F268();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_24F91F4C8();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id ArtworkItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArtworkItemProvider.__allocating_init(item:typeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_24F92B098();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithItem:a1 typeIdentifier:v6];
  swift_unknownObjectRelease();

  return v7;
}

id ArtworkItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EB139D8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EB13A18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EB13A50()
{

  return swift_deallocObject();
}

uint64_t sub_24EB13AF4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24EB13B58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24EB13BB0()
{
  result = qword_27F2288B8[0];
  if (!qword_27F2288B8[0])
  {
    type metadata accessor for WriteReviewAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F2288B8);
  }

  return result;
}

uint64_t sub_24EB13C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = v41 - v3;
  v4 = sub_24F92A498();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v10 = sub_24F92A9E8();
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    v45 = v5;
    sub_24F928FD8();
    sub_24F92A758();
    sub_24EB14804();
    sub_24F92A758();
    v42 = v51;
    v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appName + 8);
    v46 = v10;
    v50 = v9;
    if (v12 && *(a1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_itemDescription + 8) && (v13 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appIcon)) != 0)
    {
      v49 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_itemDescription);
      v43 = *(v13 + 16);
      objc_allocWithZone(sub_24F921ED8());

      v49 = sub_24F921EC8();
      v14 = v49;
    }

    else
    {
      v49 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
    sub_24F92A758();
    v15 = v51;
    v16 = v52;
    ObjectType = swift_getObjectType();
    v18 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId + 8);
    v51 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId);
    v52 = v18;
    v19 = v16[7];

    v43 = v15;
    v20 = v19(&v51, ObjectType, v16);
    v22 = v21;

    v23 = swift_getObjectType();
    v24 = *(v22 + 16);
    v41[1] = v20;
    v24(&v51, v23, v22);
    if (v53 >> 60 == 7)
    {
      v25 = [v52 stringValue];
      sub_24F92B0D8();
    }

    sub_24E88D2AC(&v51);
    _s12GameStoreKit21ReviewComposerUtilityO11lockupStyle4from20AppleMediaServicesUI0d6LockupH0CAA05WriteD6ActionC_tFZ_0(a1);
    v27 = objc_allocWithZone(sub_24F921E48());

    v41[0] = v42;
    v28 = sub_24F921E38();
    sub_24F921E68();
    swift_allocObject();
    v29 = sub_24F921E58();
    v30 = sub_24F92B858();
    v31 = v48;
    (*(*(v30 - 8) + 56))(v48, 1, 1, v30);
    v32 = v45;
    v33 = v47;
    (*(v45 + 16))(v47, v50, v4);
    v34 = (*(v32 + 80) + 56) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    v36 = v4;
    v37 = v44;
    *(v35 + 4) = v29;
    *(v35 + 5) = v37;
    *(v35 + 6) = v28;
    (*(v32 + 32))(&v35[v34], v33, v36);
    v10 = v46;
    *&v35[(v6 + v34 + 7) & 0xFFFFFFFFFFFFFFF8] = v46;

    v38 = v37;
    v39 = v28;

    sub_24EA998B8(0, 0, v31, &unk_24F982CC8, v35);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v32 + 8))(v50, v36);
  }

  else
  {
    type metadata accessor for WriteReviewActionImplementation.ImplementationError();
    swift_getWitnessTable();
    v26 = swift_allocError();
    sub_24F92A9A8();
  }

  return v10;
}

uint64_t sub_24EB141D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v9 = sub_24F928AE8();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v10 = sub_24F921E28();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EB142F4, 0, 0);
}

uint64_t sub_24EB142F4()
{
  v1 = sub_24F92A328();
  v0[21] = v1;
  v7 = (*MEMORY[0x277CEE7E0] + MEMORY[0x277CEE7E0]);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_24EB143BC;
  v3 = v0[20];
  v4 = v0[11];
  v5 = v0[12];

  return v7(v3, v4, v5, v1);
}

uint64_t sub_24EB143BC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_24EB145B4;
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);
    swift_unknownObjectRelease();
    v3 = sub_24EB144F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EB144F0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 104))(v1, *MEMORY[0x277D21CA8], v3);
  sub_24F92A9C8();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EB145B4()
{
  swift_unknownObjectRelease();
  if (qword_27F2105C8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F22D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v3 = v0[6];
  v4 = v0[7];
  v0[5] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3, v4);
  sub_24F928458();
  sub_24E857CC8((v0 + 2));
  sub_24F92A5A8();

  sub_24F92A9A8();

  v6 = v0[1];

  return v6();
}

unint64_t sub_24EB14804()
{
  result = qword_27F2222A8;
  if (!qword_27F2222A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F2222A8);
  }

  return result;
}