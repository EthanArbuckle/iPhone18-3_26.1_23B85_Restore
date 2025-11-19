uint64_t ColorGrouping.groupedColor(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  if (!a1)
  {
    return 0;
  }

  ColorGrouping.profileColorGroup(for:)(v5);

  v6 = type metadata accessor for ColorGroup();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_24E77D000(v4);
    return 0;
  }

  v8 = *&v4[*(v6 + 28)];

  sub_24E77D068(v4);
  return v8;
}

uint64_t sub_24E77BE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_41;
  }

  v4 = sub_24E77BCC4();
  v6 = v5;
  v8 = v7;
  if (qword_27F20FEA0 != -1)
  {
    swift_once();
  }

  if ((sub_24F9226B8() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_27F20FEA8 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    if (sub_24F9226B8())
    {
      if (qword_27F20FEB0 != -1)
      {
        swift_once();
      }

      if (sub_24F9226B8())
      {
        if (qword_27F20FEB8 != -1)
        {
          goto LABEL_52;
        }

        goto LABEL_11;
      }
    }

LABEL_12:
    if (qword_27F20FEC0 != -1)
    {
      swift_once();
    }

    if (sub_24F9226B8())
    {
      if (qword_27F20FEC8 != -1)
      {
        swift_once();
      }

      if (sub_24F9226B8())
      {
        if (qword_27F20FED0 != -1)
        {
          swift_once();
        }

        if (sub_24F9226B8())
        {
          if (qword_27F20FED8 != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for ColorGroup();
          v10 = v9;
          v11 = qword_27F39ACD0;
LABEL_24:
          v12 = __swift_project_value_buffer(v9, v11);
          sub_24E77CF9C(v12, a2);

          v13 = *(*(v10 - 8) + 56);
LABEL_39:
          v20 = a2;
          v21 = 0;
          v22 = v10;
          goto LABEL_42;
        }
      }
    }

    if (v6 >= *(v2 + 16) && v8 >= *(v2 + 24))
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v4 > -9.22337204e18)
      {
        if (v4 < 9.22337204e18)
        {
          v14 = *(v2 + 48);
          if (*(v14 + 16))
          {
            v15 = sub_24E7728CC(v4);
            if (v17)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_40;
        }

LABEL_51:
        __break(1u);
LABEL_52:
        swift_once();
LABEL_11:
        v9 = type metadata accessor for ColorGroup();
        v10 = v9;
        v11 = qword_27F39AC58;
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_51;
    }

    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v8 <= -9.22337204e18)
    {
      goto LABEL_46;
    }

    if (v8 < 9.22337204e18)
    {
      break;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  v14 = *(v2 + 56);
  if (*(v14 + 16))
  {
    v15 = sub_24E7728CC(v8);
    if (v16)
    {
LABEL_38:
      v18 = v15;
      v19 = *(v14 + 56);
      v10 = type metadata accessor for ColorGroup();
      v25 = *(v10 - 8);
      sub_24E77CF9C(v19 + *(v25 + 72) * v18, a2);

      v13 = *(v25 + 56);
      goto LABEL_39;
    }
  }

LABEL_40:

LABEL_41:
  v23 = type metadata accessor for ColorGroup();
  v13 = *(*(v23 - 8) + 56);
  v22 = v23;
  v20 = a2;
  v21 = 1;
LABEL_42:

  return v13(v20, v21, 1, v22);
}

uint64_t ColorGrouping.deinit()
{

  return v0;
}

uint64_t ColorGrouping.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24E77C3F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F92C898();
  *a1 = result;
  return result;
}

uint64_t static ColorGroup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorGroup();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24F92CE08() & 1) == 0 || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)) || (sub_24F926C18() & 1) == 0)
  {
    return 0;
  }

  return sub_24F926C18();
}

uint64_t ColorGroup.hash(into:)()
{
  sub_24F91F6B8();
  sub_24E77D160(&qword_27F2551B0, MEMORY[0x277CC95F0]);
  sub_24F92AEF8();
  v1 = type metadata accessor for ColorGroup();
  sub_24F92B218();
  MEMORY[0x253052A00](*(v0 + *(v1 + 24)));
  sub_24F926C58();

  return sub_24F926C58();
}

uint64_t ColorGroup.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F6B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ColorGroup.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ColorGroup() + 20));

  return v1;
}

uint64_t ColorGroup.lightColor.getter()
{
  type metadata accessor for ColorGroup();
}

uint64_t ColorGroup.darkColor.getter()
{
  type metadata accessor for ColorGroup();
}

uint64_t ColorGroup.hashValue.getter()
{
  sub_24F92D068();
  sub_24F91F6B8();
  sub_24E77D160(&qword_27F2551B0, MEMORY[0x277CC95F0]);
  sub_24F92AEF8();
  v1 = type metadata accessor for ColorGroup();
  sub_24F92B218();
  MEMORY[0x253052A00](*(v0 + *(v1 + 24)));
  sub_24F926C58();
  sub_24F926C58();
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit20ButtonAnnotationItemV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F6B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24E77C834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  v10 = v8 == *v9 && *(v7 + 8) == v9[1];
  if (!v10 && (sub_24F92CE08() & 1) == 0 || *(a1 + *(a3 + 24)) != *(a2 + *(a3 + 24)) || (sub_24F926C18() & 1) == 0)
  {
    return 0;
  }

  return sub_24F926C18();
}

uint64_t sub_24E77C8E8(uint64_t a1)
{
  sub_24F92D068();
  sub_24F91F6B8();
  sub_24E77D160(&qword_27F2551B0, MEMORY[0x277CC95F0]);
  sub_24F92AEF8();
  sub_24F92B218();
  MEMORY[0x253052A00](*(v1 + *(a1 + 24)));
  sub_24F926C58();
  sub_24F926C58();
  return sub_24F92D0B8();
}

uint64_t sub_24E77C9C4(uint64_t a1, uint64_t a2)
{
  sub_24F91F6B8();
  sub_24E77D160(&qword_27F2551B0, MEMORY[0x277CC95F0]);
  sub_24F92AEF8();
  sub_24F92B218();
  MEMORY[0x253052A00](*(v2 + *(a2 + 24)));
  sub_24F926C58();

  return sub_24F926C58();
}

uint64_t sub_24E77CA9C(uint64_t a1, uint64_t a2)
{
  sub_24F92D068();
  sub_24F91F6B8();
  sub_24E77D160(&qword_27F2551B0, MEMORY[0x277CC95F0]);
  sub_24F92AEF8();
  sub_24F92B218();
  MEMORY[0x253052A00](*(v2 + *(a2 + 24)));
  sub_24F926C58();
  sub_24F926C58();
  return sub_24F92D0B8();
}

uint64_t sub_24E77CB74(uint64_t a1)
{
  v56 = type metadata accessor for ColorGroup();
  v2 = MEMORY[0x28223BE20](v56);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v45 - v4;
  MEMORY[0x28223BE20](v3);
  v9 = &v45 - v8;
  v55 = *(a1 + 16);
  if (!v55)
  {
    return MEMORY[0x277D84F98];
  }

  v10 = 0;
  v11 = 0;
  v12 = *(v6 + 80);
  v53 = v7;
  v54 = a1 + ((v12 + 32) & ~v12);
  v13 = *(v6 + 72);
  v14 = MEMORY[0x277D84F98];
  while (1)
  {
    v57 = v11 + 1;
    sub_24E77CF9C(v54 + v13 * v11, v9);
    v15 = *&v9[*(v56 + 24)];
    if (v15 < v10)
    {
      break;
    }

    while (1)
    {
      sub_24E77CF9C(v9, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v14;
      v18 = sub_24E7728CC(v10);
      v19 = *(v14 + 16);
      v20 = (v17 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v22 = v17;
      if (*(v14 + 24) >= v21)
      {
        break;
      }

      sub_24E898D44(v21, isUniquelyReferenced_nonNull_native);
      v14 = v58;
      v23 = sub_24E7728CC(v10);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_46;
      }

      v18 = v23;
      if ((v22 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_11:
      sub_24E77D490(v5, *(v14 + 56) + v18 * v13);
      if (v10 == v15)
      {
        goto LABEL_35;
      }

LABEL_32:
      v42 = __OFADD__(v10++, 1);
      if (v42)
      {
        goto LABEL_41;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v17 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C040);
    v52 = sub_24F92CB28();
    if (*(v14 + 16))
    {
      v25 = (v52 + 64);
      v26 = (v14 + 64);
      v27 = ((1 << *(v52 + 32)) + 63) >> 6;
      v46 = v14 + 64;
      if (v52 != v14 || v25 >= &v26[8 * v27])
      {
        memmove(v25, v26, 8 * v27);
      }

      v28 = 0;
      *(v52 + 16) = *(v14 + 16);
      v29 = 1 << *(v14 + 32);
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v31 = v30 & *(v14 + 64);
      v32 = (v29 + 63) >> 6;
      v47 = v32;
      if (v31)
      {
        do
        {
          v33 = __clz(__rbit64(v31));
          v51 = (v31 - 1) & v31;
LABEL_27:
          v36 = v33 | (v28 << 6);
          v37 = *(v14 + 56);
          v38 = *(*(v14 + 48) + 8 * v36);
          v48 = v36;
          v49 = v38;
          v50 = v36 * v13;
          v39 = v53;
          sub_24E77CF9C(v37 + v36 * v13, v53);
          v40 = v52;
          *(*(v52 + 48) + 8 * v48) = v49;
          sub_24E77D42C(v39, *(v40 + 56) + v50);
          v32 = v47;
          v31 = v51;
        }

        while (v51);
      }

      v34 = v28;
      while (1)
      {
        v28 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_45;
        }

        if (v28 >= v32)
        {
          break;
        }

        v35 = *(v46 + 8 * v28);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v51 = (v35 - 1) & v35;
          goto LABEL_27;
        }
      }
    }

    v14 = v52;
    if (v22)
    {
      goto LABEL_11;
    }

LABEL_30:
    *(v14 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(*(v14 + 48) + 8 * v18) = v10;
    sub_24E77D42C(v5, *(v14 + 56) + v18 * v13);
    v41 = *(v14 + 16);
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_42;
    }

    *(v14 + 16) = v43;
    if (v10 != v15)
    {
      goto LABEL_32;
    }

LABEL_35:
    sub_24E77D068(v9);
    v10 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_44;
    }

    v11 = v57;
    if (v57 == v55)
    {
      return v14;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24E77CF9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E77D000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E77D068(uint64_t a1)
{
  v2 = type metadata accessor for ColorGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E77D160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E77D20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
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

uint64_t sub_24E77D2E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F6B8();
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

uint64_t sub_24E77D39C()
{
  result = sub_24F91F6B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E77D42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E77D490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorGroup();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E77D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = sub_24F920418();
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8) - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048);
  v6[39] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C050);
  v6[40] = v8;
  v6[41] = *(v8 - 8);
  v6[42] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v6[43] = v9;
  v10 = *(v9 - 8);
  v6[44] = v10;
  v6[45] = *(v10 + 64);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E77D79C, 0, 0);
}

uint64_t sub_24E77D79C()
{

  sub_24F920EF8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  *(v0 + 384) = v1;
  v2 = swift_task_alloc();
  *(v0 + 392) = v2;
  *v2 = v0;
  v2[1] = sub_24E77D884;

  return MEMORY[0x28217F228](v0 + 56, v1, v1);
}

uint64_t sub_24E77D884()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_24E77DB94;
  }

  else
  {
    v2 = sub_24E77D998;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E77D998()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_24E77DA80;
  v4 = v0[47];

  return MEMORY[0x282164988](v4, v1, v2);
}

uint64_t sub_24E77DA80()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_24E77EFD4;
  }

  else
  {
    v2 = sub_24E77DDE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E77DB94()
{
  v1 = v0[50];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameActivityInstanceDataIntentImplementation error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[47];
  v11 = v4;
  v13 = v0[43];
  v12 = v0[44];

  swift_willThrow();
  (*(v12 + 8))(v10, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E77DDE4()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v6 = v0[39];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[24];
  v17 = v0[23];
  v18 = v0[25];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v10 = sub_24F921038();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  (*(v4 + 16))(v1, v2, v5);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  (*(v4 + 32))(v12 + v11, v1, v5);
  v13 = (v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v17;
  v13[1] = v9;
  v13[2] = v18;
  v13[3] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C058);
  sub_24E77FF6C(&qword_27F21C060);
  sub_24E77FF6C(&qword_27F21C068);
  sub_24F920A28();
  v14 = swift_task_alloc();
  v0[53] = v14;
  *v14 = v0;
  v14[1] = sub_24E77E02C;
  v15 = v0[40];

  return MEMORY[0x282164EA8](v15);
}

uint64_t sub_24E77E02C(uint64_t a1)
{
  v3 = *v2;
  v3[54] = a1;
  v3[55] = v1;

  if (v1)
  {
    (*(v3[41] + 8))(v3[42], v3[40]);

    return MEMORY[0x2822009F8](sub_24E77F22C, 0, 0);
  }

  else
  {
    (*(v3[41] + 8))(v3[42], v3[40]);
    v4 = swift_task_alloc();
    v3[56] = v4;
    *v4 = v3;
    v4[1] = sub_24E77E1DC;
    v5 = v3[48];

    return MEMORY[0x28217F228](v3 + 17, v5, v5);
  }
}

uint64_t sub_24E77E1DC()
{
  *(*v1 + 456) = v0;

  if (v0)
  {

    v2 = sub_24E77E51C;
  }

  else
  {
    v2 = sub_24E77E2F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E77E2F8()
{
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = swift_task_alloc();
  v0[58] = v3;
  *v3 = v0;
  v3[1] = sub_24E77E3E0;
  v4 = v0[54];

  return MEMORY[0x282164990](v4, v1, v2);
}

uint64_t sub_24E77E3E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v4 = sub_24E77F47C;
  }

  else
  {
    v4 = sub_24E77E76C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E77E51C()
{
  v1 = v0[57];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameActivityInstanceDataIntentImplementation error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[47];
  v11 = v4;
  v13 = v0[43];
  v12 = v0[44];

  swift_willThrow();
  (*(v12 + 8))(v10, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E77E76C()
{
  v76 = v0;
  v1 = v0[59];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[34];
    v4 = v0[29];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v73 = *(v3 + 72);
    v6 = (v4 + 32);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = v0[38];
      v9 = v0[36];
      v10 = v0[28];
      sub_24E77FFBC(v5, v8);
      sub_24E78002C(v8, v9);
      if ((*(v4 + 48))(v9, 1, v10) == 1)
      {
        sub_24E601704(v0[36], &qword_27F2142B8);
      }

      else
      {
        v11 = *v6;
        (*v6)(v0[33], v0[36], v0[28]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_24E6177B4(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_24E6177B4(v12 > 1, v13 + 1, 1, v7);
        }

        v14 = v0[33];
        v15 = v0[28];
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13], v14, v15);
      }

      v5 += v73;
      --v2;
    }

    while (v2);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v16 = *(v7 + 2);
  if (v16)
  {
    v17 = 0;
    v18 = v0[29];
    while (v17 < *(v7 + 2))
    {
      v20 = v0[25];
      v19 = v0[26];
      (*(v18 + 16))(v0[32], &v7[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v17], v0[28]);
      if (sub_24F9203E8() == v20 && v21 == v19)
      {

LABEL_24:

        (*(v0[29] + 32))(v0[37], v0[32], v0[28]);
        v24 = 0;
        goto LABEL_25;
      }

      v23 = sub_24F92CE08();

      if (v23)
      {
        goto LABEL_24;
      }

      ++v17;
      (*(v18 + 8))(v0[32], v0[28]);
      if (v16 == v17)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_22:

  v24 = 1;
LABEL_25:
  v25 = v0[37];
  v26 = v0[35];
  v27 = v0[28];
  v28 = v0[29];
  v29 = *(v28 + 56);
  v29(v25, v24, 1, v27);
  sub_24E77FFBC(v25, v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v30 = v0[37];
    sub_24E601704(v0[35], &qword_27F2142B8);
    sub_24E78009C();
    v7 = swift_allocError();
    swift_willThrow();
    sub_24E601704(v30, &qword_27F2142B8);
    if (qword_27F211420 == -1)
    {
LABEL_27:
      v31 = sub_24F9220D8();
      __swift_project_value_buffer(v31, qword_27F39E8B0);
      v32 = v7;
      v33 = sub_24F9220B8();
      v34 = sub_24F92BDB8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        v37 = v7;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v38;
        *v36 = v38;
        _os_log_impl(&dword_24E5DD000, v33, v34, "GameActivityInstanceDataIntentImplementation error: %@", v35, 0xCu);
        sub_24E601704(v36, &qword_27F227B20);
        MEMORY[0x2530542D0](v36, -1, -1);
        MEMORY[0x2530542D0](v35, -1, -1);
      }

      v39 = v0[47];
      v41 = v0[43];
      v40 = v0[44];

      swift_willThrow();
      (*(v40 + 8))(v39, v41);

      v42 = v0[1];
      goto LABEL_36;
    }

LABEL_40:
    swift_once();
    goto LABEL_27;
  }

  v72 = (v0[29] + 32);
  v74 = v29;
  v71 = *v72;
  (*v72)(v0[31], v0[35], v0[28]);
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v43 = v0[30];
  v44 = v0[31];
  v45 = v0[28];
  v46 = v0[29];
  v47 = sub_24F9220D8();
  __swift_project_value_buffer(v47, qword_27F39E8B0);
  (*(v46 + 16))(v43, v44, v45);
  v48 = sub_24F9220B8();
  v49 = sub_24F92BDB8();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v0[47];
  v52 = v0[43];
  v53 = v0[44];
  v54 = v0[37];
  v56 = v0[29];
  v55 = v0[30];
  v57 = v0[28];
  if (v50)
  {
    v70 = v0[37];
    v58 = swift_slowAlloc();
    v67 = v49;
    v59 = swift_slowAlloc();
    v75 = v59;
    *v58 = 136315138;
    v68 = v52;
    v69 = v51;
    v60 = sub_24F9203E8();
    v62 = v61;
    (*(v56 + 8))(v55, v57);
    v63 = sub_24E7620D4(v60, v62, &v75);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_24E5DD000, v48, v67, "GameActivityInstanceDataIntentImplementation returning activity instance %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x2530542D0](v59, -1, -1);
    MEMORY[0x2530542D0](v58, -1, -1);

    sub_24E601704(v70, &qword_27F2142B8);
    (*(v53 + 8))(v69, v68);
  }

  else
  {

    (*(v56 + 8))(v55, v57);
    sub_24E601704(v54, &qword_27F2142B8);
    (*(v53 + 8))(v51, v52);
  }

  v64 = v0[28];
  v65 = v0[22];
  v71(v65, v0[31], v64);
  v74(v65, 0, 1, v64);

  v42 = v0[1];
LABEL_36:

  return v42();
}

uint64_t sub_24E77EFD4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[52];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameActivityInstanceDataIntentImplementation error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[47];
  v11 = v4;
  v13 = v0[43];
  v12 = v0[44];

  swift_willThrow();
  (*(v12 + 8))(v10, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E77F22C()
{
  v1 = v0[55];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameActivityInstanceDataIntentImplementation error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[47];
  v11 = v4;
  v13 = v0[43];
  v12 = v0[44];

  swift_willThrow();
  (*(v12 + 8))(v10, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E77F47C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v1 = v0[60];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameActivityInstanceDataIntentImplementation error: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[47];
  v11 = v4;
  v13 = v0[43];
  v12 = v0[44];

  swift_willThrow();
  (*(v12 + 8))(v10, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E77F6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a2;
  v8[14] = a4;
  v8[12] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v10 = swift_task_alloc();
  v8[17] = v10;
  *v10 = v8;
  v10[1] = sub_24E77F79C;

  return MEMORY[0x28217F228](v8 + 7, v9, v9);
}

uint64_t sub_24E77F79C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24E77F8B0;
  }

  else
  {
    v2 = sub_24E77F8C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E77F8C8()
{
  v2 = v0[15];
  v1 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C078);
  v5 = sub_24F920368();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v0[19] = v8;
  *(v8 + 16) = xmmword_24F93DE60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93DE60;
  *(v8 + v7) = v9;
  *(v9 + 32) = v2;
  *(v9 + 40) = v1;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D0CAA0], v5);

  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_24E77FAD4;
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];

  return MEMORY[0x282164970](v13, v11, v8, 0, v12, v3, v4);
}

uint64_t sub_24E77FAD4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24E77FBF0;
  }

  else
  {

    v2 = sub_24E646B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E77FBF0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E77FC5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E614970;

  return sub_24E77D50C(a1, v6, v7, v8, v9, a3);
}

uint64_t sub_24E77FD24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24E77FE14(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v2 + 16);
  v10 = (v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_24E614970;

  return sub_24E77F6D4(a1, a2, v9, v2 + v8, v11, v12, v13, v14);
}

uint64_t sub_24E77FF6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C058);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E77FFBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E78002C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E78009C()
{
  result = qword_27F21C070;
  if (!qword_27F21C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C070);
  }

  return result;
}

unint64_t sub_24E780104()
{
  result = qword_27F21C080;
  if (!qword_27F21C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C080);
  }

  return result;
}

uint64_t sub_24E7801B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C090);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v6 = type metadata accessor for AccessPointHighlight(0);
  v5[34] = v6;
  v5[35] = *(v6 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v7 = type metadata accessor for AccessPointContainer(0);
  v5[38] = v7;
  v5[39] = *(v7 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = type metadata accessor for InGameBannerPageConstructionIntent();
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v5[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  v5[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v5[45] = swift_task_alloc();
  v8 = type metadata accessor for Player(0);
  v5[46] = v8;
  v9 = *(v8 - 8);
  v5[47] = v9;
  v5[48] = *(v9 + 64);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E78046C, 0, 0);
}

uint64_t sub_24E78046C()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[28];
  v5 = type metadata accessor for InGameBannerRequiredData();
  v0[51] = v5;
  sub_24E60169C(v4 + *(v5 + 20), v3, &unk_27F23E1F0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[45];
    v7 = &unk_27F23E1F0;
LABEL_5:
    sub_24E601704(v6, v7);
    goto LABEL_7;
  }

  v8 = v0[44];
  v9 = v0[28];
  sub_24E781624(v0[45], v0[50], type metadata accessor for Player);
  sub_24E60169C(v9 + *(v5 + 40), v8, &qword_27F216FE0);
  v10 = type metadata accessor for Game();
  v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
  v12 = v0[50];
  if (v11 == 1)
  {
    v13 = v0[44];
    sub_24E78168C(v0[50], type metadata accessor for Player);
    v7 = &qword_27F216FE0;
    v6 = v13;
    goto LABEL_5;
  }

  v15 = v0[48];
  v14 = v0[49];
  v16 = v0[47];
  v17 = v0[43];
  v18 = v0[44];
  v19 = v0[29];
  v20 = v18[1];
  v32 = *v18;

  sub_24E78168C(v18, type metadata accessor for Game);
  v21 = sub_24F92B858();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  sub_24E7816EC(v12, v14, type metadata accessor for Player);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_24E781624(v14, v24 + v22, type metadata accessor for Player);
  v25 = (v24 + v23);
  *v25 = v32;
  v25[1] = v20;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v19;

  sub_24F77BBC8(0, 0, v17, &unk_24F9549E8, v24);

  sub_24E601704(v17, &unk_27F21B570);
  sub_24E78168C(v12, type metadata accessor for Player);
LABEL_7:
  v26 = v0[42];
  v28 = v0[30];
  v27 = v0[31];
  sub_24E7816EC(v0[28], v26 + *(v0[41] + 20), type metadata accessor for InGameBannerRequiredData);
  *v26 = v28;
  v26[1] = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);

  v30 = swift_task_alloc();
  v0[52] = v30;
  *v30 = v0;
  v30[1] = sub_24E780834;

  return MEMORY[0x28217F228](v0 + 2, v29, v29);
}

uint64_t sub_24E780834()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_24E780B58;
  }

  else
  {
    v2 = sub_24E780948;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E780948()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[54] = v3;
  v4 = sub_24E7815C8(&qword_27F21C098, type metadata accessor for InGameBannerPageConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24E780A44;
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];
  v8 = v0[29];

  return MEMORY[0x28217F4B0](v7, v5, v8, v6, v4, v1, v2);
}

uint64_t sub_24E780A44()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_24E781334;
  }

  else
  {
    v2 = sub_24E780C6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E780B58()
{
  sub_24E78168C(*(v0 + 336), type metadata accessor for InGameBannerPageConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E780C6C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v3 = *(v2 + 28);
  v4 = *(v1 + v3);
  if (v4[2] >= 2uLL)
  {
    v5 = *(v0 + 280);
    sub_24E615E00((v4 + 9), v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    v6 = swift_dynamicCast();
    v7 = *(v5 + 56);
    if (v6)
    {
      v8 = *(v0 + 408);
      v9 = *(v0 + 296);
      v10 = *(v0 + 264);
      v11 = *(v0 + 224);
      v7(v10, 0, 1, *(v0 + 272));
      sub_24E781624(v10, v9, type metadata accessor for AccessPointHighlight);
      v12 = (v11 + *(v8 + 52));
      v13 = v12[1];
      if (v13)
      {
        v14 = *v12;
        v15 = (*(v0 + 296) + *(*(v0 + 272) + 28));

        sub_24E601704(v15, &qword_27F21C0A0);
        *v15 = v14;
        v15[1] = v13;
        v16 = type metadata accessor for AccessPointIconType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
      }

      else
      {
        v18 = (*(v0 + 224) + *(*(v0 + 408) + 32));
        v19 = v18[1];
        if (v19 >> 60 != 15)
        {
          v20 = *v18;
          v21 = (*(v0 + 296) + *(*(v0 + 272) + 28));
          sub_24E71CBC0(*v18, v19);
          sub_24E601704(v21, &qword_27F21C0A0);
          *v21 = v20;
          v21[1] = v19;
          v22 = type metadata accessor for AccessPointIconType(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
        }
      }

      v23 = *(v0 + 296);
      *(v0 + 200) = *(v0 + 272);
      *(v0 + 208) = sub_24E7815C8(&qword_27F21AA30, type metadata accessor for AccessPointHighlight);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
      sub_24E7816EC(v23, boxed_opaque_existential_1, type metadata accessor for AccessPointHighlight);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24ECDE1D8(v4);
      }

      if (v4[2] < 2uLL)
      {
        __break(1u);
LABEL_24:
        v4 = sub_24ECDE1D8(v4);
LABEL_16:
        result = sub_24E78168C(*(v0 + 336), type metadata accessor for InGameBannerPageConstructionIntent);
        if (v4[2] < 3uLL)
        {
          __break(1u);
          return result;
        }

        v40 = *(v0 + 288);
        __swift_destroy_boxed_opaque_existential_1((v4 + 14));
        sub_24E612C80((v0 + 136), (v4 + 14));
        *(v1 + v3) = v4;
        v27 = type metadata accessor for AccessPointHighlight;
        v26 = v40;
        goto LABEL_18;
      }

      v25 = *(v0 + 296);
      __swift_destroy_boxed_opaque_existential_1((v4 + 9));
      sub_24E612C80((v0 + 176), (v4 + 9));
      *(v1 + v3) = v4;
      sub_24E78168C(v25, type metadata accessor for AccessPointHighlight);
    }

    else
    {
      v17 = *(v0 + 264);
      v7(v17, 1, 1, *(v0 + 272));
      sub_24E601704(v17, &qword_27F21C090);
    }
  }

  if (v4[2] >= 4uLL)
  {
    sub_24E615E00((v4 + 14), v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v41 = *(v0 + 272);
      v42 = *(v0 + 280);
      v43 = *(v0 + 256);
      sub_24E78168C(*(v0 + 336), type metadata accessor for InGameBannerPageConstructionIntent);
      (*(v42 + 56))(v43, 1, 1, v41);
      sub_24E601704(v43, &qword_27F21C090);
      goto LABEL_20;
    }

    v28 = *(v0 + 408);
    v29 = *(v0 + 288);
    v30 = *(v0 + 272);
    v31 = *(v0 + 256);
    v32 = *(v0 + 224);
    (*(*(v0 + 280) + 56))(v31, 0, 1, v30);
    sub_24E781624(v31, v29, type metadata accessor for AccessPointHighlight);
    v33 = (v29 + *(v30 + 28));
    sub_24E601704(v33, &qword_27F21C0A0);
    v34 = (v32 + *(v28 + 48));
    v35 = *v34;
    v36 = v34[1];
    *v33 = *v34;
    v33[1] = v36;
    v37 = type metadata accessor for AccessPointIconType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v37 - 8) + 56))(v33, 0, 1, v37);
    *(v0 + 160) = v30;
    *(v0 + 168) = sub_24E7815C8(&qword_27F21AA30, type metadata accessor for AccessPointHighlight);
    v38 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_24E7816EC(v29, v38, type metadata accessor for AccessPointHighlight);
    sub_24E781610(v35, v36);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  v26 = *(v0 + 336);
  v27 = type metadata accessor for InGameBannerPageConstructionIntent;
LABEL_18:
  sub_24E78168C(v26, v27);
LABEL_20:
  v44 = *(v0 + 312);
  v45 = *(v0 + 304);
  v46 = *(v0 + 216);
  sub_24E781624(*(v0 + 320), v46, type metadata accessor for AccessPointContainer);
  (*(v44 + 56))(v46, 0, 1, v45);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_24E781334()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24E78168C(*(v0 + 336), type metadata accessor for InGameBannerPageConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E781450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_24E614970;

  return sub_24F115D78(a4, a5, a6, a7);
}

uint64_t sub_24E781504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24E6541E4;

  return sub_24E7801B0(a1, a2, a3, v9, v8);
}

uint64_t sub_24E7815C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E781610(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24E71CBC0(a1, a2);
  }

  return a1;
}

uint64_t sub_24E781624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E78168C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7816EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E781754()
{
  v1 = type metadata accessor for Player(0);
  v2 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = v1[6];
  v5 = sub_24F9289E8();
  v29 = *(v5 - 8);
  v28 = *(v29 + 8);
  v28(v3 + v4, v5);

  if (*(v3 + v1[9] + 8) != 1)
  {
  }

  v6 = v3 + v1[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle();
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v6 + v10, 1, v5))
      {
        v28(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v11 + v12, 1, v5))
      {
        v28(v11 + v12, v5);
      }
    }
  }

  if (*(v3 + v1[15] + 8))
  {
  }

  v13 = v3 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game();
    v28(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v29 + 48))(v13 + v16, 1, v5))
    {
      v28(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v3 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game();
    v28(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v29 + 48))(v20 + v23, 1, v5))
    {
      v28(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24E781DE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Player(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24E614970;

  return sub_24E781450(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t ChartsShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t ChartsShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x444965676170;
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 88) = 0x73656D6167;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A8);
  *(inited + 136) = sub_24E7828F8(&qword_27F21C0B0, &qword_27F21C0B8);
  *(inited + 104) = v5;

  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_24E78210C()
{
  if (*v0)
  {
    return 0x73656D6167;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E782140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656D6167 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E782214(uint64_t a1)
{
  v2 = sub_24E7828A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E782250(uint64_t a1)
{
  v2 = sub_24E7828A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChartsShelfIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0C0);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7828A4();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A8);
    sub_24E7828F8(&qword_27F21C0D0, &qword_27F21C0D8);
    sub_24F92CD48();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t ChartsShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7828A4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A8);
  v16 = 1;
  sub_24E7828F8(&qword_27F21C0E8, &qword_27F21C0F0);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E782718@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x444965676170;
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 88) = 0x73656D6167;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A8);
  *(inited + 136) = sub_24E7828F8(&qword_27F21C0B0, &qword_27F21C0B8);
  *(inited + 104) = v5;

  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_24E7828A4()
{
  result = qword_27F21C0C8;
  if (!qword_27F21C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C0C8);
  }

  return result;
}

uint64_t sub_24E7828F8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C0A8);
    sub_24E782980(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E782980(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GameMAPI();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E7829E8()
{
  result = qword_27F21C0F8;
  if (!qword_27F21C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C0F8);
  }

  return result;
}

unint64_t sub_24E782A40()
{
  result = qword_27F21C100;
  if (!qword_27F21C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C100);
  }

  return result;
}

unint64_t sub_24E782A98()
{
  result = qword_27F21C108;
  if (!qword_27F21C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C108);
  }

  return result;
}

uint64_t sub_24E782B00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LeaderboardEntry();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E782C44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for LeaderboardEntry();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E782D94()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LeaderboardEntry();
    if (v1 <= 0x3F)
    {
      sub_24E68857C(319, &qword_27F21C120, &qword_27F213840, &unk_24F93B3C0, MEMORY[0x277D21D28]);
      if (v2 <= 0x3F)
      {
        sub_24E6BCB04();
        if (v3 <= 0x3F)
        {
          sub_24E68857C(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
          if (v4 <= 0x3F)
          {
            sub_24E61C938();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24E782EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E782F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E783018(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7830E8()
{
  sub_24E68857C(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24E783210(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7850C4();
  sub_24F92D128();
  LOBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for LeaderboardEntryTableRow(0);
    LOBYTE(v11) = 1;
    type metadata accessor for LeaderboardEntry();
    sub_24E782EDC(&qword_27F21C1C8, type metadata accessor for LeaderboardEntry);
    sub_24F92CD48();
    LOBYTE(v11) = *(v3 + *(v9 + 24));
    v12 = 2;
    sub_24E785334();
    sub_24F92CD48();
    v11 = *(v3 + *(v9 + 28));
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0);
    sub_24E785388(&qword_27F21C1D8, sub_24E785400);
    sub_24F92CD48();
    LOBYTE(v11) = 4;
    sub_24F92CCA8();
    LOBYTE(v11) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v11) = 6;
    sub_24F929608();
    sub_24E782EDC(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    LOBYTE(v11) = 7;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E783644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for LeaderboardEntry();
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C180);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for LeaderboardEntryTableRow(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v15[*(v13 + 36)];
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  v45 = v16;
  sub_24E61DA68(&v48, v16, qword_27F21B590);
  v17 = v12[10];
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v46 = v17;
  v44 = v15;
  v19(&v15[v17], 1, 1, v18);
  v20 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24E7850C4();
  v42 = v11;
  v21 = v43;
  sub_24F92D108();
  if (v21)
  {
    v23 = v45;
    v22 = v46;
    __swift_destroy_boxed_opaque_existential_1(v47);
    v24 = v44;

    sub_24E601704(v23, qword_27F24EC90);
    return sub_24E601704(v24 + v22, &qword_27F213E68);
  }

  else
  {
    v38 = v18;
    v43 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v51 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v25 = v49;
    v26 = v44;
    *v44 = v48;
    *(v26 + 16) = v25;
    *(v26 + 32) = v50;
    LOBYTE(v48) = 1;
    sub_24E782EDC(&qword_27F21C190, type metadata accessor for LeaderboardEntry);
    sub_24F92CC68();
    v27 = v40;
    v28 = v45;
    sub_24E6C2F10(v8, v26 + v12[5]);
    v51 = 2;
    sub_24E785178();
    sub_24F92CC68();
    *(v26 + v12[6]) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0);
    v51 = 3;
    sub_24E785388(&qword_27F21C1A8, sub_24E7851CC);
    sub_24F92CC68();
    *(v26 + v12[7]) = v48;
    LOBYTE(v48) = 4;
    v29 = sub_24F92CBC8();
    v30 = (v26 + v12[8]);
    *v30 = v29;
    v30[1] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v51 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v48, v28, qword_27F24EC90);
    LOBYTE(v48) = 6;
    sub_24E782EDC(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v43, v26 + v46, &qword_27F213E68);
    LOBYTE(v48) = 7;
    v32 = sub_24F92CBC8();
    v43 = v33;
    v34 = v32;
    v35 = (v26 + v12[11]);
    (*(v27 + 8))(v42, v41);
    v36 = v43;
    *v35 = v34;
    v35[1] = v36;
    sub_24E7852CC(v26, v39, type metadata accessor for LeaderboardEntryTableRow);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_24E785118(v26, type metadata accessor for LeaderboardEntryTableRow);
  }
}

unint64_t sub_24E783E54()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x6974616D6F747561;
  }

  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74704F7375636F66;
  if (v1 != 2)
  {
    v5 = 0x654D6C6169636F73;
  }

  if (*v0)
  {
    v2 = 0x7972746E65;
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

uint64_t sub_24E783F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7859D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E783F7C(uint64_t a1)
{
  v2 = sub_24E7850C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E783FB8(uint64_t a1)
{
  v2 = sub_24E7850C4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E784024@<X0>(char a1@<W1>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x65756C6156776172;
  v5 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0xE600000000000000;
      v7 = 0x72656461656CLL;
    }

    else
    {
      v6 = 0xEB00000000726579;
      v7 = 0x616C506C61636F6CLL;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v7 = 1701736302;
  }

  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v7;
  *(inited + 56) = v6;
  v9 = sub_24E607D0C(inited);
  swift_setDeallocating();
  sub_24E601704(v5, &qword_27F212F18);
  v10 = sub_24E80FFAC(v9);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v10;
  return result;
}

uint64_t sub_24E78417C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x72656461656CLL;
  if (v2 != 1)
  {
    v4 = 0x616C506C61636F6CLL;
    v3 = 0xEB00000000726579;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656461656CLL;
  if (*a2 != 1)
  {
    v8 = 0x616C506C61636F6CLL;
    v7 = 0xEB00000000726579;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
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

uint64_t sub_24E784280()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E784320()
{
  sub_24F92B218();
}

uint64_t sub_24E7843AC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E784448@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E785488();
  *a1 = result;
  return result;
}

void sub_24E784478(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x72656461656CLL;
  if (v2 != 1)
  {
    v5 = 0x616C506C61636F6CLL;
    v4 = 0xEB00000000726579;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24E7845A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = type metadata accessor for BaseLeaderboardRowView();
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C158);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C160);
  MEMORY[0x28223BE20](v44);
  v12 = &v43 - v11;
  v43 = type metadata accessor for LeaderboardEntryTableRow(0);
  sub_24E7852CC(a1 + *(v43 + 20), v6, type metadata accessor for LeaderboardEntry);
  sub_24E7849E4(a1, v47);
  v13 = v2[2];
  v49[3] = v2[3];
  v14 = v2[3];
  v49[4] = v2[4];
  v15 = v2[4];
  v49[5] = v2[5];
  v16 = v2[5];
  v49[6] = v2[6];
  v17 = *v2;
  v49[1] = v2[1];
  v18 = v2[1];
  v49[2] = v2[2];
  v49[0] = *v2;
  v19 = &v6[v4[5]];
  v20 = *v48;
  *(v19 + 4) = v47[4];
  *(v19 + 5) = v20;
  v21 = v47[1];
  *v19 = v47[0];
  *(v19 + 1) = v21;
  v22 = v47[3];
  *(v19 + 2) = v47[2];
  *(v19 + 3) = v22;
  *(v19 + 95) = *&v48[15];
  v23 = &v6[v4[6]];
  *(v23 + 4) = v15;
  *(v23 + 5) = v16;
  *(v23 + 6) = v2[6];
  *v23 = v17;
  *(v23 + 1) = v18;
  *(v23 + 2) = v13;
  *(v23 + 3) = v14;
  v24 = v4[7];
  *&v6[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  sub_24E784FF8(v49, &v46);
  sub_24E782EDC(&qword_27F21C168, type metadata accessor for BaseLeaderboardRowView);
  sub_24F926B78();
  sub_24E785118(v6, type metadata accessor for BaseLeaderboardRowView);
  (*(v8 + 16))(v12, v10, v7);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C170);
  v26 = &v12[*(v25 + 40)];
  *v26 = sub_24F923398() & 1;
  *(v26 + 1) = v27;
  v26[16] = v28 & 1;
  v29 = &v12[*(v25 + 44)];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v30 = qword_27F24E488;
  v31 = sub_24F923398();
  v33 = v32;
  v35 = v34;
  v36 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C178) + 36)];
  *v36 = v30;
  v36[8] = v31 & 1;
  *(v36 + 2) = v33;
  v36[24] = v35 & 1;
  LOBYTE(v30) = sub_24F923398();
  v38 = v37;
  v40 = v39;
  (*(v8 + 8))(v10, v7);
  v41 = &v12[*(v44 + 36)];
  *v41 = v30 & 1;
  *(v41 + 1) = v38;
  v41[16] = v40 & 1;
  sub_24E992DD0(*(a1 + *(v43 + 28)));
  return sub_24E78505C(v12);
}

double sub_24E7849E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LeaderboardEntryTableRow(0);
  v5 = a1 + v4[5];
  v6 = *(v5 + *(type metadata accessor for LeaderboardEntry() + 24));
  v7 = sub_24E784BFC();
  v23 = v8;
  if (v6 <= 99 && *(a1 + v4[6]) == 2)
  {
    v9._object = 0x800000024FA46BF0;
    v9._countAndFlagsBits = 0xD00000000000002FLL;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v11 = localizedString(_:comment:)(v9, v10);
    countAndFlagsBits = v11._countAndFlagsBits;
    object = v11._object;
  }

  else
  {
    countAndFlagsBits = sub_24F37B534();
    object = v13;
  }

  v14 = (a1 + v4[8]);
  v15 = *v14;
  v16 = v14[1];
  if (*(a1 + v4[6]))
  {
    if (*(a1 + v4[6]) == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_24F92CE08();
    }

    v19 = v23;

    v20 = sub_24F92CE08();

    if (v20)
    {
      v18 = 0;
    }

    else
    {
      v18 = 256;
    }
  }

  else
  {
    v17 = sub_24F92CE08();

    swift_bridgeObjectRelease_n();
    v18 = 0;
    v19 = v23;
  }

  *a2 = v6 < 100;
  *(a2 + 8) = v7;
  *(a2 + 16) = v19;
  *(a2 + 24) = countAndFlagsBits;
  *(a2 + 32) = object;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = 0;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = v17 & 1;
  *(a2 + 97) = v18;
  return result;
}

uint64_t sub_24E784BFC()
{
  v1 = type metadata accessor for LeaderboardEntryTableRow(0);
  v2 = v0 + *(v1 + 20);
  v3 = type metadata accessor for LeaderboardEntry();
  v4 = *(v2 + *(v3 + 24));
  if (v4 > 99)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    strcpy((inited + 32), "formattedRank");
    *(inited + 46) = -4864;
    v17.value.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    isa = v17.value.super.super.isa;
    v17.is_nil = 0;
    v10 = localizedStringForDecimal(_:_:)(v17, v9);

    if (v10.value._object)
    {
      countAndFlagsBits = v10.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    object = 0xE000000000000000;
    if (v10.value._object)
    {
      object = v10.value._object;
    }

    *(inited + 48) = countAndFlagsBits;
    *(inited + 56) = object;
    v13 = sub_24E6086DC(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F219F90);
    v14._object = 0x800000024FA46C20;
    v14._countAndFlagsBits = 0xD00000000000002DLL;
    v6 = localizedString(_:with:)(v14, v13)._countAndFlagsBits;
    goto LABEL_11;
  }

  if (*(v0 + *(v1 + 24)) != 2)
  {
    sub_24F37B534();
    v6 = v15;
LABEL_11:

    return v6;
  }

  v5 = v2 + *(v3 + 20);
  v6 = *(v5 + *(type metadata accessor for Player(0) + 28));

  return v6;
}

uint64_t sub_24E784DB0()
{
  v1 = MEMORY[0x28223BE20](v0);
  sub_24E7852CC(v1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeaderboardEntryTableRowComponent);
  sub_24E782EDC(&qword_27F21C138, type metadata accessor for LeaderboardEntryTableRowComponent);
  return sub_24F9218E8();
}

unint64_t sub_24E784E8C()
{
  result = qword_27F21C140;
  if (!qword_27F21C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C140);
  }

  return result;
}

uint64_t sub_24E78505C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E7850C4()
{
  result = qword_27F21C188;
  if (!qword_27F21C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C188);
  }

  return result;
}

uint64_t sub_24E785118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E785178()
{
  result = qword_27F21C198;
  if (!qword_27F21C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C198);
  }

  return result;
}

uint64_t sub_24E785200(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213840);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E785278()
{
  result = qword_27F21C1B8;
  if (!qword_27F21C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C1B8);
  }

  return result;
}

uint64_t sub_24E7852CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E785334()
{
  result = qword_27F21C1D0;
  if (!qword_27F21C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C1D0);
  }

  return result;
}

uint64_t sub_24E785388(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C1A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E785434()
{
  result = qword_27F21C1E8;
  if (!qword_27F21C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C1E8);
  }

  return result;
}

uint64_t sub_24E785488()
{
  v0 = sub_24F92CB88();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24E7854D4()
{
  result = qword_27F21C1F0;
  if (!qword_27F21C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C1F0);
  }

  return result;
}

unint64_t sub_24E78553C()
{
  result = qword_27F21C1F8;
  if (!qword_27F21C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C1F8);
  }

  return result;
}

unint64_t sub_24E785594()
{
  result = qword_27F21C200;
  if (!qword_27F21C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C208);
    sub_24E785620();
    sub_24E785844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C200);
  }

  return result;
}

unint64_t sub_24E785620()
{
  result = qword_27F223670;
  if (!qword_27F223670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F223660);
    sub_24E7856AC();
    sub_24E7857F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223670);
  }

  return result;
}

unint64_t sub_24E7856AC()
{
  result = qword_27F21C210;
  if (!qword_27F21C210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C160);
    sub_24E785738();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C210);
  }

  return result;
}

unint64_t sub_24E785738()
{
  result = qword_27F223680;
  if (!qword_27F223680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C178);
    sub_24E602068(&unk_27F223690, &qword_27F21C170);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223680);
  }

  return result;
}

unint64_t sub_24E7857F0()
{
  result = qword_27F21C218;
  if (!qword_27F21C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C218);
  }

  return result;
}

unint64_t sub_24E785844()
{
  result = qword_27F2236B0;
  if (!qword_27F2236B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223650);
    sub_24E7856AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2236B0);
  }

  return result;
}

unint64_t sub_24E7858D4()
{
  result = qword_27F21C220;
  if (!qword_27F21C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C220);
  }

  return result;
}

unint64_t sub_24E78592C()
{
  result = qword_27F21C228;
  if (!qword_27F21C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C228);
  }

  return result;
}

unint64_t sub_24E785984()
{
  result = qword_27F21C230;
  if (!qword_27F21C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C230);
  }

  return result;
}

uint64_t sub_24E7859D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972746E65 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74704F7375636F66 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6C6169636F73 && a2 == 0xEA0000000000756ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xEC00000044496E6FLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24E785C9C(uint64_t a1)
{
  v2 = sub_24E785E78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E785CD8(uint64_t a1)
{
  v2 = sub_24E785E78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameLibraryMenuDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C238);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E785E78();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E785E78()
{
  result = qword_27F21C240;
  if (!qword_27F21C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C240);
  }

  return result;
}

uint64_t GameLibraryMenuDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C248);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GameLibraryMenuDataIntent();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E785E78();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24E786178(v13, v11, type metadata accessor for Player);
    sub_24E786178(v11, v12, type metadata accessor for GameLibraryMenuDataIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for GameLibraryMenuDataIntent()
{
  result = qword_27F21C250;
  if (!qword_27F21C250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E786178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E786218(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C238);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E785E78();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24E786390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E786410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24E786494()
{
  result = qword_27F21C260;
  if (!qword_27F21C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C260);
  }

  return result;
}

unint64_t sub_24E7864EC()
{
  result = qword_27F21C268;
  if (!qword_27F21C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C268);
  }

  return result;
}

unint64_t sub_24E786544()
{
  result = qword_27F21C270;
  if (!qword_27F21C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C270);
  }

  return result;
}

uint64_t sub_24E786598()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F21C278);
  __swift_project_value_buffer(v4, qword_27F21C278);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24E7866EC()
{
  result = sub_24F92B098();
  qword_27F39ACE8 = result;
  return result;
}

uint64_t AccountDeviceList.__allocating_init(accountStore:bag:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24E788754(a1, a2);

  return v4;
}

uint64_t AccountDeviceList.init(accountStore:bag:)(void *a1, uint64_t a2)
{
  v3 = sub_24E788754(a1, a2);

  return v3;
}

uint64_t sub_24E7867C8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  v5 = *(v3 + 40);
  *(v3 + 40) = v2;
  if ((v5 & 1) == 0)
  {
    if (v2)
    {
      return sub_24E786980();
    }
  }

  return result;
}

uint64_t sub_24E786850(char a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 40);
  *(v1 + 40) = a1;
  if (v4 & 1) == 0 && (a1)
  {
    return sub_24E786980();
  }

  return result;
}

void (*sub_24E7868A0(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 40);
  return sub_24E78692C;
}

void sub_24E78692C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 40);
  *(v2 + 40) = v3;
  if ((v4 & 1) == 0 && v3)
  {
    sub_24E786980();
  }

  free(v1);
}

uint64_t sub_24E786980()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F20FEE8 != -1)
  {
    swift_once();
  }

  v7 = sub_24F92AAE8();
  v8 = __swift_project_value_buffer(v7, qword_27F21C278);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  v15 = v9;
  v10 = swift_allocObject();
  v14 = xmmword_24F93DE60;
  *(v10 + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  v16 = v8;
  sub_24F92A588();

  v11 = [objc_opt_self() standardUserDefaults];
  sub_24E786CF8(v2);

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E601704(v2, &unk_27F22EC30);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_24F91F5C8();
    if (v12 > -86400.0)
    {
      *(swift_allocObject() + 16) = v14;
      sub_24F9283A8();
      sub_24F92A588();

      return (*(v4 + 8))(v6, v3);
    }

    (*(v4 + 8))(v6, v3);
  }

  return sub_24E786E60();
}

uint64_t sub_24E786CF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92B098();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_24E601704(v11, &qword_27F2129B0);
    goto LABEL_8;
  }

  sub_24E69A5C4(0, &qword_27F22BD50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  [v8 doubleValue];
  sub_24F91F508();

  v5 = 0;
LABEL_9:
  v6 = sub_24F91F648();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_24E786E60()
{
  v1 = v0;
  v20 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v19 = &v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  if (qword_27F20FEE8 != -1)
  {
    swift_once();
  }

  v8 = sub_24F92AAE8();
  v9 = __swift_project_value_buffer(v8, qword_27F21C278);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  v22 = v10;
  v11 = swift_allocObject();
  v21 = xmmword_24F93DE60;
  *(v11 + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  v23 = v9;
  v24 = v8;
  sub_24F92A588();

  if (qword_27F210BD0 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v5 + 8))(v7, v4);
  if (v25 == 1 && (swift_beginAccess(), *(v1 + 40) == 1) && (v12 = v1[4]) != 0)
  {
    v13 = sub_24F92B858();
    v14 = v19;
    (*(*(v13 - 8) + 56))(v19, 1, 1, v13);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v16 = v20;
    v15[4] = v12;
    v15[5] = v16;
    v17 = v12;
    sub_24EA998B8(0, 0, v14, &unk_24F9553C8, v15);
  }

  else
  {
    *(swift_allocObject() + 16) = v21;
    sub_24F9283A8();
    sub_24F92A588();
  }
}

uint64_t sub_24E7872E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a4;
  sub_24F928418();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7873BC, 0, 0);
}

uint64_t sub_24E7873BC()
{
  if (qword_27F20FEE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = sub_24F92AAE8();
  *(v0 + 288) = v2;
  *(v0 + 296) = __swift_project_value_buffer(v2, qword_27F21C278);
  *(v0 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  v3 = *(sub_24F928468() - 8);
  *(v0 + 312) = *(v3 + 72);
  *(v0 + 344) = *(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v4 = [objc_allocWithZone(MEMORY[0x277CF0220]) init];
  *(v0 + 320) = v4;
  v5 = [v1 ams_altDSID];
  [v4 setAltDSID_];

  v17 = MEMORY[0x277D84F90];
  sub_24F4578E0(0, 1, 0);
  v6 = v17;
  v8 = *(v17 + 16);
  v7 = *(v17 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_24F4578E0((v7 > 1), v8 + 1, 1);
    v6 = v17;
  }

  *(v6 + 16) = v8 + 1;
  v9 = v6 + 16 * v8;
  *(v9 + 32) = 1397715576;
  *(v9 + 40) = 0xE400000000000000;
  v10 = sub_24F92B588();

  [v4 setOperatingSystems_];

  [v4 setIncludeUntrustedDevices_];
  v11 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  *(v0 + 328) = v11;
  if (v11)
  {
    v12 = v11;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_24E787814;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C298);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_24E787F20;
    *(v0 + 104) = &block_descriptor_13;
    *(v0 + 112) = v13;
    [v12 deviceListWithContext:v4 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v14 = *(v0 + 320);
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_24E787814()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_24E787C8C;
  }

  else
  {
    v2 = sub_24E787924;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E787924()
{
  v1 = *(v0 + 232);

  if (v1)
  {
    v2 = [v1 deviceList];
    if (v2)
    {
      v3 = v2;
      sub_24E69A5C4(0, &qword_27F21C2A0);
      v4 = sub_24F92B5A8();

      if (v4 >> 62)
      {
        v5 = sub_24F92C738();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = *(v0 + 280);
      sub_24E7885B8(v5 != 0);
      v7 = [objc_opt_self() standardUserDefaults];
      sub_24F91F638();
      v8 = sub_24F91F648();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      sub_24E787FF0(v6);

      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      if (v4 >> 62)
      {
        v9 = sub_24F92C738();
      }

      else
      {
        v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = *(v0 + 320);
      v12 = *(v0 + 328);

      *(v0 + 200) = MEMORY[0x277D83B88];
      *(v0 + 176) = v9;
      sub_24F9283D8();
      sub_24E601704(v0 + 176, &qword_27F2129B0);
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A588();

      goto LABEL_12;
    }

    v10 = *(v0 + 328);
  }

  else
  {
  }

  v11 = *(v0 + 320);
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();

LABEL_12:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24E787C8C()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  swift_willThrow();

  _s3__C4CodeOMa_0(0);
  *(v0 + 240) = -14002;
  v4 = v1;
  sub_24E788A30();
  LOBYTE(v2) = sub_24F91F0F8();

  if (v2)
  {

    sub_24E7885B8(0);
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }

  else
  {
    v5 = *(v0 + 336);
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    swift_getErrorValue();
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    *(v0 + 168) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v6, v7);
    sub_24F9283D8();
    sub_24E601704(v0 + 144, &qword_27F2129B0);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24E787F20(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24E787FF0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E728A00(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &unk_27F22EC30);
    v11 = sub_24F92B098();
    [v2 removeObjectForKey_];

    return sub_24E601704(a1, &unk_27F22EC30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_24F91F518();
    v14 = v13;
    v15 = sub_24F92B098();
    [v2 setDouble:v15 forKey:v14];

    sub_24E601704(a1, &unk_27F22EC30);
    return (*(v8 + 8))(v10, v7);
  }
}

void sub_24E788228()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v15 = v1;
  v3 = [v2 ams_activeiTunesAccount];
  v4 = *(v0 + 32);
  *(v0 + 32) = v3;
  v5 = v3;

  if (v5)
  {
    v6 = [v5 ams_altDSID];

    if (v6)
    {
      v7 = sub_24F92B0D8();
      v5 = v8;

      if (!v1)
      {
LABEL_10:
        v12 = 0;
        if (v5)
        {
          goto LABEL_11;
        }

LABEL_18:
        if (!v12)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0;
      if (!v1)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v7 = 0;
    if (!v1)
    {
      goto LABEL_10;
    }
  }

  v9 = [v15 ams_altDSID];
  if (v9)
  {
    v10 = v9;
    v1 = sub_24F92B0D8();
    v12 = v11;

    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v1 = 0;
  v12 = 0;
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (!v12)
  {
LABEL_19:

LABEL_20:
    if (qword_27F20FEE8 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F21C278);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    sub_24E786E60();
    goto LABEL_23;
  }

  if (v7 == v1 && v5 == v12)
  {

    return;
  }

  v14 = sub_24F92CE08();

  if ((v14 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:
}

uint64_t AccountDeviceList.deinit()
{

  return v0;
}

uint64_t AccountDeviceList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_24E7885B8(char a1)
{
  v1 = a1 & 1;
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = sub_24F92B098();
  v5 = [v3 BOOLForKey_];

  if (v5 != v1)
  {
    v6 = [v2 standardUserDefaults];
    v7 = sub_24F92B098();
    [v6 setBool:v1 forKey:v7];

    v8 = [objc_opt_self() defaultCenter];
    v9 = v8;
    if (qword_27F20FEF0 != -1)
    {
      swift_once();
      v8 = v9;
    }

    [v8 postNotificationName:qword_27F39ACE8 object:0];
  }
}

uint64_t sub_24E788754(void *a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  v3 = a1;

  v4 = [v3 ams_activeiTunesAccount];
  v5 = *(v2 + 32);
  *(v2 + 32) = v4;

  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v2 selector:sel_storeAccountDidChange name:*MEMORY[0x277CB8B78] object:v3];

  return v2;
}

uint64_t sub_24E788810@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_24E788918()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E788958(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24E7872E8(a1, v4, v5, v6);
}

unint64_t sub_24E788A30()
{
  result = qword_27F2125D8;
  if (!qword_27F2125D8)
  {
    _s3__C4CodeOMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2125D8);
  }

  return result;
}

__n128 FlowFullScreenCoverViewModifier.init(following:destinations:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  v5 = a1[1].n128_u64[0];
  *a4 = *a1;
  a4[1].n128_u64[0] = v5;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

uint64_t FlowFullScreenCoverViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a1;
  v35 = a3;
  swift_getWitnessTable();
  v27 = sub_24F925108();
  v33 = type metadata accessor for FlowAction();
  v5 = *(a2 + 24);
  *&v50 = *(a2 + 16);
  v26 = v50;
  v25 = v5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v31 = sub_24E788F58();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v50 = v27;
  *(&v50 + 1) = v33;
  *&v51 = OpaqueTypeMetadata2;
  *(&v51 + 1) = WitnessTable;
  v52 = v31;
  v53 = OpaqueTypeConformance2;
  v6 = swift_getOpaqueTypeMetadata2();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v30 = &v23 - v10;
  v11 = v3[1];
  v50 = *v3;
  v51 = v11;
  v52 = *(v3 + 4);
  v36 = v50;
  v37 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21C2A8);
  sub_24F927198();
  v12 = v47;
  v13 = v48;
  v14 = v49;
  swift_getKeyPath();
  v44 = v12;
  v45 = v13;
  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21C2A8);
  sub_24F927188();

  v38 = v41;
  v39 = v42;
  v40 = v43;
  v15 = swift_allocObject();
  v16 = v25;
  *(v15 + 16) = v26;
  *(v15 + 24) = v16;
  v17 = v51;
  *(v15 + 32) = v50;
  *(v15 + 48) = v17;
  *(v15 + 64) = v52;
  (*(*(a2 - 8) + 16))(&v36, &v50, a2);
  swift_checkMetadataState();
  swift_checkMetadataState();
  v18 = v24;
  sub_24F926428();

  v19 = *(v7 + 16);
  v20 = v30;
  v19(v30, v18, v6);
  v21 = *(v7 + 8);
  v21(v18, v6);
  v19(v35, v20, v6);
  return (v21)(v20, v6);
}

unint64_t sub_24E788F58()
{
  result = qword_27F219BA0;
  if (!qword_27F219BA0)
  {
    type metadata accessor for FlowAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219BA0);
  }

  return result;
}

uint64_t sub_24E788FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v42 = a3;
  v43 = a4;
  v46 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C330);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = &v38 - v10;
  v11 = type metadata accessor for FlowAction.Destination();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = a3;
  v47[1] = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v41 = &v38 - v21;
  v22 = *a1;
  v39 = *(a2 + 24);
  v23 = OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v48 = *(v22 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
  v24 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl;
  v47[3] = type metadata accessor for FlowAction();
  v47[4] = &protocol witness table for FlowAction;
  v47[0] = v22;
  v25 = (v22 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  swift_unknownObjectRetain();

  static FlowAction.Destination.from(id:page:url:dataProvider:appStateController:)(v22 + v23, &v48, v22 + v24, v47, v26, v27, v14);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v47);
  v28 = v40;
  v39(v14);
  sub_24E7895F4(v14);
  v29 = *MEMORY[0x277D7EB50];
  v30 = sub_24F9219D8();
  v31 = *(v30 - 8);
  v32 = v44;
  (*(v31 + 104))(v44, v29, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  v33 = v42;
  sub_24F925E68();
  sub_24E789650(v32);
  (*(v45 + 8))(v28, v33);
  v34 = *(v17 + 16);
  v35 = v41;
  v34(v41, v20, OpaqueTypeMetadata2);
  v36 = *(v17 + 8);
  v36(v20, OpaqueTypeMetadata2);
  v34(v46, v35, OpaqueTypeMetadata2);
  return (v36)(v35, OpaqueTypeMetadata2);
}

uint64_t sub_24E7893C8()
{

  return swift_deallocObject();
}

uint64_t sub_24E78946C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24E7894CC()
{
  type metadata accessor for FlowFullScreenCoverViewModifier();
  swift_getWitnessTable();
  sub_24F925108();
  type metadata accessor for FlowAction();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_24E788F58();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E7895F4(uint64_t a1)
{
  v2 = type metadata accessor for FlowAction.Destination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E789650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7896E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E789830(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for EmptyState()
{
  result = qword_27F21C338;
  if (!qword_27F21C338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7899B8()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          sub_24E6BCB04();
          if (v4 <= 0x3F)
          {
            sub_24E789B00();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24E789B00()
{
  if (!qword_27F21C348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C350);
    sub_24E789B70();
    v0 = sub_24F927EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21C348);
    }
  }
}

unint64_t sub_24E789B70()
{
  result = qword_27F21C358;
  if (!qword_27F21C358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C350);
    sub_24E78E20C(&qword_27F21C360, type metadata accessor for LinkableText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C358);
  }

  return result;
}

uint64_t sub_24E789C34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6154656E696C6E69;
  v4 = 0xEA00000000006C6CLL;
  if (v2 != 1)
  {
    v3 = 0x656761506C6C7566;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6154656E696C6E69;
  v8 = 0xEA00000000006C6CLL;
  if (*a2 != 1)
  {
    v7 = 0x656761506C6C7566;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
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

uint64_t sub_24E789D3C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E789DE0()
{
  sub_24F92B218();
}

uint64_t sub_24E789E70()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E789F10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E78E368();
  *a1 = result;
  return result;
}

void sub_24E789F40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA00000000006C6CLL;
  v5 = 0x6154656E696C6E69;
  if (v2 != 1)
  {
    v5 = 0x656761506C6C7566;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C6E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24E78A054()
{
  result = qword_27F21C368;
  if (!qword_27F21C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C368);
  }

  return result;
}

unint64_t sub_24E78A0A8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6C61636974726576;
    if (a1 != 10)
    {
      v6 = 0x676B636142736168;
    }

    if (a1 == 9)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0x7470697263736564;
    v9 = 0x7470697263736564;
    if (a1 != 7)
    {
      v9 = 0x417972616D697270;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0xD000000000000011;
    v3 = 0x6D496D6574737973;
    if (a1 != 4)
    {
      v3 = 0x656C746974;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6575676573;
    if (a1 != 1)
    {
      v4 = 0x4D747865746E6F63;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24E78A264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C4F8);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v9 = &v57 - v8;
  v10 = type metadata accessor for EmptyState();
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v69 = v12 + 40;
  sub_24E61DA68(&v71, (v12 + 40), qword_27F21B590);
  v13 = v10[6];
  v14 = sub_24F92A6D8();
  v15 = *(*(v14 - 8) + 56);
  v68 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = v10[7];
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v66 = v16;
  v18(&v12[v16], 1, 1, v17);
  v19 = v10[12];
  v70 = v12;
  v20 = &v12[v19];
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  v65 = &v12[v19];
  sub_24E61DA68(&v71, &v12[v19], qword_27F21B590);
  v21 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24E78E1B8();
  v62 = v9;
  v22 = v67;
  sub_24F92D108();
  if (v22)
  {
    v67 = v22;
    __swift_destroy_boxed_opaque_existential_1(v64);
    v23 = v66;
    v24 = v70;
LABEL_4:
    sub_24E601704(v69, qword_27F24EC90);
    sub_24E601704(v24 + v68, &qword_27F215440);
    sub_24E601704(v24 + v23, &qword_27F213E68);

    sub_24E601704(v65, qword_27F24EC90);
  }

  v58 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  v74 = 0;
  sub_24E602068(&qword_27F213F30, &qword_27F213F18);
  sub_24F92CC68();
  v26 = v72;
  v27 = v70;
  *v70 = v71;
  v27[1] = v26;
  *(v27 + 4) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
  v74 = 1;
  v28 = sub_24E61D970();
  sub_24F92CC68();
  v29 = v61;
  v57 = v28;
  sub_24E61DA68(&v71, v69, qword_27F24EC90);
  LOBYTE(v71) = 2;
  sub_24E65CAA0();
  sub_24F92CC68();
  v24 = v70;
  sub_24E61DA68(v7, v70 + v68, &qword_27F215440);
  LOBYTE(v71) = 3;
  sub_24E78E20C(&qword_27F213F48, MEMORY[0x277D21F70]);
  v30 = v60;
  sub_24F92CC18();
  v31 = v66;
  sub_24E61DA68(v30, v24 + v66, &qword_27F213E68);
  LOBYTE(v71) = 4;
  v32 = sub_24F92CBC8();
  v33 = v58;
  v34 = (v24 + v58[8]);
  *v34 = v32;
  v34[1] = v35;
  v60 = v35;
  LOBYTE(v71) = 5;
  v36 = sub_24F92CBC8();
  v23 = v31;
  v37 = (v24 + v33[9]);
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v71) = 6;
  v39 = sub_24F92CBC8();
  v67 = 0;
  v41 = (v24 + v33[10]);
  *v41 = v39;
  v41[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C508);
  v74 = 7;
  v42 = v63;
  sub_24E602068(&qword_27F21C510, &qword_27F21C508);
  v43 = v62;
  v44 = v67;
  sub_24F92CC68();
  v67 = v44;
  if (v44)
  {
    (*(v29 + 8))(v43, v42);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v64);
    sub_24E601704(v24, &qword_27F213F18);
    goto LABEL_4;
  }

  *(v24 + v33[11]) = v71;
  v74 = 8;
  v45 = v67;
  sub_24F92CC68();
  v67 = v45;
  if (v45)
  {
    (*(v29 + 8))(v43, v63);
    goto LABEL_5;
  }

  sub_24E61DA68(&v71, v65, qword_27F24EC90);
  LOBYTE(v71) = 9;
  v46 = v67;
  v47 = sub_24F92CBC8();
  v67 = v46;
  if (v46 || (v49 = (v70 + v58[13]), *v49 = v47, v49[1] = v48, v74 = 10, sub_24E78E254(), v50 = v67, sub_24F92CC68(), (v67 = v50) != 0) || (*(v70 + v58[14]) = v71, LOBYTE(v71) = 11, v51 = v67, v52 = sub_24F92CC38(), (v67 = v51) != 0))
  {
    (*(v61 + 8))(v62, v63);
    v23 = v66;
    v24 = v70;
    goto LABEL_5;
  }

  v53 = v52;
  v54 = v58[15];
  (*(v61 + 8))(v62, v63);
  v55 = v53 & 1;
  v56 = v70;
  *(v70 + v54) = v55;
  sub_24E78E2A8(v56, v59);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return sub_24E78E30C(v56);
}

uint64_t sub_24E78AC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E78E5B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E78AC80(uint64_t a1)
{
  v2 = sub_24E78E1B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E78ACBC(uint64_t a1)
{
  v2 = sub_24E78E1B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E78ACF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24E78AE10()
{
  result = qword_27F21C370;
  if (!qword_27F21C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C370);
  }

  return result;
}

uint64_t sub_24E78AE64@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v66 = a2;
  v75 = a4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C410);
  v68 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v67 = &v61 - v5;
  v64 = sub_24F924848();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C418);
  MEMORY[0x28223BE20](v72);
  v74 = &v61 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C420);
  MEMORY[0x28223BE20](v69);
  v9 = &v61 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C3C8);
  MEMORY[0x28223BE20](v73);
  v70 = &v61 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C3D8);
  v11 = MEMORY[0x28223BE20](v71);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C3E8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - v24;
  *v25 = sub_24F924C88();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C428);
  sub_24E78B914(a1, &v25[*(v26 + 44)]);
  v27 = type metadata accessor for EmptyState();
  if (a1[*(v27 + 56)])
  {
    if (a1[*(v27 + 56)] == 1)
    {
      v28 = v65;
      v29 = v65 & 1;
      sub_24E60169C(v25, v23, &qword_27F21C3E8);
      v30 = (*(v20 + 80) + 16) & ~*(v20 + 80);
      v31 = swift_allocObject();
      sub_24E6009C8(v23, v31 + v30, &qword_27F21C3E8);
      v32 = v31 + ((v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
      v33 = v66;
      *v32 = v66;
      *(v32 + 8) = v29;
      if (v28)
      {
        v79 = v33;
      }

      else
      {
        swift_retain_n();
        sub_24F92BDC8();
        v51 = sub_24F9257A8();
        sub_24F921FD8();

        v52 = v62;
        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E62A5EC(v33, 0);
        (*(v63 + 8))(v52, v64);
      }

      sub_24F927618();
      sub_24F9238C8();
      v53 = v82;
      v54 = BYTE8(v82);
      v55 = v83;
      v56 = BYTE8(v83);
      v78 = BYTE8(v82);
      v77 = BYTE8(v83);
      *v9 = sub_24E78DAF0;
      *(v9 + 1) = v31;
      *(v9 + 2) = v53;
      v9[24] = v54;
      *(v9 + 4) = v55;
      v9[40] = v56;
      *(v9 + 3) = v84;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C3F8);
      v57 = sub_24E78D55C();
      sub_24E78D614();
      v58 = v70;
      v59 = v71;
      sub_24F924E28();
      sub_24E60169C(v58, v74, &qword_27F21C3C8);
      swift_storeEnumTagMultiPayload();
      sub_24E78D4D0();
      v80 = v59;
      v81 = v57;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();

      sub_24E601704(v58, &qword_27F21C3C8);
      v41 = v25;
    }

    else
    {
      sub_24F927618();
      sub_24F9242E8();
      sub_24E60169C(v25, v13, &qword_27F21C3E8);
      v42 = v71;
      v43 = &v13[*(v71 + 36)];
      v44 = v87;
      *(v43 + 4) = v86;
      *(v43 + 5) = v44;
      *(v43 + 6) = v88;
      v45 = v83;
      *v43 = v82;
      *(v43 + 1) = v45;
      v46 = v85;
      *(v43 + 2) = v84;
      *(v43 + 3) = v46;
      sub_24F9257D8();
      sub_24F927618();
      v47 = sub_24E78D55C();
      v48 = v67;
      sub_24F9266F8();
      sub_24E601704(v13, &qword_27F21C3D8);
      v49 = v68;
      v50 = v76;
      (*(v68 + 16))(v74, v48, v76);
      swift_storeEnumTagMultiPayload();
      sub_24E78D4D0();
      v80 = v42;
      v81 = v47;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      (*(v49 + 8))(v48, v50);
      v41 = v25;
    }
  }

  else
  {
    sub_24F927618();
    sub_24F9242E8();
    sub_24E60169C(v25, v16, &qword_27F21C3E8);
    v34 = v71;
    v35 = &v16[*(v71 + 36)];
    v36 = v87;
    *(v35 + 4) = v86;
    *(v35 + 5) = v36;
    *(v35 + 6) = v88;
    v37 = v83;
    *v35 = v82;
    *(v35 + 1) = v37;
    v38 = v85;
    *(v35 + 2) = v84;
    *(v35 + 3) = v38;
    sub_24E6009C8(v16, v18, &qword_27F21C3D8);
    sub_24E60169C(v18, v9, &qword_27F21C3D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C3F8);
    v39 = sub_24E78D55C();
    sub_24E78D614();
    v40 = v70;
    sub_24F924E28();
    sub_24E60169C(v40, v74, &qword_27F21C3C8);
    swift_storeEnumTagMultiPayload();
    sub_24E78D4D0();
    v80 = v34;
    v81 = v39;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24E601704(v40, &qword_27F21C3C8);
    sub_24E601704(v18, &qword_27F21C3D8);
    v41 = v25;
  }

  return sub_24E601704(v41, &qword_27F21C3E8);
}

uint64_t sub_24E78B914@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v121 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v3 - 8);
  v106 = &v101 - v4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C460);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v105 = &v101 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C478);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v120 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v101 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C458);
  MEMORY[0x28223BE20](v111);
  v102 = &v101 - v11;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C448);
  MEMORY[0x28223BE20](v108);
  v110 = &v101 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C450);
  MEMORY[0x28223BE20](v109);
  v14 = &v101 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C480);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v117 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v124 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C438);
  v112 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v107 = &v101 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C488);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v116 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v101 - v24;
  v26 = type metadata accessor for EmptyState();
  v27 = a1;
  if (*&a1[v26[8] + 8])
  {

    v28 = sub_24F926E48();
    v29 = sub_24F925988();
    KeyPath = swift_getKeyPath();
    v115 = v28;

    v113 = KeyPath;

    v114 = v29;
  }

  else
  {
    v115 = 0;
    v113 = 0;
    v114 = 0;
  }

  v122 = v25;
  v123 = v10;
  if (*&v27[v26[9] + 8])
  {

    sub_24F925988();
    v31 = sub_24F925C98();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v103 = v36;

    v38 = swift_getKeyPath();
    v125 = v31;
    v126 = v33;
    v35 &= 1u;
    v127 = v35;
    v128 = v37;
    v129 = v38;
    v130 = 2;
    v131 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F68);
    v104 = v14;
    sub_24E67283C();
    v39 = v107;
    sub_24F9268B8();
    v40 = v31;
    v25 = v122;
    sub_24E600B40(v40, v33, v35);

    v41 = v112;
    (*(v112 + 4))(v25, v39, v19);
    v14 = v104;
    (*(v41 + 7))(v25, 0, 1, v19);
  }

  else
  {
    (*(v112 + 7))(v25, 1, 1, v19);
  }

  v42 = v26;
  v43 = *&v27[v26[11]];
  if (v43)
  {
    v112 = v42;
    swift_retain_n();
    v44 = sub_24F926D38();
    if (qword_27F211278 != -1)
    {
      swift_once();
    }

    v45 = qword_27F2431D0;

    v46 = sub_24F925898();
    type metadata accessor for LinkableTextViewModel();
    swift_allocObject();
    v47 = sub_24E6567EC(v43, v44, v45, v46);
    *(v14 + 2) = swift_getKeyPath();
    v14[56] = 0;
    v48 = type metadata accessor for LinkableTextView();
    v49 = v48[8];
    *&v14[v49] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
    swift_storeEnumTagMultiPayload();
    v50 = &v14[v48[9]];
    *v50 = swift_getKeyPath();
    v50[8] = 0;
    v51 = &v14[v48[10]];
    *v51 = swift_getKeyPath();
    v51[8] = 0;
    v52 = &v14[v48[11]];
    *v52 = swift_getKeyPath();
    v52[8] = 0;
    *v14 = v47;
    *(v14 + 4) = 1;
    v53 = *(v109 + 36);
    v54 = *MEMORY[0x277CE13B8];
    v55 = sub_24F927748();
    (*(*(v55 - 8) + 104))(&v14[v53], v54, v55);
    sub_24E60169C(v14, v110, &qword_27F21C450);
    swift_storeEnumTagMultiPayload();
    sub_24E78DFC0();
    sub_24E78E07C();
    sub_24F924E28();

    sub_24E601704(v14, &qword_27F21C450);
    v56 = 0;
    v57 = v123;
    v58 = v112;
  }

  else
  {
    v59 = &v27[v42[10]];
    v60 = v59[1];
    v56 = 1;
    v58 = v42;
    if (v60)
    {
      v125 = *v59;
      v126 = v60;
      sub_24E600AEC();

      v61 = sub_24F925E18();
      v63 = v62;
      v65 = v64;
      v112 = v58;
      sub_24F925898();
      v66 = sub_24F925C98();
      v68 = v67;
      v70 = v69;
      v107 = v27;

      sub_24E600B40(v61, v63, v65 & 1);

      LODWORD(v125) = sub_24F9251C8();
      v71 = sub_24F925C58();
      v73 = v72;
      v75 = v74;
      v104 = v76;
      sub_24E600B40(v66, v68, v70 & 1);
      v27 = v107;

      v77 = swift_getKeyPath();
      v78 = *(v111 + 36);
      v79 = *MEMORY[0x277CE13B8];
      v80 = sub_24F927748();
      v81 = v102;
      (*(*(v80 - 8) + 104))(&v102[v78], v79, v80);
      *v81 = v71;
      *(v81 + 8) = v73;
      *(v81 + 16) = v75 & 1;
      *(v81 + 24) = v104;
      *(v81 + 32) = v77;
      v58 = v112;
      v25 = v122;
      *(v81 + 40) = 1;
      sub_24E60169C(v81, v110, &qword_27F21C458);
      swift_storeEnumTagMultiPayload();
      sub_24E78DFC0();
      sub_24E78E07C();
      sub_24F924E28();
      sub_24E601704(v81, &qword_27F21C458);
      v56 = 0;
    }

    v57 = v123;
  }

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C440);
  (*(*(v82 - 8) + 56))(v124, v56, 1, v82);
  sub_24E60169C(&v27[v58[12]], &v132, qword_27F24EC90);
  if (!v133)
  {
    sub_24E601704(&v132, qword_27F21B590);
LABEL_19:
    (*(v118 + 56))(v57, 1, 1, v119);
    goto LABEL_20;
  }

  sub_24E612C80(&v132, &v125);
  v83 = &v27[v58[13]];
  v84 = *(v83 + 1);
  if (!v84)
  {
    __swift_destroy_boxed_opaque_existential_1(&v125);
    goto LABEL_19;
  }

  v85 = *v83;
  v86 = sub_24F9232F8();
  (*(*(v86 - 8) + 56))(v106, 1, 1, v86);
  sub_24E615E00(&v125, &v132);
  v87 = swift_allocObject();
  *(v87 + 16) = v85;
  *(v87 + 24) = v84;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C490);
  sub_24E78DBF0();
  v88 = v105;
  sub_24F921788();
  v89 = sub_24F925818();
  __swift_destroy_boxed_opaque_existential_1(&v125);
  v90 = v119;
  v91 = v88 + *(v119 + 36);
  *v91 = v89;
  *(v91 + 8) = 0u;
  *(v91 + 24) = 0u;
  *(v91 + 40) = 1;
  sub_24E6009C8(v88, v57, &qword_27F21C460);
  (*(v118 + 56))(v57, 0, 1, v90);
LABEL_20:
  v92 = v116;
  sub_24E60169C(v25, v116, &qword_27F21C488);
  v93 = v117;
  sub_24E60169C(v124, v117, &qword_27F21C480);
  v94 = v120;
  sub_24E60169C(v57, v120, &qword_27F21C478);
  v95 = v121;
  *v121 = 0;
  *(v95 + 8) = 1;
  v96 = v115;
  v97 = v113;
  v95[2] = v115;
  v95[3] = v97;
  v95[4] = v114;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C430);
  sub_24E60169C(v92, v95 + v98[16], &qword_27F21C488);
  sub_24E60169C(v93, v95 + v98[20], &qword_27F21C480);
  sub_24E60169C(v94, v95 + v98[24], &qword_27F21C478);
  v99 = v95 + v98[28];
  sub_24E680F54(v96);
  sub_24E680FA4(v96);
  *v99 = 0;
  v99[8] = 1;
  sub_24E601704(v123, &qword_27F21C478);
  sub_24E601704(v124, &qword_27F21C480);
  sub_24E601704(v122, &qword_27F21C488);
  sub_24E601704(v94, &qword_27F21C478);
  sub_24E601704(v93, &qword_27F21C480);
  sub_24E601704(v92, &qword_27F21C488);
  return sub_24E680FA4(v96);
}

uint64_t sub_24E78C7EC@<X0>(uint64_t a1@<X8>)
{
  sub_24F9268B8();
  v2 = sub_24F926D18();
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C4D8) + 36));
  *v4 = KeyPath;
  v4[1] = v2;
  LOBYTE(v2) = sub_24F9257F8();
  sub_24F923318();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C4C8) + 36);
  *v13 = v2;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  LOBYTE(v2) = sub_24F925868();
  sub_24F923318();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C4B8) + 36);
  *v22 = v2;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v23 = sub_24F926D08();

  LOBYTE(v2) = sub_24F925808();
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C4A8) + 36);
  *v24 = v23;
  *(v24 + 8) = v2;
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C490) + 36);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_24F924B38();
  (*(*(v27 - 8) + 104))(v25, v26, v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0);
  *(v25 + *(result + 36)) = 256;
  return result;
}

double sub_24E78CA00@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v35 = a3;
  v36 = a4;
  v34 = sub_24F924848();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F925048();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C3D8);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E60169C(a1, v16, &qword_27F21C3E8);
  v17 = &v16[*(v14 + 44)];
  v18 = v42;
  *(v17 + 4) = v41;
  *(v17 + 5) = v18;
  *(v17 + 6) = v43;
  v19 = v38;
  *v17 = v37;
  *(v17 + 1) = v19;
  v20 = v40;
  *(v17 + 2) = v39;
  *(v17 + 3) = v20;
  sub_24F925258();
  sub_24F9239B8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v10 + 8))(v12, v9);
  v47.origin.x = v22;
  v47.origin.y = v24;
  v47.size.width = v26;
  v47.size.height = v28;
  CGRectGetMinY(v47);
  if ((v35 & 1) == 0)
  {

    sub_24F92BDC8();
    v29 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a2, 0);
    (*(v6 + 8))(v8, v34);
  }

  sub_24F927618();
  sub_24F9238C8();
  v30 = v36;
  sub_24E6009C8(v16, v36, &qword_27F21C3D8);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C470) + 36));
  v32 = v45;
  *v31 = v44;
  v31[1] = v32;
  result = v46[0];
  v31[2] = *v46;
  return result;
}

uint64_t sub_24E78CDF4(char *a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C388);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C390);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C398);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for EmptyState();
  v16 = a3 & 1;
  if (a1[*(v15 + 60)] == 1)
  {
    sub_24E78AE64(a1, a2, v16, v14);
    v17 = &v14[*(v12 + 36)];
    v18 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
    v19 = type metadata accessor for GradientBackground(0);
    (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
    *v17 = swift_getKeyPath();
    v17[8] = 0;
    *(v17 + 1) = xmmword_24F93CFD0;
    *(v17 + 4) = 0x4030000000000000;
    *(v17 + 20) = 257;
    sub_24E60169C(v14, v11, &qword_27F21C398);
    swift_storeEnumTagMultiPayload();
    sub_24E78D28C();
    sub_24E78D348();
    sub_24F924E28();
    v20 = v14;
    v21 = &qword_27F21C398;
  }

  else
  {
    sub_24E78AE64(a1, a2, v16, v8);
    sub_24E60169C(v8, v11, &qword_27F21C388);
    swift_storeEnumTagMultiPayload();
    sub_24E78D28C();
    sub_24E78D348();
    sub_24F924E28();
    v20 = v8;
    v21 = &qword_27F21C388;
  }

  return sub_24E601704(v20, v21);
}

uint64_t sub_24E78D0E0()
{
  sub_24E62AB1C(*v0, *(v0 + 8));
  sub_24E78AE10();
  return sub_24F9218E8();
}

unint64_t sub_24E78D18C()
{
  result = qword_27F21C380;
  if (!qword_27F21C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C380);
  }

  return result;
}

unint64_t sub_24E78D28C()
{
  result = qword_27F21C3A0;
  if (!qword_27F21C3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C398);
    sub_24E78D348();
    sub_24E78E20C(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C3A0);
  }

  return result;
}

unint64_t sub_24E78D348()
{
  result = qword_27F21C3A8;
  if (!qword_27F21C3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C388);
    sub_24E78D400();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C3A8);
  }

  return result;
}

unint64_t sub_24E78D400()
{
  result = qword_27F21C3B0;
  if (!qword_27F21C3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C3B8);
    sub_24E78D4D0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C3D8);
    sub_24E78D55C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C3B0);
  }

  return result;
}

unint64_t sub_24E78D4D0()
{
  result = qword_27F21C3C0;
  if (!qword_27F21C3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C3C8);
    sub_24E78D55C();
    sub_24E78D614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C3C0);
  }

  return result;
}

unint64_t sub_24E78D55C()
{
  result = qword_27F21C3D0;
  if (!qword_27F21C3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C3D8);
    sub_24E602068(&qword_27F21C3E0, &qword_27F21C3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C3D0);
  }

  return result;
}

unint64_t sub_24E78D614()
{
  result = qword_27F21C3F0;
  if (!qword_27F21C3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C3F8);
    sub_24E602068(&qword_27F21C400, &qword_27F21C408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C3F0);
  }

  return result;
}

uint64_t sub_24E78D6D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C3E8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C428) + 44) + v2;
  if (*(v4 + 16))
  {
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C430);
  v6 = v5[16];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C438);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = v4 + v5[20];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C440);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C448);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24E600B40(*v9, *(v9 + 8), *(v9 + 16));

      v11 = &qword_27F21C458;
    }

    else
    {

      if (*(v9 + 56))
      {
        if (*(v9 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1(v9 + 16);
        }
      }

      else
      {
      }

      v12 = type metadata accessor for LinkableTextView();
      v13 = v12[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = sub_24F921B58();
        (*(*(v14 - 8) + 8))(v9 + v13, v14);
      }

      else
      {
      }

      sub_24E62A5EC(*(v9 + v12[9]), *(v9 + v12[9] + 8));
      sub_24E62A5EC(*(v9 + v12[10]), *(v9 + v12[10] + 8));
      sub_24E62A5EC(*(v9 + v12[11]), *(v9 + v12[11] + 8));
      v11 = &qword_27F21C450;
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v11) + 36);
    v16 = sub_24F927748();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
  }

  v17 = v5[24];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C460);
  if (!(*(*(v18 - 8) + 48))(v4 + v17, 1, v18))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C468);
    (*(*(v19 - 8) + 8))(v4 + v17, v19);
  }

  sub_24E62A5EC(*(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

double sub_24E78DAF0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C3E8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_24E78CA00(v1 + v4, v6, v7, a1);
}

uint64_t sub_24E78DBB0()
{

  return swift_deallocObject();
}

unint64_t sub_24E78DBF0()
{
  result = qword_27F21C498;
  if (!qword_27F21C498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C490);
    sub_24E78DCA8();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C498);
  }

  return result;
}

unint64_t sub_24E78DCA8()
{
  result = qword_27F21C4A0;
  if (!qword_27F21C4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C4A8);
    sub_24E78DD8C(&qword_27F21C4B0, &qword_27F21C4B8, &unk_24F9558E8, sub_24E78DE10);
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C4A0);
  }

  return result;
}

uint64_t sub_24E78DD8C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24E78DE40()
{
  result = qword_27F21C4D0;
  if (!qword_27F21C4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C4D8);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C4D0);
  }

  return result;
}

uint64_t sub_24E78DF28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F924728();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24E78DF58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F924748();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24E78DF88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F924738();
  *a1 = result & 1;
  return result;
}

unint64_t sub_24E78DFC0()
{
  result = qword_27F21C4E0;
  if (!qword_27F21C4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C450);
    sub_24E78E20C(&qword_27F21C4E8, type metadata accessor for LinkableTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C4E0);
  }

  return result;
}

unint64_t sub_24E78E07C()
{
  result = qword_27F21C4F0;
  if (!qword_27F21C4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C458);
    sub_24E62FBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C4F0);
  }

  return result;
}

uint64_t sub_24E78E110@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F924728();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24E78E140@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F924748();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24E78E170@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F924738();
  *a1 = result & 1;
  return result;
}

unint64_t sub_24E78E1B8()
{
  result = qword_27F21C500;
  if (!qword_27F21C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C500);
  }

  return result;
}

uint64_t sub_24E78E20C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E78E254()
{
  result = qword_27F21C518;
  if (!qword_27F21C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C518);
  }

  return result;
}

uint64_t sub_24E78E2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E78E30C(uint64_t a1)
{
  v2 = type metadata accessor for EmptyState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E78E368()
{
  v0 = sub_24F92CB88();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24E78E3B4()
{
  result = qword_27F21C520;
  if (!qword_27F21C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C520);
  }

  return result;
}

unint64_t sub_24E78E41C()
{
  result = qword_27F21C528;
  if (!qword_27F21C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C530);
    sub_24E78D28C();
    sub_24E78D348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C528);
  }

  return result;
}

unint64_t sub_24E78E4AC()
{
  result = qword_27F21C538;
  if (!qword_27F21C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C538);
  }

  return result;
}

unint64_t sub_24E78E504()
{
  result = qword_27F21C540;
  if (!qword_27F21C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C540);
  }

  return result;
}

unint64_t sub_24E78E55C()
{
  result = qword_27F21C548;
  if (!qword_27F21C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C548);
  }

  return result;
}

uint64_t sub_24E78E5B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEF6B6E694C6E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA46F00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xED0000656C797453 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x676B636142736168 && a2 == 0xED0000646E756F72)
  {

    return 11;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_24E78E9B0(uint64_t a1)
{
  *(v1 + 16) = sub_24E60B48C(MEMORY[0x277D84F90]);
  sub_24E60169C(a1, v1 + OBJC_IVAR____TtC12GameStoreKit24GSKVideoViewModelManager_metricsPipeline, &qword_27F21C570);
  v3 = [objc_opt_self() defaultCenter];

  v4 = sub_24F92B098();
  [v3 addObserver:v1 selector:sel_videoDecodersUnavailable_ name:v4 object:0];

  sub_24E601704(a1, &qword_27F21C570);
  return v1;
}

uint64_t sub_24E78EABC()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_24F92B098();
  [v1 removeObserver:v0 name:v2 object:0];

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit24GSKVideoViewModelManager_metricsPipeline, &qword_27F21C570);
  return v0;
}

uint64_t sub_24E78EB74()
{
  sub_24E78EABC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GSKVideoViewModelManager()
{
  result = qword_27F21C558;
  if (!qword_27F21C558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E78EC20(uint64_t a1)
{
  sub_24E60169C(a1, &v7, &qword_27F235830);
  if (*(&v8 + 1))
  {
    v10[0] = v7;
    v10[1] = v8;
    v11 = v9;
    swift_beginAccess();
    v2 = *(v1 + 16);
    if (*(v2 + 16))
    {

      v3 = sub_24E76D934(v10);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 8 * v3);

        sub_24E6585F8(v10);

        return v5;
      }
    }

    sub_24E6585F8(v10);
  }

  else
  {
    sub_24E601704(&v7, &qword_27F235830);
  }

  return 0;
}

uint64_t sub_24E78ED04()
{
  v1 = v0;
  v2 = sub_24F91EB48();
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  *&v46[0] = 0x6B63616279616C50;
  *(&v46[0] + 1) = 0xEA00000000006449;
  sub_24F92C7F8();
  if (!*(v3 + 16) || (v4 = sub_24E76D934(&v47), (v5 & 1) == 0))
  {

    sub_24E6585F8(&v47);
LABEL_13:
    v43 = 0u;
    v44 = 0u;
    return sub_24E601704(&v43, &qword_27F2129B0);
  }

  sub_24E643A9C(*(v3 + 56) + 32 * v4, &v43);
  sub_24E6585F8(&v47);

  if (!*(&v44 + 1))
  {
    return sub_24E601704(&v43, &qword_27F2129B0);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v7 = v47;
  v8 = sub_24F91EB48();
  if (!v8)
  {

    goto LABEL_13;
  }

  v9 = v8;
  strcpy(v45, "videoViewError");
  v45[15] = -18;
  sub_24F92C7F8();
  if (!*(v9 + 16) || (v10 = sub_24E76D934(&v47), (v11 & 1) == 0))
  {

    sub_24E6585F8(&v47);
    v43 = 0u;
    v44 = 0u;
    goto LABEL_17;
  }

  sub_24E643A9C(*(v9 + 56) + 32 * v10, &v43);
  sub_24E6585F8(&v47);

  if (!*(&v44 + 1))
  {
LABEL_17:

    return sub_24E601704(&v43, &qword_27F2129B0);
  }

  sub_24E612B0C(&v43, v46);
  swift_beginAccess();
  v12 = *(v1 + 16);
  v13 = *(v12 + 16);
  v43 = v7;

  sub_24F92C7F8();
  if (*(v12 + 16))
  {
    sub_24E76D934(&v47);
    LODWORD(v15) = v14 & 1;
  }

  else
  {
    LODWORD(v15) = 0;
  }

  sub_24E6585F8(&v47);

  if (qword_27F211468 != -1)
  {
LABEL_44:
    swift_once();
  }

  v16 = sub_24F9220D8();
  __swift_project_value_buffer(v16, qword_27F39E988);
  sub_24E643A9C(v46, &v47);
  v17 = sub_24F9220B8();
  v18 = sub_24F92BDB8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41[0] = v20;
    *v19 = 134349570;
    *(v19 + 4) = v13;
    *(v19 + 12) = 2082;
    sub_24E643A9C(&v47, &v43);
    v21 = sub_24F92B188();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v24 = sub_24E7620D4(v21, v23, v41);

    *(v19 + 14) = v24;
    *(v19 + 22) = 1026;
    *(v19 + 24) = v15;
    _os_log_impl(&dword_24E5DD000, v17, v18, "GSKVideoViewModelManager: VideoDecodersUnavailable - GSKVideoView count: %{public}ld Error: %{public}s Contains video view with error: %{BOOL,public}d", v19, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2530542D0](v20, -1, -1);
    MEMORY[0x2530542D0](v19, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  v1 = *(v1 + 16);
  v25 = 1 << *(v1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v15 = v26 & *(v1 + 64);
  v13 = (v25 + 63) >> 6;

  v27 = 0;
  while (1)
  {
    if (!v15)
    {
      while (1)
      {
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v28 >= v13)
        {
          goto LABEL_42;
        }

        v15 = *(v1 + 64 + 8 * v28);
        ++v27;
        if (v15)
        {
          v27 = v28;
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_33:
    v29 = __clz(__rbit64(v15)) | (v27 << 6);
    sub_24E65864C(*(v1 + 48) + 40 * v29, &v47);
    v30 = *(*(v1 + 56) + 8 * v29);
    v39 = v47;
    v40 = v48;
    v31 = v49;
    v32 = *(&v48 + 1);

    if (!v32)
    {
      break;
    }

    v15 &= v15 - 1;
    v47 = v39;
    v48 = v40;
    v49 = v31;
    v42 = v7;

    sub_24F92C7F8();
    v33 = MEMORY[0x253052150](&v47, &v43);
    sub_24E6585F8(&v43);
    if (v33)
    {
      sub_24E6585F8(&v47);
    }

    else if (*(v30 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isFullScreen) == 1)
    {

      sub_24E6585F8(&v47);
    }

    else
    {
      v34 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player;
      v35 = *(v30 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
      if (v35)
      {
        [v35 pause];
        v36 = *(v30 + v34);
        if (v36)
        {
          v37 = v36;
          sub_24EA9EF78();

          v36 = *(v30 + v34);
        }
      }

      else
      {
        v36 = 0;
      }

      *(v30 + v34) = 0;

      sub_24E88237C();
      sub_24E6585F8(&v47);
      v38 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_subscriptions;
      swift_beginAccess();
      *(v30 + v38) = MEMORY[0x277D84FA0];
    }
  }

LABEL_42:
  __swift_destroy_boxed_opaque_existential_1(v46);
}

void sub_24E78F3BC()
{
  sub_24E78F45C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E78F45C()
{
  if (!qword_27F21C568)
  {
    sub_24F929158();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21C568);
    }
  }
}

uint64_t sub_24E78F4C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E78F618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E78F774()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E78FCFC(319, &qword_27F21C588, type metadata accessor for ButtonGroupItem, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24E78F958();
      if (v2 <= 0x3F)
      {
        sub_24E68857C(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
        if (v3 <= 0x3F)
        {
          sub_24E68857C(319, &qword_27F215458, &qword_27F215460, &unk_24F942C00, MEMORY[0x277D21D28]);
          if (v4 <= 0x3F)
          {
            sub_24E78FCFC(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24E78F910(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E78F958()
{
  if (!qword_27F21C590)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21C590);
    }
  }
}

uint64_t sub_24E78F9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24E78FAE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24E78FC1C()
{
  sub_24E78FCFC(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E68857C(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E78FCFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E78FDE0()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24E78FE4C()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24E78FE9C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24E78FFBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C650);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = type metadata accessor for ButtonGroup(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 56) = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 11) = 0;
  v41 = v14 + 56;
  sub_24E61DA68(&v44, (v14 + 56), qword_27F21B590);
  v15 = *(v12 + 40);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v40 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 44);
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v42 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24E7918E8();
  v22 = v39;
  sub_24F92D108();
  if (v22)
  {
    v24 = v40;
    v23 = v41;
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_24E601704(v23, qword_27F24EC90);
    sub_24E601704(&v14[v24], &qword_27F215440);
    return sub_24E601704(&v14[v42], &qword_27F213E68);
  }

  else
  {
    v34[2] = v5;
    v39 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v47 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v25 = v45;
    *v14 = v44;
    *(v14 + 1) = v25;
    *(v14 + 4) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5F0);
    v47 = 1;
    sub_24E79193C();
    sub_24F92CC68();
    v27 = v40;
    v26 = v41;
    *(v14 + 5) = v44;
    v47 = 2;
    sub_24E7919F0();
    sub_24F92CC18();
    v28 = v37;
    v34[1] = 0;
    v14[48] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v47 = 3;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v44, v26, qword_27F24EC90);
    LOBYTE(v44) = 4;
    sub_24E65CAA0();
    v29 = v39;
    sub_24F92CC68();
    sub_24E61DA68(v29, &v14[v27], &qword_27F215440);
    LOBYTE(v44) = 5;
    sub_24E78F910(&qword_27F213F48, MEMORY[0x277D21F70]);
    v30 = v28;
    v31 = v36;
    v32 = v38;
    sub_24F92CC18();
    (*(v30 + 8))(v10, v32);
    sub_24E61DA68(v31, &v14[v42], &qword_27F213E68);
    sub_24E791A44(v14, v35, type metadata accessor for ButtonGroup);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24E791AAC(v14);
  }
}

uint64_t sub_24E790658@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24E60169C(v2, &v14 - v9, &qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24E790858()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  v4 = 0x4D747865746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x736D657469;
  if (v1 != 1)
  {
    v5 = 0x6E656D6E67696C61;
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

uint64_t sub_24E790910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E791D04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E790938(uint64_t a1)
{
  v2 = sub_24E7918E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E790974(uint64_t a1)
{
  v2 = sub_24E7918E8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E7909B0@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 56, v5, qword_27F24EC90);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24E790A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24E790AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v31 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5D0);
  v5 = MEMORY[0x28223BE20](v33);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5D8);
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5E0);
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  v15 = sub_24F923E98();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E790658(v18);
  v19 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    *v14 = sub_24F924C88();
    *(v14 + 1) = 0;
    v14[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C640);
    *&v36 = *(v34 + 40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5F8);
    sub_24E602068(&qword_27F21C600, &qword_27F21C5F0);
    sub_24E7916EC();
    sub_24E78F910(&qword_27F21C610, type metadata accessor for ButtonGroupItem);
    sub_24F927238();
    *&v14[*(v12 + 36)] = 256;
    sub_24E60169C(v14, v11, &qword_27F21C5E0);
    swift_storeEnumTagMultiPayload();
    sub_24E791778();
    sub_24E791830();
    sub_24F924E28();
    v20 = v14;
    v21 = &qword_27F21C5E0;
  }

  else
  {
    v31[1] = v9;
    v31[2] = v12;
    v22 = v33;
    *v4 = sub_24F9249A8();
    *(v4 + 1) = 0;
    v4[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5E8);
    v23 = v34;
    *&v36 = *(v34 + 40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5F8);
    sub_24E602068(&qword_27F21C600, &qword_27F21C5F0);
    sub_24E7916EC();
    sub_24E78F910(&qword_27F21C610, type metadata accessor for ButtonGroupItem);
    sub_24F927238();
    if (*(v23 + 48))
    {
      sub_24F927618();
    }

    else
    {
      sub_24F927628();
    }

    sub_24F9242E8();
    sub_24E6009C8(v4, v7, &qword_27F21C5C8);
    v24 = &v7[*(v22 + 36)];
    v25 = v41;
    *(v24 + 4) = v40;
    *(v24 + 5) = v25;
    *(v24 + 6) = v42;
    v26 = v37;
    *v24 = v36;
    *(v24 + 1) = v26;
    v27 = v39;
    *(v24 + 2) = v38;
    *(v24 + 3) = v27;
    v28 = v7;
    v29 = v32;
    sub_24E6009C8(v28, v32, &qword_27F21C5D0);
    sub_24E60169C(v29, v11, &qword_27F21C5D0);
    swift_storeEnumTagMultiPayload();
    sub_24E791778();
    sub_24E791830();
    sub_24F924E28();
    v20 = v29;
    v21 = &qword_27F21C5D0;
  }

  return sub_24E601704(v20, v21);
}

double sub_24E791138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v13 + 1) = type metadata accessor for ButtonGroupItem();
  v14 = sub_24E78F910(&qword_27F21AAB0, type metadata accessor for ButtonGroupItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  sub_24E791A44(a1, boxed_opaque_existential_1, type metadata accessor for ButtonGroupItem);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24E78F910(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  *&v11 = sub_24F923598();
  BYTE8(v11) = v5 & 1;
  sub_24F927618();
  sub_24F9242E8();
  v6 = v12;
  *a2 = v11;
  *(a2 + 16) = v6;
  *(a2 + 32) = v13;
  v7 = v17;
  *(a2 + 104) = v18;
  *(a2 + 120) = v19;
  v8 = v21;
  *(a2 + 136) = v20;
  *(a2 + 152) = v8;
  result = *&v15;
  v10 = v16;
  *(a2 + 56) = v15;
  *(a2 + 72) = v10;
  *(a2 + 48) = v14;
  *(a2 + 88) = v7;
  return result;
}

double sub_24E7912D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v13 + 1) = type metadata accessor for ButtonGroupItem();
  v14 = sub_24E78F910(&qword_27F21AAB0, type metadata accessor for ButtonGroupItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  sub_24E791A44(a1, boxed_opaque_existential_1, type metadata accessor for ButtonGroupItem);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24E78F910(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  *&v11 = sub_24F923598();
  BYTE8(v11) = v5 & 1;
  sub_24F927618();
  sub_24F9242E8();
  v6 = v12;
  *a2 = v11;
  *(a2 + 16) = v6;
  *(a2 + 32) = v13;
  v7 = v17;
  *(a2 + 104) = v18;
  *(a2 + 120) = v19;
  v8 = v21;
  *(a2 + 136) = v20;
  *(a2 + 152) = v8;
  result = *&v15;
  v10 = v16;
  *(a2 + 56) = v15;
  *(a2 + 72) = v10;
  *(a2 + 48) = v14;
  *(a2 + 88) = v7;
  return result;
}

uint64_t sub_24E791480()
{
  v1 = MEMORY[0x28223BE20](v0);
  sub_24E791A44(v1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonGroupComponent);
  sub_24E78F910(&qword_27F21C5A8, type metadata accessor for ButtonGroupComponent);
  return sub_24F9218E8();
}

unint64_t sub_24E79155C()
{
  result = qword_27F21C5B0;
  if (!qword_27F21C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C5B0);
  }

  return result;
}

unint64_t sub_24E7916EC()
{
  result = qword_27F21C608;
  if (!qword_27F21C608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C5F8);
    sub_24E66C1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C608);
  }

  return result;
}

unint64_t sub_24E791778()
{
  result = qword_27F21C618;
  if (!qword_27F21C618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C5E0);
    sub_24E602068(&qword_27F21C620, &qword_27F21C628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C618);
  }

  return result;
}

unint64_t sub_24E791830()
{
  result = qword_27F21C630;
  if (!qword_27F21C630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C5D0);
    sub_24E602068(&qword_27F21C638, &qword_27F21C5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C630);
  }

  return result;
}

unint64_t sub_24E7918E8()
{
  result = qword_27F21C658;
  if (!qword_27F21C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C658);
  }

  return result;
}

unint64_t sub_24E79193C()
{
  result = qword_27F21C660;
  if (!qword_27F21C660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C5F0);
    sub_24E78F910(&qword_27F21C668, type metadata accessor for ButtonGroupItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C660);
  }

  return result;
}

unint64_t sub_24E7919F0()
{
  result = qword_27F21C670;
  if (!qword_27F21C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C670);
  }

  return result;
}

uint64_t sub_24E791A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E791AAC(uint64_t a1)
{
  v2 = type metadata accessor for ButtonGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E791B08()
{
  result = qword_27F21C678;
  if (!qword_27F21C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C678);
  }

  return result;
}

unint64_t sub_24E791B70()
{
  result = qword_27F21C680;
  if (!qword_27F21C680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C688);
    sub_24E791778();
    sub_24E791830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C680);
  }

  return result;
}

unint64_t sub_24E791C00()
{
  result = qword_27F21C690;
  if (!qword_27F21C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C690);
  }

  return result;
}

unint64_t sub_24E791C58()
{
  result = qword_27F21C698;
  if (!qword_27F21C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C698);
  }

  return result;
}

unint64_t sub_24E791CB0()
{
  result = qword_27F21C6A0;
  if (!qword_27F21C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C6A0);
  }

  return result;
}

uint64_t sub_24E791D04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
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

uint64_t sub_24E791F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E791F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CloseAppAction()
{
  result = qword_27F21C6A8;
  if (!qword_27F21C6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E792054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C6B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CloseAppAction();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7924B4();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24E792508(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E7922C0(uint64_t a1)
{
  v2 = sub_24E7924B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7922FC(uint64_t a1)
{
  v2 = sub_24E7924B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E792350(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C6C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7924B4();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E7924B4()
{
  result = qword_27F21C6C0;
  if (!qword_27F21C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C6C0);
  }

  return result;
}

uint64_t sub_24E792508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseAppAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E792580()
{
  result = qword_27F21C6D0;
  if (!qword_27F21C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C6D0);
  }

  return result;
}

unint64_t sub_24E7925D8()
{
  result = qword_27F21C6D8;
  if (!qword_27F21C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C6D8);
  }

  return result;
}

unint64_t sub_24E792630()
{
  result = qword_27F21C6E0;
  if (!qword_27F21C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C6E0);
  }

  return result;
}

uint64_t LeaderboardChallengeSuggestionShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LeaderboardChallengeSuggestionShelfIntent.suggestionPlayerID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for LeaderboardChallengeSuggestionShelfIntent()
{
  result = qword_27F21C700;
  if (!qword_27F21C700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t LeaderboardChallengeSuggestionShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 32) = 0x444965676170;
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 40) = 0xE600000000000000;
  v4 = MEMORY[0x277D837D0];
  v5 = *v1;
  v6 = v1[1];
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA46FA0;
  v8 = v1[2];
  v9 = v1[3];
  *(inited + 128) = v4;
  *(inited + 136) = v7;
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  *(inited + 144) = 1701667175;
  *(inited + 152) = 0xE400000000000000;
  v10 = type metadata accessor for LeaderboardChallengeSuggestionShelfIntent();
  v11 = *(v10 + 24);
  *(inited + 184) = type metadata accessor for Game();
  *(inited + 192) = sub_24E793350(&qword_27F217960, type metadata accessor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E793400(v1 + v11, boxed_opaque_existential_1, type metadata accessor for Game);
  *(inited + 200) = 0x6F6272656461656CLL;
  *(inited + 208) = 0xEB00000000647261;
  v13 = *(v10 + 28);
  *(inited + 240) = type metadata accessor for Leaderboard(0);
  *(inited + 248) = sub_24E793350(&qword_27F21B450, type metadata accessor for Leaderboard);
  v14 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E793400(v1 + v13, v14, type metadata accessor for Leaderboard);

  v15 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v15;
  return result;
}

unint64_t sub_24E792A48()
{
  v1 = 0x444965676170;
  v2 = 1701667175;
  if (*v0 != 2)
  {
    v2 = 0x6F6272656461656CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24E792AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7938E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E792AEC(uint64_t a1)
{
  v2 = sub_24E7932FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E792B28(uint64_t a1)
{
  v2 = sub_24E7932FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaderboardChallengeSuggestionShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C6E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7932FC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for LeaderboardChallengeSuggestionShelfIntent();
    v8[13] = 2;
    type metadata accessor for Game();
    sub_24E793350(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CD48();
    v8[12] = 3;
    type metadata accessor for Leaderboard(0);
    sub_24E793350(&qword_27F21B470, type metadata accessor for Leaderboard);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t LeaderboardChallengeSuggestionShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C6F8);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for LeaderboardChallengeSuggestionShelfIntent();
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7932FC();
  v27 = v9;
  v13 = v28;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = a1;
  v32 = 0;
  v16 = v25;
  v15 = v26;
  *v12 = sub_24F92CC28();
  v12[1] = v17;
  v28 = v17;
  v31 = 1;
  v12[2] = sub_24F92CC28();
  v12[3] = v18;
  v30 = 2;
  sub_24E793350(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  sub_24E793398(v6, v12 + *(v10 + 24), type metadata accessor for Game);
  v29 = 3;
  sub_24E793350(&qword_27F21B488, type metadata accessor for Leaderboard);
  v19 = v23;
  sub_24F92CC68();
  (*(v16 + 8))(v27, v15);
  sub_24E793398(v19, v12 + *(v10 + 28), type metadata accessor for Leaderboard);
  sub_24E793400(v12, v22, type metadata accessor for LeaderboardChallengeSuggestionShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_24E793468(v12, type metadata accessor for LeaderboardChallengeSuggestionShelfIntent);
}

unint64_t sub_24E7932FC()
{
  result = qword_27F21C6F0;
  if (!qword_27F21C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C6F0);
  }

  return result;
}

uint64_t sub_24E793350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E793398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E793400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E793468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7934DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Game();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Leaderboard(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E793614(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Game();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Leaderboard(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24E793738()
{
  result = type metadata accessor for Game();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Leaderboard(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24E7937E0()
{
  result = qword_27F21C710;
  if (!qword_27F21C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C710);
  }

  return result;
}

unint64_t sub_24E793838()
{
  result = qword_27F21C718;
  if (!qword_27F21C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C718);
  }

  return result;
}

unint64_t sub_24E793890()
{
  result = qword_27F21C720;
  if (!qword_27F21C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C720);
  }

  return result;
}

uint64_t sub_24E7938E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA46FA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E793A64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E793B34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E793C04()
{
  sub_24E6BCB04();
  if (v0 <= 0x3F)
  {
    sub_24E793C98();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E793C98()
{
  if (!qword_27F21C740)
  {
    type metadata accessor for JSColor();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21C740);
    }
  }
}

uint64_t sub_24E793CF0()
{
  v1 = 0x614E6C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x726F6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_24E793D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E794ED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E793D6C(uint64_t a1)
{
  v2 = sub_24E79439C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E793DA8(uint64_t a1)
{
  v2 = sub_24E79439C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E793DE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C748);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for DescriptionLabelConfig(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E79439C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v10;
  v13 = v22;
  v14 = v23;
  v26 = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v15;
  v19[1] = v15;
  v25 = 1;
  v12[2] = sub_24F92CBC8();
  v12[3] = v16;
  v17 = type metadata accessor for JSColor();
  v24 = 2;
  sub_24E794570(&qword_27F21C758);
  v19[0] = v17;
  sub_24F92CC68();
  (*(v13 + 8))(v9, v14);
  (*(*(v19[0] - 8) + 56))(v6, 0, 1);
  sub_24E6009C8(v6, v12 + *(v20 + 24), &qword_27F21C728);
  sub_24E7943F0(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E7952FC(v12, type metadata accessor for DescriptionLabelConfig);
}

uint64_t sub_24E79416C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C760);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E79439C();
  sub_24F92D128();
  LOBYTE(v11) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
    sub_24E794454();
    sub_24F92CD48();
    type metadata accessor for DescriptionLabelConfig(0);
    LOBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
    sub_24E7944D0();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24E79439C()
{
  result = qword_27F21C750;
  if (!qword_27F21C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C750);
  }

  return result;
}

uint64_t sub_24E7943F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionLabelConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E794454()
{
  result = qword_27F21C768;
  if (!qword_27F21C768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C768);
  }

  return result;
}

unint64_t sub_24E7944D0()
{
  result = qword_27F21C770;
  if (!qword_27F21C770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C728);
    sub_24E794570(&qword_27F21C778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C770);
  }

  return result;
}

uint64_t sub_24E794570(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JSColor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E7945C8()
{
  result = qword_27F21C780;
  if (!qword_27F21C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C780);
  }

  return result;
}

unint64_t sub_24E794620()
{
  result = qword_27F21C788;
  if (!qword_27F21C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C788);
  }

  return result;
}

unint64_t sub_24E794678()
{
  result = qword_27F21C790;
  if (!qword_27F21C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C790);
  }

  return result;
}

uint64_t sub_24E7946CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_24F927748();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7A8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7B0);
  v14 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v16 = &v35 - v15;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7B8);
  MEMORY[0x28223BE20](v36);
  v18 = &v35 - v17;
  *v13 = sub_24F9249A8();
  *(v13 + 1) = 0x4010000000000000;
  v13[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7C0);
  sub_24E794BB0(v2, &v13[*(v19 + 44)]);
  v20 = sub_24F925A08();
  KeyPath = swift_getKeyPath();
  v22 = &v13[*(v11 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_24E7951A8();
  sub_24F9268B8();
  sub_24E601704(v13, &qword_27F21C7A8);
  v23 = *(type metadata accessor for DescriptionLabelConfig(0) + 24);
  v38 = v2;
  sub_24E60169C(v2 + v23, v10, &qword_27F21C728);
  v24 = type metadata accessor for JSColor();
  v25 = *(*(v24 - 8) + 48);
  if (v25(v10, 1, v24) == 1)
  {
    sub_24E601704(v10, &qword_27F21C728);
  }

  else
  {
    v26 = *&v10[*(v24 + 24)];

    sub_24E7952FC(v10, type metadata accessor for JSColor);
    if (v26)
    {
      goto LABEL_5;
    }
  }

  v26 = sub_24F926D38();
LABEL_5:
  (*(v14 + 32))(v18, v16, v37);
  *&v18[*(v36 + 36)] = v26;
  sub_24E60169C(v38 + v23, v8, &qword_27F21C728);
  if (v25(v8, 1, v24) == 1)
  {
    sub_24E601704(v8, &qword_27F21C728);
LABEL_9:
    v28 = MEMORY[0x277CE13B8];
    goto LABEL_10;
  }

  v27 = *&v8[*(v24 + 24)];

  sub_24E7952FC(v8, type metadata accessor for JSColor);
  if (!v27)
  {
    goto LABEL_9;
  }

  v28 = MEMORY[0x277CE13D8];
LABEL_10:
  v30 = v39;
  v29 = v40;
  v31 = v41;
  (*(v40 + 104))(v39, *v28, v41);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7E0);
  v33 = v42;
  (*(v29 + 32))(v42 + *(v32 + 36), v30, v31);
  return sub_24E79528C(v18, v33);
}

uint64_t sub_24E794BB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v31 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171D8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  if (a1[3])
  {

    v32 = sub_24F926E48();
    v14 = (v7 + *(v4 + 36));
    v15 = a2;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
    v17 = *MEMORY[0x277CE1050];
    v18 = sub_24F926E78();
    v19 = v14 + v16;
    a2 = v15;
    (*(*(v18 - 8) + 104))(v19, v17, v18);
    *v14 = swift_getKeyPath();
    *v7 = v32;
    sub_24E6009C8(v7, v13, &qword_27F22DF20);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(&v31 - v12, 1, 1, v4);
  }

  v20 = *a1;
  v21 = a1[1];
  v33 = v20;
  v34 = v21;
  sub_24E600AEC();

  v22 = sub_24F925E18();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_24E60169C(v13, v11, &qword_27F2171D8);
  sub_24E60169C(v11, a2, &qword_27F2171D8);
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7E8) + 48);
  *v29 = v22;
  *(v29 + 8) = v24;
  *(v29 + 16) = v26 & 1;
  *(v29 + 24) = v28;
  sub_24E5FD138(v22, v24, v26 & 1);

  sub_24E601704(v13, &qword_27F2171D8);
  sub_24E600B40(v22, v24, v26 & 1);

  return sub_24E601704(v11, &qword_27F2171D8);
}

uint64_t sub_24E794ED8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E795008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionLabelConfig(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E795088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionLabelConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24E795118()
{
  result = type metadata accessor for DescriptionLabelConfig(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E7951A8()
{
  result = qword_27F21C7C8;
  if (!qword_27F21C7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C7A8);
    sub_24E602068(&qword_27F21C7D0, &qword_27F21C7D8);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C7C8);
  }

  return result;
}

uint64_t sub_24E79528C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7952FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E795368()
{
  result = qword_27F21C7F0;
  if (!qword_27F21C7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C7E0);
    sub_24E7953F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C7F0);
  }

  return result;
}

unint64_t sub_24E7953F4()
{
  result = qword_27F21C7F8;
  if (!qword_27F21C7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C7B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C7A8);
    sub_24E7951A8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C7F8);
  }

  return result;
}

unint64_t sub_24E7954FC()
{
  result = qword_27F21C800;
  if (!qword_27F21C800)
  {
    type metadata accessor for LeaderboardEntriesDataIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C800);
  }

  return result;
}

uint64_t sub_24E795554(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_24E795574, 0, 0);
}

uint64_t sub_24E795574()
{
  v1 = v0[5];
  v2 = type metadata accessor for LeaderboardEntriesDataIntent(0);
  v0[6] = v2;
  v3 = (v1 + *(v2 + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = sub_24E69A5C4(0, &qword_27F216FC8);
  *v7 = v0;
  v7[1] = sub_24E795698;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v6, v8);
}

uint64_t sub_24E795698()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24E699570;
  }

  else
  {

    v2 = sub_24E7957B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7957B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v0[10] = v3;
  v4 = [v3 internal];
  v0[11] = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];

  v5 = (v2 + *(v1 + 20));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[12] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  v0[13] = v9;
  v10 = sub_24E69A5C4(0, &qword_27F21C808);
  *v9 = v0;
  v9[1] = sub_24E795918;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0x6E7562286D6F7266, 0xEF293A4449656C64, sub_24E7980E0, v8, v10);
}

uint64_t sub_24E795918()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E795F7C;
  }

  else
  {

    v2 = sub_24E795A34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E795A34()
{
  v51 = v0;
  v2 = v0[3];
  v0[15] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x277D0C118]) init];
  v0[16] = v3;
  v4 = sub_24F92B098();
  [v3 setIdentifier_];

  v5 = sub_24F92B098();
  [v3 setBaseLeaderboardID_];

  type metadata accessor for Leaderboard(0);
  v7 = v0[5];
  v6 = v0[6];

  v8 = sub_24F92B098();

  [v3 setTitle_];

  v9 = v7 + *(v6 + 40);
  if (*(v9 + 8))
  {
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_24E796240;
    v11 = v0[11];
    v12 = v0[4];
    v13 = v0[5];

    return sub_24E79644C(v12, v13, v3, v2, v11);
  }

  v15 = *v9;
  if ((*v9 & 0x8000000000000000) != 0 || (v16 = v0[5], v7 = *v16, *v16 < 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v15 * v7;
  if ((v15 * v7) >> 64 != (v15 * v7) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = v0[6];
  LODWORD(v6) = *(v16 + *(v18 + 32));
  v49 = *(v16 + *(v18 + 36));
  if (qword_27F211410 != -1)
  {
LABEL_18:
    swift_once();
  }

  v19 = sub_24F9220D8();
  __swift_project_value_buffer(v19, qword_27F39E880);
  v20 = v3;
  v21 = v2;
  v22 = sub_24F9220B8();
  v23 = sub_24F92BD98();

  if (os_log_type_enabled(v22, v23))
  {
    v47 = v6;
    v6 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v6 = 136446978;
    *(v6 + 4) = sub_24E7620D4(0xD00000000000002ALL, 0x800000024F956740, &v50);
    *(v6 + 12) = 2080;
    v24 = [v21 bundleIdentifier];
    v25 = sub_24F92B0D8();
    v48 = v1;
    v27 = v26;

    v28 = sub_24E7620D4(v25, v27, &v50);

    *(v6 + 14) = v28;
    *(v6 + 22) = 2080;
    v29 = [v20 baseLeaderboardID];
    v30 = sub_24F92B0D8();
    v32 = v31;

    v33 = sub_24E7620D4(v30, v32, &v50);

    *(v6 + 24) = v33;
    *(v6 + 32) = 2080;
    v34 = [v20 identifier];
    v35 = sub_24F92B0D8();
    v37 = v36;

    v38 = sub_24E7620D4(v35, v37, &v50);
    v1 = v48;

    *(v6 + 34) = v38;
    _os_log_impl(&dword_24E5DD000, v22, v23, "%{public}s: getEntriesForLeaderboard: game=%s baseLeaderboardID=%s identifier=%s start", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v46, -1, -1);
    v39 = v6;
    LODWORD(v6) = v47;
    MEMORY[0x2530542D0](v39, -1, -1);
  }

  v40 = v6 ^ 1;
  v41 = v0[11];
  v42 = swift_task_alloc();
  v0[17] = v42;
  v42[2] = v41;
  v42[3] = v20;
  v42[4] = v21;
  v42[5] = v40;
  v42[6] = v49;
  v42[7] = v1;
  v42[8] = v7;
  v43 = swift_task_alloc();
  v0[18] = v43;
  v44 = type metadata accessor for LeaderboardEntriesResponse(0);
  v0[19] = v44;
  *v43 = v0;
  v43[1] = sub_24E795FEC;
  v45 = v0[4];

  return MEMORY[0x2822008A0](v45, 0, 0, 0xD000000000000048, 0x800000024FA46FC0, sub_24E7980E8, v42, v44);
}

uint64_t sub_24E795F7C()
{
  v1 = v0[11];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24E795FEC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24E7961BC;
  }

  else
  {

    v2 = sub_24E796108;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E796108()
{
  (*(*(*(v0 + 152) - 8) + 56))(*(v0 + 32), 0, 1);
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24E7961BC()
{
  v1 = v0[16];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24E796240()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24E7963D0;
  }

  else
  {
    v2 = sub_24E796354;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E796354()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24E7963D0()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24E79644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for LeaderboardEntry();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for LeaderboardEntriesResponse(0);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7965B4, 0, 0);
}

uint64_t sub_24E7965B4()
{
  v43 = v0;
  v1 = *(v0 + 24);
  v2 = *v1;
  *(v0 + 120) = *v1;
  v3 = type metadata accessor for LeaderboardEntriesDataIntent(0);
  v4 = *(v1 + *(v3 + 32));
  *(v0 + 184) = v4;
  v5 = *(v1 + *(v3 + 36));
  *(v0 + 185) = v5;
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = sub_24F9220D8();
  *(v0 + 128) = __swift_project_value_buffer(v8, qword_27F39E880);
  v9 = v7;
  v10 = v6;
  v11 = sub_24F9220B8();
  v12 = sub_24F92BD98();

  if (os_log_type_enabled(v11, v12))
  {
    v41 = v2;
    v13 = *(v0 + 32);
    v14 = *(v0 + 40);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v42 = v16;
    *v15 = 136446978;
    *(v15 + 4) = sub_24E7620D4(0xD00000000000002ALL, 0x800000024F956740, &v42);
    *(v15 + 12) = 2080;
    v17 = [v14 bundleIdentifier];
    v40 = v5;
    v18 = sub_24F92B0D8();
    v20 = v19;

    v21 = sub_24E7620D4(v18, v20, &v42);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    v22 = [v13 baseLeaderboardID];
    v23 = sub_24F92B0D8();
    v25 = v24;

    v26 = sub_24E7620D4(v23, v25, &v42);

    *(v15 + 24) = v26;
    *(v15 + 32) = 2080;
    v27 = [v13 identifier];
    v28 = sub_24F92B0D8();
    v30 = v29;

    v31 = v28;
    v2 = v41;
    v32 = sub_24E7620D4(v31, v30, &v42);
    v5 = v40;

    *(v15 + 34) = v32;
    _os_log_impl(&dword_24E5DD000, v11, v12, "%{public}s: getEntriesForLeaderboard: game=%s baseLeaderboardID=%s identifier=%s start", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v16, -1, -1);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  v33 = *(v0 + 48);
  v34 = swift_task_alloc();
  *(v0 + 136) = v34;
  v35 = *(v0 + 32);
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  *(v34 + 40) = v4 ^ 1u;
  *(v34 + 48) = v5;
  *(v34 + 56) = 1;
  *(v34 + 64) = v2;
  v36 = swift_task_alloc();
  *(v0 + 144) = v36;
  *v36 = v0;
  v36[1] = sub_24E79695C;
  v37 = *(v0 + 112);
  v38 = *(v0 + 88);

  return MEMORY[0x2822008A0](v37, 0, 0, 0xD000000000000048, 0x800000024FA46FC0, sub_24E7985C4, v34, v38);
}

uint64_t sub_24E79695C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24E796F50;
  }

  else
  {

    v2 = sub_24E796A78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E796A78()
{
  v62 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  sub_24E798408(*(v0 + 112) + *(*(v0 + 88) + 20), v3);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = sub_24E7984E0(*(v0 + 56), v5, type metadata accessor for LeaderboardEntry);
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = *(v5 + *(v6 + 24));
      if (v4 + 1 >= v15)
      {
        sub_24E7982E4(*(v0 + 80), type metadata accessor for LeaderboardEntry);
        goto LABEL_17;
      }

      v16 = *(v0 + 120);
      v18 = v15 < 1;
      v17 = v15 - 1;
      v18 = v18 || v16 < 1;
      if (!v18)
      {
        v19 = v17 / v16;
        v20 = v17 / v16 * v16;
        if ((v19 * v16) >> 64 == v20 >> 63)
        {
          v21 = v20 + 1;
          if (!__OFADD__(v20, 1))
          {
            v22 = *(v0 + 185);
            v23 = *(v0 + 40);
            v24 = *(v0 + 32);
            v25 = v23;
            v26 = sub_24F9220B8();
            v27 = sub_24F92BD98();

            if (os_log_type_enabled(v26, v27))
            {
              v60 = v21;
              v28 = *(v0 + 32);
              v29 = *(v0 + 40);
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v61 = v31;
              *v30 = 136446978;
              *(v30 + 4) = sub_24E7620D4(0xD00000000000002ALL, 0x800000024F956740, &v61);
              *(v30 + 12) = 2080;
              v32 = [v29 bundleIdentifier];
              v59 = v22;
              v33 = sub_24F92B0D8();
              v35 = v34;

              v36 = sub_24E7620D4(v33, v35, &v61);

              *(v30 + 14) = v36;
              *(v30 + 22) = 2080;
              v37 = [v28 baseLeaderboardID];
              v38 = sub_24F92B0D8();
              v40 = v39;

              v41 = sub_24E7620D4(v38, v40, &v61);

              *(v30 + 24) = v41;
              *(v30 + 32) = 2080;
              v42 = [v28 identifier];
              v43 = sub_24F92B0D8();
              v45 = v44;

              v46 = v43;
              v21 = v60;
              v47 = sub_24E7620D4(v46, v45, &v61);
              v22 = v59;

              *(v30 + 34) = v47;
              _os_log_impl(&dword_24E5DD000, v26, v27, "%{public}s: getEntriesForLeaderboard: game=%s baseLeaderboardID=%s identifier=%s start", v30, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x2530542D0](v31, -1, -1);
              MEMORY[0x2530542D0](v30, -1, -1);
            }

            v48 = *(v0 + 120);
            v49 = *(v0 + 48);
            v50 = (*(v0 + 184) & 1) == 0;
            v51 = swift_task_alloc();
            *(v0 + 160) = v51;
            v52 = *(v0 + 32);
            *(v51 + 16) = v49;
            *(v51 + 24) = v52;
            *(v51 + 40) = v50;
            *(v51 + 48) = v22;
            *(v51 + 56) = v21;
            *(v51 + 64) = v48;
            v53 = swift_task_alloc();
            *(v0 + 168) = v53;
            *v53 = v0;
            v53[1] = sub_24E796FE4;
            v7 = *(v0 + 104);
            v14 = *(v0 + 88);
            v12 = sub_24E7985C4;
            v10 = 0xD000000000000048;
            v11 = 0x800000024FA46FC0;
            v8 = 0;
            v9 = 0;
            v13 = v51;

            return MEMORY[0x2822008A0](v7, v8, v9, v10, v11, v12, v13, v14);
          }

LABEL_23:
          __break(1u);
          return MEMORY[0x2822008A0](v7, v8, v9, v10, v11, v12, v13, v14);
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_24E798478(*(v0 + 56));
LABEL_17:
  v54 = *(v0 + 88);
  v55 = *(v0 + 96);
  v56 = *(v0 + 16);
  sub_24E7984E0(*(v0 + 112), v56, type metadata accessor for LeaderboardEntriesResponse);
  (*(v55 + 56))(v56, 0, 1, v54);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_24E796F50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E796FE4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24E797224;
  }

  else
  {

    v2 = sub_24E797100;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E797100()
{
  v1 = v0[14];
  sub_24E7982E4(v0[10], type metadata accessor for LeaderboardEntry);
  sub_24E7982E4(v1, type metadata accessor for LeaderboardEntriesResponse);
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[2];
  sub_24E7984E0(v0[13], v4, type metadata accessor for LeaderboardEntriesResponse);
  (*(v3 + 56))(v4, 0, 1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24E797224()
{
  v1 = v0[14];
  v2 = v0[10];

  sub_24E7982E4(v2, type metadata accessor for LeaderboardEntry);
  sub_24E7982E4(v1, type metadata accessor for LeaderboardEntriesResponse);

  v3 = v0[1];

  return v3();
}

void sub_24E7972F8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v25 = a7;
  v26 = a5;
  v27 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C810);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = [objc_opt_self() proxyForPlayer_];
  v17 = [v16 gameStatServicePrivate];

  v18 = [a4 gameDescriptor];
  v19 = [a2 internal];
  (*(v13 + 16))(v15, a1, v12);
  v20 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  (*(v13 + 32))(v21 + v20, v15, v12);
  aBlock[4] = sub_24E7981BC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E797F78;
  aBlock[3] = &block_descriptor_14;
  v22 = _Block_copy(aBlock);
  v23 = a3;

  [v17 getEntriesForLeaderboard:v23 fetchOptions:1 gameDescriptor:v18 localPlayer:v19 playerScope:v26 timeScope:v27 range:v25 players:v24 handler:{0, v22}];
  _Block_release(v22);
  swift_unknownObjectRelease();
}

size_t sub_24E797588(void *a1, int *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v89 = a3;
  v86 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
  MEMORY[0x28223BE20](v10 - 8);
  v88 = (&v84 - v11);
  v12 = type metadata accessor for LeaderboardEntry();
  v94 = *(v12 - 1);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v84 - v16);
  v90 = type metadata accessor for LeaderboardEntriesResponse(0);
  v18 = MEMORY[0x28223BE20](v90);
  v87 = (&v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v93 = &v84 - v21;
  MEMORY[0x28223BE20](v20);
  v91 = (&v84 - v22);
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v23 = sub_24F9220D8();
  __swift_project_value_buffer(v23, qword_27F39E880);
  swift_bridgeObjectRetain_n();
  v24 = a5;
  v25 = sub_24F9220B8();
  v26 = sub_24F92BD98();

  v27 = os_log_type_enabled(v25, v26);
  v95 = a2;
  if (!v27)
  {

    swift_bridgeObjectRelease_n();
    if (!a4)
    {
      goto LABEL_12;
    }

LABEL_9:
    v97 = a4;
    v35 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C810);
    return sub_24F92B788();
  }

  v92 = a4;
  v28 = swift_slowAlloc();
  v85 = swift_slowAlloc();
  v97 = v85;
  *v28 = 136446722;
  *(v28 + 4) = sub_24E7620D4(0xD00000000000002ALL, 0x800000024F956740, &v97);
  *(v28 + 12) = 2080;
  v29 = [v24 identifier];
  v30 = sub_24F92B0D8();
  v32 = v31;

  v33 = sub_24E7620D4(v30, v32, &v97);
  a2 = v95;

  *(v28 + 14) = v33;
  *(v28 + 22) = 2048;
  if (a2)
  {
    if (a2 >> 62)
    {
      v34 = sub_24F92C738();
    }

    else
    {
      v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a4 = v92;
  }

  else
  {
    v34 = 0;
    a4 = v92;
  }

  *(v28 + 24) = v34;

  _os_log_impl(&dword_24E5DD000, v25, v26, "%{public}s: getEntriesForLeaderboard identifier=%s finished with %ld entries", v28, 0x20u);
  v37 = v85;
  swift_arrayDestroy();
  MEMORY[0x2530542D0](v37, -1, -1);
  MEMORY[0x2530542D0](v28, -1, -1);

  if (a4)
  {
    goto LABEL_9;
  }

LABEL_12:
  if (!a2)
  {
    v81 = v90;
    v82 = v91;
    (*(v94 + 56))(v91 + *(v90 + 20), 1, 1, v12);
    *v82 = MEMORY[0x277D84F90];
    *(v82 + *(v81 + 24)) = 0;
    sub_24E79827C(v82, v93, type metadata accessor for LeaderboardEntriesResponse);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C810);
LABEL_39:
    sub_24F92B798();
    return sub_24E7982E4(v82, type metadata accessor for LeaderboardEntriesResponse);
  }

  v84 = a6;
  if (a2 >> 62)
  {
    v38 = sub_24F92C738();
  }

  else
  {
    v38 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x277D84F90];
  if (!v38)
  {
LABEL_25:
    v51 = *(v39 + 16);
    v52 = MEMORY[0x277D84F90];
    if (v51)
    {
      v99 = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v51, 0);
      v52 = v99;
      v53 = v94;
      v54 = v39 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
      v55 = objc_opt_self();
      v92 = *(v53 + 72);
      v93 = v55;
      v95 = v12;
      do
      {
        sub_24E79827C(v54, v15, type metadata accessor for LeaderboardEntry);
        v56 = &v15[v12[5]];
        v57 = *v56;
        v58 = v56[1];
        swift_bridgeObjectRetain_n();
        v59 = sub_24F92B098();
        v60 = [v93 availableForPlayerID_];

        if ((v60 & 1) == 0)
        {
          v97 = v57;
          v98 = v58;
          MEMORY[0x253050C20](58, 0xE100000000000000);
          v96 = *&v15[v12[6]];
          v61 = sub_24F92CD88();
          MEMORY[0x253050C20](v61);

          v57 = v97;
          v58 = v98;
        }

        v97 = 0x5F7972746E65;
        v98 = 0xE600000000000000;
        MEMORY[0x253050C20](v57, v58);

        v62 = v97;
        v63 = v98;
        v64 = v15;
        sub_24E7982E4(v15, type metadata accessor for LeaderboardEntry);
        v99 = v52;
        v66 = *(v52 + 16);
        v65 = *(v52 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_24F4578E0((v65 > 1), v66 + 1, 1);
          v52 = v99;
        }

        *(v52 + 16) = v66 + 1;
        v67 = v52 + 16 * v66;
        *(v67 + 32) = v62;
        *(v67 + 40) = v63;
        v54 += v92;
        --v51;
        v15 = v64;
        v12 = v95;
      }

      while (v51);
    }

    v69 = sub_24F45D828(v68);

    v70 = *(v52 + 16);

    v71 = *(v69 + 16);

    if (v70 != v71)
    {

      sub_24E798344();
      v97 = swift_allocError();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C810);
      return sub_24F92B788();
    }

    if (v86)
    {
      v72 = v86;
      v73 = [v72 formattedScore];
      v74 = sub_24F92B0D8();
      v76 = v75;

      v77 = v88;
      *v88 = v74;
      v77[1] = v76;
      v78 = v77;
      sub_24F3FAC70([v72 player], 0, 0, (v77 + v12[5]));
      *(v78 + v12[6]) = [v72 rank];
      v79 = [v72 score];

      v80 = 0;
      *(v78 + v12[7]) = v79;
    }

    else
    {
      v80 = 1;
      v78 = v88;
    }

    (*(v94 + 56))(v78, v80, 1, v12);
    v82 = v87;
    *v87 = v39;
    v83 = v90;
    sub_24E798398(v78, v82 + *(v90 + 20));
    *(v82 + *(v83 + 24)) = v89;
    sub_24E79827C(v82, v91, type metadata accessor for LeaderboardEntriesResponse);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C810);
    goto LABEL_39;
  }

  v93 = v15;
  v97 = MEMORY[0x277D84F90];
  result = sub_24F457EB4(0, v38 & ~(v38 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    v41 = a2 & 0xC000000000000001;
    v39 = v97;
    do
    {
      if (v41)
      {
        v42 = MEMORY[0x253052270](v40, a2);
      }

      else
      {
        v42 = *&a2[2 * v40 + 8];
      }

      v43 = v42;
      v44 = [v42 formattedScore];
      v45 = sub_24F92B0D8();
      v47 = v46;

      *v17 = v45;
      v17[1] = v47;
      sub_24F3FAC70([v43 player], 0, 0, (v17 + v12[5]));
      *(v17 + v12[6]) = [v43 rank];
      v48 = [v43 score];

      *(v17 + v12[7]) = v48;
      v97 = v39;
      v50 = *(v39 + 16);
      v49 = *(v39 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_24F457EB4(v49 > 1, v50 + 1, 1);
        v39 = v97;
      }

      ++v40;
      *(v39 + 16) = v50 + 1;
      sub_24E7984E0(v17, v39 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v50, type metadata accessor for LeaderboardEntry);
      a2 = v95;
    }

    while (v38 != v40);
    v15 = v93;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E797F78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_24E69A5C4(0, &qword_27F21C818);
    v7 = sub_24F92B5A8();
  }

  v10 = a2;
  v11 = a5;
  v9(a2, v7, a4, a5);
}

uint64_t sub_24E798040(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24E795554(a1, a2);
}

uint64_t sub_24E7980EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C810);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

size_t sub_24E7981BC(void *a1, int *a2, uint64_t a3, void *a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C810) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_24E797588(a1, a2, a3, a4, v10, v11);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E79827C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7982E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E798344()
{
  result = qword_27F21C828;
  if (!qword_27F21C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C828);
  }

  return result;
}

uint64_t sub_24E798398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E798408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E798478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7984E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E798570()
{
  result = qword_27F21C830;
  if (!qword_27F21C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C830);
  }

  return result;
}

uint64_t JSNativeIntentDispatcher.objectGraph.setter(uint64_t a1)
{
  v3 = qword_27F39ACF0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id JSNativeIntentDispatcher.init(dispatcher:logger:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[qword_27F39ACF0] = 0;
  v7 = qword_27F21C838;
  v8 = sub_24F929DA8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v10 = qword_27F21C840;
  v11 = sub_24F9220D8();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v3[v10], a2, v11);
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v12 + 8))(a2, v11);
  (*(v9 + 8))(a1, v8);
  return v13;
}

uint64_t sub_24E798880(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F9220D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v8 = sub_24F92C448();
  (*(v5 + 16))(v7, v2 + qword_27F21C840, v4);
  v12 = a1;
  v13 = v2;
  v14 = v7;
  v9 = sub_24F92C458();

  (*(v5 + 8))(v7, v4);
  return v9;
}

void sub_24E7989C8(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v119 = a4;
  v116 = a1;
  v118 = a3;
  v127 = (*MEMORY[0x277D85000] & *a3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v117 = &v100 - v5;
  v122 = sub_24F9220D8();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v115 = v6;
  v120 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9285B8();
  MEMORY[0x28223BE20](v7 - 8);
  v123 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F929798();
  v125 = *(v9 - 8);
  v126 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F922028();
  v124 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v100 - v16;
  v18 = sub_24F928388();
  v128 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v100 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v100 - v25;
  v27 = v135;
  sub_24F92C2D8();
  if (!v27)
  {
    v108 = v21;
    v109 = v15;
    v110 = v17;
    v111 = v11;
    v113 = v12;
    v135 = 0;
    sub_24F928398();
    v28 = sub_24F928348();
    v30 = v29;
    v31 = v128 + 8;
    v32 = *(v128 + 8);
    v32(v24, v18);
    v33 = v18;
    if (v30)
    {
      v34 = v31;
      v112 = v32;
      v114 = v26;
      sub_24F9298F8();
      v35 = MEMORY[0x25304F260]();
      if (v35)
      {
        v36 = v35;
        v37 = *(v127 + 10);
        v38 = *(v127 + 11);
        v39 = sub_24F929028();
        v40 = v34;
        if (*(v39 + 16) && (v41 = sub_24E76D644(v28, v30), (v42 & 1) != 0))
        {
          v106 = v38;
          v127 = v37;
          v102 = v28;
          v105 = v36;
          v104 = *(*(v39 + 56) + 16 * v41);

          if (qword_27F211060 != -1)
          {
            swift_once();
          }

          v43 = sub_24F922058();
          __swift_project_value_buffer(v43, qword_27F23DAC0);
          sub_24F922038();
          v44 = v110;
          sub_24F921FF8();

          v45 = sub_24F922038();
          v46 = sub_24F92C058();

          v47 = sub_24F92C478();
          v48 = v113;
          v49 = v111;
          v50 = v109;
          v103 = v40;
          v107 = v30;
          if (v47)
          {
            v51 = swift_slowAlloc();
            v52 = v46;
            v101 = v33;
            v53 = v51;
            v54 = swift_slowAlloc();
            *&aBlock = v54;
            *v53 = 136446210;
            *(v53 + 4) = sub_24E7620D4(v102, v30, &aBlock);
            v55 = sub_24F922008();
            _os_signpost_emit_with_name_impl(&dword_24E5DD000, v45, v52, v55, "JSNtvIntentDispatcher", "%{public}s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v54);
            MEMORY[0x2530542D0](v54, -1, -1);
            v56 = v53;
            v33 = v101;
            MEMORY[0x2530542D0](v56, -1, -1);
          }

          v57 = v114;
          v58 = v124;
          (*(v124 + 16))(v50, v44, v48);
          sub_24F922098();
          swift_allocObject();
          v59 = sub_24F922088();
          (*(v128 + 16))(v108, v57, v33);
          v60 = v123;
          sub_24F9285A8();
          MEMORY[0x253050800](v60);
          sub_24F929788();
          v61 = v126;
          v131 = v126;
          v132 = sub_24E79B74C(&qword_27F21C8D0, MEMORY[0x277D22028]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
          v63 = v44;
          v64 = v125;
          (*(v125 + 16))(boxed_opaque_existential_1, v49, v61);
          v65 = v135;
          sub_24F9292B8();
          v135 = v65;
          if (v65)
          {

            (*(v64 + 8))(v49, v61);
            (*(v58 + 8))(v63, v113);
            v112(v57, v33);
            __swift_destroy_boxed_opaque_existential_1(&aBlock);
          }

          else
          {
            v66 = v57;
            v67 = v113;
            v123 = v59;
            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            v68 = qword_27F39ACF0;
            v69 = v118;
            swift_beginAccess();
            v128 = *&v69[v68];
            if (v128)
            {
              v101 = v33;
              v70 = v121;
              v71 = *(v121 + 16);
              v108 = (v121 + 16);
              v109 = v71;
              v71(v120, v119, v122);
              sub_24E615E00(v134, &aBlock);
              v72 = v69;
              v73 = (*(v70 + 80) + 32) & ~*(v70 + 80);
              v104 = *(v70 + 80);
              v115 += 7;
              v74 = (v115 + v73) & 0xFFFFFFFFFFFFFFF8;
              v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
              v76 = (v75 + 47) & 0xFFFFFFFFFFFFFFF8;
              v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
              v78 = swift_allocObject();
              v79 = v106;
              *(v78 + 16) = v127;
              *(v78 + 24) = v79;
              v80 = *(v70 + 32);
              v121 = v70 + 32;
              v127 = v80;
              v80(v78 + v73, v120, v122);
              v81 = (v78 + v74);
              v82 = v107;
              *v81 = v102;
              v81[1] = v82;
              sub_24E612C80(&aBlock, v78 + v75);
              *(v78 + v76) = v72;
              *(v78 + v77) = v128;
              v83 = v116;
              *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v116;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C8D8);
              swift_retain_n();

              v84 = v72;
              v85 = v83;
              v118 = v85;
              v86 = sub_24F92A9E8();
              v87 = sub_24F92B858();
              v88 = v117;
              (*(*(v87 - 8) + 56))(v117, 1, 1, v87);
              v89 = swift_allocObject();
              v89[2] = 0;
              v89[3] = 0;
              v89[4] = &unk_24F956948;
              v89[5] = v78;
              v89[6] = v86;

              sub_24E6959D8(0, 0, v88, &unk_24F956958, v89);

              v90 = v120;
              v91 = v122;
              v109(v120, v119, v122);
              v92 = (v104 + 64) & ~v104;
              v93 = (v115 + v92) & 0xFFFFFFFFFFFFFFF8;
              v94 = swift_allocObject();
              *(v94 + 16) = v86;
              *(v94 + 24) = "JSNtvIntentDispatcher";
              *(v94 + 32) = 21;
              *(v94 + 40) = 2;
              *(v94 + 48) = v123;
              *(v94 + 56) = v85;
              v127(v94 + v92, v90, v91);
              v95 = v107;
              v96 = (v94 + v93);
              *v96 = v102;
              v96[1] = v95;
              *(v94 + ((v93 + 23) & 0xFFFFFFFFFFFFFFF8)) = v105;
              v132 = sub_24E79BC18;
              v133 = v94;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              v130 = sub_24E79B350;
              v131 = &block_descriptor_15;
              v97 = _Block_copy(&aBlock);

              v98 = v118;

              v99 = [objc_opt_self() valueWithNewPromiseInContext:v98 fromExecutor:v97];
              _Block_release(v97);
              if (v99)
              {

                __swift_destroy_boxed_opaque_existential_1(v134);
                (*(v125 + 8))(v111, v126);
                (*(v124 + 8))(v110, v113);
                v112(v114, v101);
              }

              else
              {
                __break(1u);
              }
            }

            else
            {

              sub_24F92A868();
              sub_24E79B74C(&qword_27F222F70, MEMORY[0x277D22430]);
              swift_allocError();
              sub_24F92A808();
              swift_willThrow();

              __swift_destroy_boxed_opaque_existential_1(v134);
              (*(v64 + 8))(v111, v61);
              (*(v58 + 8))(v110, v67);
              v112(v66, v33);
            }
          }
        }

        else
        {

          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          sub_24F92C888();

          *&aBlock = 0xD00000000000002ELL;
          *(&aBlock + 1) = 0x800000024FA47110;
          MEMORY[0x253050C20](v28, v30);

          sub_24F92A868();
          sub_24E79B74C(&qword_27F222F70, MEMORY[0x277D22430]);
          swift_allocError();
          sub_24F92A808();
          swift_willThrow();

          v112(v114, v33);
        }
      }

      else
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_24F92C888();
        MEMORY[0x253050C20](0x6863746170736964, 0xEF3C20726F662820);
        MEMORY[0x253050C20](v28, v30);

        MEMORY[0x253050C20](0xD000000000000029, 0x800000024FA470E0);
        sub_24F92A868();
        sub_24E79B74C(&qword_27F222F70, MEMORY[0x277D22430]);
        swift_allocError();
        sub_24F92A808();
        swift_willThrow();
        v112(v114, v33);
      }
    }

    else
    {
      sub_24F92A868();
      sub_24E79B74C(&qword_27F222F70, MEMORY[0x277D22430]);
      swift_allocError();
      sub_24F92A808();
      swift_willThrow();
      v32(v26, v18);
    }
  }
}