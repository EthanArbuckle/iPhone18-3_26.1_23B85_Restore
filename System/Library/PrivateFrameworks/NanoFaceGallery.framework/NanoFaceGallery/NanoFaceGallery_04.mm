uint64_t sub_25B097FC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_25B0E2830();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = &v55 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v55 - v16;
  result = MEMORY[0x28223BE20](v15);
  v65 = &v55 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_65;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_66;
  }

  v22 = (a2 - a1) / v20;
  v70 = a1;
  v69 = a4;
  v64 = v20;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v24;
    if (v24 >= 1)
    {
      v38 = -v64;
      v58 = (v9 + 8);
      v59 = (v9 + 16);
      v39 = v37;
      v56 = a1;
      v57 = a4;
      v61 = v8;
      do
      {
        v55 = v37;
        v40 = a2;
        v41 = a2 + v38;
        v67 = v41;
        v64 = v40;
        while (1)
        {
          if (v40 <= a1)
          {
            v70 = v40;
            v68 = v55;
            goto LABEL_63;
          }

          v42 = a3;
          v60 = v37;
          v43 = *v59;
          v65 = v39;
          v66 = &v39[v38];
          v43(v62);
          (v43)(v63, v41, v8);
          sub_25B0E3900();
          sub_25B0E38F0();
          sub_25B0E3850();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v44 = v38;
          v45 = a3 + v38;
          v46 = v62;
          v47 = sub_25B0E27E0();
          v48 = v63;
          v49 = sub_25B0E27E0();

          v50 = *v58;
          v51 = v48;
          v52 = v61;
          (*v58)(v51, v61);
          v50(v46, v52);
          if (v47 < v49)
          {
            break;
          }

          v37 = v66;
          v41 = v67;
          v53 = v57;
          a3 = v45;
          if (v42 < v65 || v45 >= v65)
          {
            v8 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v38 = v44;
          }

          else
          {
            v8 = v61;
            v38 = v44;
            if (v42 != v65)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v37;
          a1 = v56;
          v40 = v64;
          if (v66 <= v53)
          {
            a2 = v64;
            goto LABEL_62;
          }
        }

        a2 = v67;
        v54 = v57;
        a3 = v45;
        if (v42 < v64 || v45 >= v64)
        {
          v8 = v61;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v44;
        }

        else
        {
          v37 = v60;
          v8 = v61;
          v38 = v44;
          if (v42 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v39 = v65;
        a1 = v56;
      }

      while (v65 > v54);
    }

LABEL_62:
    v70 = a2;
    v68 = v37;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = (a4 + v23);
    v68 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v26 = *(v9 + 16);
      v62 = (v9 + 16);
      v58 = (v9 + 8);
      v59 = v26;
      v60 = a3;
      do
      {
        v67 = a2;
        v27 = v59;
        (v59)(v65, a2, v8);
        v28 = a4;
        v27(v66, a4, v8);
        sub_25B0E3900();
        sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v29 = v65;
        v30 = sub_25B0E27E0();
        v31 = v66;
        v32 = sub_25B0E27E0();

        v33 = *v58;
        (*v58)(v31, v8);
        v33(v29, v8);
        if (v30 >= v32)
        {
          v35 = v28;
          v36 = v64;
          a4 = v35 + v64;
          a2 = v67;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v60;
          }

          else
          {
            v34 = v60;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v69 = a4;
        }

        else
        {
          a2 = v67 + v64;
          a4 = v28;
          if (a1 < v67 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v60;
          }

          else
          {
            v34 = v60;
            if (a1 != v67)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v64;
        }

        a1 += v36;
        v70 = a1;
      }

      while (a4 < v63 && a2 < v34);
    }
  }

LABEL_63:
  sub_25B0D3F78(&v70, &v69, &v68);
  return 1;
}

uint64_t sub_25B098694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B0498DC;

  return sub_25B096A70(a1, v4, v5, v7, v6);
}

uint64_t sub_25B098754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0987BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B0498DC;

  return sub_25B065938(a1, v5);
}

unint64_t sub_25B098874()
{
  result = qword_27FA319F8;
  if (!qword_27FA319F8)
  {
    sub_25B046E60(255, &qword_27FA312B0, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319F8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25B0988F4()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = sub_25B0E3900();
  v1[10] = sub_25B0E38F0();
  v9 = sub_25B0E3850();
  v1[11] = v9;
  v1[12] = v8;

  return MEMORY[0x2822009F8](sub_25B098A60, v9, v8);
}

uint64_t sub_25B098A60()
{
  v0[13] = *(v0[2] + 16);
  v1 = sub_25B098DD8();
  if (v1[2])
  {
    v2 = v0[10];
    v3 = v1;

    v4 = v0[8];
    v5 = v0[5];

    v6 = v0[1];

    return v6(v3);
  }

  else
  {
    v9 = v0[8];
    v8 = v0[9];
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[2];
    v13 = v0[3];

    v14 = *(v12 + 64);
    sub_25B099134();
    sub_25B0E39A0();
    (*(v11 + 8))(v10, v13);
    v15 = sub_25B0E38F0();
    v0[14] = v15;
    v16 = *(MEMORY[0x277D85798] + 4);
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_25B098BE8;
    v18 = v0[8];
    v19 = v0[6];
    v20 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 16, v15, v20, v19);
  }
}

uint64_t sub_25B098BE8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_25B098D2C, v5, v4);
}

uint64_t sub_25B098D2C()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  (*(v4 + 8))(v3, v5);
  v6 = sub_25B098DD8();
  v7 = v0[8];
  v8 = v0[5];

  v9 = v0[1];

  return v9(v6);
}

void *sub_25B098DD8()
{
  v1 = sub_25B0E2750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v31 - v7;
  v8 = [v0 numberOfFaces];
  if (v8 < 1)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = v8;
  v10 = 0;
  v32 = v2 + 8;
  v33 = (v2 + 16);
  v31 = v2 + 32;
  v11 = MEMORY[0x277D84F90];
  v12 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
  v36 = v2;
  v37 = v1;
  v34 = v8;
  v35 = v6;
  do
  {
    v13 = [v0 v12[157]];
    if (v13)
    {
      v14 = v13;
      v15 = [v0 identifierForFaceAtIndex_];
      if (v15)
      {
        v16 = v15;
        sub_25B0E3740();

        v17 = [v0 calloutName];
        if (v17)
        {
          v18 = v17;
          v19 = (*(v17 + 2))(v17, v14);
          if (v19)
          {
            v20 = v19;
            sub_25B0E3740();
            _Block_release(v18);
          }

          else
          {
            _Block_release(v18);
          }
        }

        else
        {
          v21 = [v14 name];
          if (v21)
          {
            v22 = v21;
            sub_25B0E3740();
          }
        }

        v23 = v14;
        v24 = v38;
        sub_25B0E2720();
        v25 = v35;
        v26 = v37;
        (*v33)(v35, v24, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_25B089C98(0, v11[2] + 1, 1, v11);
        }

        v27 = v36;
        v29 = v11[2];
        v28 = v11[3];
        if (v29 >= v28 >> 1)
        {
          v11 = sub_25B089C98(v28 > 1, v29 + 1, 1, v11);
        }

        (*(v27 + 8))(v38, v26);
        v11[2] = v29 + 1;
        (*(v27 + 32))(v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v29, v25, v26);
        v9 = v34;
        v12 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
      }

      else
      {
      }
    }

    ++v10;
  }

  while (v9 != v10);
  return v11;
}

uint64_t sub_25B099134()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v20 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  *v5 = 1;
  (*(v2 + 104))(v5, *MEMORY[0x277D85768], v1);
  sub_25B0E3950();
  (*(v2 + 8))(v5, v1);
  v14 = v0 + OBJC_IVAR____TtC15NanoFaceGalleryP33_61C3017D18ADB1D9719E0FDF1EB8939530WatchGalleryCollectionObserver_lock;
  os_unfair_lock_lock(v14);
  (*(v7 + 16))(v11, v13, v6);
  v15 = *(v14 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 8) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_25B089A40(0, v15[2] + 1, 1, v15);
    *(v14 + 8) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_25B089A40(v17 > 1, v18 + 1, 1, v15);
    *(v14 + 8) = v15;
  }

  v15[2] = v18 + 1;
  (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v11, v6);
  os_unfair_lock_unlock(v14);
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_25B0993FC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

id sub_25B099478()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = &v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_61C3017D18ADB1D9719E0FDF1EB8939530WatchGalleryCollectionObserver_lock];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_61C3017D18ADB1D9719E0FDF1EB8939530WatchGalleryCollectionObserver_lock]);
  v8 = *(v7 + 1);
  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v6, v13, v2);
      sub_25B0E3990();
      (*(v10 - 8))(v6, v2);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  os_unfair_lock_unlock(v7);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

uint64_t sub_25B099628(void *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v44);
  v43 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v29 = a1;
  result = *a1;
  v41 = *(*a1 + 16);
  if (v41)
  {
    v15 = 0;
    v37 = (v2 + 32);
    v38 = v11 + 16;
    v36 = (v2 + 88);
    v35 = *MEMORY[0x277D85758];
    v34 = *MEMORY[0x277D85750];
    v32 = *MEMORY[0x277D85748];
    v30 = (v11 + 8);
    v31 = (v2 + 8);
    v45 = (v11 + 32);
    v16 = MEMORY[0x277D84F90];
    v33 = v7;
    v39 = result;
    v40 = v11;
    while (1)
    {
      if (v15 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v18 = *(v11 + 72);
      (*(v11 + 16))(v13, result + v17 + v18 * v15, v7);
      v19 = v42;
      sub_25B0E3970();
      v21 = v43;
      v20 = v44;
      (*v37)(v43, v19, v44);
      v22 = (*v36)(v21, v20);
      if (v22 == v35 || v22 == v34)
      {
        goto LABEL_12;
      }

      if (v22 != v32)
      {
        break;
      }

      (*v30)(v13, v7);
LABEL_4:
      ++v15;
      v11 = v40;
      result = v39;
      if (v41 == v15)
      {
        goto LABEL_18;
      }
    }

    (*v31)(v43, v44);
LABEL_12:
    v24 = *v45;
    (*v45)(v46, v13, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B08C168(0, *(v16 + 16) + 1, 1);
      v16 = v47;
    }

    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_25B08C168(v26 > 1, v27 + 1, 1);
      v16 = v47;
    }

    *(v16 + 16) = v27 + 1;
    v28 = v16 + v17 + v27 * v18;
    v7 = v33;
    v24(v28, v46, v33);
    goto LABEL_4;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_18:

  *v29 = v16;
  return result;
}

uint64_t sub_25B099AE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31840, &qword_25B0E6FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B099B50()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31AB0);
  __swift_project_value_buffer(v0, qword_27FA31AB0);
  return sub_25B0E2960();
}

uint64_t sub_25B099BD0()
{
  v1 = v0;
  if (qword_27FA30D10 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31AB0);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25B04BE04(*(v1 + 24), *(v1 + 32), &v9);
    _os_log_impl(&dword_25B03D000, v3, v4, "WatchLibrary for %s went away…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  [*(v1 + 16) removeObserver_];
  v7 = *(v1 + 32);

  return v1;
}

uint64_t sub_25B099D40()
{
  sub_25B099BD0();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25B099D98()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = sub_25B0E3900();
  v1[10] = sub_25B0E38F0();
  v9 = sub_25B0E3850();
  v1[11] = v9;
  v1[12] = v8;

  return MEMORY[0x2822009F8](sub_25B099F04, v9, v8);
}

uint64_t sub_25B099F04()
{
  v36 = v0;
  if (qword_27FA30D10 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_25B0E2970();
  v0[13] = __swift_project_value_buffer(v2, qword_27FA31AB0);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_25B04BE04(*(v5 + 24), *(v5 + 32), &v35);
    _os_log_impl(&dword_25B03D000, v3, v4, "WatchLibrary for %s asked…", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  v0[14] = *(v0[2] + 16);
  v8 = sub_25B09A610();
  if (v8[2])
  {
    v9 = v0[10];

    v10 = sub_25B0E2950();
    v11 = sub_25B0E3A50();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v8[2];

      _os_log_impl(&dword_25B03D000, v10, v11, "WatchLibrary sending %ld face(s)…", v12, 0xCu);
      MEMORY[0x25F8613E0](v12, -1, -1);
    }

    else
    {
    }

    v31 = v0[8];
    v32 = v0[5];

    v33 = v0[1];

    return v33(v8);
  }

  else
  {
    v13 = v0[2];

    v14 = sub_25B0E2950();
    v15 = sub_25B0E3A50();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[2];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_25B04BE04(*(v16 + 24), *(v16 + 32), &v35);
      _os_log_impl(&dword_25B03D000, v14, v15, "WatchLibrary for %s needs to load…", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x25F8613E0](v18, -1, -1);
      MEMORY[0x25F8613E0](v17, -1, -1);
    }

    v20 = v0[8];
    v19 = v0[9];
    v22 = v0[4];
    v21 = v0[5];
    v23 = v0[3];
    v24 = *(v0[2] + 40);
    sub_25B09AB88();
    sub_25B0E39A0();
    (*(v22 + 8))(v21, v23);
    v25 = sub_25B0E38F0();
    v0[15] = v25;
    v26 = *(MEMORY[0x277D85798] + 4);
    v27 = swift_task_alloc();
    v0[16] = v27;
    *v27 = v0;
    v27[1] = sub_25B09A318;
    v28 = v0[8];
    v29 = v0[6];
    v30 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 17, v25, v30, v29);
  }
}

uint64_t sub_25B09A318()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_25B09A45C, v5, v4);
}

uint64_t sub_25B09A45C()
{
  v20 = v0;
  v1 = *(v0 + 80);

  if (*(v0 + 136))
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  else
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 16);

    v4 = sub_25B0E2950();
    v5 = sub_25B0E3A50();

    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    if (v6)
    {
      v10 = *(v0 + 16);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_25B04BE04(*(v10 + 24), *(v10 + 32), &v19);
      _os_log_impl(&dword_25B03D000, v4, v5, "WatchLibrary %s updated…", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25F8613E0](v12, -1, -1);
      MEMORY[0x25F8613E0](v11, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
  }

  v13 = *(v0 + 112);
  v14 = sub_25B09A610();
  v15 = *(v0 + 64);
  v16 = *(v0 + 40);

  v17 = *(v0 + 8);

  return v17(v14);
}

void *sub_25B09A610()
{
  v1 = sub_25B0E2750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v51 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = v40 - v6;
  v7 = sub_25B0E24A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B50, &qword_25B0E72F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v40 - v20;
  v56 = [v0 numberOfFaces];
  if (v56 < 1)
  {
    return MEMORY[0x277D84F90];
  }

  v54 = v21;
  v22 = 0;
  v49 = (v8 + 56);
  v50 = v16;
  v48 = (v8 + 48);
  v43 = (v2 + 16);
  v44 = (v8 + 32);
  v41 = (v8 + 8);
  v42 = v2 + 8;
  v40[1] = v2 + 32;
  v55 = MEMORY[0x277D84F90];
  v53 = v19;
  v46 = v2;
  v47 = v0;
  v45 = v7;
  do
  {
    v23 = [v0 faceAtIndex_];
    if (v23)
    {
      v24 = v23;
      v25 = [v0 uuidForFace_];
      v26 = v50;
      if (v25)
      {
        v27 = v25;
        sub_25B0E2480();

        v19 = v53;
        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      (*v49)(v19, v28, 1, v7);
      v29 = v54;
      sub_25B09B8D8(v19, v54);
      sub_25B09B948(v29, v26);
      if ((*v48)(v26, 1, v7) == 1)
      {
        sub_25B058448(v29, &qword_27FA31B50, &qword_25B0E72F0);

        sub_25B058448(v26, &qword_27FA31B50, &qword_25B0E72F0);
      }

      else
      {
        v30 = v51;
        (*v44)(v11, v26, v7);
        sub_25B0E2460();
        v31 = [v24 name];
        if (v31)
        {
          v32 = v31;
          sub_25B0E3740();
        }

        v33 = v24;
        v34 = v52;
        sub_25B0E2720();
        (*v43)(v30, v34, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_25B089C98(0, v55[2] + 1, 1, v55);
        }

        v7 = v45;
        v35 = v46;
        v37 = v55[2];
        v36 = v55[3];
        if (v37 >= v36 >> 1)
        {
          v55 = sub_25B089C98(v36 > 1, v37 + 1, 1, v55);
        }

        (*(v35 + 8))(v52, v1);
        (*v41)(v11, v7);
        sub_25B058448(v54, &qword_27FA31B50, &qword_25B0E72F0);
        v38 = v55;
        v55[2] = v37 + 1;
        (*(v35 + 32))(v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v37, v51, v1);
        v0 = v47;
        v19 = v53;
      }
    }

    ++v22;
  }

  while (v56 != v22);
  return v55;
}

uint64_t sub_25B09AB88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v20 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  *v5 = 1;
  (*(v2 + 104))(v5, *MEMORY[0x277D85768], v1);
  sub_25B0E3950();
  (*(v2 + 8))(v5, v1);
  v14 = v0 + OBJC_IVAR____TtC15NanoFaceGalleryP33_66355BD49EE9870FF1FFD4662D755EF020WatchLibraryObserver_lock;
  os_unfair_lock_lock(v14);
  (*(v7 + 16))(v11, v13, v6);
  v15 = *(v14 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 8) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_25B089A40(0, v15[2] + 1, 1, v15);
    *(v14 + 8) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_25B089A40(v17 > 1, v18 + 1, 1, v15);
    *(v14 + 8) = v15;
  }

  v15[2] = v18 + 1;
  (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v11, v6);
  os_unfair_lock_unlock(v14);
  return (*(v7 + 8))(v13, v6);
}

id sub_25B09AE50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = &v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_66355BD49EE9870FF1FFD4662D755EF020WatchLibraryObserver_lock];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_66355BD49EE9870FF1FFD4662D755EF020WatchLibraryObserver_lock]);
  v8 = *(v7 + 1);
  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v6, v13, v2);
      sub_25B0E3990();
      (*(v10 - 8))(v6, v2);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  os_unfair_lock_unlock(v7);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

uint64_t sub_25B09B024(void *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v44);
  v43 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v29 = a1;
  result = *a1;
  v41 = *(*a1 + 16);
  if (v41)
  {
    v15 = 0;
    v37 = (v2 + 32);
    v38 = v11 + 16;
    v36 = (v2 + 88);
    v35 = *MEMORY[0x277D85758];
    v34 = *MEMORY[0x277D85750];
    v32 = *MEMORY[0x277D85748];
    v30 = (v11 + 8);
    v31 = (v2 + 8);
    v45 = (v11 + 32);
    v16 = MEMORY[0x277D84F90];
    v33 = v7;
    v39 = result;
    v40 = v11;
    while (1)
    {
      if (v15 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v18 = *(v11 + 72);
      (*(v11 + 16))(v13, result + v17 + v18 * v15, v7);
      v19 = v42;
      sub_25B0E3970();
      v21 = v43;
      v20 = v44;
      (*v37)(v43, v19, v44);
      v22 = (*v36)(v21, v20);
      if (v22 == v35 || v22 == v34)
      {
        goto LABEL_12;
      }

      if (v22 != v32)
      {
        break;
      }

      (*v30)(v13, v7);
LABEL_4:
      ++v15;
      v11 = v40;
      result = v39;
      if (v41 == v15)
      {
        goto LABEL_18;
      }
    }

    (*v31)(v43, v44);
LABEL_12:
    v24 = *v45;
    (*v45)(v46, v13, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B08C168(0, *(v16 + 16) + 1, 1);
      v16 = v47;
    }

    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_25B08C168(v26 > 1, v27 + 1, 1);
      v16 = v47;
    }

    *(v16 + 16) = v27 + 1;
    v28 = v16 + v17 + v27 * v18;
    v7 = v33;
    v24(v28, v46, v33);
    goto LABEL_4;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_18:

  *v29 = v16;
  return result;
}

void sub_25B09B3F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;

  sub_25B09B7C0();
}

void *sub_25B09B4F4(void *a1)
{
  v2 = v1;
  v4 = sub_25B0E24A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[5] = [objc_allocWithZone(type metadata accessor for WatchLibraryObserver()) init];
  v2[2] = a1;
  v9 = a1;
  v10 = [v9 collectionIdentifier];
  v11 = sub_25B0E3740();
  v13 = v12;

  v26 = v11;
  v27 = v13;
  MEMORY[0x25F8602F0](45, 0xE100000000000000);
  v14 = [v9 deviceUUID];
  sub_25B0E2480();

  sub_25B08405C();
  v15 = sub_25B0E3E20();
  MEMORY[0x25F8602F0](v15);

  (*(v5 + 8))(v8, v4);
  v16 = v27;
  v2[3] = v26;
  v2[4] = v16;
  if (qword_27FA30D10 != -1)
  {
    swift_once();
  }

  v17 = sub_25B0E2970();
  __swift_project_value_buffer(v17, qword_27FA31AB0);

  v18 = sub_25B0E2950();
  v19 = sub_25B0E3A50();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136315138;
    v22 = v2[3];
    v23 = v2[4];

    v24 = sub_25B04BE04(v22, v23, &v26);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_25B03D000, v18, v19, "WatchLibrary for %s generated…", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x25F8613E0](v21, -1, -1);
    MEMORY[0x25F8613E0](v20, -1, -1);
  }

  [v9 addObserver_];
  return v2;
}

void sub_25B09B7C0()
{
  v1 = v0;
  if (qword_27FA30D10 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31AB0);
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25B03D000, v3, v4, "WatchLibrary observer updated…", v5, 2u);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC15NanoFaceGalleryP33_66355BD49EE9870FF1FFD4662D755EF020WatchLibraryObserver_lock;
  os_unfair_lock_lock(v6);
  sub_25B09B024((v6 + 8));

  os_unfair_lock_unlock(v6);
}

uint64_t sub_25B09B8D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B50, &qword_25B0E72F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B09B948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B50, &qword_25B0E72F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_25B09B9CC()
{
  v1 = sub_25B0E23C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + 48) fileURL];
  sub_25B0E23A0();

  v7 = sub_25B0E2360();
  v8 = [objc_opt_self() imageFromSnapshotResultFileURL_];

  (*(v2 + 8))(v5, v1);
  if (!v8)
  {
    sub_25B09BB24();
    swift_allocError();
    swift_willThrow();
  }

  return v8;
}

unint64_t sub_25B09BB24()
{
  result = qword_27FA31B58;
  if (!qword_27FA31B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31B58);
  }

  return result;
}

unint64_t sub_25B09BB8C()
{
  result = qword_27FA31B60;
  if (!qword_27FA31B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31B60);
  }

  return result;
}

uint64_t sub_25B09BBE0()
{
  if (*v0)
  {
    return 0x6863746177;
  }

  else
  {
    return 0x656E6F6870;
  }
}

uint64_t sub_25B09BC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v6 || (sub_25B0E3E30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6863746177 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25B0E3E30();

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

uint64_t sub_25B09BCE0(uint64_t a1)
{
  v2 = sub_25B09DE38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B09BD1C(uint64_t a1)
{
  v2 = sub_25B09DE38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B09BD58(uint64_t a1)
{
  v2 = sub_25B09DEE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B09BD94(uint64_t a1)
{
  v2 = sub_25B09DEE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B09BDD0(uint64_t a1)
{
  v2 = sub_25B09DE8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B09BE0C(uint64_t a1)
{
  v2 = sub_25B09DE8C();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_25B09BE98(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_25B09BEC8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25B09BEF4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_25B09BFCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25B09D658(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_25B09C00C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x656372756F73;
    v5 = 0xD000000000000010;
    if (a1 != 2)
    {
      v5 = 0x736E6F6974706FLL;
    }

    if (a1)
    {
      v4 = 0x56646C697542736FLL;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 != 7)
    {
      v1 = 0x6D6172676F6E6F6DLL;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000017;
    }

    v2 = 1702125924;
    if (a1 != 4)
    {
      v2 = 0x7261646E656C6163;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25B09C138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B09D690(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B09C16C(uint64_t a1)
{
  v2 = sub_25B09DF34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B09C1A8(uint64_t a1)
{
  v2 = sub_25B09DF34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B09C294(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31BB8, &qword_25B0E8180);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31BC0, &qword_25B0E8188);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31BC8, &qword_25B0E8190);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B09DE38();
  sub_25B0E3F70();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_25B09DE8C();
    sub_25B0E3DC0();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_25B09DEE0();
    sub_25B0E3DC0();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_25B09C550(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31C00, &qword_25B0E81A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B09DF34();
  sub_25B0E3F70();
  LOBYTE(v28) = *v3;
  v29 = 0;
  sub_25B09E0F0();
  sub_25B0E3DF0();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v28) = 1;
    sub_25B0E3DE0();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v28) = 2;
    sub_25B0E3DE0();
    v28 = *(v3 + 40);
    v29 = 3;
    sub_25B09E144();
    sub_25B0E3DF0();
    v15 = type metadata accessor for SnapshotContext();
    v16 = v15[8];
    LOBYTE(v28) = 4;
    sub_25B0E2440();
    sub_25B09E198(&qword_27FA31C18, MEMORY[0x277CC9578]);
    sub_25B0E3DF0();
    v17 = v15[9];
    LOBYTE(v28) = 5;
    sub_25B0E24F0();
    sub_25B09E198(&qword_27FA31C20, MEMORY[0x277CC99E8]);
    sub_25B0E3DF0();
    v18 = (v3 + v15[10]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v28) = 6;
    sub_25B0E3DD0();
    v21 = (v3 + v15[11]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v28) = 7;
    sub_25B0E3DE0();
    v24 = (v3 + v15[12]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v28) = 8;
    sub_25B0E3DD0();
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_25B09C8F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v44 = sub_25B0E24F0();
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_25B0E2440();
  v43 = *(v45 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31BD0, &qword_25B0E8198);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  v46 = type metadata accessor for SnapshotContext();
  v12 = *(*(v46 - 1) + 64);
  v13 = MEMORY[0x28223BE20](v46);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x25F860B80](v13);
  if (result)
  {
    v17 = result;
    sub_25B0E3740();

    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25B09DF34();
    sub_25B0E3F60();
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      v48 = 0;
      sub_25B09DF88();
      v19 = v8;
      sub_25B0E3DA0();
      *v15 = v47;
      LOBYTE(v47) = 1;
      v20 = sub_25B0E3D90();
      v22 = v21;

      *(v15 + 1) = v20;
      *(v15 + 2) = v22;
      LOBYTE(v47) = 2;
      *(v15 + 3) = sub_25B0E3D90();
      *(v15 + 4) = v23;
      v48 = 3;
      sub_25B09DFDC();
      sub_25B0E3DA0();
      *(v15 + 5) = v47;
      LOBYTE(v47) = 4;
      sub_25B09E198(&qword_27FA31BF0, MEMORY[0x277CC9578]);
      v24 = v40;
      v25 = v45;
      sub_25B0E3DA0();
      (*(v43 + 32))(&v15[v46[8]], v24, v25);
      LOBYTE(v47) = 5;
      sub_25B09E198(&qword_27FA31BF8, MEMORY[0x277CC99E8]);
      v26 = v39;
      v27 = v44;
      sub_25B0E3DA0();
      (*(v42 + 32))(&v15[v46[9]], v26, v27);
      LOBYTE(v47) = 6;
      v28 = sub_25B0E3D80();
      v29 = &v15[v46[10]];
      *v29 = v28;
      v29[1] = v30;
      LOBYTE(v47) = 7;
      v31 = sub_25B0E3D90();
      v32 = &v15[v46[11]];
      *v32 = v31;
      v32[1] = v33;
      LOBYTE(v47) = 8;
      v34 = sub_25B0E3D80();
      v36 = v35;
      v37 = &v15[v46[12]];
      (*(v41 + 8))(v11, v19);
      *v37 = v34;
      v37[1] = v36;
      sub_25B09E030(v15, v38);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return sub_25B09E094(v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25B09D060()
{
  v1 = v0;
  MEMORY[0x25F860A80](*v0);
  v2 = v0[1];
  v3 = v0[2];
  sub_25B0E3780();
  v4 = v0[3];
  v5 = v0[4];
  sub_25B0E3780();
  MEMORY[0x25F860A80](v0[5]);
  v6 = type metadata accessor for SnapshotContext();
  v7 = v6[8];
  sub_25B0E2440();
  sub_25B09E198(&qword_27FA31C28, MEMORY[0x277CC9578]);
  sub_25B0E36D0();
  v8 = v6[9];
  sub_25B0E24F0();
  sub_25B09E198(&qword_27FA31C30, MEMORY[0x277CC99E8]);
  sub_25B0E36D0();
  v9 = (v1 + v6[10]);
  if (v9[1])
  {
    v10 = *v9;
    sub_25B0E3F30();
    sub_25B0E3780();
  }

  else
  {
    sub_25B0E3F30();
  }

  v11 = (v1 + v6[11]);
  v12 = *v11;
  v13 = v11[1];
  sub_25B0E3780();
  v14 = (v1 + v6[12]);
  if (!v14[1])
  {
    return sub_25B0E3F30();
  }

  v15 = *v14;
  sub_25B0E3F30();

  return sub_25B0E3780();
}

uint64_t sub_25B09D22C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25B09D97C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_25B09D2A8()
{
  sub_25B0E3F10();
  sub_25B09D060();
  return sub_25B0E3F50();
}

uint64_t sub_25B09D2EC()
{
  sub_25B0E3F10();
  sub_25B09D060();
  return sub_25B0E3F50();
}

uint64_t type metadata accessor for SnapshotContext()
{
  result = qword_27FA31C38;
  if (!qword_27FA31C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25B09D3C4()
{
  result = qword_27FA31B70;
  if (!qword_27FA31B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31B70);
  }

  return result;
}

unint64_t sub_25B09D418()
{
  result = qword_27FA31B78;
  if (!qword_27FA31B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31B78);
  }

  return result;
}

unint64_t sub_25B09D46C()
{
  result = qword_27FA31B80;
  if (!qword_27FA31B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31B80);
  }

  return result;
}

uint64_t sub_25B09D4C0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v5 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v6 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  if (a1[5] != a2[5])
  {
    return 0;
  }

  v7 = type metadata accessor for SnapshotContext();
  v8 = v7[8];
  if ((sub_25B0E2420() & 1) == 0 || (MEMORY[0x25F85F040](a1 + v7[9], a2 + v7[9]) & 1) == 0)
  {
    return 0;
  }

  v9 = v7[10];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v12[1];
  if (v11)
  {
    if (!v13 || (*v10 != *v12 || v11 != v13) && (sub_25B0E3E30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = v7[11];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  if (v15 == *v17 && v16 == v17[1] || (sub_25B0E3E30() & 1) != 0)
  {
    v18 = v7[12];
    v19 = (a1 + v18);
    v20 = *(a1 + v18 + 8);
    v21 = (a2 + v18);
    v22 = v21[1];
    if (v20)
    {
      if (v22 && (*v19 == *v21 && v20 == v22 || (sub_25B0E3E30() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v22)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_25B09D658(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_25B09D690(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_25B0E3E30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56646C697542736FLL && a2 == 0xEE006E6F69737265 || (sub_25B0E3E30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025B0EC100 == a2 || (sub_25B0E3E30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_25B0E3E30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_25B0E3E30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_25B0E3E30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025B0EC120 == a2 || (sub_25B0E3E30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025B0EC140 == a2 || (sub_25B0E3E30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6172676F6E6F6DLL && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_25B0E3E30();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_25B09D97C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B88, &qword_25B0E8168);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B90, &qword_25B0E8170);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B98, &qword_25B0E8178);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B09DE38();
  v15 = v32;
  sub_25B0E3F60();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_25B0E3DB0();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_25B044AA8();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_25B0E3C00();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30DA8, &unk_25B0E5060) + 48);
    *v24 = &type metadata for SnapshotContext.Source;
    sub_25B0E3D70();
    sub_25B0E3BF0();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_25B09DE8C();
    sub_25B0E3D60();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_25B09DEE0();
    sub_25B0E3D60();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_25B09DE38()
{
  result = qword_27FA31BA0;
  if (!qword_27FA31BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BA0);
  }

  return result;
}

unint64_t sub_25B09DE8C()
{
  result = qword_27FA31BA8;
  if (!qword_27FA31BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BA8);
  }

  return result;
}

unint64_t sub_25B09DEE0()
{
  result = qword_27FA31BB0;
  if (!qword_27FA31BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BB0);
  }

  return result;
}

unint64_t sub_25B09DF34()
{
  result = qword_27FA31BD8;
  if (!qword_27FA31BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BD8);
  }

  return result;
}

unint64_t sub_25B09DF88()
{
  result = qword_27FA31BE0;
  if (!qword_27FA31BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BE0);
  }

  return result;
}

unint64_t sub_25B09DFDC()
{
  result = qword_27FA31BE8;
  if (!qword_27FA31BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31BE8);
  }

  return result;
}

uint64_t sub_25B09E030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B09E094(uint64_t a1)
{
  v2 = type metadata accessor for SnapshotContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B09E0F0()
{
  result = qword_27FA31C08;
  if (!qword_27FA31C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C08);
  }

  return result;
}

unint64_t sub_25B09E144()
{
  result = qword_27FA31C10;
  if (!qword_27FA31C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C10);
  }

  return result;
}

uint64_t sub_25B09E198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SnapshotContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnapshotContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_25B09E3A8()
{
  sub_25B0E2440();
  if (v0 <= 0x3F)
  {
    sub_25B0E24F0();
    if (v1 <= 0x3F)
    {
      sub_25B09E470();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25B09E470()
{
  if (!qword_27FA31C48)
  {
    v0 = sub_25B0E3B10();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA31C48);
    }
  }
}

unint64_t sub_25B09E4C4()
{
  result = qword_27FA31C50;
  if (!qword_27FA31C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C50);
  }

  return result;
}

unint64_t sub_25B09E520()
{
  result = qword_27FA31C58;
  if (!qword_27FA31C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C58);
  }

  return result;
}

unint64_t sub_25B09E578()
{
  result = qword_27FA31C60;
  if (!qword_27FA31C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C60);
  }

  return result;
}

unint64_t sub_25B09E5D0()
{
  result = qword_27FA31C68;
  if (!qword_27FA31C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C68);
  }

  return result;
}

unint64_t sub_25B09E628()
{
  result = qword_27FA31C70;
  if (!qword_27FA31C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C70);
  }

  return result;
}

unint64_t sub_25B09E680()
{
  result = qword_27FA31C78;
  if (!qword_27FA31C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C78);
  }

  return result;
}

unint64_t sub_25B09E6D8()
{
  result = qword_27FA31C80;
  if (!qword_27FA31C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C80);
  }

  return result;
}

unint64_t sub_25B09E730()
{
  result = qword_27FA31C88;
  if (!qword_27FA31C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C88);
  }

  return result;
}

unint64_t sub_25B09E788()
{
  result = qword_27FA31C90;
  if (!qword_27FA31C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C90);
  }

  return result;
}

unint64_t sub_25B09E7E0()
{
  result = qword_27FA31C98;
  if (!qword_27FA31C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31C98);
  }

  return result;
}

unint64_t sub_25B09E838()
{
  result = qword_27FA31CA0;
  if (!qword_27FA31CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CA0);
  }

  return result;
}

unint64_t sub_25B09E890()
{
  result = qword_27FA31CA8;
  if (!qword_27FA31CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CA8);
  }

  return result;
}

uint64_t SnapshotKey.fileNameRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SnapshotKey.fileNameRepresentation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SnapshotKey.fullKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SnapshotKey.fullKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_25B09E9FC()
{
  if (*v0)
  {
    result = 0x79654B6C6C7566;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_25B09EA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000025B0EC160 == a2 || (sub_25B0E3E30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x79654B6C6C7566 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_25B0E3E30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_25B09EB24(uint64_t a1)
{
  v2 = sub_25B09ED30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B09EB60(uint64_t a1)
{
  v2 = sub_25B09ED30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SnapshotKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31CB0, &qword_25B0E86D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B09ED30();
  sub_25B0E3F70();
  v16 = 0;
  v12 = v14[3];
  sub_25B0E3DE0();
  if (!v12)
  {
    v15 = 1;
    sub_25B0E3DE0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_25B09ED30()
{
  result = qword_27FA31CB8;
  if (!qword_27FA31CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CB8);
  }

  return result;
}

uint64_t SnapshotKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31CC0, &qword_25B0E86D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B09ED30();
  sub_25B0E3F60();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_25B0E3D90();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_25B0E3D90();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static SnapshotKey.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25B0E3E30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25B0E3E30();
    }
  }

  return result;
}

uint64_t SnapshotKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25B0E3780();

  return sub_25B0E3780();
}

uint64_t SnapshotKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B09F110()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B09F178()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25B0E3780();

  return sub_25B0E3780();
}

uint64_t sub_25B09F1C8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B09F22C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25B0E3E30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25B0E3E30();
    }
  }

  return result;
}

uint64_t SnapshotKey.id.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C0, &qword_25B0E77D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25B0E7730;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;

  return v5;
}

unint64_t sub_25B09F354()
{
  result = qword_27FA31CC8;
  if (!qword_27FA31CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CC8);
  }

  return result;
}

unint64_t sub_25B09F3AC()
{
  result = qword_27FA31CD0;
  if (!qword_27FA31CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31CD8, &qword_25B0EA030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CD0);
  }

  return result;
}

uint64_t sub_25B09F428@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C0, &qword_25B0E77D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25B0E7730;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  *a1 = v7;
}

uint64_t sub_25B09F4B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25B09F4FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_25B09F560()
{
  result = qword_27FA31CE0;
  if (!qword_27FA31CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CE0);
  }

  return result;
}

unint64_t sub_25B09F5B8()
{
  result = qword_27FA31CE8;
  if (!qword_27FA31CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CE8);
  }

  return result;
}

unint64_t sub_25B09F610()
{
  result = qword_27FA31CF0;
  if (!qword_27FA31CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31CF0);
  }

  return result;
}

uint64_t sub_25B09F664()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31CF8);
  __swift_project_value_buffer(v0, qword_27FA31CF8);
  return sub_25B0E2960();
}

uint64_t FaceLibraryManager.Entry.identifiableFace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B0E2750();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FaceLibraryManager.Entry.identifiableFace.setter(uint64_t a1)
{
  v3 = sub_25B0E2750();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FaceLibraryManager.Entry.location.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FaceLibraryManager.Entry(0) + 20);

  return sub_25B050C60(a1, v3);
}

BOOL static FaceLibraryManager.Entry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x25F85F260]())
  {
    v4 = type metadata accessor for FaceLibraryManager.Entry(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = *(type metadata accessor for FacePlacement.Location(0) + 20);
      if (sub_25B0E2520())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t FaceLibraryManager.Entry.hash(into:)()
{
  sub_25B0E2750();
  sub_25B09FA40(&qword_27FA312D0, MEMORY[0x277D2BE00]);
  sub_25B0E36D0();
  v1 = type metadata accessor for FaceLibraryManager.Entry(0);
  MEMORY[0x25F860A80](*(v0 + *(v1 + 20)) + 1);
  v2 = *(type metadata accessor for FacePlacement.Location(0) + 20);
  sub_25B0E2540();
  sub_25B09FA40(&qword_27FA312D8, MEMORY[0x277CC9AF8]);
  return sub_25B0E36D0();
}

uint64_t sub_25B09FA40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FaceLibraryManager.Entry.hashValue.getter()
{
  sub_25B0E3F10();
  sub_25B0E2750();
  sub_25B09FA40(&qword_27FA312D0, MEMORY[0x277D2BE00]);
  sub_25B0E36D0();
  v1 = type metadata accessor for FaceLibraryManager.Entry(0);
  MEMORY[0x25F860A80](*(v0 + *(v1 + 20)) + 1);
  v2 = *(type metadata accessor for FacePlacement.Location(0) + 20);
  sub_25B0E2540();
  sub_25B09FA40(&qword_27FA312D8, MEMORY[0x277CC9AF8]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B09FB98@<X0>(uint64_t *a1@<X8>)
{
  result = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25B09FBC0(uint64_t a1)
{
  sub_25B0E3F10();
  sub_25B0E2750();
  sub_25B09FA40(&qword_27FA312D0, MEMORY[0x277D2BE00]);
  sub_25B0E36D0();
  MEMORY[0x25F860A80](*(v1 + *(a1 + 20)) + 1);
  v3 = *(type metadata accessor for FacePlacement.Location(0) + 20);
  sub_25B0E2540();
  sub_25B09FA40(&qword_27FA312D8, MEMORY[0x277CC9AF8]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B09FCCC(uint64_t a1, uint64_t a2)
{
  sub_25B0E2750();
  sub_25B09FA40(&qword_27FA312D0, MEMORY[0x277D2BE00]);
  sub_25B0E36D0();
  MEMORY[0x25F860A80](*(v2 + *(a2 + 20)) + 1);
  v4 = *(type metadata accessor for FacePlacement.Location(0) + 20);
  sub_25B0E2540();
  sub_25B09FA40(&qword_27FA312D8, MEMORY[0x277CC9AF8]);
  return sub_25B0E36D0();
}

uint64_t sub_25B09FDC0(uint64_t a1, uint64_t a2)
{
  sub_25B0E3F10();
  sub_25B0E2750();
  sub_25B09FA40(&qword_27FA312D0, MEMORY[0x277D2BE00]);
  sub_25B0E36D0();
  MEMORY[0x25F860A80](*(v2 + *(a2 + 20)) + 1);
  v4 = *(type metadata accessor for FacePlacement.Location(0) + 20);
  sub_25B0E2540();
  sub_25B09FA40(&qword_27FA312D8, MEMORY[0x277CC9AF8]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t FaceLibraryManager.libraryFaces.getter()
{
  v0 = sub_25B0E2750();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = FaceLibraryManager.identifiableFaces.getter();
  v6 = *(v5 + 16);
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    sub_25B0E3C50();
    v8 = v1 + 16;
    v7 = *(v1 + 16);
    v14[1] = v5;
    v15 = v7;
    v9 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = *(v1 + 72);
    v11 = (v8 - 8);
    do
    {
      v15(v4, v9, v0);
      sub_25B0E2730();
      (*v11)(v4, v0);
      sub_25B0E3C30();
      v12 = *(v16 + 16);
      sub_25B0E3C60();
      sub_25B0E3C70();
      sub_25B0E3C40();
      v9 += v10;
      --v6;
    }

    while (v6);

    return v16;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t FaceLibraryManager.identifiableFaces.getter()
{
  v1 = type metadata accessor for FaceLibraryManager.Entry(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E2750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v23 = v0;
  sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager);
  sub_25B0E28D0();

  swift_beginAccess();
  v11 = *(v0 + 16);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v22 = MEMORY[0x277D84F90];

    sub_25B08C250(0, v12, 0);
    v13 = v22;
    v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v20[1] = v11;
    v15 = v11 + v14;
    v16 = *(v2 + 72);
    v20[2] = v7 + 32;
    v21 = v16;
    do
    {
      sub_25B0A3BA4(v15, v5, type metadata accessor for FaceLibraryManager.Entry);
      (*(v7 + 16))(v10, v5, v6);
      sub_25B0A3C0C(v5);
      v22 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_25B08C250(v17 > 1, v18 + 1, 1);
        v13 = v22;
      }

      *(v13 + 16) = v18 + 1;
      (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v10, v6);
      v15 += v21;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t FaceLibraryManager.entries.getter()
{
  swift_getKeyPath();
  sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager);
  sub_25B0E28D0();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_25B0A03FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager);
  sub_25B0E28D0();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_25B0A04BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return FaceLibraryManager.entries.setter(v4);
}

uint64_t FaceLibraryManager.entries.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_25B0A39B0(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager);
    sub_25B0E28C0();
  }
}

uint64_t sub_25B0A0650(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

void (*FaceLibraryManager.entries.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC15NanoFaceGallery18FaceLibraryManager___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager);
  sub_25B0E28D0();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B0E28F0();

  swift_beginAccess();
  return sub_25B0A07F8;
}

void sub_25B0A07F8(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_25B0E28E0();

  free(v1);
}

uint64_t FaceLibraryManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  FaceLibraryManager.init()();
  return v3;
}

uint64_t FaceLibraryManager.init()()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_25B0E2900();
  os_unfair_lock_lock((v0 + 24));
  sub_25B0A0938((v0 + 32));
  os_unfair_lock_unlock((v0 + 24));
  return v0;
}

uint64_t sub_25B0A0938(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = *a1;

  sub_25B0E3900();
  sub_25B0E38F0();
  v7 = MEMORY[0x277D85700];
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_25B0E3940();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();

  v10 = sub_25B0E38F0();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v7;
  v11[4] = v9;

  v12 = sub_25B052F48(0, 0, v5, &unk_25B0E8AD0, v11);

  *a1 = v12;
  return result;
}

uint64_t FaceLibraryManager.deinit()
{
  os_unfair_lock_lock((v0 + 24));
  if (*(v0 + 32))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock((v0 + 24));
  os_unfair_lock_lock((v0 + 40));
  if (*(v0 + 48))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock((v0 + 40));
  v1 = *(v0 + 16);

  sub_25B058448(v0 + 32, &qword_27FA31D20, &qword_25B0E8978);
  sub_25B058448(v0 + 48, &qword_27FA31D20, &qword_25B0E8978);
  v2 = OBJC_IVAR____TtC15NanoFaceGallery18FaceLibraryManager___observationRegistrar;
  v3 = sub_25B0E2910();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t FaceLibraryManager.__deallocating_deinit()
{
  FaceLibraryManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25B0A0C84(uint64_t a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31878, &unk_25B0E8B00);
  v2 = *(*(v41 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v41);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v30 - v5;
  v6 = type metadata accessor for FaceLibraryManager.Entry(0);
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v43 = MEMORY[0x277D84F90];
    sub_25B08C294(0, v10, 0);
    v11 = v43;
    v12 = 0;
    v33 = sub_25B0E2750();
    v13 = *(v33 - 8);
    v14 = *(v13 + 16);
    v13 += 16;
    v35 = v10;
    v36 = v14;
    v15 = (a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
    v16 = *(v13 + 56);
    v34 = v13;
    v31 = (v13 + 16);
    v32 = v16;
    v17 = v37;
    do
    {
      v42 = v11;
      v19 = v40;
      v18 = v41;
      v20 = *(v41 + 48);
      v21 = v33;
      v22 = v36;
      v36(&v40[v20], v15, v33);
      *v17 = v12;
      v23 = *(v18 + 48);
      (*v31)(&v17[v23], &v19[v20], v21);
      v24 = &v9[*(v39 + 20)];
      v25 = &v24[*(type metadata accessor for FacePlacement.Location(0) + 20)];
      sub_25B0E2530();
      *v24 = 2;
      v26 = v21;
      v11 = v42;
      v22(v9, &v17[v23], v26);
      sub_25B058448(v17, &qword_27FA31878, &unk_25B0E8B00);
      v43 = v11;
      v28 = *(v11 + 16);
      v27 = *(v11 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_25B08C294(v27 > 1, v28 + 1, 1);
        v11 = v43;
      }

      ++v12;
      *(v11 + 16) = v28 + 1;
      sub_25B0A3FA8(v9, v11 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v28);
      v15 += v32;
    }

    while (v35 != v12);
  }

  return v11;
}

uint64_t sub_25B0A0F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = sub_25B0E3A90();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = sub_25B0E3900();
  v4[15] = sub_25B0E38F0();
  v10 = sub_25B0E3850();
  v4[16] = v10;
  v4[17] = v9;

  return MEMORY[0x2822009F8](sub_25B0A109C, v10, v9);
}

uint64_t sub_25B0A109C()
{
  if (qword_27FA30D18 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  v0[18] = __swift_project_value_buffer(v1, qword_27FA31CF8);
  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B03D000, v2, v3, "Making face task for manager…", v4, 2u);
    MEMORY[0x25F8613E0](v4, -1, -1);
  }

  v5 = v0[9];

  v6 = objc_opt_self();
  v0[19] = v6;
  v7 = [v6 currentDevice];
  v0[20] = v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_25B0A19A0(v7);
  }

  v8 = v0[13];
  v9 = v0[9];
  v10 = [objc_opt_self() defaultCenter];
  v11 = *MEMORY[0x277CBB640];
  sub_25B0E3AA0();

  sub_25B0E3A80();
  swift_beginAccess();
  v12 = v0[14];
  v0[21] = sub_25B0E38F0();
  v13 = sub_25B09FA40(&qword_27FA31D58, MEMORY[0x277CC9D68]);
  v14 = *(MEMORY[0x277D856D0] + 4);
  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_25B0A1310;
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[11];

  return MEMORY[0x282200308](v17, v18, v13);
}

uint64_t sub_25B0A1310()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25B0E3850();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_25B0A1914;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25B0E3850();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_25B0A14A8;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_25B0A14A8()
{
  v1 = v0[21];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_25B0A150C, v2, v3);
}

uint64_t sub_25B0A150C()
{
  v1 = *(v0 + 80);
  v2 = sub_25B0E22B0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 120);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

LABEL_14:
    v29 = *(v0 + 104);
    v30 = *(v0 + 80);

    v31 = *(v0 + 8);

    return v31();
  }

  v5 = *(v0 + 144);
  v6 = sub_25B0E2950();
  v7 = sub_25B0E3A50();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25B03D000, v6, v7, "Active device changed…", v8, 2u);
    MEMORY[0x25F8613E0](v8, -1, -1);
  }

  v9 = *(v0 + 72);

  if (!swift_weakLoadStrong())
  {
    v20 = *(v0 + 144);
    v21 = *(v0 + 120);

    v22 = sub_25B0E2950();
    v23 = sub_25B0E3A50();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25B03D000, v22, v23, "Active device changed - skipping, vanished…", v24, 2u);
      MEMORY[0x25F8613E0](v24, -1, -1);
    }

    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v28 = *(v0 + 80);
    v27 = *(v0 + 88);

    (*(v26 + 8))(v25, v27);
    v19 = v28;
    goto LABEL_13;
  }

  if (sub_25B0E39F0())
  {
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);

    v12 = sub_25B0E2950();
    v13 = sub_25B0E3A50();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25B03D000, v12, v13, "Active device changed - skipping, cancelled…", v14, 2u);
      MEMORY[0x25F8613E0](v14, -1, -1);
    }

    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
    v19 = v18;
LABEL_13:
    sub_25B058448(v19, &unk_27FA32F30, &unk_25B0E8AD8);
    goto LABEL_14;
  }

  v33 = *(v0 + 80);
  v34 = [*(v0 + 152) currentDevice];
  sub_25B0A19A0(v34);

  sub_25B058448(v33, &unk_27FA32F30, &unk_25B0E8AD8);
  v35 = *(v0 + 112);
  *(v0 + 168) = sub_25B0E38F0();
  v36 = sub_25B09FA40(&qword_27FA31D58, MEMORY[0x277CC9D68]);
  v37 = *(MEMORY[0x277D856D0] + 4);
  v38 = swift_task_alloc();
  *(v0 + 176) = v38;
  *v38 = v0;
  v38[1] = sub_25B0A1310;
  v39 = *(v0 + 104);
  v40 = *(v0 + 80);
  v41 = *(v0 + 88);

  return MEMORY[0x282200308](v40, v41, v36);
}

uint64_t sub_25B0A1914()
{
  *(v0 + 64) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F40, &unk_25B0E6060);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

void sub_25B0A19A0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_25B0A0C84(MEMORY[0x277D84F90]);
  FaceLibraryManager.entries.setter(v8);
  if (a1)
  {
    v9 = qword_27FA30D18;
    v10 = a1;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_25B0E2970();
    __swift_project_value_buffer(v11, qword_27FA31CF8);
    v12 = v10;
    v13 = sub_25B0E2950();
    v14 = sub_25B0E3A50();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = a1;
      v17 = v12;
      _os_log_impl(&dword_25B03D000, v13, v14, "Manager updating face task with %@…", v15, 0xCu);
      sub_25B058448(v16, &unk_27FA31850, &qword_25B0E74B0);
      MEMORY[0x25F8613E0](v16, -1, -1);
      MEMORY[0x25F8613E0](v15, -1, -1);
    }

    os_unfair_lock_lock((v2 + 40));
    v18 = *(v2 + 48);

    sub_25B0E3900();
    sub_25B0E38F0();
    v19 = MEMORY[0x277D85700];
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v20 = sub_25B0E3940();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = v12;

    v23 = sub_25B0E38F0();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = v19;
    v24[4] = v22;
    v24[5] = v21;

    *(v2 + 48) = sub_25B052F48(0, 0, v7, &unk_25B0E8AF0, v24);

    os_unfair_lock_unlock((v2 + 40));
  }

  else
  {
    if (qword_27FA30D18 != -1)
    {
      swift_once();
    }

    v25 = sub_25B0E2970();
    __swift_project_value_buffer(v25, qword_27FA31CF8);
    v26 = sub_25B0E2950();
    v27 = sub_25B0E3A30();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_25B03D000, v26, v27, "Manager updating face task has no device…", v28, 2u);
      MEMORY[0x25F8613E0](v28, -1, -1);
    }

    os_unfair_lock_lock((v2 + 40));
    v29 = *(v2 + 48);

    sub_25B0E3900();
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    *(v2 + 48) = 0;

    os_unfair_lock_unlock((v2 + 40));
  }
}

uint64_t sub_25B0A1E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v5[23] = v9;
  v10 = *(v9 - 8);
  v5[24] = v10;
  v11 = *(v10 + 64) + 15;
  v5[25] = swift_task_alloc();
  v12 = sub_25B0E24A0();
  v5[26] = v12;
  v13 = *(v12 - 8);
  v5[27] = v13;
  v14 = *(v13 + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = sub_25B0E3900();
  v5[30] = sub_25B0E38F0();
  v16 = sub_25B0E3850();
  v5[31] = v16;
  v5[32] = v15;

  return MEMORY[0x2822009F8](sub_25B0A1FCC, v16, v15);
}

uint64_t sub_25B0A1FCC()
{
  if (qword_27FA30D18 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  v0[33] = __swift_project_value_buffer(v1, qword_27FA31CF8);
  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A30();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B03D000, v2, v3, "Starting face task…", v4, 2u);
    MEMORY[0x25F8613E0](v4, -1, -1);
  }

  v5 = v0[18];

  v6 = *MEMORY[0x277D2BEA0];
  v7 = [v5 pairingID];
  if (v7)
  {
    v9 = v0[27];
    v8 = v0[28];
    v10 = v0[26];
    v11 = v7;
    sub_25B0E2480();

    v12 = sub_25B0E2470();
    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D2C0A0]) initWithCollectionIdentifier:v6 deviceUUID:v12];
  v0[34] = v13;

  type metadata accessor for WatchLibrary();
  v0[35] = swift_initStackObject();
  v14 = v13;
  v0[36] = sub_25B09B4F4(v14);

  v15 = swift_task_alloc();
  v0[37] = v15;
  *v15 = v0;
  v15[1] = sub_25B0A21F8;

  return sub_25B099D98();
}

uint64_t sub_25B0A21F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = a1;

  v4 = *(v2 + 256);
  v5 = *(v2 + 248);

  return MEMORY[0x2822009F8](sub_25B0A2320, v5, v4);
}

uint64_t sub_25B0A2320()
{
  v1 = v0[38];
  v2 = v0[33];

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A30();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[38];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_25B03D000, v3, v4, "Initially loading %ld face(s)…", v7, 0xCu);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {
    v8 = v0[38];
  }

  v9 = v0[19];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = sub_25B0A0C84(v0[38]);
    FaceLibraryManager.entries.setter(v10);
  }

  v11 = v0[25];
  v13 = v0[21];
  v12 = v0[22];
  v15 = v0[19];
  v14 = v0[20];
  v16 = *(v0[36] + 40);
  sub_25B09AB88();
  sub_25B0E39A0();
  (*(v13 + 8))(v12, v14);
  swift_beginAccess();
  v0[39] = 0;
  v17 = v0[29];
  v18 = sub_25B0E38F0();
  v0[40] = v18;
  v19 = *(MEMORY[0x277D85798] + 4);
  v20 = swift_task_alloc();
  v0[41] = v20;
  *v20 = v0;
  v20[1] = sub_25B0A2524;
  v21 = v0[25];
  v22 = v0[23];
  v23 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 42, v18, v23, v22);
}

uint64_t sub_25B0A2524()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 320);
  v7 = *v0;

  v4 = *(v1 + 256);
  v5 = *(v1 + 248);

  return MEMORY[0x2822009F8](sub_25B0A2668, v5, v4);
}

uint64_t sub_25B0A2668()
{
  if (*(v0 + 336))
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 288);
    v3 = *(v0 + 272);
    v4 = *(v0 + 240);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

LABEL_17:
    v43 = *(v0 + 224);
    v44 = *(v0 + 200);
    v45 = *(v0 + 176);

    v46 = *(v0 + 8);

    return v46();
  }

  v5 = *(v0 + 264);
  v6 = sub_25B0E2950();
  v7 = sub_25B0E3A30();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25B03D000, v6, v7, "Face task update…", v8, 2u);
    MEMORY[0x25F8613E0](v8, -1, -1);
  }

  v9 = *(v0 + 152);

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v25 = *(v0 + 304);
    v26 = *(v0 + 264);
    v27 = *(v0 + 240);

    v28 = sub_25B0E2950();
    v29 = sub_25B0E3A30();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 288);
    v32 = *(v0 + 272);
    v34 = *(v0 + 192);
    v33 = *(v0 + 200);
    v35 = *(v0 + 184);
    if (v30)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_25B03D000, v28, v29, "Face task update ignored - vanished…", v36, 2u);
      MEMORY[0x25F8613E0](v36, -1, -1);
    }

    else
    {
    }

    (*(v34 + 8))(v33, v35);
    goto LABEL_17;
  }

  v11 = Strong;
  v12 = sub_25B0E39F0();
  v13 = *(v0 + 304);
  if (v12)
  {
    v14 = *(v0 + 264);
    v15 = *(v0 + 240);

    v16 = sub_25B0E2950();
    v17 = sub_25B0E3A30();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 288);
    v20 = *(v0 + 272);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = *(v0 + 184);
    if (v18)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25B03D000, v16, v17, "Face task update ignored - cancelled…", v24, 2u);
      MEMORY[0x25F8613E0](v24, -1, -1);
    }

    else
    {
    }

    (*(v22 + 8))(v21, v23);
    goto LABEL_17;
  }

  v37 = sub_25B0A0C84(*(v0 + 304));
  swift_beginAccess();
  v38 = *(v11 + 16);

  v40 = sub_25B0A39B0(v39, v37);

  if (v40)
  {
    v41 = *(v11 + 16);
    *(v11 + 16) = v37;

    v42 = *(v0 + 312);
  }

  else
  {
    v42 = *(v0 + 312);
    swift_getKeyPath();
    v48 = swift_task_alloc();
    *(v48 + 16) = v11;
    *(v48 + 24) = v37;
    *(v0 + 136) = v11;
    sub_25B09FA40(&qword_27FA31D18, type metadata accessor for FaceLibraryManager);
    sub_25B0E28C0();
  }

  *(v0 + 312) = v42;
  v49 = *(v0 + 232);
  v50 = sub_25B0E38F0();
  *(v0 + 320) = v50;
  v51 = *(MEMORY[0x277D85798] + 4);
  v52 = swift_task_alloc();
  *(v0 + 328) = v52;
  *v52 = v0;
  v52[1] = sub_25B0A2524;
  v53 = *(v0 + 200);
  v54 = *(v0 + 184);
  v55 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 336, v50, v55, v54);
}

uint64_t sub_25B0A2B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 3)
  {
    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*v3, *i), vceqq_s64(v3[1], i[1])))) & 1) == 0 || v3[2].i64[0] != i[2].i64[0])
    {
      break;
    }

    if (v3[-1].i64[1] != i[-1].i64[1])
    {
      return 0;
    }

    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

void sub_25B0A2BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v33 - v8;
  v9 = *(a1 + 16);
  if (v9 == *(a2 + 16) && v9 && a1 != a2)
  {
    v10 = 0;
    v11 = a1 + 32;
    v12 = a2 + 32;
    v40 = (v43 + 8);
    v35 = v9;
    v34 = a1 + 32;
    v33 = a2 + 32;
    v41 = v43 + 16;
    while (1)
    {
      v13 = (v11 + 72 * v10);
      v14 = v13[1];
      v45 = *v13;
      v46 = v14;
      v15 = v13[3];
      v47 = v13[2];
      v48 = v15;
      v49 = *(v13 + 8);
      v16 = (v12 + 72 * v10);
      v17 = v16[3];
      v52 = v16[2];
      v53 = v17;
      v54 = *(v16 + 8);
      v18 = v16[1];
      v50 = *v16;
      v51 = v18;
      if (v45 != v50 && (sub_25B0E3E30() & 1) == 0)
      {
        break;
      }

      if (*(&v46 + 1))
      {
        if (!*(&v51 + 1) || v46 != v51 && (sub_25B0E3E30() & 1) == 0)
        {
          return;
        }
      }

      else if (*(&v51 + 1))
      {
        return;
      }

      if (*(&v47 + 1))
      {
        if (!*(&v52 + 1) || v47 != v52 && (sub_25B0E3E30() & 1) == 0)
        {
          return;
        }
      }

      else if (*(&v52 + 1))
      {
        return;
      }

      v19 = v48;
      v20 = v53;
      sub_25B08CEB4(&v45, v44);
      sub_25B08CEB4(&v50, v44);
      sub_25B0AD0C8(v19, v20);
      if ((v21 & 1) == 0 || (v36 = v10, v22 = *(&v48 + 1), v23 = *(&v53 + 1), v24 = *(*(&v48 + 1) + 16), v25 = v37, v24 != *(*(&v53 + 1) + 16)))
      {
LABEL_32:
        sub_25B08CF10(&v50);
        sub_25B08CF10(&v45);
        return;
      }

      if (v24 && *(&v48 + 1) != *(&v53 + 1))
      {
        v26 = 0;
        v27 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v39 = *(&v48 + 1) + v27;
        v38 = *(&v53 + 1) + v27;
        while (v26 < *(v22 + 16))
        {
          v28 = *(v43 + 72) * v26;
          v29 = *(v43 + 16);
          v29(v25, v39 + v28, v4);
          if (v26 >= *(v23 + 16))
          {
            goto LABEL_35;
          }

          v30 = v42;
          v29(v42, v38 + v28, v4);
          sub_25B09FA40(&qword_27FA314D0, MEMORY[0x277D2BE00]);
          v31 = sub_25B0E3700();
          v32 = *v40;
          (*v40)(v30, v4);
          v32(v25, v4);
          if ((v31 & 1) == 0)
          {
            goto LABEL_32;
          }

          if (v24 == ++v26)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

LABEL_28:
      sub_25B08CF10(&v50);
      sub_25B08CF10(&v45);
      if (v49 != v54)
      {
        return;
      }

      v10 = v36 + 1;
      if (v36 + 1 == v35)
      {
        return;
      }

      v11 = v34;
      v12 = v33;
    }
  }
}

void sub_25B0A3030(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v85 = *(v4 - 8);
  v5 = *(v85 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v84 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v70 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (v10)
    {
      if (a1 != a2)
      {
        v11 = *(a1 + 80);
        v100 = *(a1 + 64);
        v101 = v11;
        v12 = *(a1 + 112);
        v102 = *(a1 + 96);
        v103 = v12;
        v13 = *(a1 + 48);
        v98 = *(a1 + 32);
        v99 = v13;
        v14 = *(a2 + 80);
        v106 = *(a2 + 64);
        v107 = v14;
        v15 = *(a2 + 112);
        v108 = *(a2 + 96);
        v109 = v15;
        v16 = *(a2 + 48);
        v104 = *(a2 + 32);
        v105 = v16;
        if (v98 == v104)
        {
          v82 = (v85 + 8);
          v83 = v85 + 16;
          v17 = 1;
          v86 = &v70 - v8;
          v76 = a1 + 32;
          v77 = v10;
          v75 = a2 + 32;
          while (1)
          {
            v79 = v17;
            v18 = *(&v98 + 1) == *(&v104 + 1) && v99 == v105;
            if (!v18 && (sub_25B0E3E30() & 1) == 0)
            {
              return;
            }

            if (v100)
            {
              if (!v106)
              {
                return;
              }

              v19 = *(&v99 + 1) == *(&v105 + 1) && v100 == v106;
              if (!v19 && (sub_25B0E3E30() & 1) == 0)
              {
                return;
              }
            }

            else if (v106)
            {
              return;
            }

            if (v101)
            {
              if (!v107 || (*(&v100 + 1) != *(&v106 + 1) || v101 != v107) && (sub_25B0E3E30() & 1) == 0)
              {
                return;
              }
            }

            else if (v107)
            {
              return;
            }

            v20 = *(&v101 + 1);
            v21 = *(&v107 + 1);
            sub_25B08CE58(&v98, &v93);
            sub_25B08CE58(&v104, &v93);
            sub_25B0AD0C8(v20, v21);
            if ((v22 & 1) == 0 || (v23 = v102, v24 = v108, v25 = *(v102 + 16), v25 != *(v108 + 16)))
            {
LABEL_79:
              sub_25B0A3DE0(&v104);
              sub_25B0A3DE0(&v98);
              return;
            }

            if (v25 && v102 != v108)
            {
              break;
            }

LABEL_36:
            if (*(&v102 + 1) != *(&v108 + 1))
            {
              goto LABEL_79;
            }

            v34 = v109;
            v35 = *(v103 + 16);
            if (v35 != *(v109 + 16))
            {
              goto LABEL_79;
            }

            if (v35 && v103 != v109)
            {
              if (*(v103 + 16))
              {
                v36 = 0;
                v37 = v103 + 32;
                v73 = *(v103 + 16);
                v74 = v109 + 32;
                v38 = 1;
                v71 = v109;
                v72 = v103;
                v70 = v103 + 32;
                do
                {
                  v39 = v38;
                  v40 = (v37 + 72 * v36);
                  v88 = *v40;
                  v41 = v40[1];
                  v42 = v40[2];
                  v43 = v40[3];
                  v92 = *(v40 + 8);
                  v90 = v42;
                  v91 = v43;
                  v89 = v41;
                  if (v36 >= *(v34 + 16))
                  {
                    goto LABEL_86;
                  }

                  v44 = (v74 + 72 * v36);
                  v93 = *v44;
                  v45 = v44[1];
                  v46 = v44[2];
                  v47 = v44[3];
                  v97 = *(v44 + 8);
                  v95 = v46;
                  v96 = v47;
                  v94 = v45;
                  if ((v88 != v93 || *(&v88 + 1) != *(&v93 + 1)) && (sub_25B0E3E30() & 1) == 0)
                  {
                    goto LABEL_79;
                  }

                  if (*(&v89 + 1))
                  {
                    if (!*(&v94 + 1) || (v89 != v94 || *(&v89 + 1) != *(&v94 + 1)) && (sub_25B0E3E30() & 1) == 0)
                    {
                      goto LABEL_79;
                    }
                  }

                  else if (*(&v94 + 1))
                  {
                    goto LABEL_79;
                  }

                  if (*(&v90 + 1))
                  {
                    if (!*(&v95 + 1) || (v90 != v95 || *(&v90 + 1) != *(&v95 + 1)) && (sub_25B0E3E30() & 1) == 0)
                    {
                      goto LABEL_79;
                    }
                  }

                  else if (*(&v95 + 1))
                  {
                    goto LABEL_79;
                  }

                  v78 = v39;
                  v48 = v91;
                  v49 = v96;
                  sub_25B08CEB4(&v88, v87);
                  sub_25B08CEB4(&v93, v87);
                  sub_25B0AD0C8(v48, v49);
                  if ((v50 & 1) == 0 || (v51 = *(&v91 + 1), v52 = *(&v96 + 1), v53 = *(*(&v91 + 1) + 16), v53 != *(*(&v96 + 1) + 16)))
                  {
LABEL_78:
                    sub_25B08CF10(&v93);
                    sub_25B08CF10(&v88);
                    goto LABEL_79;
                  }

                  if (v53 && *(&v91 + 1) != *(&v96 + 1))
                  {
                    v54 = 0;
                    v55 = (*(v85 + 80) + 32) & ~*(v85 + 80);
                    v80 = *(&v96 + 1) + v55;
                    v81 = *(&v91 + 1) + v55;
                    while (v54 < *(v51 + 16))
                    {
                      v56 = *(v85 + 72) * v54;
                      v57 = *(v85 + 16);
                      v57(v9, v81 + v56, v4);
                      if (v54 >= *(v52 + 16))
                      {
                        goto LABEL_85;
                      }

                      v58 = v84;
                      v57(v84, v80 + v56, v4);
                      sub_25B09FA40(&qword_27FA314D0, MEMORY[0x277D2BE00]);
                      v59 = sub_25B0E3700();
                      v60 = *v82;
                      v61 = v58;
                      v9 = v86;
                      (*v82)(v61, v4);
                      v60(v9, v4);
                      if ((v59 & 1) == 0)
                      {
                        goto LABEL_78;
                      }

                      if (v53 == ++v54)
                      {
                        goto LABEL_69;
                      }
                    }

                    goto LABEL_84;
                  }

LABEL_69:
                  sub_25B08CF10(&v93);
                  sub_25B08CF10(&v88);
                  if (v92 != v97)
                  {
                    goto LABEL_79;
                  }

                  if (v78 == v73)
                  {
                    goto LABEL_73;
                  }

                  v38 = v78 + 1;
                  v34 = v71;
                  v36 = v78;
                  v37 = v70;
                }

                while (v78 < *(v72 + 16));
              }

LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
              return;
            }

LABEL_73:
            sub_25B0A3DE0(&v104);
            sub_25B0A3DE0(&v98);
            if (*(&v103 + 1) == *(&v109 + 1) && v79 != v77)
            {
              v62 = (v76 + 96 * v79);
              v63 = v62[3];
              v17 = v79 + 1;
              v100 = v62[2];
              v101 = v63;
              v64 = v62[5];
              v102 = v62[4];
              v103 = v64;
              v65 = v62[1];
              v98 = *v62;
              v99 = v65;
              v66 = (v75 + 96 * v79);
              v67 = v66[3];
              v106 = v66[2];
              v107 = v67;
              v68 = v66[5];
              v108 = v66[4];
              v109 = v68;
              v69 = v66[1];
              v104 = *v66;
              v105 = v69;
              if (v98 == v104)
              {
                continue;
              }
            }

            return;
          }

          v26 = 0;
          v27 = (*(v85 + 80) + 32) & ~*(v85 + 80);
          v80 = v108 + v27;
          v81 = v102 + v27;
          while (v26 < *(v23 + 16))
          {
            v28 = *(v85 + 72) * v26;
            v29 = *(v85 + 16);
            v29(v9, v81 + v28, v4);
            if (v26 >= *(v24 + 16))
            {
              goto LABEL_82;
            }

            v30 = v84;
            v29(v84, v80 + v28, v4);
            sub_25B09FA40(&qword_27FA314D0, MEMORY[0x277D2BE00]);
            v31 = sub_25B0E3700();
            v32 = *v82;
            v33 = v30;
            v9 = v86;
            (*v82)(v33, v4);
            v32(v9, v4);
            if ((v31 & 1) == 0)
            {
              goto LABEL_79;
            }

            if (v25 == ++v26)
            {
              goto LABEL_36;
            }
          }

          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }
      }
    }
  }
}

uint64_t sub_25B0A379C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_25B09FA40(&qword_27FA314D0, MEMORY[0x277D2BE00]);
    v22 = sub_25B0E3700();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25B0A39B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceLibraryManager.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_25B0A3BA4(v14, v11, type metadata accessor for FaceLibraryManager.Entry);
      sub_25B0A3BA4(v15, v8, type metadata accessor for FaceLibraryManager.Entry);
      if ((MEMORY[0x25F85F260](v11, v8) & 1) == 0 || v11[*(v4 + 20)] != v8[*(v4 + 20)])
      {
        break;
      }

      v17 = *(type metadata accessor for FacePlacement.Location(0) + 20);
      v18 = sub_25B0E2520();
      sub_25B0A3C0C(v8);
      sub_25B0A3C0C(v11);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_25B0A3C0C(v8);
    sub_25B0A3C0C(v11);
    goto LABEL_12;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_25B0A3BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0A3C0C(uint64_t a1)
{
  v2 = type metadata accessor for FaceLibraryManager.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0A3CE0()
{
  result = sub_25B0E2910();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25B0A3E34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B05859C;

  return sub_25B0A0F6C(a1, v4, v5, v6);
}

uint64_t sub_25B0A3EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B0498DC;

  return sub_25B0A1E04(a1, v4, v5, v7, v6);
}

uint64_t sub_25B0A3FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceLibraryManager.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static FaceManager.Placement.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    return v4 & (v3 ^ 1u);
  }

  v6 = *(type metadata accessor for FaceManager.Placement(0) + 20);

  return sub_25B0E2510();
}

NanoFaceGallery::FaceManager::Placement::Location_optional __swiftcall FaceManager.Placement.Location.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_25B0A40AC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t FaceManager.Placement.init(faceIdentifier:location:galleryRowIndex:faceIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v12 = sub_25B0E2560();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = type metadata accessor for FaceManager.Placement(0);
  v19 = &a6[*(v18 + 24)];
  *v19 = a1;
  v19[1] = a2;
  *a6 = v17;
  if (v17)
  {
    (*(v13 + 104))(v16, *MEMORY[0x277D2BDE0], v12);
    v20 = sub_25B0E2550();
    (*(v13 + 8))(v16, v12);
    if (v20)
    {
      v21 = a5 < 3;
    }

    else
    {
      v21 = a4 < 5;
    }

    v22 = v21;
  }

  else
  {
    v22 = a5 < 5;
    if (a4)
    {
      v22 = a5 < 3;
    }
  }

  v23 = !v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_25B0E8B10;
  *(v24 + 32) = v17;
  *(v24 + 40) = v23;
  *(v24 + 48) = a4;
  *(v24 + 56) = a5;
  v25 = &a6[*(v18 + 20)];
  return MEMORY[0x25F85F060]();
}

uint64_t FaceManager.Placement.hash(into:)()
{
  v1 = v0;
  MEMORY[0x25F860A80](*v0);
  v2 = type metadata accessor for FaceManager.Placement(0);
  v3 = *(v2 + 20);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8]);
  sub_25B0E36D0();
  v4 = &v1[*(v2 + 24)];
  v5 = *v4;
  v6 = *(v4 + 1);

  return sub_25B0E3780();
}

uint64_t FaceManager.Placement.hashValue.getter()
{
  v1 = v0;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](*v0);
  v2 = type metadata accessor for FaceManager.Placement(0);
  v3 = *(v2 + 20);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8]);
  sub_25B0E36D0();
  v4 = &v1[*(v2 + 24)];
  v5 = *v4;
  v6 = *(v4 + 1);
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B0A4470(uint64_t a1)
{
  v3 = v1;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](*v1);
  v4 = *(a1 + 20);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8]);
  sub_25B0E36D0();
  v5 = &v3[*(a1 + 24)];
  v6 = *v5;
  v7 = *(v5 + 1);
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B0A4530(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  MEMORY[0x25F860A80](*v2);
  v5 = *(a2 + 20);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8]);
  sub_25B0E36D0();
  v6 = &v4[*(a2 + 24)];
  v7 = *v6;
  v8 = *(v6 + 1);

  return sub_25B0E3780();
}

uint64_t sub_25B0A45EC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](*v2);
  v5 = *(a2 + 20);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8]);
  sub_25B0E36D0();
  v6 = &v4[*(a2 + 24)];
  v7 = *v6;
  v8 = *(v6 + 1);
  sub_25B0E3780();
  return sub_25B0E3F50();
}

uint64_t sub_25B0A46A8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    return v4 & (v3 ^ 1u);
  }

  v6 = *(a3 + 20);
  return sub_25B0E2510();
}

BOOL sub_25B0A46D4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (v3 == v4)
  {
    v6 = *(a3 + 20);
    v5 = sub_25B0E2510();
  }

  else
  {
    v5 = v4 & (v3 ^ 1);
  }

  return (v5 & 1) == 0;
}

BOOL sub_25B0A4724(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == v4)
  {
    v6 = *(a3 + 20);
    v5 = sub_25B0E2510();
  }

  else
  {
    v5 = v4 & (v3 ^ 1);
  }

  return (v5 & 1) == 0;
}

uint64_t sub_25B0A4770(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (v3 != v4)
  {
    return v4 & (v3 ^ 1u);
  }

  v6 = *(a3 + 20);
  return sub_25B0E2510();
}

uint64_t FaceManager.Metadata.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FaceManager.Metadata.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FaceManager.Metadata.caption.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FaceManager.Metadata.caption.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double FaceManager.Metadata.screenSize.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t FaceManager.Metadata.curationPlacements.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t FaceManager.Metadata.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FaceManager.Metadata(0) + 36);

  return sub_25B0A4FE0(v3, a1);
}

uint64_t FaceManager.Metadata.placement.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FaceManager.Metadata(0) + 36);

  return sub_25B0A5044(a1, v3);
}

id FaceManager.Metadata.face.getter()
{
  v1 = *(v0 + *(type metadata accessor for FaceManager.Metadata(0) + 40));

  return v1;
}

void FaceManager.Metadata.face.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FaceManager.Metadata(0) + 40);

  *(v1 + v3) = a1;
}

uint64_t FaceManager.Metadata.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_25B0E3780();
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  sub_25B0E3780();
  v6 = v0[4];
  v7 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x25F860AA0](*&v6);
  if (v7 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  MEMORY[0x25F860AA0](*&v8);
  v9 = v0[6];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x25F860AA0](*&v9);
  v10 = *(v0 + 7);
  MEMORY[0x25F860A80](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = v12[1];
      v16 = v12[2];
      v17 = v12[4];
      MEMORY[0x25F860A80](v12[3]);
      MEMORY[0x25F860A80](v14);
      MEMORY[0x25F860A80](v15);
      MEMORY[0x25F860A80](v16);
      MEMORY[0x25F860A80](v17);
      MEMORY[0x25F860A80](v13);
      v12 += 6;
      --v11;
    }

    while (v11);
  }

  v18 = type metadata accessor for FaceManager.Metadata(0);
  v19 = v0 + *(v18 + 36);
  MEMORY[0x25F860A80](*v19);
  v20 = type metadata accessor for FaceManager.Placement(0);
  v21 = *(v20 + 20);
  sub_25B0E2540();
  sub_25B0A5100(&qword_27FA312D8, MEMORY[0x277CC9AF8]);
  sub_25B0E36D0();
  v22 = &v19[*(v20 + 24)];
  v23 = *v22;
  v24 = *(v22 + 1);
  sub_25B0E3780();
  v25 = *(v1 + *(v18 + 40));
  return sub_25B0E3B00();
}

uint64_t FaceManager.Metadata.hashValue.getter()
{
  sub_25B0E3F10();
  FaceManager.Metadata.hash(into:)();
  return sub_25B0E3F50();
}

uint64_t sub_25B0A4CE0()
{
  sub_25B0E3F10();
  FaceManager.Metadata.hash(into:)();
  return sub_25B0E3F50();
}

uint64_t sub_25B0A4D24()
{
  sub_25B0E3F10();
  FaceManager.Metadata.hash(into:)();
  return sub_25B0E3F50();
}

uint64_t sub_25B0A4D64(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x25F860AA0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x25F860AA0](*&v3);
}

uint64_t _s15NanoFaceGallery0B7ManagerO8MetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  if ((sub_25B0A2B4C(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for FaceManager.Metadata(0);
  v8 = *(v7 + 36);
  v9 = a1 + v8;
  v10 = a2 + v8;
  if (*(a1 + v8) != *(a2 + v8))
  {
    return 0;
  }

  v11 = v7;
  v12 = type metadata accessor for FaceManager.Placement(0);
  v13 = *(v12 + 20);
  if ((sub_25B0E2520() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v12 + 24);
  v15 = *(v9 + v14);
  v16 = *(v9 + v14 + 8);
  v17 = (v10 + v14);
  if ((v15 != *v17 || v16 != v17[1]) && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  sub_25B046E60(0, &qword_27FA319D0, 0x277D82BB8);
  v18 = *(v11 + 40);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  return sub_25B0E3AF0() & 1;
}

uint64_t _s15NanoFaceGallery0B7ManagerO9PlacementV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for FaceManager.Placement(0);
  v5 = *(v4 + 20);
  if ((sub_25B0E2520() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *&a1[v6];
  v8 = *&a1[v6 + 8];
  v9 = &a2[v6];
  if (v7 == *v9 && v8 == *(v9 + 1))
  {
    return 1;
  }

  return sub_25B0E3E30();
}

uint64_t sub_25B0A4FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceManager.Placement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0A5044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceManager.Placement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B0A50AC()
{
  result = qword_27FA31D60;
  if (!qword_27FA31D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31D60);
  }

  return result;
}

uint64_t sub_25B0A5100(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25B0A51C8()
{
  result = sub_25B0E2540();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25B0A5284()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_25B0A5360();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FaceManager.Placement(319);
      if (v2 <= 0x3F)
      {
        sub_25B046E60(319, &qword_27FA31DA0, 0x277D2C000);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25B0A5360()
{
  if (!qword_27FA31D98)
  {
    type metadata accessor for NTKFaceCurationPlacement(255);
    v0 = sub_25B0E3840();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA31D98);
    }
  }
}

uint64_t sub_25B0A53BC()
{
  swift_getKeyPath();
  sub_25B0A6558(&qword_27FA31DC0, type metadata accessor for FontManager);
  sub_25B0E28D0();

  v1 = *(v0 + 16);
}

uint64_t sub_25B0A5460(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = sub_25B0E3180();

  if (v4)
  {
    v5 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B0A6558(&qword_27FA31DC0, type metadata accessor for FontManager);
    sub_25B0E28C0();
  }
}

uint64_t sub_25B0A55B4()
{
  v1 = v0;
  v2 = sub_25B0E2990();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_25B0E29C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DC8, &qword_25B0E8D98);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *(v1 + 24) = v12;
  sub_25B0E2900();
  sub_25B0E29B0();
  sub_25B0E29A0();
  (*(v8 + 8))(v11, v7);
  sub_25B0E2980();
  (*(v3 + 8))(v6, v2);
  *(v1 + 16) = sub_25B0E31C0();
  v13 = *(v1 + 24);
  swift_allocObject();
  swift_weakInit();

  os_unfair_lock_lock((v13 + 24));
  sub_25B0A6488((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));

  return v1;
}

uint64_t sub_25B0A57E8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;

  v7 = sub_25B0E3940();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  result = sub_25B052F48(0, 0, v5, &unk_25B0E8DA8, v9);
  *a1 = result;
  return result;
}

uint64_t sub_25B0A5954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = sub_25B0E3A90();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0A5A4C, 0, 0);
}

uint64_t sub_25B0A5A4C()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = [objc_opt_self() defaultCenter];
  v4 = *MEMORY[0x277D76810];
  sub_25B0E3AA0();

  sub_25B0E3A80();
  swift_beginAccess();
  v5 = sub_25B0A6558(&qword_27FA31D58, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_25B0A5B94;
  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[8];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_25B0A5B94()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_25B0A5E34;
  }

  else
  {
    v3 = sub_25B0A5CA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B0A5CC4()
{
  v1 = v0[7];
  v2 = sub_25B0E22B0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
LABEL_8:
    v8 = v0[10];
    v9 = v0[7];

    v10 = v0[1];

    return v10();
  }

  v3 = v0[6];
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (!Strong)
  {
    v7 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_25B0A65A0(v7);
    goto LABEL_8;
  }

  sub_25B0E3900();
  v0[14] = sub_25B0E38F0();
  v6 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B0A5EC0, v6, v5);
}

uint64_t sub_25B0A5E34()
{
  *(v0 + 40) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F40, &unk_25B0E6060);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_25B0A5EC0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);

  sub_25B0A6018();

  return MEMORY[0x2822009F8](sub_25B0A5F2C, 0, 0);
}

uint64_t sub_25B0A5F2C()
{
  v1 = v0[13];
  v2 = v0[7];

  sub_25B0A65A0(v2);
  v3 = sub_25B0A6558(&qword_27FA31D58, MEMORY[0x277CC9D68]);
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_25B0A5B94;
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  return MEMORY[0x282200308](v7, v8, v3);
}

uint64_t sub_25B0A6018()
{
  v0 = sub_25B0E2990();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B0E29C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA30D28 != -1)
  {
    swift_once();
  }

  v10 = sub_25B0E2970();
  __swift_project_value_buffer(v10, qword_27FA399E0);
  v11 = sub_25B0E2950();
  v12 = sub_25B0E3A50();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25B03D000, v11, v12, "Refreshing current font…", v13, 2u);
    MEMORY[0x25F8613E0](v13, -1, -1);
  }

  sub_25B0E29B0();
  sub_25B0E29A0();
  (*(v6 + 8))(v9, v5);
  sub_25B0E2980();
  (*(v1 + 8))(v4, v0);
  v14 = sub_25B0E31C0();
  return sub_25B0A5460(v14);
}

uint64_t sub_25B0A6260()
{
  v1 = *(v0 + 3);

  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock((v1 + 24));

  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  v4 = OBJC_IVAR____TtC15NanoFaceGallery11FontManager___observationRegistrar;
  v5 = sub_25B0E2910();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for FontManager()
{
  result = qword_27FA31DB0;
  if (!qword_27FA31DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B0A63AC()
{
  result = sub_25B0E2910();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25B0A644C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_25B0A64A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B0498DC;

  return sub_25B0A5954(a1, v4, v5, v6);
}

uint64_t sub_25B0A6558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25B0A65A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ForYouFacesManager.suggestedFaces.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DD0, &qword_25B0E8DB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - v3;
  v5 = sub_25B0E2750();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v27 = &v26 - v9;
  v10 = *(v0 + 16);
  swift_getKeyPath();
  v33[0] = v10;
  sub_25B0AB454(&qword_27FA31DD8, type metadata accessor for GalleryManager);
  sub_25B0E28D0();

  v11 = *(v10 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v10 + 16);

  result = sub_25B0A6974();
  v14 = result;
  v31 = *(result + 16);
  if (!v31)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_15:

    return v19;
  }

  v15 = 0;
  v16 = v29;
  v30 = (v28 + 48);
  v17 = (v28 + 32);
  v18 = (result + 40);
  v19 = MEMORY[0x277D84F90];
  v26 = v11;
  while (v15 < *(v14 + 16))
  {
    v20 = *v18;
    v33[0] = *(v18 - 1);
    v33[1] = v20;

    sub_25B0A7724(v33, v11, v4);

    if ((*v30)(v4, 1, v16) == 1)
    {
      result = sub_25B0A8A2C(v4);
    }

    else
    {
      v21 = *v17;
      v22 = v27;
      (*v17)(v27, v4, v16);
      v21(v32, v22, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_25B089C98(0, v19[2] + 1, 1, v19);
      }

      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        v19 = sub_25B089C98(v23 > 1, v24 + 1, 1, v19);
      }

      v19[2] = v24 + 1;
      v25 = v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24;
      v16 = v29;
      result = (v21)(v25, v32, v29);
      v11 = v26;
    }

    ++v15;
    v18 += 2;
    if (v31 == v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

char *sub_25B0A6974()
{
  v0 = sub_25B0A7C74();
  v1 = v0;
  if (v0 >> 62)
  {
LABEL_121:
    v2 = sub_25B0E3CC0();
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v140[0] = MEMORY[0x277D84F90];
    result = sub_25B08C2F8(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_124;
    }

    v4 = 0;
    v5 = v140[0];
    do
    {
      v6 = v5;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25F860730](v4, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v4 + 32);
      }

      v8 = v7;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DF8, &qword_25B0E8E38);
      v9 = sub_25B0E3760();
      v11 = v10;

      v5 = v6;
      v140[0] = v6;
      v12 = *(v6 + 16);
      v13 = *(v5 + 24);
      if (v12 >= v13 >> 1)
      {
        sub_25B08C2F8((v13 > 1), v12 + 1, 1);
        v5 = v140[0];
      }

      ++v4;
      *(v5 + 16) = v12 + 1;
      v14 = v5 + 16 * v12;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v4);
    v122 = v5;
  }

  else
  {

    v122 = MEMORY[0x277D84F90];
  }

  if (qword_27FA30D30 != -1)
  {
    swift_once();
  }

  v15 = sub_25B0E2970();
  __swift_project_value_buffer(v15, qword_27FA399F8);

  v16 = sub_25B0E2950();
  v17 = sub_25B0E3A50();

  v18 = "FaceGallery  PROJECT:NanoFaceGallery-1\n";
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v140[0] = v20;
    *v19 = 136315138;
    v21 = MEMORY[0x25F860360](v122, MEMORY[0x277D837D0]);
    v23 = sub_25B04BE04(v21, v22, v140);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_25B03D000, v16, v17, "newFaces: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x25F8613E0](v20, -1, -1);
    MEMORY[0x25F8613E0](v19, -1, -1);
  }

  v24 = *(v137 + 24);
  v25 = FaceLibraryManager.libraryFaces.getter();
  v26 = v25;
  if (v25 >> 62)
  {
    v27 = sub_25B0E3CC0();
  }

  else
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27)
  {
    v140[0] = MEMORY[0x277D84F90];
    result = sub_25B08C2F8(0, v27 & ~(v27 >> 63), 0);
    if ((v27 & 0x8000000000000000) == 0)
    {
      v28 = 0;
      v29 = v140[0];
      do
      {
        v30 = v29;
        if ((v26 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x25F860730](v28, v26);
        }

        else
        {
          v31 = *(v26 + 8 * v28 + 32);
        }

        v32 = v31;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DF8, &qword_25B0E8E38);
        v33 = sub_25B0E3760();
        v35 = v34;

        v29 = v30;
        v140[0] = v30;
        v37 = *(v30 + 16);
        v36 = *(v30 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_25B08C2F8((v36 > 1), v37 + 1, 1);
          v29 = v140[0];
        }

        ++v28;
        *(v29 + 16) = v37 + 1;
        v38 = v29 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
      }

      while (v27 != v28);
      v39 = v29;

      v18 = "@(#)PROGRAM:NanoFaceGallery  PROJECT:NanoFaceGallery-1\n" + 16;
      goto LABEL_31;
    }

LABEL_124:
    __break(1u);
    return result;
  }

  v39 = MEMORY[0x277D84F90];
LABEL_31:

  v40 = sub_25B0E2950();
  v1 = sub_25B0E3A50();

  if (os_log_type_enabled(v40, v1))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v140[0] = v42;
    *v41 = *(v18 + 388);
    v43 = MEMORY[0x25F860360](v39, MEMORY[0x277D837D0]);
    v45 = sub_25B04BE04(v43, v44, v140);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_25B03D000, v40, v1, "libraryFaces: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x25F8613E0](v42, -1, -1);
    MEMORY[0x25F8613E0](v41, -1, -1);
  }

  v46 = MEMORY[0x277D84F90];
  v140[0] = MEMORY[0x277D84F90];
  sub_25B0A80D0();
  v48 = v47;
  v49 = *(v39 + 16);
  if (v49 >= 3)
  {
    v50 = 3;
  }

  else
  {
    v50 = *(v39 + 16);
  }

  if (v49)
  {
    v51 = 0;
    v126 = v47 + 64;
    v119 = v39 + 32;
    v125 = *(v18 + 388);
    v52 = v46;
    v127 = v47;
    v121 = v39;
    v118 = v50;
    while (1)
    {
      if (v51 == v50)
      {
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v51 >= *(v39 + 16))
      {
        goto LABEL_120;
      }

      v129 = v52;
      v120 = v51 + 1;
      v53 = (v119 + 16 * v51);
      v1 = v53[1];
      v134 = *v53;
      v54 = 1 << *(v48 + 32);
      v55 = v54 < 64 ? ~(-1 << v54) : -1;
      v56 = v55 & *(v48 + 64);
      v57 = (v54 + 63) >> 6;

      v52 = 0;
      v58 = MEMORY[0x277D84F90];
      v132 = v1;
      v124 = v57;
LABEL_45:
      v131 = v58;
      if (v56)
      {
        break;
      }

      while (1)
      {
        v59 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v59 >= v57)
        {
          break;
        }

        v56 = *(v126 + 8 * v59);
        ++v52;
        if (v56)
        {
          v52 = v59;
          goto LABEL_50;
        }
      }

      v76 = sub_25B0E2950();
      v77 = sub_25B0E3A50();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        ObjectType = v79;
        *v78 = 136315394;
        v80 = sub_25B04BE04(v134, v1, &ObjectType);

        *(v78 + 4) = v80;
        *(v78 + 12) = 2080;
        v81 = *(v58 + 2);
        if (v81)
        {
          v138 = MEMORY[0x277D84F90];
          sub_25B08C318(0, v81, 0);
          v82 = v138;
          v83 = (v58 + 32);
          v84 = *(v138 + 16);
          do
          {
            v86 = *v83++;
            v85 = v86;
            v87 = *(v138 + 24);
            if (v84 >= v87 >> 1)
            {
              sub_25B08C318((v87 > 1), v84 + 1, 1);
            }

            *(v138 + 16) = v84 + 1;
            *(v138 + 8 * v84++ + 32) = v85;
            --v81;
          }

          while (v81);
          v58 = v131;
        }

        else
        {
          v82 = MEMORY[0x277D84F90];
        }

        v88 = MEMORY[0x25F860360](v82, MEMORY[0x277D83B88]);
        v1 = v89;

        v90 = sub_25B04BE04(v88, v1, &ObjectType);

        *(v78 + 14) = v90;
        _os_log_impl(&dword_25B03D000, v76, v77, "%s containedGroups: %s", v78, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8613E0](v79, -1, -1);
        MEMORY[0x25F8613E0](v78, -1, -1);

        v48 = v127;
      }

      else
      {
      }

      v52 = v129;
      v91 = *(v58 + 2);
      if (v91)
      {
        v1 = 0;
        v92 = v58 + 32;
        v133 = v58 + 32;
        v135 = *(v58 + 2);
        while (v1 < *(v58 + 2))
        {
          if (*(v48 + 16))
          {
            v93 = sub_25B066160(*&v92[8 * v1]);
            if (v94)
            {
              v136 = v1;
              v95 = *(*(v48 + 56) + 8 * v93);

              v97 = sub_25B0AAF44(v96, v122, v121, v140);

              v98 = 0;
              v99 = v97 + 56;
              v100 = 1 << *(v97 + 32);
              if (v100 < 64)
              {
                v101 = ~(-1 << v100);
              }

              else
              {
                v101 = -1;
              }

              v102 = v101 & *(v97 + 56);
              v103 = (v100 + 63) >> 6;
              v137 = v97;
              while (v102)
              {
LABEL_105:
                v105 = (*(v97 + 48) + ((v98 << 10) | (16 * __clz(__rbit64(v102)))));
                v107 = *v105;
                v106 = v105[1];
                swift_bridgeObjectRetain_n();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v52 = sub_25B089CE8(0, *(v52 + 16) + 1, 1, v52);
                }

                v109 = *(v52 + 16);
                v108 = *(v52 + 24);
                if (v109 >= v108 >> 1)
                {
                  v52 = sub_25B089CE8((v108 > 1), v109 + 1, 1, v52);
                }

                *(v52 + 16) = v109 + 1;
                v110 = v52 + 16 * v109;
                *(v110 + 32) = v107;
                *(v110 + 40) = v106;
                v140[0] = v52;

                v111 = sub_25B0E2950();
                v112 = sub_25B0E3A50();

                if (os_log_type_enabled(v111, v112))
                {
                  v113 = swift_slowAlloc();
                  v130 = v52;
                  v114 = swift_slowAlloc();
                  ObjectType = v114;
                  *v113 = v125;
                  v115 = sub_25B04BE04(v107, v106, &ObjectType);

                  *(v113 + 4) = v115;
                  _os_log_impl(&dword_25B03D000, v111, v112, "suggesting %s", v113, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v114);
                  v116 = v114;
                  v52 = v130;
                  MEMORY[0x25F8613E0](v116, -1, -1);
                  v117 = v113;
                  v97 = v137;
                  MEMORY[0x25F8613E0](v117, -1, -1);
                }

                else
                {
                }

                v102 &= v102 - 1;
                if (*(v52 + 16) == 3)
                {

                  goto LABEL_113;
                }
              }

              while (1)
              {
                v104 = v98 + 1;
                if (__OFADD__(v98, 1))
                {
                  goto LABEL_115;
                }

                if (v104 >= v103)
                {

                  v48 = v127;
                  v58 = v131;
                  v91 = v135;
                  v1 = v136;
                  v92 = v133;
                  break;
                }

                v102 = *(v99 + 8 * v104);
                ++v98;
                if (v102)
                {
                  v98 = v104;
                  goto LABEL_105;
                }
              }
            }
          }

          if (++v1 == v91)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_118;
      }

LABEL_38:

      v39 = v121;
      v51 = v120;
      v50 = v118;
      if (v120 == v118)
      {
        goto LABEL_116;
      }
    }

LABEL_50:
    v60 = (v52 << 9) | (8 * __clz(__rbit64(v56)));
    v123 = *(*(v48 + 48) + v60);
    v61 = *(*(v48 + 56) + v60);
    sub_25B0E3900();

    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v128 = (v56 - 1) & v56;
    v62 = v61 + 56;
    v63 = 1 << *(v61 + 32);
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    else
    {
      v64 = -1;
    }

    v65 = v64 & *(v61 + 56);
    v66 = (v63 + 63) >> 6;

    v67 = 0;
    v137 = v61;
    while (v65)
    {
LABEL_61:
      v69 = (*(v61 + 48) + ((v67 << 10) | (16 * __clz(__rbit64(v65)))));
      v70 = *v69;
      v71 = v69[1];

      sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v1 = v132;
      if (v70 == v134 && v71 == v132)
      {

LABEL_71:

        v48 = v127;
        v57 = v124;
        v56 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_25B089DF4(0, *(v58 + 2) + 1, 1, v58);
        }

        v75 = *(v58 + 2);
        v74 = *(v58 + 3);
        if (v75 >= v74 >> 1)
        {
          v58 = sub_25B089DF4((v74 > 1), v75 + 1, 1, v58);
        }

        *(v58 + 2) = v75 + 1;
        *&v58[8 * v75 + 32] = v123;
LABEL_76:

        goto LABEL_45;
      }

      v65 &= v65 - 1;
      v73 = sub_25B0E3E30();

      v61 = v137;
      if (v73)
      {
        goto LABEL_71;
      }
    }

    while (1)
    {
      v68 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v68 >= v66)
      {

        v48 = v127;
        v57 = v124;
        v56 = v128;
        goto LABEL_76;
      }

      v65 = *(v62 + 8 * v68);
      ++v67;
      if (v65)
      {
        v67 = v68;
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
  }

LABEL_113:
  ObjectType = v122;
  sub_25B08BF80(v52);
  return ObjectType;
}

uint64_t sub_25B0A7724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = sub_25B0E2750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  v58 = *a1;
  v56 = v10;
  v11 = sub_25B0E3900();
  v45 = sub_25B0E38F0();
  v54 = v11;
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(a2 + 16);
  if (!v12)
  {
LABEL_20:
    if (qword_27FA30D30 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v13 = 0;
  v14 = a2 + 32;
  v53 = v6 + 16;
  v52 = (v6 + 8);
  v43 = a2 + 32;
  v44 = v12;
  while (1)
  {
    v15 = (v14 + 72 * v13);
    v16 = v15[7];
    v57 = *(v16 + 16);
    if (v57)
    {
      break;
    }

LABEL_6:
    if (++v13 == v12)
    {
      goto LABEL_20;
    }
  }

  v47 = v13;
  v17 = v15[1];
  v18 = v15[5];
  v19 = v15[6];
  v20 = v15[3];
  v55 = v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v49 = v18;

  v48 = v19;

  v51 = v17;

  v50 = v20;

  v21 = 0;
  while (v21 < *(v16 + 16))
  {
    v24 = v6;
    v25 = v5;
    (*(v6 + 16))(v9, v55 + *(v6 + 72) * v21, v5);
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v26 = sub_25B0E2730();
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DF8, &qword_25B0E8E38);
    v27 = sub_25B0E3760();
    v29 = v28;

    if (v27 == v58 && v29 == v56)
    {

      v5 = v25;
    }

    else
    {
      v30 = sub_25B0E3E30();

      v5 = v25;
      if ((v30 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v22 = sub_25B0E2730();
    v23 = [v22 curationPlacements];

    if (v23)
    {

      v6 = v24;
      v31 = v46;
      (*(v24 + 32))(v46, v9, v5);
      v32 = 0;
      goto LABEL_24;
    }

LABEL_11:
    ++v21;
    (*v52)(v9, v5);

    v6 = v24;
    if (v57 == v21)
    {

      v14 = v43;
      v12 = v44;
      v13 = v47;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_21:
  v33 = sub_25B0E2970();
  __swift_project_value_buffer(v33, qword_27FA399F8);
  v34 = v56;

  v35 = sub_25B0E2950();
  v36 = sub_25B0E3A30();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v6;
    v39 = swift_slowAlloc();
    ObjectType = v39;
    *v37 = 136315138;
    *(v37 + 4) = sub_25B04BE04(v58, v34, &ObjectType);
    _os_log_impl(&dword_25B03D000, v35, v36, "could not find item for face class %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v40 = v39;
    v6 = v38;
    MEMORY[0x25F8613E0](v40, -1, -1);
    MEMORY[0x25F8613E0](v37, -1, -1);
  }

  v32 = 1;
  v31 = v46;
LABEL_24:
  (*(v6 + 56))(v31, v32, 1, v5);
}

uint64_t sub_25B0A7C74()
{
  v1 = sub_25B0E2750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  swift_getKeyPath();
  v42 = v6;
  sub_25B0AB454(&qword_27FA31DD8, type metadata accessor for GalleryManager);
  sub_25B0E28D0();

  v7 = *(v6 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v34 = v1;
    v35 = v5;
    v33 = v2;
    v9 = *(v7 + 16);

    v36 = v9;
    if (v9)
    {
      v10 = 0;
      v37 = "NanoFaceGallery.FaceObserver";
      v11 = (v7 + 88);
      while (1)
      {
        if (v10 >= *(v7 + 16))
        {
          __break(1u);
          return result;
        }

        v13 = *(v11 - 7);
        v12 = *(v11 - 6);
        v15 = *(v11 - 1);
        v14 = *v11;
        v16 = *(v11 - 2);
        v17 = *(v11 - 4);
        sub_25B0E3900();
        v39 = v16;

        v38 = v15;

        v41 = v14;

        v40 = v17;

        sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v18 = sub_25B0E3730();
        v19 = sub_25B0E3730();
        v20 = NTKCompanionClockFaceLocalizedString();

        v21 = sub_25B0E3740();
        v23 = v22;

        if (v13 == v21 && v12 == v23)
        {
          break;
        }

        v24 = sub_25B0E3E30();

        if (v24)
        {
          goto LABEL_13;
        }

        ++v10;

        v11 += 9;
        if (v36 == v10)
        {
          goto LABEL_18;
        }
      }

LABEL_13:

      v25 = v41;
      v26 = *(v41 + 16);
      if (!v26)
      {

        goto LABEL_18;
      }

      v36 = v12;
      v42 = MEMORY[0x277D84F90];
      sub_25B0E3C50();
      v27 = v34;
      v37 = *(v33 + 16);
      v28 = v25 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v29 = *(v33 + 72);
      v30 = (v33 + 8);
      v31 = v35;
      do
      {
        (v37)(v31, v28, v27);
        sub_25B0E2730();
        (*v30)(v31, v27);
        sub_25B0E3C30();
        v32 = *(v42 + 16);
        sub_25B0E3C60();
        sub_25B0E3C70();
        sub_25B0E3C40();
        v28 += v29;
        --v26;
      }

      while (v26);

      return v42;
    }

    else
    {
LABEL_18:

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_25B0A80D0()
{
  v63 = sub_25B0E2750();
  v66 = *(v63 - 8);
  v1 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(v0 + 16);
  swift_getKeyPath();
  *&v72[0] = v3;
  sub_25B0AB454(&qword_27FA31DD8, type metadata accessor for GalleryManager);
  sub_25B0E28D0();

  v4 = *(v3 + 16);
  if (!v4)
  {
    sub_25B0D44F0(MEMORY[0x277D84F90]);
    return;
  }

  v5 = sub_25B0D44F0(MEMORY[0x277D84F90]);
  v6 = *(v4 + 16);

  v53 = v6;
  if (!v6)
  {
LABEL_40:

    return;
  }

  v7 = 0;
  v52 = v4 + 32;
  v61 = v66 + 16;
  v60 = v66 + 8;
  v8 = MEMORY[0x277D84FA0];
  v51 = v4;
  while (1)
  {
    if (v7 >= *(v4 + 16))
    {
      goto LABEL_44;
    }

    v59 = v7;
    v11 = (v52 + 72 * v7);
    v12 = v11[1];
    v13 = v11[6];
    v14 = v11[7];
    v15 = v11[5];
    v16 = v11[3];
    sub_25B0E3900();
    v56 = v15;

    v55 = v13;

    v58 = v12;

    v57 = v16;

    v54 = sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v67 = *(v14 + 16);
    if (v67)
    {
      break;
    }

LABEL_4:

    v9 = v59 + 1;

    v7 = v9;
    v10 = v9 == v53;
    v4 = v51;
    if (v10)
    {
      goto LABEL_40;
    }
  }

  v17 = 0;
  v18 = *(v66 + 80);
  v64 = v14;
  v65 = v14 + ((v18 + 32) & ~v18);
  while (v17 < *(v14 + 16))
  {
    v19 = v66;
    v21 = v62;
    v20 = v63;
    (*(v66 + 16))(v62, v65 + *(v66 + 72) * v17, v63);
    v22 = sub_25B0E2730();
    (*(v19 + 8))(v21, v20);
    v23 = [v22 curationPlacements];
    v68 = v17;
    if (!v23)
    {
      goto LABEL_28;
    }

    v24 = v23;
    sub_25B0AB408();
    v25 = sub_25B0E37F0();

    if (v25 >> 62)
    {
      v26 = sub_25B0E3CC0();
      if (!v26)
      {
LABEL_27:

LABEL_28:
        v28 = MEMORY[0x277D84F90];
        v35 = *(MEMORY[0x277D84F90] + 16);
        if (v35)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_27;
      }
    }

    v73 = MEMORY[0x277D84F90];
    sub_25B08C2D8(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      goto LABEL_43;
    }

    v27 = 0;
    v28 = v73;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x25F860730](v27, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = v29;
      [v29 placement];
      v70 = v72[1];
      v71 = v72[0];
      v69 = v72[2];

      v73 = v28;
      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_25B08C2D8((v31 > 1), v32 + 1, 1);
        v28 = v73;
      }

      ++v27;
      *(v28 + 16) = v32 + 1;
      v33 = (v28 + 48 * v32);
      v34 = v70;
      v33[2] = v71;
      v33[3] = v34;
      v33[4] = v69;
    }

    while (v26 != v27);

    v8 = MEMORY[0x277D84FA0];
    v35 = *(v28 + 16);
    if (v35)
    {
LABEL_29:
      *&v72[0] = MEMORY[0x277D84F90];
      sub_25B08C338(0, v35, 0);
      v36 = *&v72[0];
      v38 = *(*&v72[0] + 16);
      v39 = 32;
      do
      {
        v40 = *(v28 + v39);
        *&v72[0] = v36;
        v41 = v36[3];
        if (v38 >= v41 >> 1)
        {
          sub_25B08C338((v41 > 1), v38 + 1, 1);
          v36 = *&v72[0];
        }

        v36[2] = v38 + 1;
        v36[v38 + 4] = v40;
        v39 += 48;
        ++v38;
        --v35;
      }

      while (v35);

      v8 = MEMORY[0x277D84FA0];
      v37 = v36[2];
      if (!v37)
      {
        goto LABEL_10;
      }

LABEL_34:
      v42 = v36 + 4;
      do
      {
        v48 = *v42++;
        v47 = v48;
        if (v5[2] && (v49 = sub_25B066160(v47), (v50 & 1) != 0))
        {
          v73 = *(v5[7] + 8 * v49);
        }

        else
        {
          v73 = v8;
        }

        *&v72[0] = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DF8, &qword_25B0E8E38);
        v43 = sub_25B0E3760();
        sub_25B0A94B4(v72, v43, v44);

        v45 = v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v72[0] = v5;
        sub_25B0690E4(v45, v47, isUniquelyReferenced_nonNull_native);
        v5 = *&v72[0];
        --v37;
      }

      while (v37);
      goto LABEL_10;
    }

LABEL_24:

    v36 = MEMORY[0x277D84F90];
    v37 = *(MEMORY[0x277D84F90] + 16);
    if (v37)
    {
      goto LABEL_34;
    }

LABEL_10:
    v17 = v68 + 1;

    v14 = v64;
    if (v17 == v67)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_25B0A878C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t ForYouFacesManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC15NanoFaceGallery18ForYouFacesManager___observationRegistrar;
  v4 = sub_25B0E2910();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ForYouFacesManager.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC15NanoFaceGallery18ForYouFacesManager___observationRegistrar;
  v4 = sub_25B0E2910();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_25B0A8954@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B0AB454(&qword_27FA31DD8, type metadata accessor for GalleryManager);
  sub_25B0E28D0();

  *a2 = *(v3 + 16);
}

uint64_t sub_25B0A8A00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25B0AB7E0(v4);
}

uint64_t sub_25B0A8A2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DD0, &qword_25B0E8DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ForYouFacesManager()
{
  result = qword_27FA31DE8;
  if (!qword_27FA31DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B0A8B00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E00, &qword_25B0E8E40);
  result = sub_25B0E3B90();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_25B0E3F10();
      sub_25B0E3780();
      result = sub_25B0E3F50();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *sub_25B0A8D60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25B0E2750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v10 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E10, &qword_25B0E8E48);
  v11 = sub_25B0E3B90();
  v12 = v11;
  if (*(v9 + 16))
  {
    v50 = v2;
    v13 = 0;
    v14 = *(v9 + 56);
    v51 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v19 = v5 + 16;
    v52 = v5;
    v20 = (v5 + 8);
    v53 = v11 + 56;
    v56 = v9;
    v54 = v18;
    v55 = v11;
    while (v17)
    {
      v30 = v19;
      v31 = __clz(__rbit64(v17));
      v62 = (v17 - 1) & v17;
LABEL_16:
      v35 = (*(v9 + 48) + 72 * (v31 | (v13 << 6)));
      v36 = *v35;
      v37 = v35[1];
      v39 = v35[2];
      v38 = v35[3];
      v40 = v35[4];
      v41 = v35[5];
      v63 = v13;
      v64 = v40;
      v42 = v35[7];
      v65 = v35[6];
      v66 = v41;
      v67 = v42;
      v57 = v35[8];
      v43 = v12[5];
      sub_25B0E3F10();
      v59 = v37;
      v60 = v36;
      sub_25B0E3780();
      sub_25B0E3F30();
      if (v38)
      {
        sub_25B0E3780();
      }

      v61 = v38;
      v58 = v39;
      if (v66)
      {
        sub_25B0E3F30();
        sub_25B0E3780();
      }

      else
      {
        sub_25B0E3F30();
      }

      sub_25B0AD448(v68, v65);
      v44 = v67;
      MEMORY[0x25F860A80](*(v67 + 16));
      v45 = *(v44 + 16);
      v19 = v30;
      if (v45)
      {
        v46 = v67 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
        v47 = *(v52 + 72);
        v48 = *(v52 + 16);
        do
        {
          v48(v8, v46, v4);
          sub_25B0AB454(&qword_27FA312D0, MEMORY[0x277D2BE00]);
          sub_25B0E36D0();
          (*v20)(v8, v4);
          v46 += v47;
          --v45;
        }

        while (v45);
      }

      v21 = v57;
      MEMORY[0x25F860A80](v57);
      sub_25B0E3F50();
      v12 = v55;
      v22 = -1 << *(v55 + 32);
      v23 = v53;
      v24 = sub_25B0E3B70();
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (v12[6] + 72 * v24);
      v26 = v59;
      *v25 = v60;
      v25[1] = v26;
      v27 = v61;
      v17 = v62;
      v25[2] = v58;
      v25[3] = v27;
      v13 = v63;
      v28 = v66;
      v25[4] = v64;
      v25[5] = v28;
      v29 = v67;
      v25[6] = v65;
      v25[7] = v29;
      v25[8] = v21;
      ++v12[2];
      v9 = v56;
      v18 = v54;
    }

    v32 = v13;
    result = v51;
    while (1)
    {
      v13 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= v18)
      {
        break;
      }

      v34 = v51[v13];
      ++v32;
      if (v34)
      {
        v30 = v19;
        v31 = __clz(__rbit64(v34));
        v62 = (v34 - 1) & v34;
        goto LABEL_16;
      }
    }

    v49 = 1 << *(v9 + 32);
    if (v49 >= 64)
    {
      bzero(v51, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v49;
    }

    v2 = v50;
    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

unint64_t *sub_25B0A91C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = sub_25B0AAC48(v11, a2, a3, a4, a5, a6);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_25B0A9290(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E00, &qword_25B0E8E40);
  result = sub_25B0E3BA0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_25B0E3F10();

    sub_25B0E3780();
    result = sub_25B0E3F50();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25B0A94B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25B0E3F10();
  sub_25B0E3780();
  v9 = sub_25B0E3F50();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25B0E3E30() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_25B0A9BD4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_25B0A9604(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v4 = sub_25B0E2750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v71 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  v57 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25B0E3F10();
  sub_25B0AB55C(&v78);
  v13 = sub_25B0E3F50();
  v14 = v11 + 56;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_30:
    v50 = v57;
    v51 = *v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v76[0] = *v50;
    sub_25B08CEB4(a2, &v78);
    sub_25B0A9D54(a2, v16, isUniquelyReferenced_nonNull_native);
    *v50 = *&v76[0];
    v53 = *(a2 + 48);
    v54 = v58;
    *(v58 + 32) = *(a2 + 32);
    *(v54 + 48) = v53;
    *(v54 + 64) = *(a2 + 64);
    v55 = *(a2 + 16);
    *v54 = *a2;
    *(v54 + 16) = v55;
    return;
  }

  v68 = v4;
  v69 = v10;
  v17 = ~v15;
  v19 = *a2;
  v18 = *(a2 + 8);
  v67 = v5 + 16;
  v70 = v5;
  v66 = v5 + 8;
  v63 = v11;
  v62 = v11 + 56;
  v61 = ~v15;
  v60 = v18;
  v59 = v19;
  v20 = (v5 + 8);
  while (1)
  {
    v21 = *(v11 + 48) + 72 * v16;
    v78 = *v21;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    v24 = *(v21 + 64);
    v79 = *(v21 + 16);
    v80 = v23;
    v82 = v24;
    v81 = v22;
    if (v78 != __PAIR128__(v18, v19) && (sub_25B0E3E30() & 1) == 0)
    {
      goto LABEL_4;
    }

    v25 = *(a2 + 24);
    if (*(&v79 + 1))
    {
      if (!v25 || v79 != *(a2 + 16) && (sub_25B0E3E30() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v25)
    {
      goto LABEL_4;
    }

    v26 = *(a2 + 40);
    if (*(&v80 + 1))
    {
      if (!v26 || v80 != *(a2 + 32) && (sub_25B0E3E30() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v26)
    {
      goto LABEL_4;
    }

    v27 = v81;
    v28 = *(a2 + 48);
    sub_25B08CEB4(&v78, v76);
    sub_25B0AD0C8(v27, v28);
    if ((v29 & 1) == 0 || (v30 = *(a2 + 56), v74 = *(&v81 + 1), v31 = *(*(&v81 + 1) + 16), v73 = v30, v32 = *(v30 + 16), v72 = v31, v31 != v32))
    {
LABEL_3:
      sub_25B08CF10(&v78);
      v11 = v63;
      v14 = v62;
      v17 = v61;
      v18 = v60;
      v19 = v59;
      goto LABEL_4;
    }

    if (v72 && v74 != v73)
    {
      break;
    }

LABEL_28:
    sub_25B08CF10(&v78);
    v11 = v63;
    v14 = v62;
    v17 = v61;
    v18 = v60;
    v19 = v59;
    if (v82 == *(a2 + 64))
    {
      sub_25B08CF10(a2);
      v43 = *(v11 + 48) + 72 * v16;
      v45 = *(v43 + 16);
      v44 = *(v43 + 32);
      v46 = *(v43 + 64);
      v76[3] = *(v43 + 48);
      v77 = v46;
      v76[0] = *v43;
      v76[1] = v45;
      v76[2] = v44;
      v47 = *(v43 + 48);
      v48 = v58;
      *(v58 + 32) = *(v43 + 32);
      *(v48 + 48) = v47;
      *(v48 + 64) = *(v43 + 64);
      v49 = *(v43 + 16);
      *v48 = *v43;
      *(v48 + 16) = v49;
      sub_25B08CEB4(v76, v75);
      return;
    }

LABEL_4:
    v16 = (v16 + 1) & v17;
    if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v33 = 0;
  v34 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v65 = v74 + v34;
  v64 = v73 + v34;
  while (v33 < *(v74 + 16))
  {
    v35 = *(v70 + 72) * v33;
    v36 = *(v70 + 16);
    v37 = v69;
    v38 = v68;
    v36(v69, v65 + v35, v68);
    if (v33 >= *(v73 + 16))
    {
      goto LABEL_32;
    }

    v39 = v64 + v35;
    v40 = v71;
    v36(v71, v39, v38);
    sub_25B0AB454(&qword_27FA314D0, MEMORY[0x277D2BE00]);
    v41 = sub_25B0E3700();
    v42 = *v20;
    (*v20)(v40, v38);
    v42(v37, v38);
    if ((v41 & 1) == 0)
    {
      goto LABEL_3;
    }

    if (v72 == ++v33)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_25B0A9BD4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25B0A8B00(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25B0AA2C0();
      goto LABEL_16;
    }

    sub_25B0AA5AC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25B0E3F10();
  sub_25B0E3780();
  result = sub_25B0E3F50();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25B0E3E30();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25B0E3E70();
  __break(1u);
  return result;
}

void sub_25B0A9D54(unint64_t *a1, unint64_t a2, char a3)
{
  v7 = sub_25B0E2750();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v60 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v48 - v11;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v56 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_37;
  }

  if (a3)
  {
    sub_25B0A8D60(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_25B0AA41C();
      goto LABEL_37;
    }

    sub_25B0AA7E4(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_25B0E3F10();
  sub_25B0AB55C(&v66);
  v16 = sub_25B0E3F50();
  v17 = v14 + 56;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v63 = ~v18;
    v19 = *a1;
    v64 = a1[1];
    v55 = (v61 + 8);
    v50 = v14;
    v49 = v14 + 56;
    do
    {
      v20 = *(v14 + 48) + 72 * a2;
      v66 = *v20;
      v22 = *(v20 + 32);
      v21 = *(v20 + 48);
      v23 = *(v20 + 64);
      v67 = *(v20 + 16);
      v68 = v22;
      v70 = v23;
      v69 = v21;
      if (v66 != __PAIR128__(v64, v19) && (sub_25B0E3E30() & 1) == 0)
      {
        goto LABEL_11;
      }

      v24 = a1[3];
      if (*(&v67 + 1))
      {
        if (!v24 || v67 != *(a1 + 1) && (sub_25B0E3E30() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v24)
      {
        goto LABEL_11;
      }

      v25 = a1[5];
      if (*(&v68 + 1))
      {
        if (!v25 || v68 != *(a1 + 2) && (sub_25B0E3E30() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v25)
      {
        goto LABEL_11;
      }

      v26 = v69;
      v27 = a1[6];
      sub_25B08CEB4(&v66, v65);
      sub_25B0AD0C8(v26, v27);
      if ((v28 & 1) != 0 && (v29 = a1[7], v59 = *(&v69 + 1), v30 = *(*(&v69 + 1) + 16), v58 = v29, v31 = *(v29 + 16), v57 = v30, v30 == v31))
      {
        if (v57 && v59 != v58)
        {
          v32 = 0;
          v33 = (*(v61 + 80) + 32) & ~*(v61 + 80);
          v54 = v59 + v33;
          v51 = v58 + v33;
          v53 = a1;
          v52 = v19;
          while (v32 < *(v59 + 16))
          {
            v34 = *(v61 + 72) * v32;
            v35 = *(v61 + 16);
            v35(v62, v54 + v34, v7);
            if (v32 >= *(v58 + 16))
            {
              goto LABEL_40;
            }

            v36 = v62;
            v37 = v60;
            v35(v60, v51 + v34, v7);
            sub_25B0AB454(&qword_27FA314D0, MEMORY[0x277D2BE00]);
            v38 = sub_25B0E3700();
            v39 = *v55;
            v40 = v37;
            v19 = v52;
            a1 = v53;
            (*v55)(v40, v7);
            v39(v36, v7);
            if ((v38 & 1) == 0)
            {
              goto LABEL_10;
            }

            if (v57 == ++v32)
            {
              goto LABEL_35;
            }
          }

          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

LABEL_35:
        sub_25B08CF10(&v66);
        v14 = v50;
        v17 = v49;
        if (v70 == a1[8])
        {
          sub_25B0E3E70();
          __break(1u);
          break;
        }
      }

      else
      {
LABEL_10:
        sub_25B08CF10(&v66);
        v14 = v50;
        v17 = v49;
      }

LABEL_11:
      a2 = (a2 + 1) & v63;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_37:
  v41 = *v56;
  *(v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v42 = *(v41 + 48) + 72 * a2;
  *(v42 + 64) = a1[8];
  v43 = *(a1 + 3);
  *(v42 + 32) = *(a1 + 2);
  *(v42 + 48) = v43;
  v44 = *(a1 + 1);
  *v42 = *a1;
  *(v42 + 16) = v44;
  v45 = *(v41 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    goto LABEL_41;
  }

  *(v41 + 16) = v47;
}

void *sub_25B0AA2C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E00, &qword_25B0E8E40);
  v2 = *v0;
  v3 = sub_25B0E3B80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25B0AA41C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E10, &qword_25B0E8E48);
  v2 = *v0;
  v3 = sub_25B0E3B80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 8);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x48uLL);
        result = sub_25B08CEB4(v23, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25B0AA5AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E00, &qword_25B0E8E40);
  result = sub_25B0E3B90();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_25B0E3F10();

      sub_25B0E3780();
      result = sub_25B0E3F50();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_25B0AA7E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25B0E2750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31E10, &qword_25B0E8E48);
  result = sub_25B0E3B90();
  v12 = result;
  if (!*(v9 + 16))
  {

LABEL_27:
    *v2 = v12;
    return result;
  }

  v39 = v2;
  v13 = 0;
  v14 = *(v9 + 56);
  v40 = v9 + 56;
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v41 = v5;
  v19 = (v5 + 8);
  v43 = result + 56;
  v46 = v9;
  v44 = v18;
  v45 = result;
  v42 = v5 + 16;
  while (v17)
  {
    v26 = __clz(__rbit64(v17));
    v47 = (v17 - 1) & v17;
LABEL_16:
    v48 = v13;
    v29 = *(v9 + 48) + 72 * (v26 | (v13 << 6));
    v31 = *(v29 + 32);
    v30 = *(v29 + 48);
    v32 = *(v29 + 16);
    v55 = *(v29 + 64);
    v53 = v31;
    v54 = v30;
    v51 = *v29;
    v52 = v32;
    v33 = v12[5];
    sub_25B0E3F10();
    sub_25B08CEB4(&v51, v49);
    sub_25B0E3780();
    if (*(&v52 + 1))
    {
      sub_25B0E3F30();
      sub_25B0E3780();
      if (*(&v53 + 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_25B0E3F30();
      if (*(&v53 + 1))
      {
LABEL_18:
        sub_25B0E3F30();
        sub_25B0E3780();
        goto LABEL_21;
      }
    }

    sub_25B0E3F30();
LABEL_21:
    sub_25B0AD448(v50, v54);
    v34 = *(&v54 + 1);
    MEMORY[0x25F860A80](*(*(&v54 + 1) + 16));
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = v34 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v37 = *(v41 + 72);
      v38 = *(v41 + 16);
      do
      {
        v38(v8, v36, v4);
        sub_25B0AB454(&qword_27FA312D0, MEMORY[0x277D2BE00]);
        sub_25B0E36D0();
        (*v19)(v8, v4);
        v36 += v37;
        --v35;
      }

      while (v35);
    }

    MEMORY[0x25F860A80](v55);
    sub_25B0E3F50();
    v12 = v45;
    v20 = -1 << *(v45 + 32);
    v21 = v43;
    result = sub_25B0E3B70();
    *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v22 = v12[6] + 72 * result;
    *v22 = v51;
    v23 = v52;
    v24 = v53;
    v25 = v54;
    *(v22 + 64) = v55;
    *(v22 + 32) = v24;
    *(v22 + 48) = v25;
    *(v22 + 16) = v23;
    ++v12[2];
    v9 = v46;
    v18 = v44;
    v13 = v48;
    v17 = v47;
  }

  v27 = v13;
  while (1)
  {
    v13 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v13 >= v18)
    {

      v2 = v39;
      goto LABEL_27;
    }

    v28 = *(v40 + 8 * v13);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v47 = (v28 - 1) & v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_25B0AAC48(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v33 = 0;
  v34 = a6;
  v36 = a5;
  v38 = a4;
  v39 = a3;
  v31 = a2;
  v32 = result;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *(v39 + 48);
    v37 = v15;
    v17 = (v16 + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    sub_25B0E3900();

    sub_25B0E38F0();
    sub_25B0E3850();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    v40 = v18;
    v41 = v19;
    MEMORY[0x28223BE20](isCurrentExecutor);
    v29 = &v40;
    v21 = v42;
    v22 = sub_25B0A878C(sub_25B0AB49C, v28, v38);
    if (v22 & 1) != 0 || (v40 = v18, v41 = v19, MEMORY[0x28223BE20](v22), v29 = &v40, v23 = sub_25B0A878C(sub_25B0AB49C, v28, v36), (v23))
    {
      v42 = v21;
    }

    else
    {
      v35 = &v30;
      v24 = *v34;
      v40 = v18;
      v41 = v19;
      MEMORY[0x28223BE20](v23);
      v29 = &v40;

      v25 = sub_25B0A878C(sub_25B0AB49C, v28, v24);
      v42 = v21;

      if ((v25 & 1) == 0)
      {
        *(v32 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_20:
          v27 = v39;

          return sub_25B0A9290(v32, v31, v33, v27);
        }
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_20;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25B0AAF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = a4;
  v5 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v47 = a2;

  v44 = a3;

  if (v7 > 0xD)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v38 = &v38;
    v39 = v8;
    MEMORY[0x28223BE20](v10);
    v40 = &v38 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v9);
    v41 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v46 = v5;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v19 = v16 | (v11 << 6);
      v20 = *(v5 + 48);
      v45 = v19;
      v21 = (v20 + 16 * v19);
      v22 = *v21;
      v23 = v21[1];
      sub_25B0E3900();

      v9 = sub_25B0E38F0();
      sub_25B0E3850();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      v49 = v22;
      v50 = v23;
      MEMORY[0x28223BE20](isCurrentExecutor);
      *(&v38 - 2) = &v49;
      v25 = v48;
      v26 = sub_25B0A878C(sub_25B0AB394, (&v38 - 4), v47);
      if (v26 & 1) != 0 || (v49 = v22, v50 = v23, MEMORY[0x28223BE20](v26), *(&v38 - 2) = &v49, v27 = sub_25B0A878C(sub_25B0AB49C, (&v38 - 4), v44), (v27))
      {
        v48 = v25;

        v5 = v46;
      }

      else
      {
        v43 = &v38;
        v28 = *v42;
        v49 = v22;
        v50 = v23;
        MEMORY[0x28223BE20](v27);
        *(&v38 - 2) = &v49;

        v29 = sub_25B0A878C(sub_25B0AB49C, (&v38 - 4), v28);
        v48 = v25;

        v5 = v46;
        if ((v29 & 1) == 0)
        {
          *&v40[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
          if (__OFADD__(v41++, 1))
          {
            __break(1u);
LABEL_21:
            v31 = sub_25B0A9290(v40, v39, v41, v5);

            goto LABEL_22;
          }
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_21;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();
  v35 = v47;

  v36 = v44;

  v37 = v48;
  v31 = sub_25B0A91C8(v34, v8, v5, v35, v36, v42);
  v48 = v37;

  MEMORY[0x25F8613E0](v34, -1, -1);

LABEL_22:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_25B0AB3B0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25B0E3E30() & 1;
  }
}

unint64_t sub_25B0AB408()
{
  result = qword_27FA31E08;
  if (!qword_27FA31E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA31E08);
  }

  return result;
}

uint64_t sub_25B0AB454(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25B0AB4B8()
{
  swift_getKeyPath();
  sub_25B0AD90C(&qword_27FA31DD8, type metadata accessor for GalleryManager);
  sub_25B0E28D0();

  v1 = *(v0 + 16);
}

uint64_t sub_25B0AB55C(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_25B0E3780();
  if (v1[3])
  {
    v6 = v1[2];
    sub_25B0E3F30();
    sub_25B0E3780();
    if (v1[5])
    {
LABEL_3:
      v7 = v1[4];
      sub_25B0E3F30();
      sub_25B0E3780();
      goto LABEL_6;
    }
  }

  else
  {
    sub_25B0E3F30();
    if (v1[5])
    {
      goto LABEL_3;
    }
  }

  sub_25B0E3F30();
LABEL_6:
  sub_25B0AD448(a1, v1[6]);
  v8 = v1[7];
  v9 = *(v8 + 16);
  MEMORY[0x25F860A80](v9);
  if (v9)
  {
    v10 = *(sub_25B0E2750() - 8);
    v11 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    sub_25B0AD90C(&qword_27FA312D0, MEMORY[0x277D2BE00]);
    do
    {
      sub_25B0E36D0();
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return MEMORY[0x25F860A80](v2[8]);
}

uint64_t sub_25B0AB6F8()
{
  sub_25B0E3F10();
  sub_25B0AB55C(v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B0AB73C()
{
  sub_25B0E3F10();
  sub_25B0AB55C(v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B0AB778@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL sub_25B0AB784(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_25B0AD668(v7, v9);
}

uint64_t sub_25B0AB7E0(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B0AD90C(&qword_27FA31DD8, type metadata accessor for GalleryManager);
    sub_25B0E28C0();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 16);

  sub_25B0A2BE0(v4, a1);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v1 + 16);
LABEL_7:
  *(v1 + 16) = a1;
}

uint64_t sub_25B0AB948()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_25B0E2900();
  os_unfair_lock_lock((v0 + 24));
  sub_25B0AB9C4((v0 + 32));
  os_unfair_lock_unlock((v0 + 24));
  return v0;
}

uint64_t sub_25B0AB9C4(uint64_t *a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v13 - v3;
  v5 = *a1;

  sub_25B0E3900();
  sub_25B0E38F0();
  v6 = MEMORY[0x277D85700];
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_25B0E3940();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();

  v9 = sub_25B0E38F0();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = v8;

  v11 = sub_25B052F48(0, 0, v4, &unk_25B0E8FB0, v10);

  *a1 = v11;
  return result;
}

uint64_t sub_25B0ABBA0()
{
  os_unfair_lock_lock((v0 + 24));
  if (*(v0 + 32))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock((v0 + 24));
  os_unfair_lock_lock((v0 + 40));
  if (*(v0 + 48))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock((v0 + 40));
  v1 = *(v0 + 16);

  sub_25B058448(v0 + 32, &qword_27FA31D20, &qword_25B0E8978);
  sub_25B058448(v0 + 48, &qword_27FA31D20, &qword_25B0E8978);
  v2 = OBJC_IVAR____TtC15NanoFaceGallery14GalleryManager___observationRegistrar;
  v3 = sub_25B0E2910();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_25B0ABCB8()
{
  sub_25B0ABBA0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for GalleryManager()
{
  result = qword_27FA31E20;
  if (!qword_27FA31E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B0ABD64()
{
  result = sub_25B0E2910();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25B0ABE30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25B0ABE78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B0ABEDC()
{
  result = qword_27FA31E30;
  if (!qword_27FA31E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31E30);
  }

  return result;
}

uint64_t sub_25B0ABF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = sub_25B0E3A90();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = sub_25B0E3900();
  v4[15] = sub_25B0E38F0();
  v10 = sub_25B0E3850();
  v4[16] = v10;
  v4[17] = v9;

  return MEMORY[0x2822009F8](sub_25B0AC060, v10, v9);
}

uint64_t sub_25B0AC060()
{
  v1 = v0[9];
  v2 = objc_opt_self();
  v0[18] = v2;
  v3 = [v2 currentDevice];
  v0[19] = v3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_25B0AC744(v3);
  }

  v4 = v0[13];
  v5 = v0[9];
  v6 = [objc_opt_self() defaultCenter];
  v7 = *MEMORY[0x277CBB640];
  sub_25B0E3AA0();

  sub_25B0E3A80();
  swift_beginAccess();
  v8 = v0[14];
  v0[20] = sub_25B0E38F0();
  v9 = sub_25B0AD90C(&qword_27FA31D58, MEMORY[0x277CC9D68]);
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_25B0AC21C;
  v12 = v0[13];
  v13 = v0[10];
  v14 = v0[11];

  return MEMORY[0x282200308](v13, v14, v9);
}

uint64_t sub_25B0AC21C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25B0E3850();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_25B0AC6B8;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25B0E3850();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_25B0AC3B4;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_25B0AC3B4()
{
  v1 = v0[20];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_25B0AC418, v2, v3);
}

uint64_t sub_25B0AC418()
{
  v1 = *(v0 + 80);
  v2 = sub_25B0E22B0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 120);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

LABEL_8:
    v13 = *(v0 + 104);
    v14 = *(v0 + 80);

    v15 = *(v0 + 8);

    return v15();
  }

  v5 = *(v0 + 72);
  if (!swift_weakLoadStrong())
  {
    v10 = *(v0 + 152);
    v11 = *(v0 + 120);
    v12 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v9 = v12;
    goto LABEL_7;
  }

  if (sub_25B0E39F0())
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 120);
    v8 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v9 = v8;
LABEL_7:
    sub_25B058448(v9, &unk_27FA32F30, &unk_25B0E8AD8);
    goto LABEL_8;
  }

  v17 = *(v0 + 80);
  v18 = [*(v0 + 144) currentDevice];
  sub_25B0AC744(v18);

  sub_25B058448(v17, &unk_27FA32F30, &unk_25B0E8AD8);
  v19 = *(v0 + 112);
  *(v0 + 160) = sub_25B0E38F0();
  v20 = sub_25B0AD90C(&qword_27FA31D58, MEMORY[0x277CC9D68]);
  v21 = *(MEMORY[0x277D856D0] + 4);
  v22 = swift_task_alloc();
  *(v0 + 168) = v22;
  *v22 = v0;
  v22[1] = sub_25B0AC21C;
  v23 = *(v0 + 104);
  v24 = *(v0 + 80);
  v25 = *(v0 + 88);

  return MEMORY[0x282200308](v24, v25, v20);
}

uint64_t sub_25B0AC6B8()
{
  *(v0 + 64) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F40, &unk_25B0E6060);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

void sub_25B0AC744(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  sub_25B0AB7E0(MEMORY[0x277D84F90]);
  if (a1)
  {
    v8 = a1;
    os_unfair_lock_lock((v1 + 40));
    v9 = *(v1 + 48);

    sub_25B0E3900();
    sub_25B0E38F0();
    v10 = MEMORY[0x277D85700];
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v11 = sub_25B0E3940();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = v8;

    v14 = sub_25B0E38F0();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v10;
    v15[4] = v13;
    v15[5] = v12;

    *(v2 + 48) = sub_25B052F48(0, 0, v7, &unk_25B0E8FC0, v15);

    os_unfair_lock_unlock((v2 + 40));
  }

  else
  {
    os_unfair_lock_lock((v1 + 40));
    v16 = *(v1 + 48);

    sub_25B0E3900();
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    *(v1 + 48) = 0;

    os_unfair_lock_unlock((v1 + 40));
  }
}

uint64_t sub_25B0AC9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_25B0E24A0();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31880, &qword_25B0E7758);
  v5[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = sub_25B0E3900();
  v5[17] = sub_25B0E38F0();
  v12 = sub_25B0E3850();
  v5[18] = v12;
  v5[19] = v11;

  return MEMORY[0x2822009F8](sub_25B0ACB24, v12, v11);
}

uint64_t sub_25B0ACB24()
{
  v1 = v0[8];
  type metadata accessor for WatchGallery();
  inited = swift_initStackObject();
  v0[20] = inited;
  *(inited + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_25B0ACBE4;

  return WatchGallery.groups.getter();
}

uint64_t sub_25B0ACBE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = a1;

  v4 = *(v2 + 152);
  v5 = *(v2 + 144);

  return MEMORY[0x2822009F8](sub_25B0ACD0C, v5, v4);
}

uint64_t sub_25B0ACD0C()
{
  v1 = v0[17];
  v2 = v0[9];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v4 = v0[22];
  if (!Strong)
  {
    v30 = v0[20];
    v31 = v0[22];

LABEL_21:

    v35 = v0[14];
    v34 = v0[15];
    v36 = v0[12];

    v37 = v0[1];

    return v37();
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    v32 = v0[22];

    v7 = MEMORY[0x277D84F90];
LABEL_20:
    v33 = v0[20];
    sub_25B0AB7E0(v7);

    goto LABEL_21;
  }

  v42 = v0[13];
  v6 = v0[11];
  v49 = MEMORY[0x277D84F90];
  sub_25B08C230(0, v5, 0);
  v7 = v49;
  v45 = *(v4 + 16);
  result = sub_25B0E2830();
  v9 = 0;
  v39 = v4 + ((*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80));
  v40 = *(result - 8);
  v41 = result;
  v38 = (v6 + 8);
  v43 = v4;
  v44 = v0;
  while (v45 != v9)
  {
    if (v9 >= *(v4 + 16))
    {
      goto LABEL_25;
    }

    v10 = *(v42 + 48);
    v11 = v0[15];
    v12 = v0[16];
    v13 = v0[14];
    (*(v40 + 16))(v11 + v10, v39 + *(v40 + 72) * v9, v41);
    *v13 = v9;
    (*(v40 + 32))(&v13[*(v42 + 48)], v11 + v10, v41);
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v14 = sub_25B0E2800();
    if (v15)
    {
      v16 = v15;
      v48 = v14;
      v17 = v7;
    }

    else
    {
      v17 = v7;
      v18 = v0[12];
      v19 = v0[10];
      sub_25B0E2490();
      v48 = sub_25B0E2460();
      v16 = v20;
      (*v38)(v18, v19);
    }

    v21 = v0[14];
    v47 = sub_25B0E2820();
    v46 = v22;
    v23 = sub_25B0E27D0();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = MEMORY[0x277D84F98];
    }

    v25 = sub_25B0E2810();

    result = sub_25B058448(v21, &qword_27FA31880, &qword_25B0E7758);
    v7 = v17;
    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_25B08C230((v26 > 1), v27 + 1, 1);
      v7 = v17;
    }

    *(v7 + 16) = v27 + 1;
    v28 = (v7 + 72 * v27);
    v28[11] = v25;
    v28[12] = v9;
    v28[4] = v48;
    v28[5] = v16;
    v28[6] = v47;
    v28[7] = v46;
    v28[8] = 0;
    v28[9] = 0;
    v28[10] = v24;
    ++v9;
    v4 = v43;
    v0 = v44;
    if (v5 == v9)
    {
      v29 = v44[22];

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}