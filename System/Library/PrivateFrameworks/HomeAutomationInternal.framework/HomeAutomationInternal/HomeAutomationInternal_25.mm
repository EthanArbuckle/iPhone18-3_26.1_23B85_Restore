uint64_t (*sub_252AEE95C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_252AEF660(v6, a2, a3);
  return sub_252AA9630;
}

uint64_t (*sub_252AEE9E4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_252AEF70C(v6, a2, a3);
  return sub_25292DC78;
}

void sub_252AEEA6C(id *a1, uint64_t *a2)
{
  v5 = sub_252E32CB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v72 - v15;
  v17 = [*a1 entity];
  if (!v17)
  {
    return;
  }

  v77 = v6;
  v78 = v17;
  v18 = [v17 entityType];
  v19 = MEMORY[0x277D48168];
  if (v18)
  {
    v76 = v2;
    v20 = v18;
    v21 = sub_252E36F34();
    v23 = v22;

    v24 = *v19;
    v25 = sub_252E36F34();
    if (v23)
    {
      if (v21 == v25 && v23 == v26)
      {

        v29 = v77;
        v30 = v78;
      }

      else
      {
        v28 = sub_252E37DB4();

        v29 = v77;
        v30 = v78;
        if ((v28 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      v32 = [v30 identifier];
      if (v32)
      {
        v33 = v32;
        sub_252E32C94();

        (*(v29 + 56))(v14, 0, 1, v5);
      }

      else
      {
        (*(v29 + 56))(v14, 1, 1, v5);
      }

      sub_25293EED0(v14, v16);
      if ((*(v29 + 48))(v16, 1, v5))
      {
        sub_25293847C(v16, &qword_27F540370, &qword_252E3C450);
        goto LABEL_42;
      }

      (*(v29 + 16))(v9, v16, v5);
      sub_25293847C(v16, &qword_27F540370, &qword_252E3C450);
      v34 = sub_252E32C64();
      v36 = v35;
      (*(v29 + 8))(v9, v5);
      type metadata accessor for HomeStore();
      v37 = static HomeStore.shared.getter();
      v38 = sub_2529F53FC(v34, v36);
      LOBYTE(v34) = v39;

      if (v34)
      {
        sub_252956C8C(v38, 1);
        goto LABEL_42;
      }

      if (!v38)
      {
        goto LABEL_42;
      }

      v40 = v38;
      v41 = sub_252B2F470();
      v73 = v38;
      sub_252956C8C(v38, 0);
      if (v41 >> 62)
      {
        v42 = sub_252E378C4();
        if (v42)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v42)
        {
LABEL_23:
          v43 = 0;
          v77 = v41 & 0xC000000000000001;
          v30 = MEMORY[0x277D84F90];
          v74 = a2;
          v75 = v41 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v77)
            {
              v5 = MEMORY[0x2530ADF00](v43, v41);
              v44 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (v43 >= *(v75 + 16))
              {
                goto LABEL_53;
              }

              v5 = *(v41 + 8 * v43 + 32);

              v44 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                v42 = sub_2529F7A80(0, *(v42 + 16) + 1, 1, v42);
                *a2 = v42;
LABEL_48:
                v69 = *(v42 + 16);
                v68 = *(v42 + 24);
                if (v69 >= v68 >> 1)
                {
                  *a2 = sub_2529F7A80((v68 > 1), v69 + 1, 1, v42);
                }

                v70 = *a2;
                *(v70 + 16) = v69 + 1;
                v71 = v70 + 16 * v69;
                *(v71 + 32) = v40;
                *(v71 + 40) = v5;
                return;
              }
            }

            v45 = v41;
            v46 = [*(v5 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
            v47 = sub_252E36F34();
            v49 = v48;

            if (qword_27F53F8B8 != -1)
            {
              swift_once();
            }

            v50 = off_27F546230;
            if (*(off_27F546230 + 2) && (v51 = sub_252A44A10(v47, v49), (v52 & 1) != 0))
            {
              v53 = *(v50[7] + 8 * v51);
            }

            else
            {
              v53 = 0;
            }

            v40 = HomeDeviceType.description.getter(v53);
            v55 = v54;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_2529F7A80(0, *(v30 + 2) + 1, 1, v30);
            }

            v5 = *(v30 + 2);
            v56 = *(v30 + 3);
            if (v5 >= v56 >> 1)
            {
              v30 = sub_2529F7A80((v56 > 1), v5 + 1, 1, v30);
            }

            *(v30 + 2) = v5 + 1;
            v57 = &v30[16 * v5];
            *(v57 + 4) = v40;
            *(v57 + 5) = v55;
            ++v43;
            v41 = v45;
            a2 = v74;
            if (v44 == v42)
            {
              goto LABEL_57;
            }
          }
        }
      }

      v30 = MEMORY[0x277D84F90];
LABEL_57:

      sub_25297A744(v30);

      sub_252956C8C(v73, 0);
      return;
    }
  }

  else
  {
    v31 = *MEMORY[0x277D48168];
    sub_252E36F34();
  }

  v30 = v78;
LABEL_42:
  v58 = [v30 serviceType];
  if (v58)
  {
    v59 = v58;
    v60 = sub_252E36F34();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  v63 = sub_252D141D4(v60, v62);
  v65 = v64;

  if ((v65 & 1) == 0)
  {
    v40 = HomeDeviceType.description.getter(v63);
    v5 = v66;
    v42 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }
}

uint64_t sub_252AEF114(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_252E37844() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_252E37EC4();

      sub_252E37044();
      v13 = sub_252E37F14();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_252AEF2C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_252E37844() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_252E37EC4();

      sub_252E37044();
      v14 = sub_252E37F14();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_252AEF474(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_252E37844() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_252E37EC4();

      sub_252E37044();
      v13 = sub_252E37F14();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_252E35EF4() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t (*sub_252AEF660(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_252AEFBA0(v8);
  v8[9] = sub_252AEF81C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_252AEFEAC;
}

uint64_t (*sub_252AEF70C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_252AEFBC8(v8);
  v8[9] = sub_252AEF98C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_252AEF7B8;
}

void sub_252AEF7BC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_252AEF81C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_252A44A10(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_252E032D8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_252DFE838(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_252A44A10(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_252E37E24();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_252AEF974;
}

void (*sub_252AEF98C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_252A44A10(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_252E03300();
      v13 = v21;
      goto LABEL_11;
    }

    sub_252DFEE00(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_252A44A10(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_252E37E24();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_252AEF974;
}

void sub_252AEFAE4(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 40);
  if (v4)
  {
    v6 = v3[4];
    v7 = *v3[3];
    if (v5)
    {
      *(*(v7 + 56) + 8 * v6) = v4;
    }

    else
    {
      a3(v6, v3[1], v3[2], v4, v7);
    }
  }

  else if ((*a1)[5])
  {
    v8 = v3[4];
    v9 = *v3[3];
    sub_252A01B34(*(v9 + 48) + 16 * v8);
    sub_252AEF114(v8, v9);
  }

  v10 = *v3;

  free(v3);
}

uint64_t (*sub_252AEFBA0(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_252AEFEA8;
}

uint64_t (*sub_252AEFBC8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_252AEFBF0;
}

uint64_t sub_252AEFBFC(unint64_t a1)
{
  v1 = a1;
  v32 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_27:
    v2 = sub_252E378C4();
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
      v3 = 0;
      v30 = v1 & 0xFFFFFFFFFFFFFF8;
      v31 = v1 & 0xC000000000000001;
      v4 = MEMORY[0x277D84F98];
      v29 = v1;
      while (1)
      {
        if (v31)
        {
          v7 = MEMORY[0x2530ADF00](v3, v1);
        }

        else
        {
          if (v3 >= *(v30 + 16))
          {
            goto LABEL_24;
          }

          v7 = *(v1 + 8 * v3 + 32);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v10 = [v7 requestActionId];
        if (v10)
        {
          v11 = v10;
          v12 = sub_252E36F34();
          v1 = v13;
        }

        else
        {
          v12 = 0;
          v1 = 0;
        }

        v15 = sub_252A44BF0(v12, v1);
        v16 = v4[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          sub_252DFE84C(v18, 1);
          v4 = v32;
          v20 = sub_252A44BF0(v12, v1);
          if ((v19 & 1) != (v21 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
            result = sub_252E37E24();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v6 = (v4[7] + 8 * v15);
          MEMORY[0x2530AD700](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_252E3C130;
          *(v22 + 32) = v8;
          v4[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v4[6] + 16 * v15);
          *v23 = v12;
          v23[1] = v1;
          *(v4[7] + 8 * v15) = v22;
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_26;
          }

          v4[2] = v26;
        }

        v1 = v29;
        ++v3;
        if (v9 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_252AEFEB0()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v10, v0, sizeof(v10));
  if (qword_27F53F5A8 != -1)
  {
    swift_once();
  }

  v6 = qword_27F544F30;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_initStackObject();
  v7 = sub_252D2D190(202, 0x6E776F6E6B6E75, 0xE700000000000000);
  sub_252AF00C0(v10, v9);
  if (v7)
  {

    sub_252D2D83C(0, 0);
  }

  sub_252E375C4();
  sub_252E36A74();

  (*(v2 + 8))(v5, v1);
  return v9[0];
}

void sub_252AF00C0(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[62];
  if (v4 && (type metadata accessor for ControlHomeIntent(), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5;
    v7 = qword_27F53F4B0;
    v8 = v4;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544CB8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E7A700);
    v10 = v8;
    v11 = [v6 description];
    v12 = sub_252E36F34();
    v14 = v13;

    MEMORY[0x2530AD570](v12, v14);
  }

  else
  {
    sub_252B680FC();
    memcpy(__dst, a1, sizeof(__dst));
    v15 = sub_252B64768(__dst);

    if (!v15)
    {
      memcpy(__dst, a1, sizeof(__dst));
      v21 = sub_252BADB6C();
      memcpy(__dst, a1, sizeof(__dst));
      v22 = sub_252BAC7E4();
      memcpy(__dst, a1, sizeof(__dst));
      sub_252BB024C(v22, v21);

      v23 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v24 = v21;
      v25 = [v23 init];
      [v25 setUserTask_];
      type metadata accessor for HomeFilter();
      v26 = sub_252E37254();

      [v25 setFilters_];

      [v25 setTime_];
      v27 = sub_252B680FC();
      swift_beginAccess();
      v6 = v25;
      sub_2529353AC(a1, __dst);
      v28 = *(v27 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = *(v27 + 64);
      *(v27 + 64) = 0x8000000000000000;
      sub_2529FB668(v6, a1, isUniquelyReferenced_nonNull_native);
      sub_252935408(a1);
      *(v27 + 64) = __dst[0];
      swift_endAccess();

      goto LABEL_12;
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E7A620);
    v6 = v15;
    v17 = [v6 description];
    v18 = sub_252E36F34();
    v20 = v19;

    MEMORY[0x2530AD570](v18, v20);
  }

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000087, 0x8000000252E7A670);

LABEL_12:
  *a2 = v6;
}

uint64_t sub_252AF04C0()
{
  v1 = v0;
  v2 = [v0 deviceTypes];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E37264();

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 32);
      v7 = MEMORY[0x277D84F90];
      do
      {
        v8 = *v6++;
        v9 = sub_252E25FC4(v8);
        if ((v10 & 1) == 0)
        {
          v11 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_2529F7B8C(0, *(v7 + 2) + 1, 1, v7);
          }

          v13 = *(v7 + 2);
          v12 = *(v7 + 3);
          if (v13 >= v12 >> 1)
          {
            v7 = sub_2529F7B8C((v12 > 1), v13 + 1, 1, v7);
          }

          *(v7 + 2) = v13 + 1;
          *&v7[8 * v13 + 32] = v11;
        }

        --v5;
      }

      while (v5);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v7 = 0;
  }

  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v14 = HomeFilter.Builder.init()();
  v16 = v15;
  v17 = [v1 homeEntityName];
  if (v17)
  {
    v18 = v17;
    v19 = sub_252E36F34();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = (*(*v16 + 576))(v19, v21);

  if (v7)
  {
    if (*(v7 + 2))
    {
      v23 = *(v7 + 4);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = (*(*v22 + 624))(v23);

  v25 = (*(*v24 + 592))([v1 type]);

  v26 = [v1 room];
  if (v26)
  {
    v27 = v26;
    v28 = sub_252E36F34();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = (*(*v25 + 680))(v28, v30);

  v32 = [v1 home];
  if (v32)
  {
    v33 = v32;
    v34 = sub_252E36F34();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = (*(*v31 + 632))(v34, v36);

  v38 = [v1 group];
  if (v38)
  {
    v39 = v38;
    v40 = sub_252E36F34();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = (*(*v37 + 664))(v40, v42);

  v44 = [v1 zones];
  if (!v44)
  {
    goto LABEL_36;
  }

  v45 = v44;
  v46 = sub_252E37264();

  if (!v46[2])
  {

LABEL_36:
    v48 = 0;
    v47 = 0;
    goto LABEL_37;
  }

  v48 = v46[4];
  v47 = v46[5];

LABEL_37:
  v49 = (*(*v43 + 648))(v48, v47);

  v51 = (*(*v49 + 760))(v50);

  return v51;
}

uint64_t sub_252AF09DC(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252AF0B68(a1);
}

uint64_t sub_252AF0A84(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 144);
  v3 = *(v2 + 16);
  while (1)
  {
    v5 = v1;
    if (v3 == v1)
    {
      return v3 != v5;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    v7 = *(v2 + 32 + v1);
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v6 == 0xE800000000000000)
    {

      return v3 != v5;
    }

    ++v1;
    v4 = sub_252E37DB4();

    if (v4)
    {
      return v3 != v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252AF0B68(void *__src)
{
  *(v1 + 1024) = __src;
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252AF0BDC, 0, 0);
}

uint64_t sub_252AF0BDC()
{
  v29 = v1;
  v2 = *(v1 + 160);
  memcpy(__dst, *(v1 + 1024), sizeof(__dst));
  v3 = *(v2 + 2);
  sub_2529353AC(v1 + 16, v1 + 520);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if (v4 >= *(v2 + 2))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v28 = v2[v4 + 32];
      v5 = AccessoryTypeSemantic.rawValue.getter();
      v0 = v6;
      if (v5 == 0x706F4D746F626F72 && v6 == 0xE800000000000000)
      {
        break;
      }

      v7 = sub_252E37DB4();

      if (v7)
      {
        goto LABEL_10;
      }

      if (v3 == ++v4)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    v9 = *(v2 + 2);
    if (v9 - 1 == v4)
    {
      v8 = v4 + 1;
      goto LABEL_12;
    }

    v19 = v4 + 33;
    while (1)
    {
      v22 = v19 - 32;
      if (v19 - 32 >= v9)
      {
        break;
      }

      v28 = v2[v19];
      v0 = &v28;
      if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v23 == 0xE800000000000000)
      {
      }

      else
      {
        v0 = v23;
        v24 = sub_252E37DB4();

        if ((v24 & 1) == 0)
        {
          if (v22 != v4)
          {
            if (v4 < 0)
            {
              goto LABEL_50;
            }

            v25 = *(v2 + 2);
            if (v4 >= v25)
            {
              goto LABEL_51;
            }

            if (v22 >= v25)
            {
              goto LABEL_52;
            }

            v0 = v2[v4 + 32];
            v26 = v2[v19];
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_252D57AD4(v2);
              v2 = result;
            }

            v2[v4 + 32] = v26;
            v2[v19] = v0;
          }

          ++v4;
        }
      }

      v9 = *(v2 + 2);
      v20 = v19 + 1;
      v21 = v19 - 31;
      ++v19;
      if (v21 == v9)
      {
        v8 = v20 - 32;
        if (v20 - 32 < v4)
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v4 < 0)
        {
          __break(1u);
          return result;
        }

        goto LABEL_12;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
LABEL_8:
    v8 = *(v2 + 2);
    v4 = v8;
LABEL_12:
    v0 = &__dst[18];
    if (!__OFADD__(v8, v4 - v8))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[18] = v2;
      if (!isUniquelyReferenced_nonNull_native || v4 > *(v2 + 3) >> 1)
      {
        if (v8 <= v4)
        {
          v11 = v4;
        }

        else
        {
          v11 = v8;
        }

        v2 = sub_2529F80DC(isUniquelyReferenced_nonNull_native, v11, 1, v2);
        __dst[18] = v2;
      }

      sub_252B7DA90(v4, v8, 0);
      __dst[18] = v2;
      if (!sub_2529A78C8(50, v2))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2529F80DC(0, *(v2 + 2) + 1, 1, v2);
        }

        v13 = *(v2 + 2);
        v12 = *(v2 + 3);
        if (v13 >= v12 >> 1)
        {
          v2 = sub_2529F80DC((v12 > 1), v13 + 1, 1, v2);
        }

        *(v2 + 2) = v13 + 1;
        v2[v13 + 32] = 50;
        __dst[18] = v2;
      }

      v0 = *(v1 + 208);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_26;
      }

      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_54:
  v0 = sub_2529F82C4(0, *(v0 + 2) + 1, 1, v0);
LABEL_26:
  v15 = *(v0 + 2);
  v14 = *(v0 + 3);
  if (v15 >= v14 >> 1)
  {
    v0 = sub_2529F82C4((v14 > 1), v15 + 1, 1, v0);
  }

  *(v0 + 2) = v15 + 1;
  v0[v15 + 32] = 58;
  __dst[24] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_252E3C290;
  memcpy((v16 + 32), __dst, 0x1F8uLL);
  v17 = *(v1 + 8);

  return v17(v16);
}

uint64_t sub_252AF0FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[279] = v3;
  v4[278] = a3;
  v4[277] = a2;
  v4[276] = a1;
  v5 = *(*(sub_252E33944() - 8) + 64) + 15;
  v4[280] = swift_task_alloc();
  v6 = sub_252E34014();
  v4[281] = v6;
  v7 = *(v6 - 8);
  v4[282] = v7;
  v8 = *(v7 + 64) + 15;
  v4[283] = swift_task_alloc();
  v4[284] = swift_task_alloc();
  v9 = sub_252E32A64();
  v4[285] = v9;
  v10 = *(v9 - 8);
  v4[286] = v10;
  v11 = *(v10 + 64) + 15;
  v4[287] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[288] = swift_task_alloc();
  v13 = sub_252E36324();
  v4[289] = v13;
  v14 = *(v13 - 8);
  v4[290] = v14;
  v15 = *(v14 + 64) + 15;
  v4[291] = swift_task_alloc();
  v4[292] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AF11C8, 0, 0);
}

uint64_t sub_252AF11C8()
{
  v1 = v0[278];
  if (!v1 || (v2 = [v1 entityResponses]) == 0)
  {
    sub_2529318DC();
    swift_allocError();
    *v19 = 6;
    swift_willThrow();
    v20 = v0[292];
    v21 = v0[291];
    v22 = v0[288];
    v23 = v0[287];
    v24 = v0[284];
    v25 = v0[283];
    v26 = v0[280];

    v27 = v0[1];

    return v27();
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  v95 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_112;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v6 = MEMORY[0x277D84F90];
    v94 = v0;
    if (i)
    {
      v7 = 0;
      v90 = v4 & 0xFFFFFFFFFFFFFF8;
      v92 = v4 & 0xC000000000000001;
      v84 = v4;
      v86 = i;
      v88 = v4 + 32;
      v4 = &off_279711000;
      while (1)
      {
        if (v92)
        {
          v8 = MEMORY[0x2530ADF00](v7, v84);
        }

        else
        {
          if (v7 >= *(v90 + 16))
          {
            goto LABEL_111;
          }

          v8 = *(v88 + 8 * v7);
        }

        v0 = v8;
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_110;
        }

        v10 = [v8 taskResponses];
        if (v10)
        {
          v11 = v10;
          type metadata accessor for HomeUserTaskResponse();
          v12 = sub_252E37264();

          if (v12 >> 62)
          {
            v13 = sub_252E378C4();
          }

          else
          {
            v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = 0;
          while (1)
          {
            if (v13 == v14)
            {

              i = v86;
              goto LABEL_8;
            }

            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x2530ADF00](v14, v12);
            }

            else
            {
              if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_103;
              }

              v15 = *(v12 + 8 * v14 + 32);
            }

            v16 = v15;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            v17 = [v15 taskOutcome];

            ++v14;
            if (v17 == 1)
            {

              sub_252E37A94();
              v18 = *(v95 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              i = v86;
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

LABEL_8:
        v0 = v94;
        if (v7 == i)
        {
          v29 = v95;
          v6 = MEMORY[0x277D84F90];
          goto LABEL_33;
        }
      }
    }

    v29 = MEMORY[0x277D84F90];
LABEL_33:

    v95 = v6;
    if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
    {
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *(v29 + 16);
    }

    v30 = MEMORY[0x277D84F90];
    if (v4)
    {
      v31 = 0;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x2530ADF00](v31, v29);
        }

        else
        {
          if (v31 >= *(v29 + 16))
          {
            goto LABEL_105;
          }

          v32 = *(v29 + 8 * v31 + 32);
        }

        v33 = v32;
        v0 = (v31 + 1);
        if (__OFADD__(v31, 1))
        {
          break;
        }

        sub_252C6FEAC(v94[277], v32);

        MEMORY[0x2530AD700]();
        if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v31;
        v34 = v0 == v4;
        v0 = v94;
        if (v34)
        {
          v36 = v95;
          v30 = MEMORY[0x277D84F90];
          goto LABEL_49;
        }
      }

LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v36 = MEMORY[0x277D84F90];
LABEL_49:

    v37 = sub_252B6EBB0(v36);
    v4 = v38;

    v95 = v30;
    v39 = v37 & 0xFFFFFFFFFFFFFF8;
    if (v37 >> 62)
    {
      v40 = sub_252E378C4();
    }

    else
    {
      v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v91 = v4;
    v93 = v0[279];
    v0[293] = v30;
    v89 = v37;
    if (v40)
    {
      v4 = 0;
      v41 = v37 & 0xC000000000000001;
      v87 = MEMORY[0x277D84F90];
LABEL_53:
      v42 = v4;
      while (1)
      {
        if (v41)
        {
          v43 = MEMORY[0x2530ADF00](v42, v89);
        }

        else
        {
          if (v42 >= *(v39 + 16))
          {
            goto LABEL_107;
          }

          v43 = *(v89 + 8 * v42 + 32);
        }

        v44 = v43;
        v4 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        sub_252DA49A4();
        v46 = v45;
        memcpy(v0 + 2, v93 + 112, 0x1F8uLL);
        if (sub_252956B94(v0 + 2) == 1 || (v47 = v0[27], !*(v47 + 2)))
        {
          v48 = 4;
        }

        else
        {
          v48 = v47[32];
        }

        sub_252C3AC5C(v48);
        v50 = v49;

        v51 = sub_252DA124C(0);
        if (v51)
        {
          MEMORY[0x2530AD700]();
          if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v52 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
            v0 = v94;
          }

          sub_252E372D4();
          v87 = v95;
          v0[293] = v95;
          v30 = MEMORY[0x277D84F90];
          if (v4 != v40)
          {
            goto LABEL_53;
          }

          goto LABEL_71;
        }

        ++v42;
        if (v4 == v40)
        {
          v30 = MEMORY[0x277D84F90];
          goto LABEL_71;
        }
      }

LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v87 = v30;
LABEL_71:
    v95 = v30;
    v53 = v91 >> 62 ? sub_252E378C4() : *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v53)
    {
      break;
    }

    v85 = MEMORY[0x277D84F90];
    v54 = 0;
    while (1)
    {
      if ((v91 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x2530ADF00](v54, v91);
      }

      else
      {
        if (v54 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_109;
        }

        v55 = *(v91 + 8 * v54 + 32);
      }

      v56 = v55;
      v4 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      sub_252DA49A4();
      v58 = v57;
      memcpy(v0 + 65, v93 + 112, 0x1F8uLL);
      if (sub_252956B94(v0 + 65) == 1 || (v59 = v0[90], !*(v59 + 2)))
      {
        v60 = 4;
      }

      else
      {
        v60 = v59[32];
      }

      sub_252C3AC5C(v60);
      v62 = v61;

      v63 = sub_252DA124C(0);
      if (v63)
      {
        MEMORY[0x2530AD700]();
        if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v64 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
          v0 = v94;
        }

        sub_252E372D4();
        v85 = v95;
        if (v4 == v53)
        {
          goto LABEL_92;
        }

        ++v54;
      }

      else
      {
        ++v54;
        if (v4 == v53)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    ;
  }

  v85 = MEMORY[0x277D84F90];
LABEL_92:
  v65 = v0[278];
  v66 = v0[277];

  v0[294] = type metadata accessor for HomeAutomationEntityResponses.Builder();
  v67 = swift_allocObject();
  v68 = MEMORY[0x277D84F90];
  *(v67 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for HomeAutomationClimateResponses();
  v69 = swift_allocObject();
  v0[295] = v69;
  *(v69 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v69 + 24) = v87;
  *(swift_allocObject() + 16) = v68;
  v70 = swift_allocObject();
  v0[296] = v70;
  *(v70 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v70 + 24) = v85;

  v0[297] = sub_252AF4570(v66, v65);
  v0[298] = v71;
  if (v71)
  {
    v72 = 1;
  }

  else
  {
    v72 = sub_252DC6D48(v0[277], v0[278]);
  }

  *(v0 + 2707) = v72;
  v73 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v73 + 288), (v0 + 254));

  v74 = v0[257];
  v75 = v0[258];
  __swift_project_boxed_opaque_existential_1(v0 + 254, v74);
  v76 = v75[15](v74, v75);
  __swift_destroy_boxed_opaque_existential_1(v0 + 254);
  if (v76)
  {
    v0[299] = *(v0[279] + 8);

    v77 = swift_task_alloc();
    v0[300] = v77;
    *v77 = v0;
    v77[1] = sub_252AF1C30;

    return sub_252D2B14C(v69, v70);
  }

  else
  {

    v78 = v0[296];
    v79 = v0[295];
    v80 = *__swift_project_boxed_opaque_existential_1(v0[279] + 3, *(v0[279] + 6));

    v81 = swift_task_alloc();
    v0[329] = v81;
    *v81 = v0;
    v81[1] = sub_252AF3234;
    v82 = v0[296];
    v83 = v0[295];

    return sub_252C11B48(0, v80, v83, v82);
  }
}

uint64_t sub_252AF1C30(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2400);
  v13 = *v2;
  v3[301] = a1;
  v3[302] = v1;

  if (v1)
  {
    v5 = v3[299];
    v6 = v3[298];
    v7 = v3[296];
    v8 = v3[295];
    v9 = v3[293];

    v10 = sub_252AF3CBC;
  }

  else
  {
    v11 = v3[299];

    v10 = sub_252AF1D98;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_252AF1D98()
{
  v9 = v0;
  v1 = v0[296];
  v2 = v0[295];
  v3 = v0[279];
  v4 = v0[277];
  memcpy(v0 + 128, (v3 + 112), 0x1F8uLL);
  memcpy(__dst, (v3 + 112), sizeof(__dst));
  sub_252938414((v0 + 128), (v0 + 191), &qword_27F5404C8, &unk_252E3FD60);
  v5 = v4;
  v0[303] = sub_252953488(v4, __dst, 0);

  v0[304] = *(v3 + 64);

  v6 = swift_task_alloc();
  v0[305] = v6;
  *v6 = v0;
  v6[1] = sub_252AF1EC8;

  return sub_252D2B5A4(v2, v1);
}

uint64_t sub_252AF1EC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2440);
  v10 = *v2;
  v3[306] = a1;
  v3[307] = v1;

  if (v1)
  {
    v5 = sub_252AF3D94;
  }

  else
  {
    v6 = v3[304];
    v7 = v3[296];
    v8 = v3[295];

    v5 = sub_252AF2000;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252AF2000()
{
  v1 = *(v0 + 2448);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2352);
  v4 = *(v0 + 2336);
  v5 = *(v0 + 2320);
  v6 = *(v0 + 2312);
  v15 = *(v0 + 2344);
  v16 = *(v0 + 2304);
  v14 = *(v0 + 2232);
  *(v0 + 2704) = 0;
  sub_252E36374();
  sub_252E37024();

  *(v0 + 2464) = sub_252E36304();
  *(v0 + 2472) = v7;
  v8 = *(v5 + 8);
  *(v0 + 2480) = v8;
  *(v0 + 2488) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  *(v0 + 2705) = 1;
  sub_252E36374();
  sub_252E37024();

  *(v0 + 2496) = sub_252E36304();
  *(v0 + 2504) = v9;
  v8(v4, v6);
  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  type metadata accessor for HomeAutomationEntityResponses();
  v10 = swift_allocObject();
  *(v0 + 2512) = v10;
  *(v10 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v10 + 24) = v15;
  *(v0 + 2520) = *(v14 + 64);
  (*(v5 + 56))(v16, 1, 1, v6);

  v11 = swift_task_alloc();
  *(v0 + 2528) = v11;
  *v11 = v0;
  v11[1] = sub_252AF2238;
  v12 = *(v0 + 2304);

  return sub_252D2715C(v10, v2, v12);
}

uint64_t sub_252AF2238(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = (*v2)[316];
  v6 = *v2;
  v4[317] = a1;
  v4[318] = v1;

  v7 = v3[315];
  v8 = v3[314];
  if (v1)
  {
    v9 = v4[313];
    v10 = v4[309];
    v11 = v4[303];
    v12 = v4[298];
    sub_25293847C(v4[288], &qword_27F540298, &unk_252E3C270);

    v13 = sub_252AF3EAC;
  }

  else
  {
    v14 = v4[303];
    sub_25293847C(v4[288], &qword_27F540298, &unk_252E3C270);

    v13 = sub_252AF2424;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_252AF2424()
{
  v1 = *(v0 + 2536);
  v2 = *(v0 + 2488);
  v3 = *(v0 + 2480);
  v4 = *(v0 + 2328);
  v5 = *(v0 + 2312);
  *(v0 + 2706) = 0;
  sub_252E36374();
  sub_252E37024();

  v6 = sub_252E36304();
  v8 = v7;
  v3(v4, v5);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_252E37174();
    v10 = sub_252E36FC4();
    v12 = v11;

    v63 = sub_252AD52A0(0xFuLL, 15, v10, v12, v6, v8);
    v14 = v13;

    v8 = v14;
  }

  else
  {
    v63 = v6;
  }

  *(v0 + 2552) = v8;
  v15 = *(v0 + 2504);
  v16 = *(v0 + 2496);
  v17 = *(v0 + 2368);
  v18 = *(v0 + 2360);
  v19 = *(v0 + 2296);
  v20 = *(v0 + 2288);
  v21 = *(v0 + 2280);
  v64 = sub_252AF5EB8();
  *(v0 + 2152) = v16;
  *(v0 + 2160) = v15;
  sub_252E32A44();
  sub_252947DBC();
  v22 = sub_252E37784();
  v23 = *(v20 + 8);
  v23(v19, v21);
  *(v0 + 2192) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529508A0();
  v24 = sub_252E36EA4();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = *(v0 + 2472);
  v29 = *(v0 + 2296);
  v30 = *(v0 + 2280);
  *(v0 + 2168) = *(v0 + 2464);
  *(v0 + 2176) = v28;
  sub_252E32A44();
  v31 = sub_252E37784();
  v23(v29, v30);
  *(v0 + 2200) = v31;
  v32 = sub_252E36EA4();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v35 && v64 != 2)
  {
    v36 = *(v0 + 2504);
    v37 = *(v0 + 2496);
    v62 = *(v0 + 2464);
    v38 = *(v0 + 2408);
    v39 = *(v0 + 2272);
    v40 = *(v0 + 2240);
    v41 = *(v0 + 2224);
    v42 = *(v0 + 2216);
    v43 = swift_task_alloc();
    *(v0 + 2560) = v43;
    *(v43 + 16) = v63;
    *(v43 + 24) = v8;
    *(v43 + 32) = v62;
    *(v43 + 48) = v37;
    *(v43 + 56) = v36;
    *(v43 + 64) = v64 & 1;
    *(v43 + 72) = v42;
    sub_252E33924();
    sub_252E33F54();
    v44 = v38;
    v45 = v41;
    v46 = swift_task_alloc();
    *(v0 + 2568) = v46;
    *v46 = v0;
    v46[1] = sub_252AF28D4;
    v47 = *(v0 + 2232);

    return sub_252DC810C(v45);
  }

  else
  {
LABEL_16:
    v49 = *(v0 + 2504);
    v50 = *(v0 + 2536);
    v51 = *(v0 + 2512);
    v52 = *(v0 + 2472);
    v53 = *(v0 + 2448);
    v54 = *(v0 + 2424);
    v55 = *(v0 + 2408);

    v56 = *(v0 + 2368);
    v57 = *(v0 + 2360);
    v58 = *__swift_project_boxed_opaque_existential_1((*(v0 + 2232) + 24), *(*(v0 + 2232) + 48));

    v59 = swift_task_alloc();
    *(v0 + 2632) = v59;
    *v59 = v0;
    v59[1] = sub_252AF3234;
    v60 = *(v0 + 2368);
    v61 = *(v0 + 2360);

    return sub_252C11B48(0, v58, v61, v60);
  }
}

uint64_t sub_252AF28D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2568);
  v8 = *v2;
  v3[322] = a1;
  v3[323] = v1;

  if (v1)
  {
    v5 = v3[298];

    v6 = sub_252AF30C4;
  }

  else
  {
    v6 = sub_252AF2F2C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252AF29F4()
{
  v2 = *v1;
  v3 = *(*v1 + 2616);
  v4 = *(*v1 + 2384);
  v5 = *v1;
  v2[328] = v0;

  v6 = v2[326];
  v7 = v2[325];
  if (v0)
  {

    v8 = sub_252AF2DBC;
  }

  else
  {
    v9 = v2[324];

    v8 = sub_252AF2B8C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252AF2B8C()
{
  v1 = v0[279];
  v2 = v0[277];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[324];
  v24 = v0[319];
  v25 = v0[320];
  v26 = v0[317];
  v27 = v0[314];
  v9 = v0[313];
  v10 = v0[309];
  v28 = v0[306];
  v29 = v0[303];
  v30 = v0[301];
  v31 = v0[296];
  v32 = v0[295];
  v23 = v0[284];
  v11 = v0[282];
  v12 = v0[281];
  v13 = v0[276];
  (*(v4 + 112))(v7, v0 + 264, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 264);
  (*(v11 + 8))(v23, v12);

  v14 = v0[292];
  v15 = v0[291];
  v16 = v0[288];
  v17 = v0[287];
  v18 = v0[284];
  v19 = v0[283];
  v20 = v0[280];

  v21 = v0[1];

  return v21();
}

uint64_t sub_252AF2DBC()
{
  v1 = v0[324];
  v2 = v0[319];
  v3 = v0[313];
  v4 = v0[309];
  v5 = v0[284];
  v6 = v0[282];
  v7 = v0[281];

  (*(v6 + 8))(v5, v7);
  v8 = v0[328];
  v9 = v0[320];
  v10 = v0[317];
  v11 = v0[314];
  v12 = v0[306];
  v13 = v0[303];
  v14 = v0[301];
  v15 = v0[296];
  v16 = v0[295];

  v17 = v0[292];
  v18 = v0[291];
  v19 = v0[288];
  v20 = v0[287];
  v21 = v0[284];
  v22 = v0[283];
  v23 = v0[280];

  v24 = v0[1];

  return v24();
}

uint64_t sub_252AF2F2C()
{
  v1 = *(v0 + 2576);
  v2 = *(v0 + 2408);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 2576));

    v2 = v3;
  }

  *(v0 + 2592) = v2;
  v4 = *(v0 + 2560);
  v5 = *(v0 + 2232);

  v6 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v5[12]);
  v7 = swift_task_alloc();
  *(v0 + 2600) = v7;
  *(v7 + 16) = v2;
  v8 = swift_task_alloc();
  *(v0 + 2608) = v8;
  *(v8 + 16) = &unk_252E4A678;
  *(v8 + 24) = v4;
  v9 = v2;
  v10 = swift_task_alloc();
  *(v0 + 2616) = v10;
  *v10 = v0;
  v10[1] = sub_252AF29F4;
  v11 = *(v0 + 2376);
  v12 = *(v0 + 2272);
  v16 = *(v0 + 2707);
  v15 = *(v0 + 2384);

  return sub_252A199A8(v0 + 2112, &unk_252E400A0, v7, &unk_252E3D1A0, v8, v12, 0, v11);
}

uint64_t sub_252AF30C4()
{
  v1 = v0[319];
  v2 = v0[313];
  v3 = v0[309];
  v4 = v0[301];
  v5 = v0[284];
  v6 = v0[282];
  v7 = v0[281];
  v8 = v0[278];

  (*(v6 + 8))(v5, v7);
  v9 = v0[323];
  v10 = v0[320];
  v11 = v0[317];
  v12 = v0[314];
  v13 = v0[306];
  v14 = v0[303];
  v15 = v0[301];
  v16 = v0[296];
  v17 = v0[295];

  v18 = v0[292];
  v19 = v0[291];
  v20 = v0[288];
  v21 = v0[287];
  v22 = v0[284];
  v23 = v0[283];
  v24 = v0[280];

  v25 = v0[1];

  return v25();
}

uint64_t sub_252AF3234(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2632);
  v12 = *v2;
  v3[330] = a1;
  v3[331] = v1;

  if (v1)
  {
    v5 = v3[298];
    v6 = v3[296];
    v7 = v3[295];

    v8 = sub_252AF355C;
  }

  else
  {
    v9 = v3[296];
    v10 = v3[295];

    v8 = sub_252AF3380;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252AF3380()
{
  v1 = *(v0 + 2224);
  v2 = *(v0 + 2640);
  v3 = v1;
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 2656) = v5;
  *v5 = v0;
  v5[1] = sub_252AF343C;
  v6 = *(v0 + 2232);

  return sub_252E174F4(v3);
}

uint64_t sub_252AF343C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2656);
  v8 = *v2;
  v3[333] = a1;
  v3[334] = v1;

  if (v1)
  {
    v5 = v3[298];

    v6 = sub_252AF3790;
  }

  else
  {
    v6 = sub_252AF3634;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252AF355C()
{
  v1 = v0[296];
  v2 = v0[295];

  v3 = v0[331];
  v4 = v0[292];
  v5 = v0[291];
  v6 = v0[288];
  v7 = v0[287];
  v8 = v0[284];
  v9 = v0[283];
  v10 = v0[280];

  v11 = v0[1];

  return v11();
}

uint64_t sub_252AF3634()
{
  v1 = (v0 + 2184);
  v2 = *(v0 + 2664);
  v3 = *(v0 + 2640);
  *(v0 + 2184) = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = *(v0 + 2264);
  v9 = *(v0 + 2232);
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  *(v0 + 2680) = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  *(v0 + 2688) = v12;
  *v12 = v0;
  v12[1] = sub_252AF3888;
  v13 = *(v0 + 2707);
  v14 = *(v0 + 2384);
  v15 = *(v0 + 2376);
  v16 = *(v0 + 2264);

  return sub_252BDB88C(v0 + 2072, &unk_252E3F140, v11, v16, v15, v14, v13, v10);
}

uint64_t sub_252AF3790()
{
  v1 = *(v0 + 2640);
  v2 = *(v0 + 2224);

  v3 = *(v0 + 2672);
  v4 = *(v0 + 2368);
  v5 = *(v0 + 2360);

  v6 = *(v0 + 2336);
  v7 = *(v0 + 2328);
  v8 = *(v0 + 2304);
  v9 = *(v0 + 2296);
  v10 = *(v0 + 2272);
  v11 = *(v0 + 2264);
  v12 = *(v0 + 2240);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252AF3888()
{
  v2 = *v1;
  v3 = *(*v1 + 2688);
  v9 = *v1;
  *(*v1 + 2696) = v0;

  if (v0)
  {
    v4 = v2[298];
    (*(v2[282] + 8))(v2[283], v2[281]);

    v5 = sub_252AF3BA8;
  }

  else
  {
    v6 = v2[335];
    v7 = v2[298];
    (*(v2[282] + 8))(v2[283], v2[281]);

    v5 = sub_252AF3A00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252AF3A00()
{
  v1 = *(v0 + 2232);
  v2 = *(v0 + 2216);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2664);
  v9 = *(v0 + 2640);
  v10 = *(v0 + 2368);
  v11 = *(v0 + 2360);
  v12 = *(v0 + 2224);
  v13 = *(v0 + 2208);
  (*(v4 + 112))(v7, v0 + 2072, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2072));

  v14 = *(v0 + 2336);
  v15 = *(v0 + 2328);
  v16 = *(v0 + 2304);
  v17 = *(v0 + 2296);
  v18 = *(v0 + 2272);
  v19 = *(v0 + 2264);
  v20 = *(v0 + 2240);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_252AF3BA8()
{
  v1 = *(v0 + 2680);
  v2 = *(v0 + 2664);
  v3 = *(v0 + 2640);
  v4 = *(v0 + 2224);

  v5 = *(v0 + 2696);
  v6 = *(v0 + 2368);
  v7 = *(v0 + 2360);

  v8 = *(v0 + 2336);
  v9 = *(v0 + 2328);
  v10 = *(v0 + 2304);
  v11 = *(v0 + 2296);
  v12 = *(v0 + 2272);
  v13 = *(v0 + 2264);
  v14 = *(v0 + 2240);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252AF3CBC()
{
  v1 = v0[296];
  v2 = v0[295];

  v3 = v0[302];
  v4 = v0[292];
  v5 = v0[291];
  v6 = v0[288];
  v7 = v0[287];
  v8 = v0[284];
  v9 = v0[283];
  v10 = v0[280];

  v11 = v0[1];

  return v11();
}

uint64_t sub_252AF3D94()
{
  v1 = v0[304];
  v2 = v0[303];
  v3 = v0[301];
  v4 = v0[298];
  v5 = v0[296];
  v6 = v0[295];
  v7 = v0[293];

  v8 = v0[307];
  v9 = v0[292];
  v10 = v0[291];
  v11 = v0[288];
  v12 = v0[287];
  v13 = v0[284];
  v14 = v0[283];
  v15 = v0[280];

  v16 = v0[1];

  return v16();
}

uint64_t sub_252AF3EAC()
{
  v1 = v0[314];
  v2 = v0[306];
  v3 = v0[303];
  v4 = v0[301];
  v5 = v0[296];
  v6 = v0[295];

  v7 = v0[318];
  v8 = v0[292];
  v9 = v0[291];
  v10 = v0[288];
  v11 = v0[287];
  v12 = v0[284];
  v13 = v0[283];
  v14 = v0[280];

  v15 = v0[1];

  return v15();
}

uint64_t sub_252AF3FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 226) = a8;
  *(v8 + 176) = a7;
  *(v8 + 184) = v13;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 144) = a3;
  *(v8 + 152) = a4;
  *(v8 + 128) = a1;
  *(v8 + 136) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  *(v8 + 192) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AF4080, 0, 0);
}

uint64_t sub_252AF4080()
{
  v1 = v0;
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v23 = v3;
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v25 = *(v0 + 226);
  v6 = *(v0 + 184);
  v24 = *(v1 + 176);
  v18 = *(v1 + 152);
  v19 = *(v1 + 160);
  v21 = *(v1 + 144);
  v22 = *(v1 + 168);
  v20 = *(v1 + 136);
  v7 = *(v1 + 128);
  type metadata accessor for ServiceCollectionDecorator();
  swift_initStackObject();
  v8 = sub_252B7DA9C(v6);
  sub_252A2F9E8(v8, 0, v3);

  v9 = type metadata accessor for TemperatureSnippetModel();
  v17 = v9[5];
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v10 = v9[6];
  *(v1 + 72) = 0;
  *(v1 + 64) = 0;
  sub_252E330C4();
  v16 = v9[7];
  *(v1 + 224) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v15 = v9[8];
  v11 = sub_252E32CB4();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  sub_252938414(v2, v4, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v2, &qword_27F540370, &qword_252E3C450);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v12 - 8) + 8))(v7 + v10, v12);
  *(v1 + 80) = v18;
  *(v1 + 88) = v19;

  sub_252E330C4();
  *(v1 + 96) = v20;
  *(v1 + 104) = v21;

  sub_252E330C4();
  *(v1 + 112) = v22;
  *(v1 + 120) = v24;

  sub_252E330F4();
  *(v1 + 225) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330F4();
  sub_252938414(v23, v2, &qword_27F540370, &qword_252E3C450);
  sub_252938414(v2, v4, &qword_27F540370, &qword_252E3C450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330F4();
  sub_25293847C(v2, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v23, &qword_27F540370, &qword_252E3C450);
  type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_252AF4458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252AF0FC8(a1, a2, a3);
}

void *sub_252AF450C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SetSingleTemperatureValueResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252AF4570(void *a1, void *a2)
{
  v177 = a1;
  v3 = sub_252E32E84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E32A64();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v172 = v10;
  v13 = a2;
  v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v14 + 288), &v183);

  v15 = *(&v184 + 1);
  v16 = v185;
  __swift_project_boxed_opaque_existential_1(&v183, *(&v184 + 1));
  v17 = (*(v16 + 192))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v183);
  if ((v17 & 1) == 0)
  {
    if (qword_27F53F4D0 != -1)
    {
LABEL_168:
      swift_once();
    }

    v46 = sub_252E36AD4();
    __swift_project_value_buffer(v46, qword_27F544D18);
    sub_252CC3D90(0x20746F6E20454153, 0xEF64656C62616E65, 0xD0000000000000A0, 0x8000000252E7A790);

    return 0;
  }

  v174 = v12;
  v175 = v8;
  v168 = v7;
  v169 = v4;
  v170 = v3;
  v173 = v13;
  v18 = &v183;
  v19 = sub_252B680FC();
  v20 = sub_252B63B0C();

  v21 = *(v20 + 16);
  if (!v21)
  {
    v176 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v22 = 0;
  v23 = v20 + 32;
  v171 = v21 - 1;
  v176 = MEMORY[0x277D84F90];
  v24 = 1701736302;
  v178 = v20 + 32;
  do
  {
    v25 = v23 + 152 * v22;
    v26 = v22;
    while (1)
    {
      if (v26 >= *(v20 + 16))
      {
LABEL_101:
        __break(1u);
LABEL_102:

        sub_252929F10(v20, 0);
        v102 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
        if (v102 >> 62)
        {
          if (v102 < 0)
          {
            v160 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
          }

          v20 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
          v161 = sub_252E378C4();
          v102 = v20;
          v103 = v161;
        }

        else
        {
          v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v163 = v19;
        v104 = MEMORY[0x277D84F90];
        if (v103)
        {
          v24 = 0;
          v177 = (v102 & 0xFFFFFFFFFFFFFF8);
          v178 = v102 & 0xC000000000000001;
          v167 = v102;
          do
          {
            if (v178)
            {
              MEMORY[0x2530ADF00](v24, v102);
              v20 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                goto LABEL_186;
              }
            }

            else
            {
              if (v24 >= v177[2])
              {
                goto LABEL_187;
              }

              v105 = *(v102 + 8 * v24 + 32);

              v20 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
                goto LABEL_189;
              }
            }

            v106 = sub_252E32E24();
            v108 = v107;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v104 = sub_2529F7A80(0, *(v104 + 2) + 1, 1, v104);
            }

            v26 = *(v104 + 2);
            v109 = *(v104 + 3);
            if (v26 >= v109 >> 1)
            {
              v104 = sub_2529F7A80((v109 > 1), v26 + 1, 1, v104);
            }

            *(v104 + 2) = v26 + 1;
            v110 = &v104[16 * v26];
            *(v110 + 4) = v106;
            *(v110 + 5) = v108;
            ++v24;
            v102 = v167;
          }

          while (v20 != v103);
        }

        v162 = sub_252C75848(v104);

        v84 = 0;
        v111 = v176;
        v165 = (v176 + 4);
        v112 = v171;
        ++v172;
        v13 = MEMORY[0x277D84F90];
        v78 = MEMORY[0x277D84F90];
        while (v84 < v111[2])
        {
          v113 = v165 + 152 * v84;
          v114 = *(v113 + 16);
          *v18 = *v113;
          v18[1] = v114;
          v115 = *(v113 + 32);
          v116 = *(v113 + 48);
          v117 = *(v113 + 80);
          v18[4] = *(v113 + 64);
          v18[5] = v117;
          v18[2] = v115;
          v18[3] = v116;
          v118 = *(v113 + 96);
          v119 = *(v113 + 112);
          v120 = *(v113 + 128);
          v192 = *(v113 + 144);
          v18[7] = v119;
          v18[8] = v120;
          v18[6] = v118;
          if (*(&v183 + 1))
          {
            *&v166 = v84;
            v167 = v78;
            v181 = v183;
            v179 = 0x6965636976726573;
            v180 = 0xEA00000000003A64;
            sub_25297DE08(&v183, v182);
            v178 = sub_252947DBC();
            v121 = sub_252E37794();
            v122 = *(v121 + 16);
            v24 = v122 != 0;
            if (v122 > 1)
            {
              v164 = v121;
              v20 = v122 - v24;
              *&v181 = MEMORY[0x277D84F90];
              sub_2529AA3A0(0, (v122 - v24) & ~((v122 - v24) >> 63), 0);
              if (((v122 - v24) & 0x8000000000000000) != 0)
              {
                goto LABEL_193;
              }

              v26 = v181;
              v123 = (v164 + 16 * v24 + 40);
              v177 = v122;
              while (v24 < v122)
              {
                v124 = *v123;
                *&v182[0] = *(v123 - 1);
                *(&v182[0] + 1) = v124;

                v125 = v174;
                sub_252E32A44();
                v126 = sub_252E377A4();
                v13 = v127;
                (*v172)(v125, v175);

                *&v181 = v26;
                v129 = *(v26 + 16);
                v128 = *(v26 + 24);
                if (v129 >= v128 >> 1)
                {
                  sub_2529AA3A0((v128 > 1), v129 + 1, 1);
                  v26 = v181;
                }

                *(v26 + 16) = v129 + 1;
                v130 = v26 + 16 * v129;
                *(v130 + 32) = v126;
                *(v130 + 40) = v13;
                ++v24;
                v123 += 2;
                v122 = v177;
                if (v177 == v24)
                {

                  sub_2529AEC80(&v183);
                  v112 = v171;
                  v13 = MEMORY[0x277D84F90];
                  goto LABEL_131;
                }
              }

              __break(1u);
              goto LABEL_168;
            }

            sub_2529AEC80(&v183);
            v13 = MEMORY[0x277D84F90];
            v26 = MEMORY[0x277D84F90];
            v112 = v171;
LABEL_131:
            v78 = v167;
            v84 = v166;
          }

          else
          {
            v26 = v13;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_2529F8300(0, *(v78 + 16) + 1, 1, v78);
          }

          v20 = *(v78 + 16);
          v131 = *(v78 + 24);
          v111 = v176;
          if (v20 >= v131 >> 1)
          {
            v78 = sub_2529F8300((v131 > 1), v20 + 1, 1, v78);
            v111 = v176;
          }

          ++v84;
          *(v78 + 16) = v20 + 1;
          *(v78 + 8 * v20 + 32) = v26;
          if (v84 == v112)
          {
            goto LABEL_140;
          }
        }

LABEL_184:
        __break(1u);
LABEL_185:
        swift_once();
        goto LABEL_40;
      }

      v27 = *(v25 + 16);
      v183 = *v25;
      v184 = v27;
      v28 = *(v25 + 32);
      v29 = *(v25 + 48);
      v30 = *(v25 + 80);
      v187 = *(v25 + 64);
      v188 = v30;
      v185 = v28;
      v186 = v29;
      v31 = *(v25 + 96);
      v32 = *(v25 + 112);
      v33 = *(v25 + 128);
      v192 = *(v25 + 144);
      v190 = v32;
      v191 = v33;
      v189 = v31;
      if (v192)
      {
        if (v192 == 1)
        {
          v19 = 0xEE006C616E6F6974;
        }

        else
        {
          v19 = 0xE400000000000000;
        }

        v34 = sub_252E37DB4();
        sub_25297DE08(&v183, v182);

        if ((v34 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_25297DE08(&v183, v182);
      }

      if (*(&v191 + 1) > 0.05)
      {
        break;
      }

LABEL_8:
      sub_2529AEC80(&v183);
      ++v26;
      v25 += 152;
      if (v21 == v26)
      {
        goto LABEL_25;
      }
    }

    v19 = v176;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v181 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA580(0, v19[2] + 1, 1);
      v19 = v181;
    }

    v37 = v19[2];
    v36 = v19[3];
    if (v37 >= v36 >> 1)
    {
      sub_2529AA580((v36 > 1), v37 + 1, 1);
      v19 = v181;
    }

    v22 = v26 + 1;
    v19[2] = v37 + 1;
    v176 = v19;
    v38 = &v19[19 * v37];
    v39 = v184;
    *(v38 + 2) = v183;
    *(v38 + 3) = v39;
    v40 = v185;
    v41 = v186;
    v42 = v188;
    *(v38 + 6) = v187;
    *(v38 + 7) = v42;
    *(v38 + 4) = v40;
    *(v38 + 5) = v41;
    v43 = v189;
    v44 = v190;
    v45 = v191;
    *(v38 + 88) = v192;
    *(v38 + 9) = v44;
    *(v38 + 10) = v45;
    *(v38 + 8) = v43;
    v23 = v178;
  }

  while (v171 != v26);
LABEL_25:

  v24 = v176[2];
  if (!v24)
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v57 = sub_252E36AD4();
    __swift_project_value_buffer(v57, qword_27F544D18);
    v58 = "atching entity in response";
    v59 = 0xD00000000000006ELL;
    goto LABEL_38;
  }

  v47 = v177;
  v48 = [v177 userTask];
  if (!v48 || (v49 = v48, v50 = [v48 taskType], v49, v50 != 2))
  {
    v51 = [v47 userTask];
    if (!v51 || (v52 = v51, v53 = [v51 taskType], v52, v53 != 3))
    {

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v60 = sub_252E36AD4();
      __swift_project_value_buffer(v60, qword_27F544D18);
      v58 = "nseHandler.swift";
      v59 = 0xD000000000000030;
LABEL_38:
      sub_252CC3D90(v59, v58 | 0x8000000000000000, 0xD0000000000000A0, 0x8000000252E7A790);

      return 0;
    }
  }

  v54 = [v173 entityResponses];
  if (v54)
  {
    v55 = v54;
    type metadata accessor for HomeEntityResponse();
    v56 = sub_252E37264();

    goto LABEL_41;
  }

  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_185;
  }

LABEL_40:
  v61 = sub_252E36AD4();
  __swift_project_value_buffer(v61, qword_27F544D60);
  *&v183 = 0;
  *(&v183 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v183 = 0xD00000000000002FLL;
  *(&v183 + 1) = 0x8000000252E69700;
  v62 = v173;
  v63 = [v62 description];
  v64 = sub_252E36F34();
  v66 = v65;

  MEMORY[0x2530AD570](v64, v66);

  sub_252CC3D90(v183, *(&v183 + 1), 0xD000000000000098, 0x8000000252E69730);

  v56 = MEMORY[0x277D84F90];
LABEL_41:
  *&v183 = MEMORY[0x277D84F90];
  if (v56 >> 62)
  {
    v67 = sub_252E378C4();
  }

  else
  {
    v67 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = MEMORY[0x277D84F90];
  v171 = v24;
  if (v67)
  {
    v69 = 0;
    v178 = v56 & 0xC000000000000001;
    v24 = v56 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v178)
      {
        v70 = MEMORY[0x2530ADF00](v69, v56);
      }

      else
      {
        if (v69 >= *(v24 + 16))
        {
          goto LABEL_158;
        }

        v70 = *(v56 + 8 * v69 + 32);
      }

      v71 = v70;
      v72 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v73 = [v70 entity];
      if (v73)
      {
        v74 = v56;
        v75 = v73;
        v76 = [v73 type];

        if (v76 == 7)
        {
          sub_252E37A94();
          v77 = *(v183 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v56 = v74;
      }

      else
      {
      }

      ++v69;
    }

    while (v72 != v67);
    v78 = v183;
    v68 = MEMORY[0x277D84F90];
  }

  else
  {
    v78 = MEMORY[0x277D84F90];
  }

  *&v183 = v68;
  if (v78 < 0 || (v78 & 0x4000000000000000) != 0)
  {
    v20 = sub_252E378C4();
  }

  else
  {
    v20 = *(v78 + 16);
  }

  v79 = 0;
  while (2)
  {
    if (v20 == v79)
    {

      v20 = sub_252DF8EF0(v68);

      if (v20 >> 62)
      {
        v157 = sub_252E378C4();
        v26 = v177;
        v84 = 0x279711000;
        if (v157 == 1)
        {
          if (sub_252E378C4())
          {
            goto LABEL_75;
          }

LABEL_176:
          v20 = v173;
          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v158 = sub_252E36AD4();
          __swift_project_value_buffer(v158, qword_27F544D18);
          v97 = "on delta request";
          v98 = 0xD00000000000001DLL;
LABEL_179:
          sub_252CC3D90(v98, v97 | 0x8000000000000000, 0xD0000000000000A0, 0x8000000252E7A790);

          return 0;
        }
      }

      else
      {
        v26 = v177;
        v84 = &off_279711000;
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
        {
LABEL_75:
          if ((v20 & 0xC000000000000001) != 0)
          {
            goto LABEL_182;
          }

          if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v85 = *(v20 + 32);
            goto LABEL_78;
          }

          __break(1u);
          goto LABEL_184;
        }
      }

LABEL_175:

      goto LABEL_176;
    }

    if ((v78 & 0xC000000000000001) != 0)
    {
      v80 = MEMORY[0x2530ADF00](v79, v78);
    }

    else
    {
      if (v79 >= *(v78 + 16))
      {
        goto LABEL_139;
      }

      v80 = *(v78 + 8 * v79 + 32);
    }

    v81 = v80;
    v24 = v79 + 1;
    if (!__OFADD__(v79, 1))
    {
      v82 = [v80 entity];

      ++v79;
      if (v82)
      {
        MEMORY[0x2530AD700]();
        if (*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v183 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v83 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v68 = v183;
        v79 = v24;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:

  v18 = *(v78 + 16);
  if (v18)
  {
    v26 = 0;
    v84 = v78 + 32;
    v132 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26 >= *(v78 + 16))
      {
        goto LABEL_188;
      }

      v20 = v78;
      v133 = *(v84 + 8 * v26);
      v134 = *(v133 + 16);
      v135 = *(v132 + 2);
      v136 = v135 + v134;
      if (__OFADD__(v135, v134))
      {
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      v137 = *(v84 + 8 * v26);

      v138 = swift_isUniquelyReferenced_nonNull_native();
      if (!v138 || v136 > *(v132 + 3) >> 1)
      {
        if (v135 <= v136)
        {
          v139 = v135 + v134;
        }

        else
        {
          v139 = v135;
        }

        v132 = sub_2529F7A80(v138, v139, 1, v132);
      }

      v78 = v20;
      if (*(v133 + 16))
      {
        if ((*(v132 + 3) >> 1) - *(v132 + 2) < v134)
        {
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          if (sub_252E378C4() != 1)
          {
            goto LABEL_200;
          }

          v165 = sub_252E378C4();
          if (!v165)
          {
LABEL_197:

            sub_252929F10(v26, 0);

            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v159 = sub_252E36AD4();
            __swift_project_value_buffer(v159, qword_27F544D18);
            v58 = "Created thermostat punchout ";
            v59 = 0xD00000000000002ALL;
            goto LABEL_38;
          }

LABEL_90:
          v24 = 0;
          v167 = v26 & 0xC000000000000001;
          v166 = xmmword_252E3C290;
          while (1)
          {
            if (v167)
            {
              v20 = v26;
              v19 = MEMORY[0x2530ADF00](v24, v26);
              v26 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
LABEL_100:
                __break(1u);
                goto LABEL_101;
              }
            }

            else
            {
              if (v24 >= *(v78 + 16))
              {
                __break(1u);
LABEL_182:
                v85 = MEMORY[0x2530ADF00](0, v20);
LABEL_78:
                v86 = v85;

                v87 = [v86 entityIdentifier];

                if (!v87)
                {
                  goto LABEL_175;
                }

                v177 = sub_252E36F34();
                v178 = v88;

                type metadata accessor for HomeStore();
                v89 = static HomeStore.shared.getter();
                v90 = v89[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
                if (v90 != 2 && (v90 & 1) == 0 || (v91 = [v26 filters]) == 0)
                {

                  goto LABEL_85;
                }

                v92 = v91;
                type metadata accessor for HomeFilter();
                v93 = sub_252E37264();

                v94 = [v26 *(v84 + 1712)];
                v26 = HomeStore.accessories(matching:supporting:)(v93, v94);
                v84 = v95;

                if (v84)
                {
                  sub_252929F10(v26, 1);

                  goto LABEL_85;
                }

                v78 = v26 & 0xFFFFFFFFFFFFFF8;
                if (!(v26 >> 62))
                {
                  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
                  {
                    v165 = 1;
                    goto LABEL_90;
                  }

LABEL_200:

                  sub_252929F10(v26, 0);
LABEL_85:
                  v20 = v173;
                  if (qword_27F53F4D0 == -1)
                  {
LABEL_86:
                    v96 = sub_252E36AD4();
                    __swift_project_value_buffer(v96, qword_27F544D18);
                    v97 = "Targeted more than one entity";
                    v98 = 0xD00000000000002DLL;
                    goto LABEL_179;
                  }

LABEL_191:
                  swift_once();
                  goto LABEL_86;
                }

                goto LABEL_195;
              }

              v20 = v26;
              v19 = *(v26 + 8 * v24 + 32);

              v26 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                goto LABEL_100;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
            v99 = swift_allocObject();
            *(v99 + 16) = v166;
            *(v99 + 32) = v177;
            *(v99 + 40) = v178;
            v100 = *(*v19 + 176);
            v84 = *v19 + 176;

            LOBYTE(v100) = v100(v99);

            if (v100)
            {
              goto LABEL_102;
            }

            ++v24;
            v101 = v26 == v165;
            v26 = v20;
            if (v101)
            {
              goto LABEL_197;
            }
          }
        }

        swift_arrayInitWithCopy();

        if (v134)
        {
          v140 = *(v132 + 2);
          v141 = __OFADD__(v140, v134);
          v142 = v140 + v134;
          if (v141)
          {
            goto LABEL_194;
          }

          *(v132 + 2) = v142;
        }
      }

      else
      {

        if (v134)
        {
          goto LABEL_190;
        }
      }

      if (v18 == ++v26)
      {
        goto LABEL_160;
      }
    }
  }

LABEL_159:
  v132 = MEMORY[0x277D84F90];
LABEL_160:

  v143 = sub_252C75848(v132);

  v144 = sub_252A1218C(v162, v143);

  if ((v144 & 1) == 0)
  {
    v155 = v173;
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v156 = sub_252E36AD4();
    __swift_project_value_buffer(v156, qword_27F544D18);
    sub_252CC3D90(0xD000000000000035, 0x8000000252E7A8D0, 0xD0000000000000A0, 0x8000000252E7A790);

    return 0;
  }

  v145 = v168;
  v146 = v169;
  v147 = v170;
  (*(v169 + 16))(v168, v163 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v170);
  v148 = sub_252E32E24();
  v150 = v149;
  (*(v146 + 8))(v145, v147);
  strcpy(&v183, "com.apple.Home");
  HIBYTE(v183) = -18;
  MEMORY[0x2530AD570](3092282, 0xE300000000000000);
  MEMORY[0x2530AD570](0x726F737365636361, 0xE900000000000079);
  MEMORY[0x2530AD570](47, 0xE100000000000000);

  MEMORY[0x2530AD570](v148, v150);
  swift_bridgeObjectRelease_n();
  v151 = v183;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v152 = sub_252E36AD4();
  __swift_project_value_buffer(v152, qword_27F544D18);
  *&v183 = 0;
  *(&v183 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v183 = 0xD00000000000001CLL;
  *(&v183 + 1) = 0x8000000252E7A910;
  v182[0] = v151;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v153 = sub_252E36F94();
  MEMORY[0x2530AD570](v153);

  sub_252CC7784(v183, *(&v183 + 1), 0, 0xD0000000000000A0, 0x8000000252E7A790);

  return v151;
}

uint64_t sub_252AF5BFC()
{
  swift_beginAccess();
  v0 = sub_252D8D5A8(&unk_27F545D10, 6);
  swift_endAccess();
  if (!v0)
  {
    return sub_252D8C850() || (sub_25299C950(17) & 1) != 0 && (sub_25299C950(19) & 1) == 0;
  }

  swift_beginAccess();
  v1 = sub_252D8D5A8(&unk_27F545D10, 6);
  swift_endAccess();
  if (!v1)
  {
LABEL_30:

    return sub_252D8C850() || (sub_25299C950(17) & 1) != 0 && (sub_25299C950(19) & 1) == 0;
  }

  v2 = v0[3];
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v16 = v0[3];
    }

    if (!sub_252E378C4())
    {
      goto LABEL_29;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v3 = v1[3];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v17 = v1[3];
    }

    if (!sub_252E378C4())
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:

    goto LABEL_30;
  }

LABEL_7:

  if (!sub_25299909C())
  {
LABEL_12:

    goto LABEL_29;
  }

  v4 = sub_252C99DD8();
  if (!v4 || (v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , !v5) || (v6 = *(v5 + 24), v7 = *(v5 + 32), , (v7 & 1) != 0))
  {

    goto LABEL_12;
  }

  v8 = sub_25299909C();

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = *(v9 + 24);
  v11 = *(v9 + 32);

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = sub_252C9A2AC();

  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

    if (v13)
    {
      v14 = *(v13 + 24);
      v15 = *(v13 + 32);

      if ((v15 & 1) == 0 && v10 < v6 && v10 < v14)
      {
        return 1;
      }
    }
  }

  return sub_252D8C850() || (sub_25299C950(17) & 1) != 0 && (sub_25299C950(19) & 1) == 0;
}

uint64_t sub_252AF5EB8()
{
  if (sub_252AF5BFC())
  {
    return 0;
  }

  swift_beginAccess();
  v1 = sub_252D8D5A8(&unk_27F545D10, 6);
  swift_endAccess();
  if (!v1)
  {
    goto LABEL_33;
  }

  swift_beginAccess();
  v2 = sub_252D8D5A8(&unk_27F545D10, 6);
  swift_endAccess();
  if (!v2)
  {
LABEL_32:

    goto LABEL_33;
  }

  v3 = v1[3];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v17 = v1[3];
    }

    if (!sub_252E378C4())
    {
      goto LABEL_31;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v4 = v2[3];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v18 = v2[3];
    }

    if (!sub_252E378C4())
    {
      goto LABEL_31;
    }

    goto LABEL_9;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_9:

  if (!sub_25299909C())
  {
LABEL_14:

    goto LABEL_31;
  }

  v5 = sub_252C99DD8();
  if (!v5 || (v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , !v6) || (v7 = *(v6 + 24), v8 = *(v6 + 32), , (v8 & 1) != 0))
  {

    goto LABEL_14;
  }

  v9 = sub_25299909C();

  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = *(v10 + 24);
  v12 = *(v10 + 32);

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = sub_252C9A2AC();

  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

    if (v14)
    {
      v15 = *(v14 + 24);
      v16 = *(v14 + 32);

      if ((v16 & 1) == 0 && v7 < v11 && v15 < v11)
      {
        return 1;
      }
    }
  }

LABEL_33:
  if (sub_252D8CCA4() || (sub_25299C950(19) & 1) != 0 && (sub_25299C950(17) & 1) == 0)
  {
    return 1;
  }

  return 2;
}

BOOL sub_252AF6184(void *a1)
{
  if (!sub_252C4B5D4())
  {
    return 0;
  }

  v2 = [a1 userTask];
  if (!v2)
  {
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 6 || (sub_252CCFCB8() & 1) == 0)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = [v5 value];

  if (!v7)
  {
    return 1;
  }

  v8 = [v7 type];

  return v8 != 6;
}

uint64_t sub_252AF6268(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_25294B954;

  return sub_252AF3FB0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_252AF636C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = (result + 321);
  v4 = v2 + 1;
  v5 = MEMORY[0x277D84F90];
  do
  {
    if (!--v4)
    {
      return v5;
    }

    v6 = v3;
    v3 += 504;
  }

  while ((*v6 & 1) != 0 || (*(v6 - 1) & 1) == 0 || *(v6 - 9));
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v22 = 32;
  do
  {
    v9 = v22 + 504 * v7;
    v10 = v7;
    while (1)
    {
      if (v10 >= v2)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      result = memcpy(v26, (v1 + v9), 0x1F8uLL);
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_34;
      }

      if ((v26[36] & 0x100) == 0 && (v26[36] & 1) != 0 && !v26[35])
      {
        break;
      }

      ++v10;
      v9 += 504;
      if (v7 == v2)
      {
        goto LABEL_19;
      }
    }

    sub_2529353AC(v26, v25);
    v23[0] = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2529AA480(0, *(v8 + 16) + 1, 1);
      v8 = v23[0];
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_2529AA480((v11 > 1), v12 + 1, 1);
      v8 = v23[0];
    }

    *(v8 + 16) = v12 + 1;
    result = memcpy((v8 + 504 * v12 + 32), v26, 0x1F8uLL);
  }

  while (v7 != v2);
LABEL_19:

  v13 = 0;
  v5 = MEMORY[0x277D84F90];
LABEL_20:
  v21 = v5;
  v14 = v22 + 504 * v13;
  for (i = v13; i < v2; ++i)
  {
    result = memcpy(v26, (v1 + v14), 0x1F8uLL);
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_36;
    }

    v16 = memcpy(v25, (v1 + v14), sizeof(v25));
    MEMORY[0x28223BE20](v16);
    v20[2] = v25;
    sub_2529353AC(v26, v23);
    if ((sub_2529EDA1C(sub_25295AD78, v20, v1) & 1) == 0 || v26[37])
    {
      v5 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA480(0, *(v5 + 16) + 1, 1);
        v5 = v24;
      }

      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2529AA480((v18 > 1), v19 + 1, 1);
        v5 = v24;
      }

      *(v5 + 16) = v19 + 1;
      result = memcpy((v5 + 504 * v19 + 32), v26, 0x1F8uLL);
      if (v13 != v2)
      {
        goto LABEL_20;
      }

      return v5;
    }

    result = sub_252935408(v26);
    v14 += 504;
    if (v13 == v2)
    {
      return v21;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_252AF6684(uint64_t a1)
{
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v4 + 288), __dst);

  v5 = __dst[3];
  v6 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  v7 = (*(v6 + 152))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if ((v7 & 1) == 0)
  {
    goto LABEL_88;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = a1 + 32;
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = (v10 + 504 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v8)
        {
          __break(1u);
LABEL_307:
          __break(1u);
          goto LABEL_308;
        }

        memcpy(__dst, v12, 0x1F8uLL);
        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_307;
        }

        if (*(__dst[61] + 16))
        {
          break;
        }

        ++v13;
        v12 += 504;
        if (v9 == v8)
        {
          goto LABEL_17;
        }
      }

      sub_2529353AC(__dst, v209);
      v207[0] = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2529AA480(0, *(v11 + 16) + 1, 1);
        v11 = v207[0];
      }

      v1 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v1 >= v14 >> 1)
      {
        sub_2529AA480((v14 > 1), v1 + 1, 1);
        v11 = v207[0];
      }

      *(v11 + 16) = v1 + 1;
      memcpy((v11 + 504 * v1 + 32), __dst, 0x1F8uLL);
    }

    while (v9 != v8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

LABEL_17:
  v199 = *(v11 + 16);
  if (!v199)
  {

    goto LABEL_88;
  }

  v191 = a1;
  v2 = 0;
  v10 = 0xEE006C616E6F6974;
  v200 = v11 + 32;
  v201 = v11;
  v196 = MEMORY[0x277D84F90];
  v11 = 152;
LABEL_21:
  if (v2 >= *(v201 + 16))
  {
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
    goto LABEL_329;
  }

  memcpy(__dst, (v200 + 504 * v2++), 0x1F8uLL);
  v15 = __dst[61];
  v16 = __dst[61] + 56;
  v17 = 1 << *(__dst[61] + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(__dst[61] + 56);
  swift_bridgeObjectRetain_n();
  sub_2529353AC(__dst, v209);
  v20 = 0;
  v21 = (v17 + 63) >> 6;
LABEL_28:
  if (v19)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      sub_252935408(__dst);

      goto LABEL_20;
    }

    v19 = *(v16 + 8 * v22);
    ++v20;
    if (v19)
    {
      v20 = v22;
LABEL_33:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = *(v15 + 48) + 152 * (v23 | (v20 << 6));
      v25 = *(v24 + 136);
      if (*(v24 + 144) == 1)
      {
      }

      else
      {
        a1 = sub_252E37DB4();

        if ((a1 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      if (v25 <= 0.04)
      {
        goto LABEL_28;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v196;
      v207[0] = v196;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA480(0, *(v196 + 16) + 1, 1);
        v27 = v207[0];
      }

      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2529AA480((v28 > 1), v29 + 1, 1);
        v27 = v207[0];
      }

      *(v27 + 16) = v29 + 1;
      v196 = v27;
      memcpy((v27 + 504 * v29 + 32), __dst, 0x1F8uLL);
LABEL_20:
      if (v2 == v199)
      {
        if (*(v196 + 16))
        {
          goto LABEL_42;
        }

        goto LABEL_91;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_91:

  v199 = *(v201 + 16);
  if (!v199)
  {
    goto LABEL_204;
  }

  v42 = 0;
  v196 = MEMORY[0x277D84F90];
  v11 = 152;
  do
  {
    if (v42 >= *(v201 + 16))
    {
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
      goto LABEL_350;
    }

    memcpy(__dst, (v200 + 504 * v42++), 0x1F8uLL);
    v43 = __dst[61];
    v44 = __dst[61] + 56;
    v45 = 1 << *(__dst[61] + 32);
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v47 = v46 & *(__dst[61] + 56);
    swift_bridgeObjectRetain_n();
    sub_2529353AC(__dst, v209);
    v48 = 0;
    v2 = (v45 + 63) >> 6;
    while (v47)
    {
LABEL_104:
      v50 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      if (*(*(v43 + 48) + 152 * (v50 | (v48 << 6)) + 144) == 1)
      {
      }

      else
      {
        a1 = sub_252E37DB4();

        if ((a1 & 1) == 0)
        {

          v51 = swift_isUniquelyReferenced_nonNull_native();
          v52 = v196;
          v207[0] = v196;
          if ((v51 & 1) == 0)
          {
            sub_2529AA480(0, *(v196 + 16) + 1, 1);
            v52 = v207[0];
          }

          v54 = *(v52 + 16);
          v53 = *(v52 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_2529AA480((v53 > 1), v54 + 1, 1);
            v52 = v207[0];
          }

          *(v52 + 16) = v54 + 1;
          v196 = v52;
          memcpy((v52 + 504 * v54 + 32), __dst, 0x1F8uLL);
          goto LABEL_112;
        }
      }
    }

    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_253;
      }

      if (v49 >= v2)
      {
        break;
      }

      v47 = *(v44 + 8 * v49);
      ++v48;
      if (v47)
      {
        v48 = v49;
        goto LABEL_104;
      }
    }

    sub_252935408(__dst);

LABEL_112:
    ;
  }

  while (v42 != v199);
LABEL_42:

  v30 = *(v196 + 16);

  v195 = v30;
  if (v30)
  {
    v10 = 0;
    v32 = 0xEE00797469746E45;
    v194 = v31 + 32;
    v199 = 0x8000000252E67980;
    v200 = 0x8000000252E679D0;
    v197 = 0x8000000252E67960;
    v198 = 0x8000000252E67940;
    v193 = MEMORY[0x277D84F90];
    while (v10 < *(v31 + 16))
    {
      v2 = v32;
      memcpy(__dst, (v194 + 504 * v10), 0x1F8uLL);
      v202 = v10 + 1;
      v33 = __dst[47];
      v34 = *(__dst[47] + 16);
      sub_2529353AC(__dst, v209);
      v35 = (v33 + 32);

      v36 = (v33 + 32);
      while (2)
      {
        if (v34)
        {
          a1 = 0xEB00000000656D6FLL;
          switch(*v36)
          {
            case 1:
              a1 = 0xEF746E656D656361;
              goto LABEL_50;
            case 2:
              a1 = 0xEC0000005654416ELL;
              goto LABEL_50;
            case 3:
              a1 = 0xE700000000000000;
              goto LABEL_50;
            case 4:
              a1 = 0xE600000000000000;
              goto LABEL_50;
            case 5:
              a1 = 0x8000000252E67940;
              goto LABEL_50;
            case 6:
              a1 = 0x8000000252E67960;
              if (0x8000000252E679B0 == 0x8000000252E67960)
              {
                goto LABEL_64;
              }

              goto LABEL_50;
            case 7:
              a1 = 0xED0000797469746ELL;
              goto LABEL_50;
            case 8:
              a1 = 0x8000000252E67980;
              goto LABEL_50;
            case 9:
              a1 = 0xEE00656D6F486465;
              goto LABEL_50;
            case 0xA:
LABEL_64:

              goto LABEL_65;
            case 0xB:
              a1 = v2;
              goto LABEL_50;
            case 0xC:
              a1 = 0x8000000252E679D0;
              goto LABEL_50;
            default:
LABEL_50:
              v11 = sub_252E37DB4();

              ++v36;
              --v34;
              if ((v11 & 1) == 0)
              {
                continue;
              }

LABEL_65:
              v37 = *(v33 + 16);
              v32 = v2;
              while (2)
              {
                if (!v37)
                {

                  sub_252935408(__dst);
                  goto LABEL_45;
                }

                a1 = 0x8000000252E679B0;
                switch(*v35)
                {
                  case 1:
                    a1 = 0xEF746E656D656361;
                    goto LABEL_67;
                  case 2:
                    a1 = 0xEC0000005654416ELL;
                    goto LABEL_67;
                  case 3:
                    a1 = 0xE700000000000000;
                    goto LABEL_67;
                  case 4:
                    a1 = 0xE600000000000000;
                    goto LABEL_67;
                  case 5:
                    a1 = 0x8000000252E67940;
                    goto LABEL_67;
                  case 6:
                    a1 = 0x8000000252E67960;
                    goto LABEL_67;
                  case 7:
                    a1 = 0xED0000797469746ELL;
                    goto LABEL_67;
                  case 8:
                    a1 = 0x8000000252E67980;
                    goto LABEL_67;
                  case 9:
                    a1 = 0xEE00656D6F486465;
                    goto LABEL_67;
                  case 0xA:
                    goto LABEL_67;
                  case 0xB:

                    goto LABEL_82;
                  case 0xC:
                    a1 = 0x8000000252E679D0;
                    goto LABEL_67;
                  default:
                    a1 = 0xEB00000000656D6FLL;
LABEL_67:
                    v11 = sub_252E37DB4();

                    ++v35;
                    --v37;
                    if ((v11 & 1) == 0)
                    {
                      continue;
                    }

LABEL_82:

                    v38 = v193;
                    v207[0] = v193;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_2529AA480(0, *(v193 + 16) + 1, 1);
                      v38 = v207[0];
                    }

                    v10 = v202;
                    v40 = *(v38 + 16);
                    v39 = *(v38 + 24);
                    a1 = v40 + 1;
                    if (v40 >= v39 >> 1)
                    {
                      sub_2529AA480((v39 > 1), v40 + 1, 1);
                      v38 = v207[0];
                    }

                    *(v38 + 16) = a1;
                    v193 = v38;
                    memcpy((v38 + 504 * v40 + 32), __dst, 0x1F8uLL);
                    break;
                }

                break;
              }

              break;
          }
        }

        else
        {

          sub_252935408(__dst);
          v32 = v2;
LABEL_45:
          v10 = v202;
        }

        break;
      }

      v31 = v196;
      if (v10 == v195)
      {
        goto LABEL_115;
      }
    }

    goto LABEL_328;
  }

  v193 = MEMORY[0x277D84F90];
LABEL_115:
  v55 = v31;

  v42 = v193;
  if (*(v193 + 16))
  {

    v48 = *(v193 + 16);
    if (!v48)
    {
      goto LABEL_157;
    }
  }

  else
  {

    v42 = v55;
    v48 = *(v55 + 16);
    if (!v48)
    {
LABEL_157:
      v10 = MEMORY[0x277D84F90];
      a1 = MEMORY[0x277D84F90];
      v1 = MEMORY[0x277D84F90];
      v200 = MEMORY[0x277D84F90];
      v201 = MEMORY[0x277D84F90];
      v79 = MEMORY[0x277D84F90];
      v11 = MEMORY[0x277D84F90];
      v2 = MEMORY[0x277D84F90];
      goto LABEL_158;
    }
  }

  v56 = 0;
  v2 = v42 + 32;
  v201 = MEMORY[0x277D84F90];
  a1 = -1;
  v11 = 152;
  v192 = v42;
LABEL_119:
  while (2)
  {
    if (v56 >= *(v42 + 16))
    {
      __break(1u);
LABEL_336:
      __break(1u);
      goto LABEL_337;
    }

    memcpy(__dst, (v2 + 504 * v56), 0x1F8uLL);
    v57 = 0;
    ++v56;
    v58 = 1 << *(__dst[61] + 32);
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v60 = v59 & *(__dst[61] + 56);
    v61 = (v58 + 63) >> 6;
LABEL_124:
    if (v60)
    {
      v62 = v57;
      goto LABEL_130;
    }

    while (1)
    {
      v62 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
LABEL_204:
        v196 = MEMORY[0x277D84F90];
        goto LABEL_42;
      }

      if (v62 >= v61)
      {
        break;
      }

      v60 = *(__dst[61] + 56 + 8 * v62);
      ++v57;
      if (v60)
      {
        v57 = v62;
LABEL_130:
        v63 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        if (*(*(__dst[61] + 48) + 152 * (v63 | (v62 << 6)) + 40))
        {

          sub_2529353AC(__dst, v209);

          v64 = v201;
          v207[0] = v201;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA480(0, *(v201 + 16) + 1, 1);
            v64 = v207[0];
          }

          v66 = *(v64 + 16);
          v65 = *(v64 + 24);
          v10 = v66 + 1;
          if (v66 >= v65 >> 1)
          {
            sub_2529AA480((v65 > 1), v66 + 1, 1);
            v64 = v207[0];
          }

          *(v64 + 16) = v10;
          v201 = v64;
          memcpy((v64 + 504 * v66 + 32), __dst, 0x1F8uLL);
          v42 = v192;
          if (v56 == v48)
          {
            goto LABEL_136;
          }

          goto LABEL_119;
        }

        goto LABEL_124;
      }
    }

    if (v56 != v48)
    {
      continue;
    }

    break;
  }

LABEL_136:
  v67 = 0;
  v68 = MEMORY[0x277D84F90];
  v10 = 504;
  a1 = -1;
  do
  {
LABEL_138:
    if (v67 >= *(v42 + 16))
    {
      goto LABEL_336;
    }

    memcpy(__dst, (v2 + 504 * v67), 0x1F8uLL);
    v69 = 0;
    ++v67;
    v70 = 1 << *(__dst[61] + 32);
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    else
    {
      v71 = -1;
    }

    v72 = v71 & *(__dst[61] + 56);
    v73 = (v70 + 63) >> 6;
    do
    {
      if (v72)
      {
        v74 = v69;
        goto LABEL_149;
      }

      do
      {
        v74 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          __break(1u);
          goto LABEL_232;
        }

        if (v74 >= v73)
        {
          if (v67 == v48)
          {
            goto LABEL_164;
          }

          goto LABEL_138;
        }

        v72 = *(__dst[61] + 56 + 8 * v74);
        ++v69;
      }

      while (!v72);
      v69 = v74;
LABEL_149:
      v75 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
    }

    while (!*(*(__dst[61] + 48) + 152 * (v75 | (v74 << 6)) + 72));

    sub_2529353AC(__dst, v209);

    v207[0] = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2529AA480(0, *(v68 + 16) + 1, 1);
      v68 = v207[0];
    }

    v77 = *(v68 + 16);
    v76 = *(v68 + 24);
    v78 = v68;
    if (v77 >= v76 >> 1)
    {
      sub_2529AA480((v76 > 1), v77 + 1, 1);
      v78 = v207[0];
    }

    *(v78 + 16) = v77 + 1;
    memcpy((v78 + 504 * v77 + 32), __dst, 0x1F8uLL);
    v42 = v192;
    v68 = v78;
  }

  while (v67 != v48);
LABEL_164:
  v198 = v68;
  v84 = 0;
  v85 = MEMORY[0x277D84F90];
  v10 = 504;
  a1 = 1;
  v11 = -1;
LABEL_166:
  if (v84 >= *(v42 + 16))
  {
    __break(1u);
    goto LABEL_340;
  }

  memcpy(__dst, (v2 + 504 * v84), 0x1F8uLL);
  v86 = 0;
  ++v84;
  v87 = 1 << *(__dst[61] + 32);
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  else
  {
    v88 = -1;
  }

  v89 = v88 & *(__dst[61] + 56);
  v90 = (v87 + 63) >> 6;
LABEL_171:
  if (v89)
  {
    v91 = v86;
    goto LABEL_177;
  }

  while (1)
  {
    v91 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

    if (v91 >= v90)
    {
      if (v84 == v48)
      {
        goto LABEL_183;
      }

      goto LABEL_166;
    }

    v89 = *(__dst[61] + 56 + 8 * v91);
    ++v86;
    if (v89)
    {
      v86 = v91;
LABEL_177:
      v92 = __clz(__rbit64(v89));
      v89 &= v89 - 1;
      if (*(*(__dst[61] + 48) + 152 * (v92 | (v91 << 6)) + 24))
      {

        sub_2529353AC(__dst, v209);

        v207[0] = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA480(0, *(v85 + 16) + 1, 1);
          v85 = v207[0];
        }

        v94 = *(v85 + 16);
        v93 = *(v85 + 24);
        v95 = v85;
        if (v94 >= v93 >> 1)
        {
          sub_2529AA480((v93 > 1), v94 + 1, 1);
          v95 = v207[0];
        }

        *(v95 + 16) = v94 + 1;
        memcpy((v95 + 504 * v94 + 32), __dst, 0x1F8uLL);
        v42 = v192;
        v85 = v95;
        if (v84 != v48)
        {
          goto LABEL_166;
        }

LABEL_183:
        v199 = v85;
        v96 = 0;
        v97 = MEMORY[0x277D84F90];
        v10 = 504;
        v1 = 1;
        v11 = -1;
        v79 = 152;
LABEL_185:
        if (v96 >= *(v42 + 16))
        {
          goto LABEL_347;
        }

        memcpy(__dst, (v2 + 504 * v96), 0x1F8uLL);
        v98 = 0;
        ++v96;
        v99 = 1 << *(__dst[61] + 32);
        if (v99 < 64)
        {
          v100 = ~(-1 << v99);
        }

        else
        {
          v100 = -1;
        }

        v101 = v100 & *(__dst[61] + 56);
        v102 = (v99 + 63) >> 6;
LABEL_190:
        if (v101)
        {
          v103 = v98;
          goto LABEL_196;
        }

        while (1)
        {
          v103 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            break;
          }

          if (v103 >= v102)
          {
            if (v96 == v48)
            {
              goto LABEL_211;
            }

            goto LABEL_185;
          }

          v101 = *(__dst[61] + 56 + 8 * v103);
          ++v98;
          if (v101)
          {
            v98 = v103;
LABEL_196:
            v104 = __clz(__rbit64(v101));
            v101 &= v101 - 1;
            if (*(*(__dst[61] + 48) + 152 * (v104 | (v103 << 6)) + 80) != 52)
            {

              sub_2529353AC(__dst, v209);

              v207[0] = v97;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_2529AA480(0, *(v97 + 16) + 1, 1);
                v97 = v207[0];
              }

              v106 = *(v97 + 16);
              v105 = *(v97 + 24);
              v107 = v97;
              if (v106 >= v105 >> 1)
              {
                sub_2529AA480((v105 > 1), v106 + 1, 1);
                v107 = v207[0];
              }

              *(v107 + 16) = v106 + 1;
              memcpy((v107 + 504 * v106 + 32), __dst, 0x1F8uLL);
              v42 = v192;
              v97 = v107;
              if (v96 != v48)
              {
                goto LABEL_185;
              }

LABEL_211:
              v200 = v97;
              v112 = 0;
              a1 = MEMORY[0x277D84F90];
              v10 = 504;
              v1 = 152;
LABEL_213:
              if (v112 >= *(v42 + 16))
              {
                goto LABEL_349;
              }

              memcpy(__dst, (v2 + 504 * v112), 0x1F8uLL);
              v113 = 0;
              ++v112;
              v114 = 1 << *(__dst[61] + 32);
              if (v114 < 64)
              {
                v115 = ~(-1 << v114);
              }

              else
              {
                v115 = -1;
              }

              v116 = v115 & *(__dst[61] + 56);
              v117 = (v114 + 63) >> 6;
              while (1)
              {
                if (v116)
                {
                  v118 = v113;
                  goto LABEL_224;
                }

                do
                {
                  v118 = v113 + 1;
                  if (__OFADD__(v113, 1))
                  {
                    __break(1u);
LABEL_303:
                    __break(1u);
LABEL_304:
                    v79 = v198;
                    goto LABEL_305;
                  }

                  if (v118 >= v117)
                  {
                    if (v112 == v48)
                    {
                      goto LABEL_232;
                    }

                    goto LABEL_213;
                  }

                  v116 = *(__dst[61] + 56 + 8 * v118);
                  ++v113;
                }

                while (!v116);
                v113 = v118;
LABEL_224:
                v119 = __clz(__rbit64(v116));
                v116 &= v116 - 1;
                if (*(*(__dst[61] + 48) + 152 * (v119 | (v118 << 6)) + 96))
                {

                  sub_2529353AC(__dst, v209);

                  v207[0] = a1;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_2529AA480(0, *(a1 + 16) + 1, 1);
                    a1 = v207[0];
                  }

                  v121 = *(a1 + 16);
                  v120 = *(a1 + 24);
                  if (v121 >= v120 >> 1)
                  {
                    sub_2529AA480((v120 > 1), v121 + 1, 1);
                    a1 = v207[0];
                  }

                  *(a1 + 16) = v121 + 1;
                  memcpy((a1 + 504 * v121 + 32), __dst, 0x1F8uLL);
                  v42 = v192;
                  if (v112 != v48)
                  {
                    goto LABEL_213;
                  }

LABEL_232:
                  v122 = 0;
                  v11 = MEMORY[0x277D84F90];
                  v10 = 504;
                  v1 = 152;
LABEL_234:
                  if (v122 >= *(v42 + 16))
                  {
                    __break(1u);
LABEL_357:
                    __break(1u);
LABEL_358:
                    __break(1u);
LABEL_359:
                    __break(1u);
LABEL_360:

                    v185 = *(v2 + 16);
                    if (v185)
                    {
                      memcpy(__dst, (v2 + 32), 0x1F8uLL);
                      v207[0] = MEMORY[0x277D84F90];
                      sub_2529353AC(__dst, v209);
                      v186 = 0;
                      v187 = 520;
                      while (v186 < *(v2 + 16))
                      {
                        ++v186;
                        v188 = *(v2 + v187);

                        sub_25297BDA8(v189);
                        v187 += 504;
                        if (v185 == v186)
                        {
                          goto LABEL_313;
                        }
                      }

                      goto LABEL_376;
                    }

LABEL_366:

                    if (qword_27F53F520 != -1)
                    {
                      goto LABEL_380;
                    }

                    goto LABEL_367;
                  }

                  memcpy(__dst, (v2 + 504 * v122), 0x1F8uLL);
                  v123 = 0;
                  ++v122;
                  v124 = 1 << *(__dst[61] + 32);
                  if (v124 < 64)
                  {
                    v125 = ~(-1 << v124);
                  }

                  else
                  {
                    v125 = -1;
                  }

                  v126 = v125 & *(__dst[61] + 56);
                  v127 = (v124 + 63) >> 6;
                  while (1)
                  {
                    if (v126)
                    {
                      v128 = v123;
                      goto LABEL_245;
                    }

                    do
                    {
                      v128 = v123 + 1;
                      if (__OFADD__(v123, 1))
                      {
                        goto LABEL_303;
                      }

                      if (v128 >= v127)
                      {
                        if (v122 == v48)
                        {
                          goto LABEL_254;
                        }

                        goto LABEL_234;
                      }

                      v126 = *(__dst[61] + 56 + 8 * v128);
                      ++v123;
                    }

                    while (!v126);
                    v123 = v128;
LABEL_245:
                    v129 = __clz(__rbit64(v126));
                    v126 &= v126 - 1;
                    if (*(*(__dst[61] + 48) + 152 * (v129 | (v128 << 6)) + 112))
                    {

                      sub_2529353AC(__dst, v209);

                      v207[0] = v11;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_2529AA480(0, *(v11 + 16) + 1, 1);
                        v11 = v207[0];
                      }

                      v131 = *(v11 + 16);
                      v130 = *(v11 + 24);
                      v132 = v11;
                      if (v131 >= v130 >> 1)
                      {
                        sub_2529AA480((v130 > 1), v131 + 1, 1);
                        v132 = v207[0];
                      }

                      *(v132 + 16) = v131 + 1;
                      memcpy((v132 + 504 * v131 + 32), __dst, 0x1F8uLL);
                      v42 = v192;
                      v11 = v132;
                      if (v122 == v48)
                      {
                        goto LABEL_254;
                      }

                      goto LABEL_234;
                    }
                  }
                }
              }
            }

            goto LABEL_190;
          }
        }

        __break(1u);
LABEL_275:

        v143 = *(v79 + 16);
        a1 = v200;
        if (v143)
        {

          if (!*(v79 + 16))
          {
            goto LABEL_373;
          }

          memcpy(__dst, (v79 + 32), 0x1F8uLL);
          v207[0] = MEMORY[0x277D84F90];
          sub_2529353AC(__dst, v209);
          v144 = 0;
          v145 = 520;
          while (v144 < *(v79 + 16))
          {
            ++v144;
            v146 = *(v79 + v145);

            sub_25297BDA8(v147);
            v145 += 504;
            if (v143 == v144)
            {
              goto LABEL_313;
            }
          }

          goto LABEL_358;
        }

LABEL_308:

        v159 = *(v1 + 16);
        if (v159)
        {

          if (!*(v1 + 16))
          {
            goto LABEL_375;
          }

          memcpy(__dst, (v1 + 32), 0x1F8uLL);
          v207[0] = MEMORY[0x277D84F90];
          sub_2529353AC(__dst, v209);
          v160 = 0;
          v161 = 520;
          while (v160 < *(v1 + 16))
          {
            ++v160;
            v162 = *(v1 + v161);

            sub_25297BDA8(v163);
            v161 += 504;
            if (v159 == v160)
            {
              goto LABEL_313;
            }
          }

          __break(1u);
          goto LABEL_366;
        }

LABEL_329:

        v170 = *(a1 + 16);
        if (v170)
        {

          if (*(a1 + 16))
          {
            memcpy(__dst, (a1 + 32), 0x1F8uLL);
            v207[0] = MEMORY[0x277D84F90];
            sub_2529353AC(__dst, v209);
            v171 = 0;
            v172 = 520;
            while (v171 < *(a1 + 16))
            {
              ++v171;
              v173 = *(a1 + v172);

              sub_25297BDA8(v174);
              v172 += 504;
              if (v170 == v171)
              {
                goto LABEL_313;
              }
            }

            __break(1u);
            goto LABEL_371;
          }

          goto LABEL_377;
        }

LABEL_340:

        v175 = *(v11 + 16);
        if (v175)
        {

          if (*(v11 + 16))
          {
            memcpy(__dst, (v11 + 32), 0x1F8uLL);
            v207[0] = MEMORY[0x277D84F90];
            sub_2529353AC(__dst, v209);
            v176 = 0;
            v177 = 520;
            while (v176 < *(v11 + 16))
            {
              ++v176;
              v178 = *(v11 + v177);

              sub_25297BDA8(v179);
              v177 += 504;
              if (v175 == v176)
              {
LABEL_313:

                v164 = sub_252C765E0(v207[0]);

                memcpy(v209, __dst, sizeof(v209));
                sub_252E1EBE8(v209);

                sub_252E1E320(v164);

                sub_252935408(__dst);

                sub_252E1E4F8(__src);

                v165 = (__src[4] + 32);
                v166 = *(__src[4] + 16);
                while (v166)
                {
                  if (*v165 <= 2u && *v165 && *v165 != 2)
                  {

LABEL_322:
                    memcpy(v206, __src, sizeof(v206));
                    memcpy(__dst, __src, 0x1F8uLL);
                    sub_2529353AC(v206, v209);
                    sub_252AF86D4(__dst, v209);
                    memcpy(v207, __dst, sizeof(v207));
                    sub_252935408(v207);
                    memcpy(__dst, __src, 0x1F8uLL);
                    sub_252935408(__dst);
                    memcpy(__src, v209, sizeof(__src));
                    if (qword_27F53F520 != -1)
                    {
                      goto LABEL_369;
                    }

                    goto LABEL_323;
                  }

                  v167 = sub_252E37DB4();

                  ++v165;
                  --v166;
                  if (v167)
                  {
                    goto LABEL_322;
                  }
                }

                goto LABEL_324;
              }
            }

            goto LABEL_372;
          }

          goto LABEL_378;
        }

LABEL_350:

        v180 = *(v10 + 16);
        if (v180)
        {

          if (*(v10 + 16))
          {
            memcpy(__dst, (v10 + 32), 0x1F8uLL);
            v207[0] = MEMORY[0x277D84F90];
            sub_2529353AC(__dst, v209);
            v181 = 0;
            v182 = 520;
            while (v181 < *(v10 + 16))
            {
              ++v181;
              v183 = *(v10 + v182);

              sub_25297BDA8(v184);
              v182 += 504;
              if (v180 == v181)
              {
                goto LABEL_313;
              }
            }

            goto LABEL_374;
          }

          goto LABEL_379;
        }

        goto LABEL_360;
      }

      goto LABEL_171;
    }
  }

  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  v196 = v11;
  v133 = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = 504;
  do
  {
LABEL_256:
    if (v133 >= *(v42 + 16))
    {
      goto LABEL_357;
    }

    memcpy(__dst, (v2 + 504 * v133), 0x1F8uLL);
    v134 = 0;
    ++v133;
    v135 = 1 << *(__dst[61] + 32);
    if (v135 < 64)
    {
      v136 = ~(-1 << v135);
    }

    else
    {
      v136 = -1;
    }

    v137 = v136 & *(__dst[61] + 56);
    v138 = (v135 + 63) >> 6;
LABEL_261:
    if (v137)
    {
      v139 = v134;
      goto LABEL_267;
    }

    while (1)
    {
      v139 = v134 + 1;
      if (__OFADD__(v134, 1))
      {
        __break(1u);
        goto LABEL_326;
      }

      if (v139 >= v138)
      {
        break;
      }

      v137 = *(__dst[61] + 56 + 8 * v139);
      ++v134;
      if (v137)
      {
        v134 = v139;
LABEL_267:
        v140 = __clz(__rbit64(v137));
        v137 &= v137 - 1;
        if (!*(*(__dst[61] + 48) + 152 * (v140 | (v139 << 6)) + 128))
        {
          goto LABEL_261;
        }

        sub_2529353AC(__dst, v209);

        v207[0] = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA480(0, *(v10 + 16) + 1, 1);
          v10 = v207[0];
        }

        v142 = *(v10 + 16);
        v141 = *(v10 + 24);
        if (v142 >= v141 >> 1)
        {
          sub_2529AA480((v141 > 1), v142 + 1, 1);
          v10 = v207[0];
        }

        *(v10 + 16) = v142 + 1;
        v11 = 504;
        memcpy((v10 + 504 * v142 + 32), __dst, 0x1F8uLL);
        v42 = v192;
        if (v133 == v48)
        {
          goto LABEL_281;
        }

        goto LABEL_256;
      }
    }
  }

  while (v133 != v48);
LABEL_281:
  v148 = 0;
  v197 = MEMORY[0x277D84F90];
  v11 = 152;
  do
  {
    v1 = v199;
LABEL_284:
    if (v148 >= *(v42 + 16))
    {
      goto LABEL_359;
    }

    memcpy(__dst, (v2 + 504 * v148), 0x1F8uLL);
    v149 = 0;
    ++v148;
    v150 = 1 << *(__dst[61] + 32);
    if (v150 < 64)
    {
      v151 = ~(-1 << v150);
    }

    else
    {
      v151 = -1;
    }

    v152 = v151 & *(__dst[61] + 56);
    v153 = (v150 + 63) >> 6;
    do
    {
      if (v152)
      {
        v154 = v149;
        goto LABEL_295;
      }

      do
      {
        v154 = v149 + 1;
        if (__OFADD__(v149, 1))
        {
          goto LABEL_327;
        }

        if (v154 >= v153)
        {
          if (v148 == v48)
          {
            goto LABEL_304;
          }

          goto LABEL_284;
        }

        v152 = *(__dst[61] + 56 + 8 * v154);
        ++v149;
      }

      while (!v152);
      v149 = v154;
LABEL_295:
      v155 = __clz(__rbit64(v152));
      v152 &= v152 - 1;
    }

    while (!*(*(__dst[61] + 48) + 152 * (v155 | (v154 << 6)) + 56));

    sub_2529353AC(__dst, v209);

    v156 = v197;
    v207[0] = v197;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2529AA480(0, *(v197 + 16) + 1, 1);
      v156 = v207[0];
    }

    v158 = *(v156 + 16);
    v157 = *(v156 + 24);
    if (v158 >= v157 >> 1)
    {
      sub_2529AA480((v157 > 1), v158 + 1, 1);
      v156 = v207[0];
    }

    *(v156 + 16) = v158 + 1;
    v197 = v156;
    memcpy((v156 + 504 * v158 + 32), __dst, 0x1F8uLL);
    v42 = v192;
  }

  while (v148 != v48);
  while (1)
  {
    v79 = v198;
    v1 = v199;
LABEL_305:
    v11 = v196;
    v2 = v197;
LABEL_158:

    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    v80 = *(a1 + 16);
    if (!v80)
    {
      break;
    }

    if (!*(a1 + 16))
    {
      __break(1u);
LABEL_369:
      swift_once();
LABEL_323:
      v168 = sub_252E36AD4();
      __swift_project_value_buffer(v168, qword_27F544E08);
      sub_252E379F4();
      v204 = 0;
      v205 = 0xE000000000000000;
      MEMORY[0x2530AD570](0xD000000000000052, 0x8000000252E7A9D0);
      memcpy(v203, __src, 0x1E8uLL);
      v203[61] = __src[61];
      v203[62] = __src[62];
      v169 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v169);

      sub_252CC3D90(v204, v205, 0xD00000000000009CLL, 0x8000000252E7AA30);

      __src[61] = MEMORY[0x277D84FA0];
LABEL_324:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
      a1 = swift_allocObject();
      *(a1 + 16) = xmmword_252E3C290;
      memcpy((a1 + 32), __src, 0x1F8uLL);

      return a1;
    }

    memcpy(__dst, (a1 + 32), 0x1F8uLL);
    v207[0] = MEMORY[0x277D84F90];
    sub_2529353AC(__dst, v209);
    v81 = 0;
    v10 = 520;
    while (v81 < *(a1 + 16))
    {
      ++v81;
      v82 = *(a1 + v10);

      sub_25297BDA8(v83);
      v10 += 504;
      if (v80 == v81)
      {
        goto LABEL_313;
      }
    }

LABEL_337:
    __break(1u);
  }

  v108 = *(v201 + 16);
  if (!v108)
  {
    goto LABEL_275;
  }

  if (*(v201 + 16))
  {
    memcpy(__dst, (v201 + 32), 0x1F8uLL);
    v207[0] = MEMORY[0x277D84F90];
    sub_2529353AC(__dst, v209);
    v10 = 0;
    v109 = 520;
    while (v10 < *(v201 + 16))
    {
      ++v10;
      v110 = *(v201 + v109);

      sub_25297BDA8(v111);
      v109 += 504;
      if (v108 == v10)
      {
        goto LABEL_313;
      }
    }

    goto LABEL_348;
  }

LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  swift_once();
LABEL_367:
  v190 = sub_252E36AD4();
  __swift_project_value_buffer(v190, qword_27F544E08);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E7AAD0, 0xD00000000000009CLL, 0x8000000252E7AA30);

  a1 = v191;
LABEL_88:

  return a1;
}

uint64_t sub_252AF86D4@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x1F8uLL);
  v5 = __dst[61];
  if (*(__dst[61] + 16))
  {
    v6 = 0;
    v7 = __dst[61] + 56;
    v8 = 1 << *(__dst[61] + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(__dst[61] + 56);
    while (v10)
    {
LABEL_10:
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = *(__dst[61] + 48) + 152 * (v12 | (v6 << 6));
      if (*(v13 + 8))
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v13 + 24) == 0;
      }

      if (v14 && *(v13 + 40) == 0 && *(v13 + 56) == 0 && *(v13 + 72) == 0)
      {
        v18 = *(v13 + 80);
        v19 = *(v13 + 96);
        v20 = *(v13 + 112);
        v21 = v18 == 52 && v19 == 0;
        if (v21 && v20 == 0)
        {
          goto LABEL_32;
        }
      }
    }

    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_159;
      }

      if (v11 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v10 = *(v7 + 8 * v11);
      ++v6;
      if (v10)
      {
        v6 = v11;
        goto LABEL_10;
      }
    }

    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    memcpy(v202, __src, sizeof(v202));
    v2 = sub_252E1EBE8(v202);

    v24 = 0;
    v25 = 1 << *(v5 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v5 + 56);
    v28 = (v25 + 63) >> 6;
    while (v27)
    {
      v29 = v24;
LABEL_42:
      v30 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      if (!*(*(v5 + 48) + 152 * (v30 | (v29 << 6)) + 96))
      {
        v31 = 0;
        v32 = 1 << *(v5 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & *(v5 + 56);
        v35 = (v32 + 63) >> 6;
        while (v34)
        {
          v36 = v31;
LABEL_52:
          v37 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          if (!*(*(v5 + 48) + 152 * (v37 | (v36 << 6)) + 40))
          {
            v38 = 0;
            v39 = 1 << *(v5 + 32);
            v40 = -1;
            if (v39 < 64)
            {
              v40 = ~(-1 << v39);
            }

            v41 = v40 & *(v5 + 56);
            v42 = (v39 + 63) >> 6;
            while (v41)
            {
              v43 = v38;
LABEL_62:
              v44 = __clz(__rbit64(v41));
              v41 &= v41 - 1;
              if (!*(*(v5 + 48) + 152 * (v44 | (v43 << 6)) + 72))
              {
                v45 = 0;
                v46 = 1 << *(v5 + 32);
                v47 = -1;
                if (v46 < 64)
                {
                  v47 = ~(-1 << v46);
                }

                v48 = v47 & *(v5 + 56);
                v49 = (v46 + 63) >> 6;
                while (v48)
                {
                  v50 = v45;
LABEL_72:
                  v51 = __clz(__rbit64(v48));
                  v48 &= v48 - 1;
                  if (!*(*(v5 + 48) + 152 * (v51 | (v50 << 6)) + 24))
                  {
                    v197 = a2;
                    v52 = 0;
                    v53 = 1 << *(v5 + 32);
                    v54 = -1;
                    if (v53 < 64)
                    {
                      v54 = ~(-1 << v53);
                    }

                    v55 = v54 & *(v5 + 56);
                    v56 = (v53 + 63) >> 6;
                    while (v55)
                    {
                      v57 = v52;
LABEL_82:
                      v58 = __clz(__rbit64(v55));
                      v55 &= v55 - 1;
                      if (*(*(v5 + 48) + 152 * (v58 | (v57 << 6)) + 80) == 52)
                      {
                        v59 = 0;
                        v60 = 1 << *(v5 + 32);
                        v61 = -1;
                        if (v60 < 64)
                        {
                          v61 = ~(-1 << v60);
                        }

                        v62 = v61 & *(v5 + 56);
                        v63 = (v60 + 63) >> 6;
                        while (v62)
                        {
                          v64 = v59;
LABEL_92:
                          v65 = __clz(__rbit64(v62));
                          v62 &= v62 - 1;
                          if (!*(*(v5 + 48) + 152 * (v65 | (v64 << 6)) + 112))
                          {
                            v66 = 0;
                            v67 = 1 << *(v5 + 32);
                            v68 = -1;
                            if (v67 < 64)
                            {
                              v68 = ~(-1 << v67);
                            }

                            v69 = v68 & *(v5 + 56);
                            v70 = (v67 + 63) >> 6;
                            while (v69)
                            {
                              v71 = v66;
LABEL_102:
                              v72 = __clz(__rbit64(v69));
                              v69 &= v69 - 1;
                              if (!*(*(v5 + 48) + 152 * (v72 | (v71 << 6)) + 56))
                              {
                                goto LABEL_121;
                              }
                            }

                            while (1)
                            {
                              v71 = v66 + 1;
                              if (__OFADD__(v66, 1))
                              {
                                goto LABEL_253;
                              }

                              if (v71 >= v70)
                              {
                                goto LABEL_235;
                              }

                              v69 = *(v7 + 8 * v71);
                              ++v66;
                              if (v69)
                              {
                                v66 = v71;
                                goto LABEL_102;
                              }
                            }
                          }
                        }

                        while (1)
                        {
                          v64 = v59 + 1;
                          if (__OFADD__(v59, 1))
                          {
                            break;
                          }

                          if (v64 >= v63)
                          {
                            goto LABEL_217;
                          }

                          v62 = *(v7 + 8 * v64);
                          ++v59;
                          if (v62)
                          {
                            v59 = v64;
                            goto LABEL_92;
                          }
                        }

                        __break(1u);
                        goto LABEL_252;
                      }
                    }

                    while (1)
                    {
                      v57 = v52 + 1;
                      if (__OFADD__(v52, 1))
                      {
                        break;
                      }

                      if (v57 >= v56)
                      {
                        goto LABEL_198;
                      }

                      v55 = *(v7 + 8 * v57);
                      ++v52;
                      if (v55)
                      {
                        v52 = v57;
                        goto LABEL_82;
                      }
                    }

                    __break(1u);
                    goto LABEL_234;
                  }
                }

                while (1)
                {
                  v50 = v45 + 1;
                  if (__OFADD__(v45, 1))
                  {
                    break;
                  }

                  if (v50 >= v49)
                  {
                    goto LABEL_180;
                  }

                  v48 = *(v7 + 8 * v50);
                  ++v45;
                  if (v48)
                  {
                    v45 = v50;
                    goto LABEL_72;
                  }
                }

                __break(1u);
                goto LABEL_216;
              }
            }

            while (1)
            {
              v43 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                break;
              }

              if (v43 >= v42)
              {
                goto LABEL_161;
              }

              v41 = *(v7 + 8 * v43);
              ++v38;
              if (v41)
              {
                v38 = v43;
                goto LABEL_62;
              }
            }

            __break(1u);
            goto LABEL_197;
          }
        }

        while (1)
        {
          v36 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            __break(1u);
            goto LABEL_178;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = *(v7 + 8 * v36);
          ++v31;
          if (v34)
          {
            v31 = v36;
            goto LABEL_52;
          }
        }

        v87 = 1 << *(v5 + 32);
        v88 = -1;
        if (v87 < 64)
        {
          v88 = ~(-1 << v87);
        }

        v89 = v88 & *(v5 + 56);
        v90 = (v87 + 63) >> 6;

        v91 = 0;
        v92 = MEMORY[0x277D84F90];
        v199 = v2;
        if (!v89)
        {
          goto LABEL_129;
        }

        do
        {
LABEL_127:
          while (1)
          {
            v93 = __clz(__rbit64(v89));
            v89 &= v89 - 1;
            v94 = *(v5 + 48) + 152 * (v93 | (v91 << 6));
            v95 = *(v94 + 40);
            if (v95)
            {
              break;
            }

            if (!v89)
            {
              goto LABEL_129;
            }
          }

          v190 = *(v94 + 32);

          v197 = a2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = sub_2529F7A80(0, *(v92 + 2) + 1, 1, v92);
          }

          v2 = *(v92 + 2);
          v97 = *(v92 + 3);
          if (v2 >= v97 >> 1)
          {
            v92 = sub_2529F7A80((v97 > 1), v2 + 1, 1, v92);
          }

          *(v92 + 2) = v2 + 1;
          v98 = &v92[16 * v2];
          *(v98 + 4) = v190;
          *(v98 + 5) = v95;
        }

        while (v89);
LABEL_129:
        while (1)
        {
          v96 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            break;
          }

          if (v96 >= v90)
          {
            v2 = a2;

            v99 = 1 << *(v5 + 32);
            v100 = -1;
            if (v99 < 64)
            {
              v100 = ~(-1 << v99);
            }

            v101 = v100 & *(v5 + 56);
            v102 = (v99 + 63) >> 6;

            v103 = 0;
            for (i = MEMORY[0x277D84F90]; v101; *(v112 + 5) = v107)
            {
LABEL_142:
              while (1)
              {
                v105 = __clz(__rbit64(v101));
                v101 &= v101 - 1;
                v106 = *(v5 + 48) + 152 * (v105 | (v103 << 6));
                v107 = *(v106 + 72);
                if (v107)
                {
                  break;
                }

                if (!v101)
                {
                  goto LABEL_144;
                }
              }

              v191 = *(v106 + 64);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                i = sub_2529F7A80(0, *(i + 2) + 1, 1, i);
              }

              v110 = *(i + 2);
              v109 = *(i + 3);
              v111 = v110 + 1;
              if (v110 >= v109 >> 1)
              {
                v186 = v110 + 1;
                v113 = i;
                v114 = *(i + 2);
                v115 = sub_2529F7A80((v109 > 1), v110 + 1, 1, v113);
                v110 = v114;
                v111 = v186;
                i = v115;
              }

              *(i + 2) = v111;
              v112 = &i[16 * v110];
              *(v112 + 4) = v191;
            }

LABEL_144:
            a2 = v2;
            while (1)
            {
              v108 = v103 + 1;
              if (__OFADD__(v103, 1))
              {
                goto LABEL_179;
              }

              if (v108 >= v102)
              {

                v116 = *(v199 + 168);
                *(v199 + 168) = v92;

                v117 = *(v92 + 2);

                if (v117 == *(i + 2))
                {
                  v118 = *(v199 + 184);
                  *(v199 + 184) = i;
                }

                goto LABEL_120;
              }

              v101 = *(v7 + 8 * v108);
              ++v103;
              if (v101)
              {
                v103 = v108;
                goto LABEL_142;
              }
            }
          }

          v89 = *(v7 + 8 * v96);
          ++v91;
          if (v89)
          {
            v91 = v96;
            goto LABEL_127;
          }
        }

LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v133 = 1 << *(v5 + 32);
        v134 = -1;
        if (v133 < 64)
        {
          v134 = ~(-1 << v133);
        }

        v135 = v134 & *(v5 + 56);
        v136 = (v133 + 63) >> 6;

        v137 = 0;
        v138 = MEMORY[0x277D84F90];
        if (!v135)
        {
          goto LABEL_185;
        }

        do
        {
LABEL_183:
          while (1)
          {
            v139 = __clz(__rbit64(v135));
            v135 &= v135 - 1;
            v140 = *(v5 + 48) + 152 * (v139 | (v137 << 6));
            v141 = *(v140 + 24);
            if (v141)
            {
              break;
            }

            if (!v135)
            {
              goto LABEL_185;
            }
          }

          v197 = a2;
          v201 = v2;
          v193 = *(v140 + 16);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_2529F7A80(0, *(v138 + 2) + 1, 1, v138);
          }

          v144 = *(v138 + 2);
          v143 = *(v138 + 3);
          if (v144 >= v143 >> 1)
          {
            v138 = sub_2529F7A80((v143 > 1), v144 + 1, 1, v138);
          }

          *(v138 + 2) = v144 + 1;
          v145 = &v138[16 * v144];
          *(v145 + 4) = v193;
          *(v145 + 5) = v141;
          v2 = v201;
        }

        while (v135);
LABEL_185:
        while (1)
        {
          v142 = v137 + 1;
          if (__OFADD__(v137, 1))
          {
            break;
          }

          if (v142 >= v136)
          {

            sub_252E1F3E8(v138);

            goto LABEL_121;
          }

          v135 = *(v7 + 8 * v142);
          ++v137;
          if (v135)
          {
            v137 = v142;
            goto LABEL_183;
          }
        }

LABEL_216:
        __break(1u);
LABEL_217:
        v158 = 1 << *(v5 + 32);
        v159 = -1;
        if (v158 < 64)
        {
          v159 = ~(-1 << v158);
        }

        v160 = v159 & *(v5 + 56);
        v161 = (v158 + 63) >> 6;

        v162 = 0;
        v163 = MEMORY[0x277D84F90];
        if (!v160)
        {
          goto LABEL_222;
        }

        do
        {
LABEL_220:
          while (1)
          {
            v164 = __clz(__rbit64(v160));
            v160 &= v160 - 1;
            v165 = *(v5 + 48) + 152 * (v164 | (v162 << 6));
            v166 = *(v165 + 112);
            if (v166)
            {
              break;
            }

            if (!v160)
            {
              goto LABEL_222;
            }
          }

          v187 = *(v165 + 104);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2529F7A80(0, *(v163 + 16) + 1, 1, v163);
            v163 = result;
          }

          v169 = *(v163 + 16);
          v168 = *(v163 + 24);
          v195 = v169 + 1;
          if (v169 >= v168 >> 1)
          {
            result = sub_2529F7A80((v168 > 1), v195, 1, v163);
            v163 = result;
          }

          *(v163 + 16) = v195;
          v170 = v163 + 16 * v169;
          *(v170 + 32) = v187;
          *(v170 + 40) = v166;
        }

        while (v160);
LABEL_222:
        while (1)
        {
          v167 = v162 + 1;
          if (__OFADD__(v162, 1))
          {
            break;
          }

          if (v167 >= v161)
          {

            v171 = *(v2 + 240);
            *(v2 + 240) = v163;
            goto LABEL_214;
          }

          v160 = *(v7 + 8 * v167);
          ++v162;
          if (v160)
          {
            v162 = v167;
            goto LABEL_220;
          }
        }

LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
        goto LABEL_254;
      }
    }

    while (1)
    {
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v29 >= v28)
      {
        v73 = 1 << *(v5 + 32);
        v74 = -1;
        if (v73 < 64)
        {
          v74 = ~(-1 << v73);
        }

        v75 = v74 & *(v5 + 56);
        v76 = (v73 + 63) >> 6;

        v77 = 0;
        v78 = MEMORY[0x277D84F90];
        if (!v75)
        {
          goto LABEL_109;
        }

        do
        {
LABEL_107:
          while (1)
          {
            v79 = __clz(__rbit64(v75));
            v75 &= v75 - 1;
            v80 = *(v5 + 48) + 152 * (v79 | (v77 << 6));
            v81 = *(v80 + 96);
            if (v81)
            {
              break;
            }

            if (!v75)
            {
              goto LABEL_109;
            }
          }

          v189 = *(v80 + 88);

          v197 = a2;
          v198 = v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_2529F7A80(0, *(v78 + 2) + 1, 1, v78);
          }

          v84 = *(v78 + 2);
          v83 = *(v78 + 3);
          if (v84 >= v83 >> 1)
          {
            v78 = sub_2529F7A80((v83 > 1), v84 + 1, 1, v78);
          }

          *(v78 + 2) = v84 + 1;
          v85 = &v78[16 * v84];
          *(v85 + 4) = v189;
          *(v85 + 5) = v81;
          v2 = v198;
        }

        while (v75);
LABEL_109:
        while (1)
        {
          v82 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            goto LABEL_160;
          }

          if (v82 >= v76)
          {

            v86 = *(v2 + 120);
            *(v2 + 120) = v78;
LABEL_120:

LABEL_121:
            sub_252E1E4F8(a2);
          }

          v75 = *(v7 + 8 * v82);
          ++v77;
          if (v75)
          {
            v77 = v82;
            goto LABEL_107;
          }
        }
      }

      v27 = *(v7 + 8 * v29);
      ++v24;
      if (v27)
      {
        v24 = v29;
        goto LABEL_42;
      }
    }

LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    v119 = 1 << *(v5 + 32);
    v120 = -1;
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    v121 = v120 & *(v5 + 56);
    v122 = (v119 + 63) >> 6;

    v123 = 0;
    v124 = MEMORY[0x277D84F90];
    if (!v121)
    {
      goto LABEL_166;
    }

    do
    {
LABEL_164:
      while (1)
      {
        v125 = __clz(__rbit64(v121));
        v121 &= v121 - 1;
        v126 = *(v5 + 48) + 152 * (v125 | (v123 << 6));
        v127 = *(v126 + 72);
        if (v127)
        {
          break;
        }

        if (!v121)
        {
          goto LABEL_166;
        }
      }

      v192 = *(v126 + 64);

      v197 = a2;
      v200 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = sub_2529F7A80(0, *(v124 + 2) + 1, 1, v124);
      }

      v130 = *(v124 + 2);
      v129 = *(v124 + 3);
      if (v130 >= v129 >> 1)
      {
        v124 = sub_2529F7A80((v129 > 1), v130 + 1, 1, v124);
      }

      *(v124 + 2) = v130 + 1;
      v131 = &v124[16 * v130];
      *(v131 + 4) = v192;
      *(v131 + 5) = v127;
      v2 = v200;
    }

    while (v121);
LABEL_166:
    while (1)
    {
      v128 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v128 >= v122)
      {

        v132 = *(v2 + 184);
        *(v2 + 184) = v124;
        goto LABEL_120;
      }

      v121 = *(v7 + 8 * v128);
      ++v123;
      if (v121)
      {
        v123 = v128;
        goto LABEL_164;
      }
    }

LABEL_197:
    __break(1u);
LABEL_198:
    v146 = 1 << *(v5 + 32);
    v147 = -1;
    if (v146 < 64)
    {
      v147 = ~(-1 << v146);
    }

    v148 = v147 & *(v5 + 56);
    v149 = (v146 + 63) >> 6;

    v150 = 0;
    v151 = MEMORY[0x277D84F90];
    if (!v148)
    {
      goto LABEL_203;
    }

    do
    {
LABEL_201:
      while (1)
      {
        v152 = __clz(__rbit64(v148));
        v148 &= v148 - 1;
        v153 = *(*(v5 + 48) + 152 * (v152 | (v150 << 6)) + 80);
        if (v153 != 52)
        {
          break;
        }

        if (!v148)
        {
          goto LABEL_203;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v151 = sub_2529F80DC(0, *(v151 + 2) + 1, 1, v151);
      }

      v156 = *(v151 + 2);
      v155 = *(v151 + 3);
      v194 = v156 + 1;
      if (v156 >= v155 >> 1)
      {
        v151 = sub_2529F80DC((v155 > 1), v194, 1, v151);
      }

      *(v151 + 2) = v194;
      v151[v156 + 32] = v153;
    }

    while (v148);
LABEL_203:
    while (1)
    {
      v154 = v150 + 1;
      if (__OFADD__(v150, 1))
      {
        break;
      }

      if (v154 >= v149)
      {

        v157 = *(v2 + 152);
        *(v2 + 152) = v151;
LABEL_214:

        a2 = v197;
        goto LABEL_121;
      }

      v148 = *(v7 + 8 * v154);
      ++v150;
      if (v148)
      {
        v150 = v154;
        goto LABEL_201;
      }
    }

LABEL_234:
    __break(1u);
LABEL_235:
    v172 = 1 << *(v5 + 32);
    v173 = -1;
    if (v172 < 64)
    {
      v173 = ~(-1 << v172);
    }

    v174 = v173 & *(v5 + 56);
    v175 = (v172 + 63) >> 6;

    v176 = 0;
    v177 = MEMORY[0x277D84F90];
    if (!v174)
    {
      goto LABEL_240;
    }

    do
    {
LABEL_238:
      while (1)
      {
        v178 = __clz(__rbit64(v174));
        v174 &= v174 - 1;
        v179 = *(v5 + 48) + 152 * (v178 | (v176 << 6));
        v180 = *(v179 + 56);
        if (v180)
        {
          break;
        }

        if (!v174)
        {
          goto LABEL_240;
        }
      }

      v188 = *(v179 + 48);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2529F7A80(0, *(v177 + 16) + 1, 1, v177);
        v177 = result;
      }

      v183 = *(v177 + 16);
      v182 = *(v177 + 24);
      v196 = v183 + 1;
      if (v183 >= v182 >> 1)
      {
        result = sub_2529F7A80((v182 > 1), v196, 1, v177);
        v177 = result;
      }

      *(v177 + 16) = v196;
      v184 = v177 + 16 * v183;
      *(v184 + 32) = v188;
      *(v184 + 40) = v180;
    }

    while (v174);
LABEL_240:
    while (1)
    {
      v181 = v176 + 1;
      if (__OFADD__(v176, 1))
      {
        break;
      }

      if (v181 >= v175)
      {

        v185 = *(v2 + 144);
        *(v2 + 144) = v177;
        goto LABEL_214;
      }

      v174 = *(v7 + 8 * v181);
      ++v176;
      if (v174)
      {
        v176 = v181;
        goto LABEL_238;
      }
    }

LABEL_254:
    __break(1u);
  }

  else
  {
LABEL_32:
    memcpy(a2, __src, 0x1F8uLL);
    return sub_2529353AC(__dst, v202);
  }

  return result;
}

uint64_t sub_252AF967C(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x2822009F8](sub_252AF969C, 0, 0);
}

uint64_t sub_252AF969C()
{
  sub_252B5A0C8(v0[24], (v0 + 2));
  if ((sub_252C4D664(5) & 1) != 0 || (v1 = v0[24], (sub_252C4E734() & 1) == 0))
  {
    v7 = v0[24];
    v6 = v0[25];
    sub_252929E74(v6 + 32, (v0 + 19));
    v9 = v0[22];
    v8 = v0[23];
    __swift_project_boxed_opaque_existential_1(v0 + 19, v9);
    v10 = swift_allocObject();
    v0[26] = v10;
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;

    v11 = v7;
    v12 = swift_task_alloc();
    v0[27] = v12;
    *v12 = v0;
    v12[1] = sub_252AF985C;

    return sub_252BDC404(&unk_252E4A770, v10, v9, v8);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_252AF99E4;
    v3 = v0[24];
    v4 = v0[25];

    return sub_252AFA0F0((v0 + 2), v3);
  }
}

uint64_t sub_252AF985C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_252AF9B5C;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_252AF9978;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252AF9978()
{
  sub_252AFB8F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AF99E4()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_252AF9BD4;
  }

  else
  {
    v3 = sub_252AF9AF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252AF9AF8()
{
  sub_252AFB8F8(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AF9B5C()
{
  v1 = v0[26];
  sub_252AFB8F8((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  v2 = v0[28];
  v3 = v0[1];

  return v3();
}

uint64_t sub_252AF9BD4()
{
  sub_252AFB8F8(v0 + 16);
  v1 = *(v0 + 240);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252AF9C38(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for HomeAutomationBlockAsyncInProgressParameters(0);
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AF9D04, 0, 0);
}

uint64_t sub_252AF9D04()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[2] + 112), *(v0[2] + 136));
  v5 = *(v1 + 20);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v8 = 1;
  v7(&v2[v5], 1, 1, v6);
  *v2 = 0;
  sub_252C4E214();
  if (v9)
  {
    v10 = v0[4];
    sub_252E37024();

    v8 = 0;
  }

  v11 = v0[6];
  v12 = v0[4];
  v7(v12, v8, 1, v6);
  sub_252956C98(v12, &v2[v5]);
  v13 = sub_252C05B94();
  v0[7] = v13;
  v14 = *(MEMORY[0x277D55BE8] + 4);
  v17 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_252AF9EA8;

  return v17(0xD000000000000023, 0x8000000252E7AC30, v13);
}

uint64_t sub_252AF9EA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_252AFA074;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_252AF9FF4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252AF9FF4()
{
  v1 = v0[4];
  sub_252AFB960(v0[6]);

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

uint64_t sub_252AFA074()
{
  v1 = v0[4];
  sub_252AFB960(v0[6]);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_252AFA0F0(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_252AFA184, 0, 0);
}

uint64_t sub_252AFA184()
{
  v76 = v0;
  v75[1] = *MEMORY[0x277D85DE8];
  v1 = swift_allocObject();
  *(v0 + 360) = v1;
  v67 = v1;
  *(v1 + 16) = 0;
  *(v0 + 328) = 0;
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 == 2 || (v3) && (v4 = [*(v0 + 344) filters]) != 0)
  {
    v5 = v4;
    v6 = *(v0 + 344);
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    v8 = [v6 userTask];
    v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
    LOBYTE(v6) = v10;

    if (v6)
    {
      sub_252929F10(v9, 1);
    }

    else
    {
      v75[0] = MEMORY[0x277D84F90];
      v11 = (v9 & 0xFFFFFFFFFFFFFF8);
      if (v9 >> 62)
      {
        goto LABEL_70;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
      {
        v13 = MEMORY[0x277D84F90];
        v72 = i;
        if (!i)
        {
          break;
        }

        v14 = 0;
        v70 = v9 + 32;
        v71 = v9 & 0xC000000000000001;
        v68 = v9;
        v69 = v11;
        while (1)
        {
          if (v71)
          {
            v15 = MEMORY[0x2530ADF00](v14, v9);
            v16 = __OFADD__(v14++, 1);
            if (v16)
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v14 >= v11[2])
            {
              goto LABEL_68;
            }

            v15 = *(v70 + 8 * v14);

            v16 = __OFADD__(v14++, 1);
            if (v16)
            {
              goto LABEL_67;
            }
          }

          v17 = (*(*v15 + 272))();
          v18 = v17;
          v19 = *(v17 + 32);
          v20 = ((1 << v19) + 63) >> 6;
          v21 = 8 * v20;
          if ((v19 & 0x3Fu) <= 0xD)
          {
            break;
          }

          if (swift_stdlib_isStackAllocationSafe())
          {

            break;
          }

          v33 = swift_slowAlloc();

          v32 = sub_252C54758(v33, v20, v18, sub_252AFABD8);
          swift_bridgeObjectRelease_n();
          MEMORY[0x2530AED00](v33, -1, -1);
LABEL_31:
          i = v72;

          sub_25297AEDC(v32);
          v9 = v68;
          v11 = v69;
          if (v14 == i)
          {
            v34 = v75[0];
            v13 = MEMORY[0x277D84F90];
            goto LABEL_40;
          }
        }

        v11 = &v67;
        MEMORY[0x28223BE20](v17);
        v9 = &v67 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v9, v21);
        v22 = 0;
        v23 = 0;
        v24 = 1 << *(v18 + 32);
        if (v24 < 64)
        {
          v25 = ~(-1 << v24);
        }

        else
        {
          v25 = -1;
        }

        v26 = v25 & *(v18 + 56);
        v27 = (v24 + 63) >> 6;
        while (v26)
        {
          v28 = __clz(__rbit64(v26));
          v26 &= v26 - 1;
          v29 = v28 | (v23 << 6);
LABEL_26:
          if (*(*(v18 + 48) + 8 * v29))
          {
            *(v9 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
            v16 = __OFADD__(v22++, 1);
            if (v16)
            {
              goto LABEL_69;
            }
          }
        }

        v30 = v23;
        while (1)
        {
          v23 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v23 >= v27)
          {
            v32 = sub_252C53500((&v67 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0)), v20, v22, v18);
            goto LABEL_31;
          }

          v31 = *(v18 + 56 + 8 * v23);
          ++v30;
          if (v31)
          {
            v26 = (v31 - 1) & v31;
            v29 = __clz(__rbit64(v31)) | (v23 << 6);
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        ;
      }

      v34 = MEMORY[0x277D84F90];
LABEL_40:
      v35 = sub_252C759A0(v34);

      if (*(v35 + 16) != 1)
      {
        goto LABEL_56;
      }

      v36 = sub_252DB4F48(v35);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        *(v0 + 328) = v36;
      }

      v73 = v13;
      if (i)
      {
LABEL_44:
        v39 = 0;
        v13 = v9 & 0xC000000000000001;
        v71 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v13)
          {
            v40 = MEMORY[0x2530ADF00](v39, v9);
            v41 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v39 >= v11[2])
            {
              goto LABEL_66;
            }

            v40 = *(v9 + 8 * v39 + 32);

            v41 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
LABEL_55:
              __break(1u);
LABEL_56:

              v73 = v13;
              if (!i)
              {
                break;
              }

              goto LABEL_44;
            }
          }

          v74 = v40;
          sub_252AFABE8(&v74, (v0 + 328), v75);

          if (v75[0])
          {
            MEMORY[0x2530AD700](v42);
            if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v43 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
              i = v72;
            }

            sub_252E372D4();
            v71 = v73;
          }

          ++v39;
          if (v41 == i)
          {
            goto LABEL_58;
          }
        }
      }

      v71 = v13;
LABEL_58:
      sub_252929F10(v9, 0);
      type metadata accessor for HomeAutomationEntityResponses();
      v44 = swift_allocObject();
      v45 = v71;
      *(v44 + 16) = 0;
      *(v44 + 24) = v45;
      v46 = *(v67 + 16);
      *(v67 + 16) = v44;
    }
  }

  else
  {
  }

  v47 = *(v0 + 336);
  *(v0 + 152) = *v47;
  v48 = *(v47 + 64);
  v50 = *(v47 + 16);
  v49 = *(v47 + 32);
  *(v0 + 200) = *(v47 + 48);
  *(v0 + 216) = v48;
  *(v0 + 168) = v50;
  *(v0 + 184) = v49;
  v52 = *(v47 + 96);
  v51 = *(v47 + 112);
  v53 = *(v47 + 80);
  *(v0 + 280) = *(v47 + 128);
  *(v0 + 248) = v52;
  *(v0 + 264) = v51;
  *(v0 + 232) = v53;
  if (sub_252AFB7A0(v0 + 152) == 1)
  {
    v54 = 0;
  }

  else
  {
    v55 = *(v0 + 264);
    *(v0 + 112) = *(v0 + 248);
    *(v0 + 128) = v55;
    *(v0 + 144) = *(v0 + 280);
    v56 = *(v0 + 200);
    *(v0 + 48) = *(v0 + 184);
    *(v0 + 64) = v56;
    v57 = *(v0 + 232);
    *(v0 + 80) = *(v0 + 216);
    *(v0 + 96) = v57;
    v58 = *(v0 + 168);
    *(v0 + 16) = *(v0 + 152);
    *(v0 + 32) = v58;
    v54 = sub_252B4F854();
  }

  *(v0 + 368) = v54;
  v59 = *(v0 + 352);
  sub_252929E74(v59 + 32, v0 + 288);
  v60 = *(v0 + 312);
  v61 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), v60);
  v62 = swift_allocObject();
  *(v0 + 376) = v62;
  v63 = v67;
  v62[2] = v59;
  v62[3] = v63;
  v62[4] = v54;

  v64 = swift_task_alloc();
  *(v0 + 384) = v64;
  *v64 = v0;
  v64[1] = sub_252AFA934;
  v65 = *MEMORY[0x277D85DE8];

  return sub_252BDC404(&unk_252E4A758, v62, v60, v61);
}

uint64_t sub_252AFA934()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 384);
  v9 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_252AFAB24;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_252AFAA84;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252AFAA84()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = v0[45];
  v1 = v0[46];

  __swift_destroy_boxed_opaque_existential_1(v0 + 36);

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_252AFAB24()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];

  __swift_destroy_boxed_opaque_existential_1(v0 + 36);

  v4 = v0[1];
  v5 = v0[49];
  v6 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_252AFABE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - v7;
  v9 = *a1;
  v10 = [*(*a1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
  if (v10)
  {
    v11 = v10;
    v12 = type metadata accessor for Room();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_2529A1E08(v11);
    v16 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    v48 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

    v17 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v22 = sub_252E36324();
    v49 = a3;
    v23 = v22;
    v24 = *(*(v22 - 8) + 56);
    v24(v20 + v21, 1, 1, v22);
    v24(v20 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v23);
    *(v20 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    v25 = MEMORY[0x277D84F90];
    *(v20 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
    *(v20 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v24(v20 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v23);
    *(v20 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v25;
    *(v20 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v25;
    v26 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v27 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    sub_252E362F4();
    v28 = v23;
    a3 = v49;
    v24(v8, 0, 1, v28);
    swift_beginAccess();
    sub_252956C98(v8, v20 + v21);
    swift_endAccess();
    sub_252AD7130(v48, v16, 0);
  }

  else
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v29 = sub_252E36AD4();
    __swift_project_value_buffer(v29, qword_27F544DA8);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_252E379F4();

    v50 = 0xD000000000000027;
    v51 = 0x8000000252E7AB40;
    v31 = (*(*v9 + 144))(v30);
    MEMORY[0x2530AD570](v31);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v50, v51, 0xD000000000000082, 0x8000000252E7AB70, 0xD00000000000002ALL, 0x8000000252E7AC00, 57);

    v32 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    v35 = swift_allocObject();
    v36 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v37 = sub_252E36324();
    v38 = *(*(v37 - 8) + 56);
    v38(v35 + v36, 1, 1, v37);
    v38(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v37);
    *(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    v39 = MEMORY[0x277D84F90];
    *(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
    *(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v38(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v37);
    *(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v39;
    *(v35 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v39;
    v40 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v41 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    sub_252E362F4();
    v38(v8, 0, 1, v37);
    swift_beginAccess();
    sub_252956C98(v8, v35 + v36);
    swift_endAccess();
  }

  v42 = sub_252AD6F94(*v52);

  v43 = type metadata accessor for HomeAutomationEntityResponse(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = sub_2529605C0(v42);

  *a3 = v46;
  return result;
}

uint64_t sub_252AFB1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_252AFB1D4, 0, 0);
}

uint64_t sub_252AFB1D4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = *__swift_project_boxed_opaque_existential_1((v0[5] + 112), *(v0[5] + 136));

  swift_beginAccess();
  v4 = *(v2 + 16);
  v0[8] = v4;
  v5 = sub_252C05030(v4, 0, v1, 0);
  v0[9] = v5;
  v6 = *(MEMORY[0x277D55BE8] + 4);
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_252AFB310;

  return v9(0xD000000000000029, 0x8000000252E699E0, v5);
}

uint64_t sub_252AFB310(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v8 = sub_252AFB4D0;
  }

  else
  {
    *(v4 + 96) = a1;
    v8 = sub_252AFB45C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252AFB45C()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[12];

  return v3(v4);
}

uint64_t sub_252AFB4D0()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

BOOL sub_252AFB564(void *a1)
{
  if ((sub_252AFB684(a1) & 1) == 0)
  {
    return 0;
  }

  return sub_252B5AB90(a1);
}

uint64_t sub_252AFB5B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252AF967C(a1);
}

void *sub_252AFB648@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockAsyncInProgressHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252AFB684(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543158, &qword_252E4A748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C280;
  v3 = type metadata accessor for AsyncScenesHandleDelegate();
  *(inited + 32) = v3;
  *(inited + 40) = &off_2864AFF40;
  *(inited + 48) = type metadata accessor for AsyncDefaultHandleDelegate();
  *(inited + 56) = &off_2864B38E0;
  *(inited + 64) = type metadata accessor for AsyncPollingHandleDelegate();
  *(inited + 72) = &off_2864B03F8;
  if (off_2864AFF58(a1, v3, &off_2864AFF40) & 1) != 0 || (v4 = *(inited + 48), ((*(*(inited + 56) + 24))(a1)))
  {
    v5 = 1;
  }

  else
  {
    v6 = *(inited + 64);
    v5 = (*(*(inited + 72) + 24))(a1);
  }

  return v5 & 1;
}

uint64_t sub_252AFB7A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_252AFB7B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252AFB1B0(v2, v3, v4);
}

uint64_t sub_252AFB860()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252AF9C38(v2, v3);
}

uint64_t sub_252AFB8F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543160, &qword_252E4E950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252AFB960(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationBlockAsyncInProgressParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252AFB9BC()
{
  v1 = v0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x2530AD570](0x3A6E6F6973726556, 0xE800000000000000);
  v2 = v0[2];
  v3 = v0[3];

  MEMORY[0x2530AD570](v2, v3);

  MEMORY[0x2530AD570](0x69746E656449202CLL, 0xED00003A72656966);
  v4 = v0[4];
  v5 = v0[5];

  MEMORY[0x2530AD570](v4, v5);

  MEMORY[0x2530AD570](0x7461646174654D0ALL, 0xEA00000000003A61);
  v6 = v0[69];

  v7 = sub_252AFC4C8();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E7B060);
  memcpy(__dst, v1 + 6, sizeof(__dst));
  v10 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v10);

  return v13;
}

void *sub_252AFBB30(uint64_t a1, uint64_t a2, const void *a3)
{
  v7 = sub_252E32E04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = 3288625;
  v3[3] = 0xE300000000000000;
  v3[4] = a1;
  v3[5] = a2;
  memcpy(v3 + 6, a3, 0x1F8uLL);

  sub_252E32DF4();
  v12 = type metadata accessor for IntentSelectionCacheRecordMetadata();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated;
  *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 0;
  v17 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush;
  *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = 1;
  (*(v8 + 32))(v15 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate, v11, v7);
  *(v15 + v16) = 0;
  *(v15 + v17) = 1;
  v3[69] = v15;
  return v3;
}

unint64_t sub_252AFBC98()
{
  v1 = 0x6E6F6973726576;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x654D64726F636572;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
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

uint64_t sub_252AFBD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252AFF560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252AFBD50(uint64_t a1)
{
  v2 = sub_252AFE2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AFBD8C(uint64_t a1)
{
  v2 = sub_252AFE2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AFBDC8()
{
  v1 = v0[3];

  v2 = v0[5];

  memcpy(__dst, v0 + 6, sizeof(__dst));
  sub_252935408(__dst);
  v3 = v0[69];

  return swift_deallocClassInstance();
}

uint64_t sub_252AFBE50(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543238, &qword_252E4AB18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFE2C8();
  sub_252E37F84();
  v12 = v4[2];
  v13 = v4[3];
  v20[0] = 0;

  sub_252E37CF4();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    v14 = v4[4];
    v15 = v4[5];
    v20[527] = 1;

    sub_252E37CF4();

    memcpy(v20, v4 + 6, 0x1F8uLL);
    memcpy(v19, v4 + 6, sizeof(v19));
    v20[526] = 2;
    sub_2529353AC(v20, v18);
    sub_2529847B0();
    sub_252E37D54();
    memcpy(v18, v19, sizeof(v18));
    sub_252935408(v18);
    v17[1] = v4[69];
    v20[525] = 3;
    type metadata accessor for IntentSelectionCacheRecordMetadata();
    sub_252B00B40(&qword_27F543220, 255, type metadata accessor for IntentSelectionCacheRecordMetadata);
    sub_252E37D54();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_252AFC11C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431A8, &qword_252E4AAC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  *(v3 + 16) = 3288625;
  *(v3 + 24) = 0xE300000000000000;
  v10 = a1[3];
  v11 = a1[4];
  v18[0] = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252AFE2C8();
  sub_252E37F74();
  if (v2)
  {
    v15 = *(v3 + 24);

    type metadata accessor for IntentSelectionCacheEntry();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19[0] = 0;
    v12 = sub_252E37C04();
    v13 = *(v3 + 24);
    *(v3 + 16) = v12;
    *(v3 + 24) = v14;

    v19[0] = 1;
    *(v3 + 32) = sub_252E37C04();
    *(v3 + 40) = v17;
    v19[527] = 2;
    sub_252981F20();
    sub_252E37C64();
    memcpy((v3 + 48), v19, 0x1F8uLL);
    type metadata accessor for IntentSelectionCacheRecordMetadata();
    v19[526] = 3;
    sub_252B00B40(&qword_27F5431B8, 255, type metadata accessor for IntentSelectionCacheRecordMetadata);
    sub_252E37C64();
    (*(v6 + 8))(v9, v5);
    *(v3 + 552) = v18[1];
  }

  __swift_destroy_boxed_opaque_existential_1(v18[0]);
  return v3;
}

uint64_t sub_252AFC4C8()
{
  v1 = v0;
  v2 = sub_252E32E04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v8 = sub_252E36F04();
  [v7 setDateFormat_];

  v9 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v9], v2);
  v10 = sub_252E32D64();
  (*(v3 + 8))(v6, v2);
  v11 = [v7 stringFromDate_];

  v12 = sub_252E36F34();
  v14 = v13;

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x654B64726F636572, 0xEB00000000203A79);
  v15 = *(v1 + 2);
  v16 = *(v1 + 3);

  MEMORY[0x2530AD570](v15, v16);

  MEMORY[0x2530AD570](0x437373656363610ALL, 0xEE00203A746E756FLL);
  v23 = *(v1 + 4);
  v17 = sub_252E37D94();
  MEMORY[0x2530AD570](v17);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E7B020);
  MEMORY[0x2530AD570](v12, v14);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E7B040);
  if (v1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated])
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated])
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v18, v19);

  MEMORY[0x2530AD570](0x46646C756F68730ALL, 0xEE00203A6873756CLL);
  if (v1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush])
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush])
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v20, v21);

  return v24;
}

uint64_t sub_252AFC800()
{
  v1 = sub_252E32E04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 32);
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v9;
    sub_252E32DF4();
    v10 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
    swift_beginAccess();
    (*(v2 + 40))(v0 + v10, v6, v1);
    result = swift_endAccess();
    *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 0;
    *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
  }

  return result;
}

uint64_t sub_252AFC924()
{
  v1 = *v0;
  v2 = 0x654B64726F636572;
  v3 = 0x656363417473616CLL;
  v4 = 0x696C61766E497369;
  if (v1 != 3)
  {
    v4 = 0x6C46646C756F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43737365636361;
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

uint64_t sub_252AFC9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252AFF6DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252AFCA14(uint64_t a1)
{
  v2 = sub_252AFE31C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AFCA50(uint64_t a1)
{
  v2 = sub_252AFE31C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AFCA8C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
  v3 = sub_252E32E04();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IntentSelectionCacheRecordMetadata()
{
  result = qword_27F543168;
  if (!qword_27F543168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252AFCB84()
{
  result = sub_252E32E04();
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

uint64_t sub_252AFCC38(void *a1)
{
  v2 = v1;
  v4 = sub_252E32E04();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543228, &qword_252E4AB10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFE31C();
  sub_252E37F84();
  v14 = *(v2 + 2);
  v15 = *(v2 + 3);
  v30 = 0;

  v16 = v29;
  sub_252E37CF4();
  if (v16)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v29 = v9;
    v27 = v7;
    v18 = v28;

    v19 = *(v2 + 4);
    v30 = 1;
    sub_252E37D44();
    v20 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
    swift_beginAccess();
    v21 = v18;
    v22 = *(v18 + 16);
    v23 = v27;
    v22(v27, &v2[v20], v4);
    v31 = 2;
    sub_252B00B40(&qword_27F543230, 255, MEMORY[0x277CC9578]);
    sub_252E37D54();
    (*(v21 + 8))(v23, v4);
    v24 = v2[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated];
    v31 = 3;
    sub_252E37D04();
    v25 = v29;
    v26 = *OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush;
    v31 = 4;
    sub_252E37D04();
    return (*(v25 + 8))(v12, v8);
  }
}

void *sub_252AFCFCC(uint64_t *a1)
{
  v2 = v1;
  v27 = sub_252E32E04();
  v25 = *(v27 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431C0, &qword_252E4AAD0);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v23 - v8;
  v2[4] = 1;
  v10 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated;
  *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 0;
  v11 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush;
  *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
  v13 = a1[3];
  v12 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_252AFE31C();
  v14 = v29;
  sub_252E37F74();
  if (v14)
  {
    type metadata accessor for IntentSelectionCacheRecordMetadata();
    v20 = *(*v2 + 48);
    v21 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v10;
    v24 = v11;
    v15 = v26;
    v16 = v27;
    v35 = 0;
    v17 = v28;
    v2[2] = sub_252E37C04();
    v2[3] = v18;
    v34 = 1;
    v19 = v15;
    v2[4] = sub_252E37C54();
    v33 = 2;
    sub_252B00B40(&qword_27F5431D0, 255, MEMORY[0x277CC9578]);
    sub_252E37C64();
    (*(v25 + 32))(v2 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate, v6, v16);
    v32 = 3;
    *(v2 + v29) = sub_252E37C14() & 1;
    v31 = 4;
    LOBYTE(v15) = sub_252E37C14();
    (*(v19 + 8))(v9, v17);
    *(v2 + v24) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  return v2;
}

void *sub_252AFD394@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for IntentSelectionCacheRecordMetadata();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_252AFCFCC(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_252AFD444()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x79654B6568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_252AFD4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252AFF8AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252AFD4D0(uint64_t a1)
{
  v2 = sub_252AFED70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AFD50C(uint64_t a1)
{
  v2 = sub_252AFED70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AFD548()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_252AFD5B4(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543210, &qword_252E4AB08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFED70();
  sub_252E37F84();
  v12 = v4[2];
  v13 = v4[3];
  v20 = 0;

  sub_252E37CF4();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    v14 = v4[4];
    v15 = v4[5];
    v19 = 1;

    sub_252E37CF4();

    v18 = v4[6];
    v17[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431E8, &qword_252E4AAE0);
    sub_252B00A80();
    sub_252E37CD4();
    return (*(v7 + 8))(v10, v6);
  }
}

void *sub_252AFD7C0(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431D8, &qword_252E4AAD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v1[2] = 3288625;
  v1[3] = 0xE300000000000000;
  v1[4] = 0xD000000000000020;
  v1[5] = 0x8000000252E7AE10;
  v1[6] = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFED70();
  sub_252E37F74();
  if (v2)
  {
  }

  else
  {
    v21 = 0;
    v10 = sub_252E37C04();
    v11 = v1[3];
    v1[2] = v10;
    v1[3] = v12;

    v20 = 1;
    v13 = sub_252E37C04();
    v14 = v1[5];
    v1[4] = v13;
    v1[5] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431E8, &qword_252E4AAE0);
    v19 = 2;
    sub_252AFEDC4();
    sub_252E37BE4();
    (*(v5 + 8))(v8, v4);
    v17 = v1[6];
    v1[6] = v18[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252AFDA64@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_252AFDAF8()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_252AFDB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252AFF9D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252AFDB84(uint64_t a1)
{
  v2 = sub_252AFEE84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AFDBC0(uint64_t a1)
{
  v2 = sub_252AFEE84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s22HomeAutomationInternal0A28GraphCacheInvalidationSignalCfD_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_252AFDC68(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543208, &qword_252E4AB00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFEE84();
  sub_252E37F84();
  v12 = v4[2];
  v13 = v4[3];
  v19[15] = 0;

  sub_252E37CF4();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    v14 = v4[4];
    v15 = v4[5];
    v19[14] = 1;

    sub_252E37CF4();

    v17 = v4[6];
    v18 = v4[7];
    v19[13] = 2;

    sub_252E37C94();
    (*(v7 + 8))(v10, v6);
  }
}

void *sub_252AFDE6C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431F8, &qword_252E4AAE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v1[2] = 3288625;
  v1[3] = 0xE300000000000000;
  v1[6] = 0;
  v1[7] = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFEE84();
  sub_252E37F74();
  if (v2)
  {
    v14 = v1[3];

    v15 = v1[7];

    type metadata accessor for CacheInvalidationSignalRecord();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = 0;
    v11 = sub_252E37C04();
    v12 = v1[3];
    v1[2] = v11;
    v1[3] = v13;

    v24 = 1;
    v1[4] = sub_252E37C04();
    v1[5] = v17;
    v23 = 2;
    v18 = sub_252E37BA4();
    v20 = v19;
    (*(v6 + 8))(v9, v5);
    v21 = v3[7];
    v3[6] = v18;
    v3[7] = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void *sub_252AFE0B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for CacheInvalidationSignalRecord();
  swift_allocObject();
  result = sub_252AFDE6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_252AFE134(uint64_t a1)
{
  *(a1 + 8) = sub_252B00B40(&qword_27F543178, 255, type metadata accessor for CacheInvalidationSignalRecord);
  result = sub_252B00B40(&qword_27F543180, 255, type metadata accessor for CacheInvalidationSignalRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_252AFE1C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_252B00B40(&qword_27F543188, a2, type metadata accessor for IntentSelectionCacheKeysRecord);
  result = sub_252B00B40(&qword_27F543190, v3, type metadata accessor for IntentSelectionCacheKeysRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_252AFE244(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_252B00B40(&qword_27F543198, a2, type metadata accessor for IntentSelectionCacheEntry);
  result = sub_252B00B40(&qword_27F5431A0, v3, type metadata accessor for IntentSelectionCacheEntry);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_252AFE2C8()
{
  result = qword_27F5431B0;
  if (!qword_27F5431B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5431B0);
  }

  return result;
}

unint64_t sub_252AFE31C()
{
  result = qword_27F5431C8;
  if (!qword_27F5431C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5431C8);
  }

  return result;
}

uint64_t sub_252AFE370(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v5 = *(a3 + 16);
    *(a3 + 16) = v3;
  }

  return sub_252E37614();
}

uint64_t sub_252AFE3DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544E20);
    sub_252E379F4();

    v5 = *(a2 + 32);
    v4 = *(a2 + 40);

    MEMORY[0x2530AD570](v5, v4);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E7AE40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v6 = sub_252E37714();
    MEMORY[0x2530AD570](v6);

    sub_252CC4050(0x206574697257, 0xE600000000000000, 0xD00000000000009BLL, 0x8000000252E7AE60, 0x746E456574697277, 0xEE00293A5F287972, 202);
  }

  return result;
}

uint64_t sub_252AFE56C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544E20);
    sub_252E379F4();

    v5 = *(a2 + 32);
    v4 = *(a2 + 40);

    MEMORY[0x2530AD570](v5, v4);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E7AE40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v6 = sub_252E37714();
    MEMORY[0x2530AD570](v6);

    sub_252CC4050(0x206574656C6544, 0xE700000000000000, 0xD00000000000009BLL, 0x8000000252E7AE60, 0x6E456574656C6564, 0xEF293A5F28797274, 211);
  }

  return result;
}

uint64_t sub_252AFE700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v3 = *(*a1 + 48);
    swift_beginAccess();
    v5 = *(a3 + 16);
    *(a3 + 16) = v3;
  }

  return sub_252E37614();
}

uint64_t sub_252AFE770(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E20);
    sub_252E379F4();

    MEMORY[0x2530AD570](a2, a3);
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E7AE40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v6 = sub_252E37714();
    MEMORY[0x2530AD570](v6);

    sub_252CC4050(0x206574697257, 0xE600000000000000, 0xD00000000000009BLL, 0x8000000252E7AE60, 0xD000000000000012, 0x8000000252E7AF20, 249);
  }

  return result;
}

uint64_t sub_252AFE8E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = a3;

  a7(a1, a2, a6, v13);
}

uint64_t sub_252AFE980(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    v5 = *(v3 + 48);
    v4 = *(v3 + 56);
    swift_beginAccess();
    v7 = *(a3 + 24);
    *(a3 + 16) = v5;
    *(a3 + 24) = v4;
  }

  return sub_252E37614();
}

uint64_t sub_252AFE9F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E20);
    sub_252E379F4();

    MEMORY[0x2530AD570](a2, a3);
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E7AE40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v6 = sub_252E37714();
    MEMORY[0x2530AD570](v6);

    sub_252CC4050(0x206574697257, 0xE600000000000000, 0xD00000000000009BLL, 0x8000000252E7AE60, 0xD00000000000002DLL, 0x8000000252E7AF80, 303);
  }

  return result;
}

uint64_t sub_252AFEB6C(char *a1, char *a2)
{
  v4 = sub_252E32E04();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-v10];
  if (*(a1 + 4) != *(a2 + 4))
  {
    goto LABEL_5;
  }

  v12 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
  swift_beginAccess();
  v13 = v5[2];
  v13(v11, &a1[v12], v4);
  v14 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
  swift_beginAccess();
  v13(v9, &a2[v14], v4);
  LOBYTE(v14) = sub_252E32DA4();
  v15 = v5[1];
  v15(v9, v4);
  v15(v11, v4);
  if ((v14 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (a1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated] == a2[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated] && a1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush] == a2[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush])
  {
    if (*(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_252E37DB4();
    }
  }

  else
  {
LABEL_5:
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_252AFED70()
{
  result = qword_27F5431E0;
  if (!qword_27F5431E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5431E0);
  }

  return result;
}

unint64_t sub_252AFEDC4()
{
  result = qword_27F5431F0;
  if (!qword_27F5431F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5431E8, &qword_252E4AAE0);
    sub_252B00B40(&qword_27F5431B8, 255, type metadata accessor for IntentSelectionCacheRecordMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5431F0);
  }

  return result;
}

unint64_t sub_252AFEE84()
{
  result = qword_27F543200;
  if (!qword_27F543200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543200);
  }

  return result;
}

uint64_t sub_252AFEED8()
{
  v46 = sub_252E36C84();
  v44 = *(v46 - 8);
  v0 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v42 = (&v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_252E36D54();
  v43 = *(v45 - 8);
  v2 = *(v43 + 64);
  v3 = MEMORY[0x28223BE20](v45);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v35 - v5;
  v35 = sub_252E36CA4();
  v38 = *(v35 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36D04();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252E36CB4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v41 = v18 + 16;
  v19 = dispatch_semaphore_create(0);
  sub_252936DF8();
  (*(v14 + 104))(v17, *MEMORY[0x277D851C0], v13);
  v20 = sub_252E375A4();
  (*(v14 + 8))(v17, v13);
  v21 = swift_allocObject();
  v21[2] = 0xD000000000000020;
  v21[3] = 0x8000000252E7AE10;
  v21[4] = v19;
  v21[5] = v18;
  aBlock[4] = sub_252B00234;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_97;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  sub_252E36CD4();
  v47 = MEMORY[0x277D84F90];
  sub_252B00B40(qword_2814B0298, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529905D0();
  v24 = v35;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v12, v8, v22);
  _Block_release(v22);

  (*(v38 + 8))(v8, v24);
  (*(v36 + 8))(v12, v37);

  v25 = v39;
  sub_252E36D14();
  v26 = v42;
  *v42 = 200;
  v27 = v44;
  v28 = v46;
  (*(v44 + 104))(v26, *MEMORY[0x277D85178], v46);
  v29 = v40;
  sub_252E36D24();
  (*(v27 + 8))(v26, v28);
  v30 = *(v43 + 8);
  v31 = v45;
  v30(v25, v45);
  sub_252E375F4();
  v30(v29, v31);
  if (sub_252E36C94())
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v32 = sub_252E36AD4();
    __swift_project_value_buffer(v32, qword_27F544E20);
    sub_252CC4050(0xD00000000000003FLL, 0x8000000252E7AF40, 0xD00000000000009BLL, 0x8000000252E7AE60, 0x6863614364616572, 0xEF29287379654B65, 238);
  }

  swift_beginAccess();
  v33 = *(v18 + 16);

  return v33;
}

uint64_t sub_252AFF560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000252E6BCE0 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D64726F636572 && a2 == 0xEE00617461646174)
  {

    return 3;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252AFF6DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654B64726F636572 && a2 == 0xE900000000000079;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43737365636361 && a2 == 0xEB00000000746E75 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656363417473616CLL && a2 == 0xEE00657461447373 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C61766E497369 && a2 == 0xED00006465746164 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C46646C756F6873 && a2 == 0xEB00000000687375)
  {

    return 4;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_252AFF8AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252AFF9D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000252E7ADF0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252AFFAFC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v54 = a1;
  v51 = sub_252E36C84();
  v49 = *(v51 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v47 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_252E36D54();
  v48 = *(v50 - 8);
  v4 = *(v48 + 64);
  v5 = MEMORY[0x28223BE20](v50);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - v7;
  v8 = sub_252E36CA4();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E36D04();
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252E36CB4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v52 = v21 + 16;
  v22 = dispatch_semaphore_create(0);
  sub_252936DF8();
  (*(v17 + 104))(v20, *MEMORY[0x277D851C0], v16);
  v23 = sub_252E375A4();
  v24 = v20;
  v25 = v41;
  (*(v17 + 8))(v24, v16);
  v26 = swift_allocObject();
  v26[2] = v54;
  v26[3] = v25;
  v26[4] = v22;
  v26[5] = v21;
  v60 = sub_252B001C4;
  v61 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_252AD686C;
  v59 = &block_descriptor_10;
  v27 = _Block_copy(&aBlock);

  v28 = v22;
  v53 = v21;

  sub_252E36CD4();
  v55 = MEMORY[0x277D84F90];
  sub_252B00B40(qword_2814B0298, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529905D0();
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v15, v11, v27);
  _Block_release(v27);

  (*(v44 + 8))(v11, v8);
  v29 = v15;
  v30 = v28;
  (*(v42 + 8))(v29, v43);

  v31 = v45;
  sub_252E36D14();
  v32 = v47;
  *v47 = 200;
  v33 = v49;
  v34 = v51;
  (*(v49 + 104))(v32, *MEMORY[0x277D85178], v51);
  v35 = v46;
  sub_252E36D24();
  (*(v33 + 8))(v32, v34);
  v36 = *(v48 + 8);
  v37 = v50;
  v36(v31, v50);
  sub_252E375F4();
  v36(v35, v37);
  if (sub_252E36C94())
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    __swift_project_value_buffer(v38, qword_27F544E20);
    aBlock = 0;
    v57 = 0xE000000000000000;
    sub_252E379F4();

    aBlock = 0xD00000000000001FLL;
    v57 = 0x8000000252E7AF00;
    MEMORY[0x2530AD570](v54, v25);
    sub_252CC4050(aBlock, v57, 0xD00000000000009BLL, 0x8000000252E7AE60, 0x72746E4564616572, 0xEF293A726F662879, 193);
  }

  swift_beginAccess();
  v39 = *(v53 + 16);

  return v39;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252B0028C(char a1)
{
  v54 = sub_252E36C84();
  v52 = *(v54 - 8);
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v50 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_252E36D54();
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  v5 = MEMORY[0x28223BE20](v53);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v42 - v7;
  v44 = sub_252E36CA4();
  v47 = *(v44 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36D04();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_252E36CB4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = v19;
  *(v19 + 16) = 0;
  v55 = v19 + 16;
  if (a1)
  {
    v21 = 0x65566D6574737973;
  }

  else
  {
    v21 = 0xD000000000000013;
  }

  if (a1)
  {
    v22 = 0xED00006E6F697372;
  }

  else
  {
    v22 = 0x8000000252E7AFE0;
  }

  *(v19 + 24) = 0;
  v23 = dispatch_semaphore_create(0);
  sub_252936DF8();
  (*(v15 + 104))(v18, *MEMORY[0x277D851C0], v14);
  v24 = sub_252E375A4();
  (*(v15 + 8))(v18, v14);
  v25 = swift_allocObject();
  v42 = v21;
  v25[2] = v21;
  v25[3] = v22;
  v26 = v22;
  v25[4] = v23;
  v25[5] = v20;
  v61 = sub_252B009E8;
  v62 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_252AD686C;
  v60 = &block_descriptor_109;
  v27 = _Block_copy(&aBlock);

  v28 = v23;

  sub_252E36CD4();
  v56 = MEMORY[0x277D84F90];
  sub_252B00B40(qword_2814B0298, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529905D0();
  v29 = v43;
  v30 = v44;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v13, v29, v27);
  _Block_release(v27);

  (*(v47 + 8))(v29, v30);
  (*(v45 + 8))(v13, v46);

  v31 = v48;
  sub_252E36D14();
  v32 = v50;
  *v50 = 200;
  v33 = v52;
  v34 = v54;
  (*(v52 + 104))(v32, *MEMORY[0x277D85178], v54);
  v35 = v49;
  sub_252E36D24();
  (*(v33 + 8))(v32, v34);
  v36 = *(v51 + 8);
  v37 = v53;
  v36(v31, v53);
  sub_252E375F4();
  v36(v35, v37);
  if (sub_252E36C94())
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    __swift_project_value_buffer(v38, qword_27F544E20);
    aBlock = 0;
    v58 = 0xE000000000000000;
    sub_252E379F4();

    aBlock = 0xD00000000000001FLL;
    v58 = 0x8000000252E7AF00;
    MEMORY[0x2530AD570](v42, v26);

    sub_252CC4050(aBlock, v58, 0xD00000000000009BLL, 0x8000000252E7AE60, 0xD000000000000025, 0x8000000252E7AFB0, 292);
  }

  swift_beginAccess();
  v39 = *(v20 + 16);
  v40 = *(v20 + 24);

  return v39;
}