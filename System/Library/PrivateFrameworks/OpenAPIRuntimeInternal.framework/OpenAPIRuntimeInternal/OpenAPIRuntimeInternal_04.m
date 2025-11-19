uint64_t sub_25DD3D6C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ClientTransport.send(_:body:baseURL:operationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_25DD3D8CC;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_25DD3D8CC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of ClientMiddleware.intercept(_:body:baseURL:operationID:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 8);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = sub_25DD3DB34;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t ServerRequestMetadata.pathParameters.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_25DD3DBAC(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v28 = (v5 + 63) >> 6;
  v29 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(result + 56) + 32 * v11);
    v16 = *v15;
    v17 = v15[1];
    v19 = v15[2];
    v18 = v15[3];

    v20 = sub_25DD0C2DC(v13, v14, sub_25DCFFA14);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 32 * v20);
    if (v23[2] == v19 && v23[3] == v18 && *v23 >> 16 == v16 >> 16 && v23[1] >> 16 == v17 >> 16)
    {

      result = v29;
      v7 = v30;
    }

    else
    {
      v27 = sub_25DD97364();

      result = v29;
      v7 = v30;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v28)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ServerRequestMetadata.hashValue.getter()
{
  v1 = *v0;
  sub_25DD97964();
  sub_25DD40C8C(v3, v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD3DDCC()
{
  v1 = *v0;
  sub_25DD97964();
  sub_25DD40C8C(v3, v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD3DE1C()
{
  v1 = *v0;
  sub_25DD97964();
  sub_25DD40C8C(v3, v1);
  return sub_25DD979A4();
}

uint64_t HTTPRequest.init(soar_path:method:headerFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a2;
  v6 = sub_25DD96814();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25DD96884();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  (*(v12 + 16))(v16 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  (*(v7 + 16))(v10, a4, v6);
  sub_25DD96894();
  (*(v7 + 8))(a4, v6);
  return (*(v12 + 8))(a3, v11);
}

unint64_t HTTPRequest.soar_query.getter()
{
  v0 = MEMORY[0x25F8A2E70]();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  sub_25DD3E16C(63, 0xE100000000000000, v0, v1);
  if (v4)
  {

    return 0;
  }

  else
  {
    v6 = sub_25DD3E16C(35, 0xE100000000000000, v2, v3);
    if (v7)
    {
      v8 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v8 = v2;
      }

      v9 = v8 << 16;
      if ((v3 & 0x1000000000000000) == 0 || (v2 & 0x800000000000000) != 0)
      {
        v10 = v9 | 7;
      }

      else
      {
        v10 = v9 | 0xB;
      }
    }

    else
    {
      v10 = v6;
    }

    result = sub_25DD96BA4();
    if (v10 >> 14 < result >> 14)
    {
      __break(1u);
    }

    else
    {
      v11 = sub_25DD96CA4();

      return v11;
    }
  }

  return result;
}

unint64_t sub_25DD3E16C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_25DD96C84() != a1 || v9 != a2)
  {
    v10 = sub_25DD975D4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_25DD96BA4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t HTTPRequest.soar_pathOnly.getter()
{
  v0 = MEMORY[0x25F8A2E70]();
  if (!v1)
  {
    return sub_25DD96CA4();
  }

  v2 = v0;
  v3 = v1;
  sub_25DD3E16C(63, 0xE100000000000000, v0, v1);
  if (v4)
  {
    sub_25DD3E16C(35, 0xE100000000000000, v2, v3);
  }

  v5 = sub_25DD96CA4();

  return v5;
}

uint64_t HTTPResponse.init(soar_statusCode:)(uint64_t a1)
{
  v2 = sub_25DD96814();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_25DD96954();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x25F8A2F40](a1, 0, 0xE000000000000000);
  sub_25DD967E4();
  return sub_25DD96964();
}

unint64_t ServerRequestMetadata.description.getter()
{
  v1 = *v0;
  sub_25DD97124();

  v2 = sub_25DD96A74();
  MEMORY[0x25F8A3200](v2);

  return 0xD000000000000011;
}

unint64_t sub_25DD3E4D0()
{
  v1 = *v0;
  sub_25DD97124();

  v2 = sub_25DD96A74();
  MEMORY[0x25F8A3200](v2);

  return 0xD000000000000011;
}

uint64_t sub_25DD3E568()
{
  v42 = sub_25DD969E4();
  v1 = *(v42 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_25DD96A34();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v40);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25DD96814();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v8);
  sub_25DD40F48();
  v43 = sub_25DD96CC4();
  sub_25DD3EF6C(&v43);
  v12 = v43;
  v13 = v43[2];
  if (v13)
  {
    v45 = MEMORY[0x277D84F90];
    sub_25DD055C4(0, v13, 0);
    v14 = v45;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v37 = *(v15 + 56);
    v38 = v16;
    v35 = v12;
    v36 = (v1 + 8);
    v39 = v15;
    v18 = (v15 - 8);
    do
    {
      v19 = v40;
      v20 = v38(v7, v17, v40);
      v21 = v41;
      v22 = MEMORY[0x25F8A3030](v20);
      v23 = MEMORY[0x25F8A2FB0](v22);
      v25 = v24;
      (*v36)(v21, v42);
      v43 = v23;
      v44 = v25;
      v26 = MEMORY[0x25F8A3200](8250, 0xE200000000000000);
      v27 = MEMORY[0x25F8A3040](v26);
      MEMORY[0x25F8A3200](v27);

      v29 = v43;
      v28 = v44;
      (*v18)(v7, v19);
      v45 = v14;
      v31 = v14[2];
      v30 = v14[3];
      if (v31 >= v30 >> 1)
      {
        sub_25DD055C4((v30 > 1), v31 + 1, 1);
        v14 = v45;
      }

      v14[2] = v31 + 1;
      v32 = &v14[2 * v31];
      v32[4] = v29;
      v32[5] = v28;
      v17 += v37;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v43 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
  sub_25DD0CFAC();
  v33 = sub_25DD96AD4();

  return v33;
}

BOOL sub_25DD3E934()
{
  v0 = sub_25DD969E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v21 - v7;
  v9 = MEMORY[0x25F8A3030](v6);
  v10 = MEMORY[0x25F8A2FB0](v9);
  v12 = v11;
  v13 = *(v1 + 8);
  v14 = v13(v8, v0);
  v21[2] = v10;
  v21[3] = v12;
  v15 = MEMORY[0x25F8A3030](v14);
  v16 = MEMORY[0x25F8A2FB0](v15);
  v18 = v17;
  v13(v5, v0);
  v21[0] = v16;
  v21[1] = v18;
  sub_25DD07E24();
  v19 = sub_25DD96F84();

  return v19 == -1;
}

uint64_t sub_25DD3EABC()
{
  v0 = sub_25DD96814();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25DD96884();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x25F8A2EC0](v8);
  v12 = MEMORY[0x25F8A2E90](v11);
  v14 = v13;
  (*(v6 + 8))(v10, v5);
  v24[0] = v12;
  v24[1] = v14;
  v15 = MEMORY[0x25F8A3200](32, 0xE100000000000000);
  v16 = MEMORY[0x25F8A2E70](v15);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v16 = 0x3E6C696E3CLL;
    v18 = 0xE500000000000000;
  }

  MEMORY[0x25F8A3200](v16, v18);

  v19 = MEMORY[0x25F8A3200](23328, 0xE200000000000000);
  MEMORY[0x25F8A2E60](v19);
  v20 = sub_25DD3E568();
  v22 = v21;
  (*(v1 + 8))(v4, v0);
  MEMORY[0x25F8A3200](v20, v22);

  MEMORY[0x25F8A3200](93, 0xE100000000000000);
  return v24[0];
}

uint64_t sub_25DD3ECDC()
{
  v0 = sub_25DD96814();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25DD96954();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x25F8A2F90](v8);
  v12 = MEMORY[0x25F8A2F50](v11);
  (*(v6 + 8))(v10, v5);
  v19[1] = v12;
  v20 = sub_25DD97374();
  v21 = v13;
  v14 = MEMORY[0x25F8A3200](23328, 0xE200000000000000);
  MEMORY[0x25F8A2EE0](v14);
  v15 = sub_25DD3E568();
  v17 = v16;
  (*(v1 + 8))(v4, v0);
  MEMORY[0x25F8A3200](v15, v17);

  MEMORY[0x25F8A3200](93, 0xE100000000000000);
  return v20;
}

uint64_t sub_25DD3EEC8()
{
  v1 = *v0;

  return sub_25DD96B44();
}

uint64_t sub_25DD3EF2C()
{
  v2 = *v0;

  return sub_25DD96B44();
}

uint64_t sub_25DD3EF6C(void **a1)
{
  v2 = *(sub_25DD96A34() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25DD40E08(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25DD3F014(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25DD3F014(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25DD97354();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25DD96A34();
        v6 = sub_25DD96D64();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25DD96A34() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25DD3F55C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25DD3F140(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25DD3F140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v68 = sub_25DD969E4();
  v8 = *(v68 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v68);
  v67 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v50 - v12;
  v13 = sub_25DD96A34();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v50 - v18;
  result = MEMORY[0x28223BE20](v17);
  v70 = &v50 - v21;
  v52 = a2;
  if (a3 != a2)
  {
    v23 = *(v20 + 16);
    v22 = v20 + 16;
    v24 = *a4;
    v25 = *(v22 + 56);
    v62 = (v8 + 8);
    v63 = v23;
    v61 = (v22 - 8);
    v65 = v22;
    v26 = v24 + v25 * (a3 - 1);
    v57 = -v25;
    v58 = (v22 + 16);
    v27 = a1 - a3;
    v59 = v24;
    v51 = v25;
    v28 = v24 + v25 * a3;
    v64 = v13;
LABEL_5:
    v56 = a3;
    v53 = v28;
    v54 = v27;
    v55 = v26;
    v69 = v27;
    while (1)
    {
      v29 = v63;
      v63();
      v30 = (v29)(v75, v26, v13);
      v31 = v66;
      v32 = MEMORY[0x25F8A3030](v30);
      v33 = MEMORY[0x25F8A2FB0](v32);
      v35 = v34;
      v36 = *v62;
      v37 = v31;
      v38 = v68;
      v39 = (*v62)(v37, v68);
      v73 = v33;
      v74 = v35;
      v40 = v67;
      v41 = MEMORY[0x25F8A3030](v39);
      v42 = MEMORY[0x25F8A2FB0](v41);
      v44 = v43;
      v36(v40, v38);
      v13 = v64;
      v71 = v42;
      v72 = v44;
      sub_25DD07E24();
      v45 = sub_25DD96F84();

      v46 = *v61;
      (*v61)(v75, v13);
      result = (v46)(v70, v13);
      if (v45 != -1)
      {
LABEL_4:
        a3 = v56 + 1;
        v26 = v55 + v51;
        v27 = v54 - 1;
        v28 = v53 + v51;
        if (v56 + 1 == v52)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v59)
      {
        break;
      }

      v47 = *v58;
      v48 = v60;
      (*v58)(v60, v28, v13);
      swift_arrayInitWithTakeFrontToBack();
      result = (v47)(v26, v48, v13);
      v26 += v57;
      v28 += v57;
      if (__CFADD__(v69++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD3F55C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v151 = a1;
  v172 = sub_25DD969E4();
  v6 = *(v172 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v172);
  v171 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v170 = &v148 - v10;
  v175 = sub_25DD96A34();
  v11 = *(v175 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v175);
  v158 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v166 = &v148 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v178 = &v148 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v177 = &v148 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v150 = &v148 - v22;
  result = MEMORY[0x28223BE20](v21);
  v149 = &v148 - v24;
  v25 = a3[1];
  v152 = v11;
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_96:
    a4 = *v151;
    if (!*v151)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_98;
  }

  v148 = a4;
  v26 = 0;
  v173 = v11 + 2;
  v174 = (v11 + 1);
  v168 = (v11 + 4);
  v169 = (v6 + 8);
  v27 = MEMORY[0x277D84F90];
  v153 = a3;
  while (1)
  {
    v154 = v27;
    v157 = v26;
    if (v26 + 1 >= v25)
    {
      v39 = (v26 + 1);
    }

    else
    {
      v162 = v25;
      v28 = v11;
      v29 = *a3;
      v30 = v28[9];
      v31 = *a3 + v30 * (v26 + 1);
      v32 = v28[2];
      v33 = v149;
      v34 = v175;
      (v32)(v149, v31, v175);
      v176 = v29;
      v35 = v29 + v30 * v26;
      v36 = v150;
      v164 = v32;
      (v32)(v150, v35, v34);
      LODWORD(v165) = sub_25DD3E934();
      if (v163)
      {
        v147 = *v174;
        (*v174)(v36, v34);
        v147(v33, v34);
      }

      a4 = v174;
      v37 = *v174;
      (*v174)(v36, v34);
      v161 = v37;
      result = (v37)(v33, v34);
      v27 = (v26 + 2);
      v38 = v176 + v30 * (v26 + 2);
      v167 = v30;
      while (1)
      {
        v39 = v162;
        if (v162 == v27)
        {
          break;
        }

        v40 = v175;
        v41 = v164;
        v164();
        v176 = v31;
        v42 = v41(v178, v31, v40);
        v43 = v170;
        v44 = MEMORY[0x25F8A3030](v42);
        v45 = MEMORY[0x25F8A2FB0](v44);
        v47 = v46;
        v48 = *v169;
        v49 = v172;
        v50 = (*v169)(v43, v172);
        v181 = v45;
        v182 = v47;
        v51 = v171;
        v52 = MEMORY[0x25F8A3030](v50);
        v53 = MEMORY[0x25F8A2FB0](v52);
        v55 = v54;
        v48(v51, v49);
        v179 = v53;
        v180 = v55;
        sub_25DD07E24();
        v56 = sub_25DD96F84();

        v30 = v167;

        a4 = v174;
        v57 = v175;
        v58 = v161;
        (v161)(v178, v175);
        result = v58(v177, v57);
        ++v27;
        v38 += v30;
        v31 = v30 + v176;
        if (((v165 ^ (v56 != -1)) & 1) == 0)
        {
          v39 = v27 - 1;
          break;
        }
      }

      a3 = v153;
      v11 = v152;
      if ((v165 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v39 < v157)
      {
        goto LABEL_129;
      }

      if (v157 < v39)
      {
        a4 = v30 * (v39 - 1);
        v59 = v39 * v30;
        v162 = v39;
        v60 = v39;
        v61 = v157;
        v62 = v157 * v30;
        v27 = v154;
        do
        {
          if (v61 != --v60)
          {
            v64 = *v153;
            if (!*v153)
            {
              goto LABEL_133;
            }

            v65 = *v168;
            (*v168)(v158, v64 + v62, v175);
            if (v62 < a4 || v64 + v62 >= (v64 + v59))
            {
              v63 = v175;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v63 = v175;
              if (v62 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v65)(v64 + a4, v158, v63);
            v27 = v154;
            v30 = v167;
          }

          ++v61;
          a4 -= v30;
          v59 -= v30;
          v62 += v30;
        }

        while (v61 < v60);
        a3 = v153;
        v11 = v152;
        v39 = v162;
      }

      else
      {
LABEL_24:
        v27 = v154;
      }
    }

    v66 = a3[1];
    if (v39 < v66)
    {
      if (__OFSUB__(v39, v157))
      {
        goto LABEL_126;
      }

      if (&v39[-v157] < v148)
      {
        if (__OFADD__(v157, v148))
        {
          goto LABEL_127;
        }

        if (v157 + v148 >= v66)
        {
          v67 = a3[1];
        }

        else
        {
          v67 = (v157 + v148);
        }

        if (v67 < v157)
        {
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          result = sub_25DD06A4C(v27);
          v27 = result;
LABEL_98:
          v183 = v27;
          v142 = *(v27 + 2);
          if (v142 >= 2)
          {
            while (*a3)
            {
              v143 = *&v27[16 * v142];
              v144 = *&v27[16 * v142 + 24];
              v145 = v163;
              sub_25DD40220(*a3 + v152[9] * v143, *a3 + v152[9] * *&v27[16 * v142 + 16], *a3 + v152[9] * v144, a4);
              v163 = v145;
              if (v145)
              {
              }

              if (v144 < v143)
              {
                goto LABEL_123;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_25DD06A4C(v27);
              }

              if (v142 - 2 >= *(v27 + 2))
              {
                goto LABEL_124;
              }

              v146 = &v27[16 * v142];
              *v146 = v143;
              *(v146 + 1) = v144;
              v183 = v27;
              result = sub_25DD069C0(v142 - 1);
              v27 = v183;
              v142 = *(v183 + 2);
              if (v142 <= 1)
              {
              }
            }

            goto LABEL_134;
          }
        }

        if (v39 != v67)
        {
          break;
        }
      }
    }

    v26 = v39;
LABEL_36:
    if (v26 < v157)
    {
      goto LABEL_125;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25DD050F0(0, *(v27 + 2) + 1, 1, v27);
      v27 = result;
    }

    a4 = *(v27 + 2);
    v68 = *(v27 + 3);
    v69 = a4 + 1;
    if (a4 >= v68 >> 1)
    {
      result = sub_25DD050F0((v68 > 1), a4 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 2) = v69;
    v70 = &v27[16 * a4];
    *(v70 + 4) = v157;
    *(v70 + 5) = v26;
    v71 = *v151;
    if (!*v151)
    {
      goto LABEL_135;
    }

    if (a4)
    {
      while (1)
      {
        v72 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v73 = *(v27 + 4);
          v74 = *(v27 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_56:
          if (v76)
          {
            goto LABEL_114;
          }

          v89 = &v27[16 * v69];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_117;
          }

          v95 = &v27[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_121;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v69 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v99 = &v27[16 * v69];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_70:
        if (v94)
        {
          goto LABEL_116;
        }

        v102 = &v27[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_119;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v72 - 1;
        if (v72 - 1 >= v69)
        {
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v110 = *&v27[16 * a4 + 32];
        v111 = *&v27[16 * v72 + 40];
        v112 = v163;
        sub_25DD40220(*a3 + v11[9] * v110, *a3 + v11[9] * *&v27[16 * v72 + 32], *a3 + v11[9] * v111, v71);
        v163 = v112;
        if (v112)
        {
        }

        if (v111 < v110)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_25DD06A4C(v27);
        }

        if (a4 >= *(v27 + 2))
        {
          goto LABEL_111;
        }

        v113 = &v27[16 * a4];
        *(v113 + 4) = v110;
        *(v113 + 5) = v111;
        v183 = v27;
        result = sub_25DD069C0(v72);
        v27 = v183;
        v69 = *(v183 + 2);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v27[16 * v69 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_112;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_113;
      }

      v84 = &v27[16 * v69];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_115;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_118;
      }

      if (v88 >= v80)
      {
        v106 = &v27[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_122;
        }

        if (v75 < v109)
        {
          v72 = v69 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v25 = a3[1];
    if (v26 >= v25)
    {
      goto LABEL_96;
    }
  }

  v114 = *a3;
  v115 = v11[9];
  v167 = v11[2];
  v116 = (v114 + v115 * (v39 - 1));
  v164 = -v115;
  v117 = v157 - v39;
  v165 = v114;
  v155 = v115;
  v118 = v114 + v39 * v115;
  a4 = v175;
  v156 = v67;
LABEL_88:
  v162 = v39;
  v159 = v118;
  v160 = v117;
  v119 = v117;
  v161 = v116;
  while (1)
  {
    v176 = v119;
    v120 = v167;
    v167();
    v121 = (v120)(v178, v116, a4);
    v122 = v170;
    v123 = MEMORY[0x25F8A3030](v121);
    v124 = MEMORY[0x25F8A2FB0](v123);
    v126 = v125;
    v127 = *v169;
    v128 = v172;
    v129 = (*v169)(v122, v172);
    v181 = v124;
    v182 = v126;
    v130 = v171;
    v131 = MEMORY[0x25F8A3030](v129);
    v132 = MEMORY[0x25F8A2FB0](v131);
    v134 = v133;
    v135 = v130;
    a4 = v175;
    v127(v135, v128);
    v179 = v132;
    v180 = v134;
    sub_25DD07E24();
    v136 = sub_25DD96F84();

    v137 = *v174;
    (*v174)(v178, a4);
    result = (v137)(v177, a4);
    if (v136 != -1)
    {
LABEL_87:
      v39 = v162 + 1;
      v116 = &v161[v155];
      v117 = v160 - 1;
      v118 = v159 + v155;
      v26 = v156;
      if (v162 + 1 != v156)
      {
        goto LABEL_88;
      }

      a3 = v153;
      v11 = v152;
      v27 = v154;
      goto LABEL_36;
    }

    v138 = v176;
    if (!v165)
    {
      break;
    }

    v139 = *v168;
    v140 = v166;
    (*v168)(v166, v118, a4);
    swift_arrayInitWithTakeFrontToBack();
    v139(v116, v140, a4);
    v116 = v164 + v116;
    v118 += v164;
    v141 = __CFADD__(v138, 1);
    v119 = v138 + 1;
    if (v141)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_25DD40220(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v91 = sub_25DD969E4();
  v8 = *(v91 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v91);
  v90 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v78 - v12;
  v95 = sub_25DD96A34();
  v13 = *(v95 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v95);
  v97 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v96 = &v78 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_63;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_64;
  }

  v22 = (a2 - a1) / v20;
  v104 = a1;
  v103 = a4;
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

    v50 = a4 + v24;
    if (v24 < 1)
    {
      v53 = a4 + v24;
    }

    else
    {
      v51 = -v20;
      v83 = (v8 + 8);
      v84 = (v13 + 16);
      v81 = (v13 + 8);
      v52 = v50;
      v53 = v50;
      v93 = a1;
      v82 = a4;
      v85 = -v20;
      while (2)
      {
        while (1)
        {
          v79 = v53;
          v54 = a2 + v51;
          v94 = a2 + v51;
          v86 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v104 = a2;
              v102 = v79;
              goto LABEL_61;
            }

            v80 = v53;
            v92 = a3 + v51;
            v57 = v52 + v51;
            v58 = *v84;
            v59 = v95;
            v88 = a3;
            v58();
            v60 = (v58)(v97, v54, v59);
            v61 = v89;
            v62 = MEMORY[0x25F8A3030](v60);
            v63 = MEMORY[0x25F8A2FB0](v62);
            v65 = v64;
            v87 = v64;
            v66 = *v83;
            v67 = v61;
            v68 = v91;
            v69 = (*v83)(v67, v91);
            v100 = v63;
            v101 = v65;
            v70 = v90;
            v71 = MEMORY[0x25F8A3030](v69);
            v72 = MEMORY[0x25F8A2FB0](v71);
            v74 = v73;
            v66(v70, v68);
            v98 = v72;
            v99 = v74;
            sub_25DD07E24();
            v75 = sub_25DD96F84();

            v76 = *v81;
            (*v81)(v97, v59);
            v76(v96, v59);
            if (v75 == -1)
            {
              break;
            }

            v53 = v57;
            a3 = v92;
            if (v88 < v52 || v92 >= v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v93;
              v54 = v94;
              v55 = v82;
            }

            else
            {
              a1 = v93;
              v54 = v94;
              v55 = v82;
              if (v88 != v52)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v52 = v57;
            v56 = v57 > v55;
            v51 = v85;
            a2 = v86;
            if (!v56)
            {
              goto LABEL_59;
            }
          }

          a3 = v92;
          if (v88 < v86 || v92 >= v86)
          {
            break;
          }

          a1 = v93;
          a2 = v94;
          v77 = v82;
          v53 = v80;
          v51 = v85;
          if (v88 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v52 <= v77)
          {
            goto LABEL_59;
          }
        }

        a2 = v94;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v93;
        v53 = v80;
        v51 = v85;
        if (v52 > v82)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v104 = a2;
    v102 = v53;
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

    v88 = a4 + v23;
    v102 = a4 + v23;
    v92 = a3;
    if (v23 >= 1 && a2 < a3)
    {
      v26 = *(v13 + 16);
      v84 = (v8 + 8);
      v85 = v26;
      v86 = v20;
      v87 = v13 + 16;
      v83 = (v13 + 8);
      v27 = (v8 + 8);
      do
      {
        v93 = a1;
        v94 = a2;
        v28 = v95;
        v29 = v85;
        (v85)();
        v30 = v29(v97, a4, v28);
        v31 = v89;
        v32 = MEMORY[0x25F8A3030](v30);
        v33 = MEMORY[0x25F8A2FB0](v32);
        v35 = v34;
        v36 = *v27;
        v37 = v91;
        v38 = (*v27)(v31, v91);
        v100 = v33;
        v101 = v35;
        v39 = v90;
        v40 = MEMORY[0x25F8A3030](v38);
        v41 = MEMORY[0x25F8A2FB0](v40);
        v43 = v42;
        v36(v39, v37);
        v98 = v41;
        v99 = v43;
        sub_25DD07E24();
        v44 = sub_25DD96F84();

        v45 = *v83;
        (*v83)(v97, v28);
        v45(v96, v28);
        if (v44 == -1)
        {
          v47 = v86;
          v46 = v93;
          v49 = v94 + v86;
          if (v93 < v94 || v93 >= v49)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v93 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v49;
        }

        else
        {
          v46 = v93;
          a2 = v94;
          v47 = v86;
          v48 = a4 + v86;
          if (v93 < a4 || v93 >= v48)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v93 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v103 = v48;
          a4 += v47;
        }

        a1 = v46 + v47;
        v104 = a1;
      }

      while (a4 < v88 && a2 < v92);
    }
  }

LABEL_61:
  sub_25DD409D0(&v104, &v103, &v102);
  return 1;
}

uint64_t sub_25DD409D0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_25DD96A34();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_25DD40AB4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2548, &unk_25DD9D820);
  v10 = *(sub_25DD96A34() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25DD96A34() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25DD40C8C(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v7 &= v7 - 1;
    v17 = *(a2 + 56) + 32 * v13;
    v23 = *v17;
    v24 = *(v17 + 16);
    v25 = *(v17 + 24);
    v20 = a1[2];
    v21 = a1[3];
    v22 = *(a1 + 8);
    v18 = *a1;
    v19 = a1[1];

    sub_25DD96B94();

    sub_25DD96AC4();

    result = sub_25DD979A4();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x25F8A3F90](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25DD40E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2550, &unk_25DD9C4C0);
    v3 = sub_25DD972C4();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_25DD0C2DC(v5, v6, sub_25DCFFA14);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v7;
      v14[1] = v8;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25DD40F48()
{
  result = qword_27FCC2538;
  if (!qword_27FCC2538)
  {
    sub_25DD96814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2538);
  }

  return result;
}

unint64_t sub_25DD40FA4()
{
  result = qword_27FCC2540;
  if (!qword_27FCC2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2540);
  }

  return result;
}

uint64_t ErrorHandlingMiddleware.intercept(_:body:metadata:operationID:next:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int *a7)
{
  v12 = v7;
  v12[15] = a1;
  v14 = *(*(sub_25DD96814() - 8) + 64) + 15;
  v12[16] = swift_task_alloc();
  v15 = *(*(sub_25DD96954() - 8) + 64) + 15;
  v12[17] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2558, &unk_25DD9C4D8) - 8) + 64) + 15;
  v12[18] = swift_task_alloc();
  v17 = type metadata accessor for ServerError();
  v12[19] = v17;
  v18 = *(v17 - 8);
  v12[20] = v18;
  v19 = *(v18 + 64) + 15;
  v12[21] = swift_task_alloc();
  v12[12] = *a4;
  v23 = (a7 + *a7);
  v20 = a7[1];
  v21 = swift_task_alloc();
  v12[22] = v21;
  *v21 = v12;
  v21[1] = sub_25DD41230;

  return (v23)(a1, a2, a3, v12 + 12);
}

uint64_t sub_25DD41230(uint64_t a1)
{
  v4 = *(*v2 + 176);
  v5 = *v2;
  v5[23] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_25DD413A4, 0, 0);
  }

  else
  {
    v6 = v5[21];
    v8 = v5[17];
    v7 = v5[18];
    v9 = v5[16];

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_25DD413A4()
{
  v1 = *(v0 + 184);
  *(v0 + 104) = v1;
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v6 = swift_dynamicCast();
  v7 = *(v3 + 56);
  if (v6)
  {
    v8 = *(v0 + 168);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v7(v10, 0, 1, v9);
    sub_25DD41698(v10, v8);
    v11 = *(v8 + *(v9 + 44));
    *(v0 + 112) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2560, &qword_25DD9C4E8);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 184);
      v14 = *(v0 + 168);
      v16 = *(v0 + 128);
      v15 = *(v0 + 136);
      v17 = *(v0 + 120);
      sub_25DCFE2FC((v0 + 56), v0 + 16);
      v18 = *(v0 + 40);
      v19 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
      (*(v19 + 8))(v18, v19);
      v20 = *(v0 + 40);
      v21 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
      (*(v21 + 16))(v20, v21);
      sub_25DD96964();
      v22 = *(v0 + 40);
      v23 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
      v24 = (*(v23 + 24))(v22, v23);
      MEMORY[0x25F8A43F0](v13);
      sub_25DD416FC(v14);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      goto LABEL_7;
    }

    sub_25DD416FC(*(v0 + 168));
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    v26 = &unk_27FCC2568;
    v27 = &unk_25DD9C4F0;
    v28 = v0 + 56;
  }

  else
  {
    v25 = *(v0 + 144);
    v7(v25, 1, 1, *(v0 + 152));
    v26 = &unk_27FCC2558;
    v27 = &unk_25DD9C4D8;
    v28 = v25;
  }

  v29 = sub_25DD114CC(v28, v26, v27);
  v30 = *(v0 + 184);
  v31 = *(v0 + 128);
  v32 = *(v0 + 120);
  v33 = *(v0 + 136);
  MEMORY[0x25F8A2F10](v29);
  sub_25DD967E4();
  sub_25DD96964();
  MEMORY[0x25F8A43F0](v30);
  v24 = 0;
LABEL_7:
  v34 = *(v0 + 168);
  v36 = *(v0 + 136);
  v35 = *(v0 + 144);
  v37 = *(v0 + 128);

  v38 = *(v0 + 8);

  return v38(v24);
}

uint64_t sub_25DD41698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD416FC(uint64_t a1)
{
  v2 = type metadata accessor for ServerError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD41758(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_25DD4182C;

  return ErrorHandlingMiddleware.intercept(_:body:metadata:operationID:next:)(a1, a2, a3, a4, v13, v14, a7);
}

uint64_t sub_25DD4182C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

BOOL static HTTPBody.Length.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_25DD419EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void HTTPBody.length.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

id sub_25DD41A3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1 = sub_25DD96B14();
  [v0 setName_];

  return v0;
}

uint64_t sub_25DD41AB0()
{
  v1 = *(v0 + 56);
  [v1 lock];
  v2 = *(v0 + 64);
  [v1 unlock];
  return v2;
}

id sub_25DD41AF8()
{
  v1 = *(v0 + 56);
  [v1 lock];
  v4 = *(v0 + 16);
  v3 = 0;
  if (static IterationBehavior.== infix(_:_:)(&v4, &v3) && *(v0 + 64) == 1)
  {
    sub_25DD4769C();
    swift_allocError();
    swift_willThrow();
  }

  *(v0 + 64) = 1;
  return [v1 unlock];
}

uint64_t sub_25DD41BA0(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v8 = swift_allocObject();
  sub_25DD41C08(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_25DD41C08(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *a4;
  v10 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v11 = sub_25DD96B14();
  [v10 setName_];

  *(v4 + 48) = a2;
  *(v4 + 56) = v10;
  *(v4 + 64) = 0;
  *(v4 + 40) = a1;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;
  *(v4 + 16) = v9;
  return v4;
}

uint64_t sub_25DD41CC0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v19 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25C8, &qword_25DD9C930);
  sub_25DD187C0(&qword_27FCC25D0, &qword_27FCC25C8, &qword_25DD9C930);
  sub_25DD3D184(&v19, v7, &v18);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25D8, &qword_25DD9C938);
  v10 = sub_25DD187C0(&qword_27FCC25E0, &qword_27FCC25D8, &qword_25DD9C938);
  v11 = sub_25DD3CC94(&v18, v8, v9, v10);
  v13 = v12;
  type metadata accessor for HTTPBody();
  v14 = swift_allocObject();
  v15 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v16 = sub_25DD96B14();
  [v15 setName_];

  *(v14 + 48) = v13;
  *(v14 + 56) = v15;
  *(v14 + 64) = 0;
  *(v14 + 40) = v11;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3 & 1;
  *(v14 + 16) = a4 & 1;
  return v14;
}

uint64_t sub_25DD41E70(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WrappedSyncSequence();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v29 = *a2;
  v16 = *(a2 + 8);
  v27 = *a3;
  v28 = v16;
  (*(v8 + 16))(v11, a1, a4);
  sub_25DD3D184(v11, a4, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  WitnessTable = swift_getWitnessTable();
  v19 = sub_25DD3CC94(v15, v17, v12, WitnessTable);
  v21 = v20;
  v22 = swift_allocObject();
  v23 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v24 = sub_25DD96B14();
  [v23 setName_];

  (*(v8 + 8))(a1, a4);
  *(v22 + 48) = v21;
  *(v22 + 56) = v23;
  *(v22 + 64) = 0;
  *(v22 + 40) = v19;
  *(v22 + 24) = v29;
  v25 = v27;
  *(v22 + 32) = v28;
  *(v22 + 16) = v25;
  return v22;
}

uint64_t HTTPBody.deinit()
{
  v1 = *(v0 + 48);

  return v0;
}

uint64_t HTTPBody.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t HTTPBody.hashValue.getter()
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v0);
  return sub_25DD979A4();
}

uint64_t sub_25DD421AC()
{
  v1 = *v0;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD42220()
{
  v1 = *v0;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

uint64_t HTTPBody.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  nullsub_1(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2570, &qword_25DD9C588);
  v2 = sub_25DD187C0(&qword_27FCC2578, &qword_27FCC2570, &qword_25DD9C588);
  v3 = sub_25DD3CC94(v2, v0, v1, v2);
  v5 = v4;
  v6 = swift_allocObject();
  v7 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v8 = sub_25DD96B14();
  [v7 setName_];

  *(v6 + 48) = v5;
  *(v6 + 56) = v7;
  *(v6 + 64) = 0;
  *(v6 + 40) = v3;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 1;
  return v6;
}

uint64_t HTTPBody.__allocating_init(_:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a5;
  v10 = *(a5 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25DD98100;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  *(v11 + 56) = a4;

  return sub_25DD41CC0(v11, v9, v10, 1);
}

uint64_t HTTPBody.__allocating_init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  result = swift_allocObject();
  *(result + 16) = xmmword_25DD98100;
  *(result + 32) = a1;
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 56) = a4;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {

    return sub_25DD41CC0(result, (a4 >> 1) - a3, 0, 1);
  }

  return result;
}

uint64_t sub_25DD424B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, char a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25DD98100;
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_25DD97744();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v18 != (a4 >> 1) - a3)
  {
LABEL_14:
    swift_unknownObjectRelease_n();
LABEL_2:
    sub_25DD30F58(a1, a2, a3, a4);
    v16 = v15;
    goto LABEL_9;
  }

  v16 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v16)
  {
    goto LABEL_10;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v19 = (2 * *(v16 + 16)) | 1;
  *(v14 + 32) = v16;
  *(v14 + 40) = v16 + 32;
  *(v14 + 48) = 0;
  *(v14 + 56) = v19;

  return sub_25DD41CC0(v14, a5, a6 & 1, a7 & 1);
}

uint64_t HTTPBody.__allocating_init<A>(_:length:iterationBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  v12 = *(v10 + 8);
  v14 = *v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25DD98100;
  (*(v6 + 16))(v9, a1, a4);
  *(v15 + 32) = sub_25DD97074();
  *(v15 + 40) = v16;
  *(v15 + 48) = v17;
  *(v15 + 56) = v18;
  v19 = sub_25DD41CC0(v15, v11, v12, v14);
  (*(v6 + 8))(a1, a4);
  return v19;
}

uint64_t HTTPBody.__allocating_init<A>(_:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25DD46514(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

uint64_t HTTPBody.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_25DD96E94();
  v9 = 0;
  v6 = sub_25DD46514(a1, &v8, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t HTTPBody.__allocating_init(_:length:)(uint64_t a1, uint64_t *a2)
{
  return sub_25DD42904(a1, a2, &qword_27FCC2580, &qword_25DD9DF40, &qword_27FCC2588);
}

{
  return sub_25DD42904(a1, a2, &qword_27FCC2590, &qword_25DD9C590, &qword_27FCC2598);
}

uint64_t sub_25DD42904(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24[-v13];
  v26 = *a2;
  v25 = *(a2 + 8);
  (*(v11 + 16))(&v24[-v13], a1, v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v16 = sub_25DD187C0(a5, a3, a4);
  v17 = sub_25DD3CC94(v14, v15, v10, v16);
  v19 = v18;
  v20 = swift_allocObject();
  v21 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v22 = sub_25DD96B14();
  [v21 setName_];

  (*(v11 + 8))(a1, v10);
  *(v20 + 48) = v19;
  *(v20 + 56) = v21;
  *(v20 + 64) = 0;
  *(v20 + 40) = v17;
  *(v20 + 24) = v26;
  *(v20 + 32) = v25;
  *(v20 + 16) = 0;
  return v20;
}

uint64_t HTTPBody.__allocating_init<A>(_:length:iterationBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25DD46604(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v7;
}

uint64_t HTTPBody.__allocating_init<A>(_:length:iterationBehavior:)(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v26 = a3;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  v14 = sub_25DD97234();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23[-v17];
  v25 = *a2;
  v24 = *(a2 + 8);
  LODWORD(v26) = *v26;
  (*(v10 + 16))(v13, a1, a4);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = v27;
  sub_25DD96E04();

  v29 = v25;
  v30 = v24;
  v28 = v26;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_25DD46604(v18, &v29, &v28, v14, WitnessTable);
  (*(v15 + 8))(v18, v14);
  (*(v10 + 8))(a1, a4);
  return v21;
}

{
  v32 = a6;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  v16 = sub_25DD97234();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - v18;
  v35 = *a2;
  v20 = *(a2 + 8);
  v33 = *a3;
  v34 = v20;
  v21 = a1;
  (*(v11 + 16))(v14, a1, a4);
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v32;
  sub_25DD96E04();

  WitnessTable = swift_getWitnessTable();
  v24 = sub_25DD3CC94(v19, v15, v16, WitnessTable);
  v26 = v25;
  v27 = swift_allocObject();
  v28 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v29 = sub_25DD96B14();
  [v28 setName_];

  (*(v11 + 8))(v21, a4);
  *(v27 + 48) = v26;
  *(v27 + 56) = v28;
  *(v27 + 64) = 0;
  *(v27 + 40) = v24;
  *(v27 + 24) = v35;
  v30 = v33;
  *(v27 + 32) = v34;
  *(v27 + 16) = v30;
  return v27;
}

uint64_t sub_25DD42DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[5] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD42EBC, 0, 0);
}

uint64_t sub_25DD42EBC()
{
  v1 = v0[4];
  v2 = v0[2];
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  *v2 = sub_25DD97074();
  v2[1] = v3;
  v2[2] = v4;
  v2[3] = v5;

  v6 = v0[1];

  return v6();
}

uint64_t HTTPBody.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  sub_25DD41AF8();
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v5 = sub_25DD3CF4C(v4);
  v7 = v6;
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v7;
  *a1 = &unk_25DD9C5C0;
  a1[1] = result;
  return result;
}

void *sub_25DD4302C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocBox();
  (*(*(a2 - 8) + 32))(v9, a1, a2);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = v8;
  *a4 = &unk_25DD9C5D0;
  a4[1] = result;
  return result;
}

uint64_t sub_25DD430D8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_25DD41AF8();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v6 = sub_25DD3CF4C(v4);
  v8 = v7;

  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = v8;
  *a1 = &unk_25DD9C908;
  a1[1] = result;
  return result;
}

uint64_t sub_25DD431B0()
{
  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000047, 0x800000025DDAAC50);
  v0 = sub_25DD97374();
  MEMORY[0x25F8A3200](v0);

  MEMORY[0x25F8A3200](0x2E736574796220, 0xE700000000000000);
  return 0;
}

uint64_t sub_25DD43264()
{
  v1 = *v0;
  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000047, 0x800000025DDAAC50);
  v2 = sub_25DD97374();
  MEMORY[0x25F8A3200](v2);

  MEMORY[0x25F8A3200](0x2E736574796220, 0xE700000000000000);
  return 0;
}

uint64_t sub_25DD4333C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_25DD4335C, 0, 0);
}

uint64_t sub_25DD4335C()
{
  v1 = *(v0 + 64);
  if ((*(v1 + 32) & 1) != 0 || (v2 = *(v0 + 56), *(v1 + 24) <= v2))
  {
    v6 = MEMORY[0x277D84F90] + 32;
    *(v0 + 16) = MEMORY[0x277D84F90];
    *(v0 + 24) = v6;
    *(v0 + 32) = xmmword_25DD9B570;
    sub_25DD41AF8();
    v7 = *(v0 + 64);
    v9 = *(v7 + 40);
    v8 = *(v7 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
    v10 = sub_25DD3CF4C(v9);
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    *(v0 + 72) = &unk_25DD9C920;
    *(v0 + 80) = v13;
    v14 = swift_task_alloc();
    *(v0 + 88) = v14;
    *v14 = v0;
    v14[1] = sub_25DD4357C;
    v15 = *(v0 + 80);

    return sub_25DD468E8();
  }

  else
  {
    sub_25DD47648();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_25DD4357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 88);
  v10 = *v5;
  v6[12] = a1;
  v6[13] = a2;
  v6[14] = a3;
  v6[15] = a4;
  v6[16] = v4;

  if (v4)
  {
    v8 = sub_25DD438C4;
  }

  else
  {
    v8 = sub_25DD43698;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_25DD43698()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40) >> 1;
    v3 = __OFSUB__(v2, v1);
    v4 = v2 - v1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v0 + 112);
      v6 = *(v0 + 120);
      v7 = (v6 >> 1) - v5;
      if (!__OFSUB__(v6 >> 1, v5))
      {
        v3 = __OFADD__(v4, v7);
        v8 = v4 + v7;
        if (!v3)
        {
          v9 = *(v0 + 56);
          if (v8 <= v9)
          {
            sub_25DD46D14(*(v0 + 96), *(v0 + 104), v5, v6);
            swift_unknownObjectRelease();
            v23 = (*(v0 + 72) + **(v0 + 72));
            v20 = *(*(v0 + 72) + 4);
            v21 = swift_task_alloc();
            *(v0 + 88) = v21;
            *v21 = v0;
            v21[1] = sub_25DD4357C;
            v22 = *(v0 + 80);

            v23();
          }

          else
          {
            v10 = *(v0 + 80);
            sub_25DD47648();
            swift_allocError();
            *v11 = v9;
            swift_willThrow();
            swift_unknownObjectRelease();

            v12 = *(v0 + 16);
            swift_unknownObjectRelease();
            v13 = *(v0 + 8);

            v13();
          }

          return;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v14 = *(v0 + 80);

  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  v17 = *(v0 + 32);
  v18 = *(v0 + 40);
  v19 = *(v0 + 8);

  v19(v15, v16, v17, v18);
}

uint64_t sub_25DD438C4()
{
  *(v0 + 48) = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_25DD43958, 0, 0);
}

uint64_t sub_25DD43958()
{
  v1 = v0[10];

  v2 = v0[2];
  swift_unknownObjectRelease();
  v3 = v0[16];
  v4 = v0[1];

  return v4();
}

uint64_t ArraySlice<A>.init(collecting:upTo:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD43A64;

  return sub_25DD4333C(a2);
}

uint64_t sub_25DD43A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 24);
  v12 = *v5;
  *(*v5 + 32) = v4;

  if (v4)
  {
    v13 = sub_25DD43C18;
  }

  else
  {
    v10[5] = a4;
    v10[6] = a3;
    v10[7] = a2;
    v10[8] = a1;
    v13 = sub_25DD43BAC;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_25DD43BAC()
{
  v1 = v0[2];

  v2 = v0[1];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];

  return v2(v3, v4, v5, v6);
}

uint64_t sub_25DD43C18()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

uint64_t Array<A>.init(collecting:upTo:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD43D1C;

  return sub_25DD4333C(a2);
}

uint64_t sub_25DD43D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 24);
  v10 = *v5;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v6[8] = v4;

  if (v4)
  {
    v8 = sub_25DD43F8C;
  }

  else
  {
    v8 = sub_25DD43E38;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25DD43E38()
{
  v1 = v0[7];
  if ((v1 & 1) == 0)
  {
    goto LABEL_2;
  }

  v5 = v0[4];
  sub_25DD97744();
  swift_unknownObjectRetain_n();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
    v1 = v0[7];
    v6 = MEMORY[0x277D84F90];
  }

  v7 = v0[6];
  v8 = *(v6 + 16);

  v9 = (v1 >> 1) - v7;
  if (__OFSUB__(v1 >> 1, v7))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v0[4];
  if (v8 != v9)
  {
LABEL_14:
    swift_unknownObjectRelease_n();
    v1 = v0[7];
LABEL_2:
    v2 = v0[2];
    sub_25DD30F58(v0[4], v0[5], v0[6], v1);
    v4 = v3;

    goto LABEL_10;
  }

  v11 = v0[2];
  v12 = v0[4];
  v4 = swift_dynamicCastClass();
  swift_unknownObjectRelease();

  if (!v4)
  {
    v13 = v0[4];
    swift_unknownObjectRelease();
    v4 = MEMORY[0x277D84F90];
  }

  v14 = v0[4];
LABEL_10:
  swift_unknownObjectRelease();
  v15 = v0[1];

  return v15(v4);
}

uint64_t sub_25DD43F8C()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t HTTPBody.__allocating_init<A>(_:length:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = sub_25DD46F50();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25DD98100;
  *(v14 + 32) = v7;
  *(v14 + 40) = v9;
  *(v14 + 48) = v11;
  *(v14 + 56) = v13;
  v15 = sub_25DD41CC0(v14, v5, v6, 1);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v15;
}

uint64_t sub_25DD440CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD46F50();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t HTTPBody.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD46F50();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  result = swift_allocObject();
  *(result + 16) = xmmword_25DD98100;
  *(result + 32) = v4;
  *(result + 40) = v6;
  *(result + 48) = v8;
  *(result + 56) = v10;
  if (__OFSUB__(v10 >> 1, v8))
  {
    __break(1u);
  }

  else
  {
    v12 = sub_25DD41CC0(result, (v10 >> 1) - v8, 0, 1);
    (*(*(a2 - 8) + 8))(a1, a2);
    return v12;
  }

  return result;
}

uint64_t HTTPBody.__allocating_init<A>(_:length:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v29 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v7 = sub_25DD96E34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  swift_getWitnessTable();
  v13 = sub_25DD97234();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v31 = *a2;
  v30 = *(a2 + 8);
  (*(v8 + 16))(v11, a1, v7);
  v17 = swift_allocObject();
  v18 = v29;
  *(v17 + 16) = a3;
  *(v17 + 24) = v18;
  sub_25DD96E04();

  WitnessTable = swift_getWitnessTable();
  v20 = sub_25DD3CC94(v16, v12, v13, WitnessTable);
  v22 = v21;
  v23 = swift_allocObject();
  v24 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v25 = sub_25DD96B14();
  [v24 setName_];

  (*(v8 + 8))(v28, v7);
  *(v23 + 48) = v22;
  *(v23 + 56) = v24;
  *(v23 + 64) = 0;
  *(v23 + 40) = v20;
  *(v23 + 24) = v31;
  *(v23 + 32) = v30;
  *(v23 + 16) = 0;
  return v23;
}

{
  v28 = a4;
  v29 = a1;
  v7 = sub_25DD96DE4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  swift_getWitnessTable();
  v13 = sub_25DD97234();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v31 = *a2;
  v30 = *(a2 + 8);
  (*(v8 + 16))(v11, a1, v7);
  v17 = swift_allocObject();
  v18 = v28;
  *(v17 + 16) = a3;
  *(v17 + 24) = v18;
  sub_25DD96E04();

  WitnessTable = swift_getWitnessTable();
  v20 = sub_25DD3CC94(v16, v12, v13, WitnessTable);
  v22 = v21;
  v23 = swift_allocObject();
  v24 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v25 = sub_25DD96B14();
  [v24 setName_];

  (*(v8 + 8))(v29, v7);
  *(v23 + 48) = v22;
  *(v23 + 56) = v24;
  *(v23 + 64) = 0;
  *(v23 + 40) = v20;
  *(v23 + 24) = v31;
  *(v23 + 32) = v30;
  *(v23 + 16) = 0;
  return v23;
}

uint64_t sub_25DD44504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25DD47724, 0, 0);
}

uint64_t sub_25DD447E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25DD4480C, 0, 0);
}

uint64_t sub_25DD4480C()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  *v4 = sub_25DD46F50();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_25DD44B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25DD44B48, 0, 0);
}

uint64_t sub_25DD44B48()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_getAssociatedTypeWitness();
  *v5 = sub_25DD46F50();
  v5[1] = v6;
  v5[2] = v7;
  v5[3] = v8;
  v9 = v0[1];

  return v9();
}

uint64_t String.init(collecting:upTo:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_25DD44C84;

  return sub_25DD4333C(a2);
}

uint64_t sub_25DD44C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v9 = *v5;
  v9[2] = v5;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v9[7] = v4;
  v10 = v8[9];
  v11 = *v5;
  v9[10] = v4;

  if (v4)
  {
    v12 = sub_25DD44E6C;
  }

  else
  {
    v9[11] = a4;
    v9[12] = a3;
    v12 = sub_25DD44DC4;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

void sub_25DD44DC4()
{
  v2 = v0[12];
  if (__OFSUB__(v0[11] >> 1, v2))
  {
    __break(1u);
  }

  else
  {
    v3 = v0[3];
    v4 = v0[8];
    v5 = v0[4] + v2;
    v6 = sub_25DD96B74();
    v8 = v7;

    swift_unknownObjectRelease();
    v9 = v0[1];

    v9(v6, v8);
  }
}

uint64_t sub_25DD44E6C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t HTTPBody.__allocating_init(stringLiteral:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_25DD3957C(a1, a2);

  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25DD98100;
  *(v4 + 32) = v2;
  *(v4 + 40) = v2 + 32;
  *(v4 + 48) = 0;
  *(v4 + 56) = (2 * v3) | 1;

  return sub_25DD41CC0(v4, v3, 0, 1);
}

uint64_t sub_25DD44F6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25DD3957C(*a1, *(a1 + 8));

  v4 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25DD98100;
  *(v5 + 32) = v3;
  *(v5 + 40) = v3 + 32;
  *(v5 + 48) = 0;
  *(v5 + 56) = (2 * v4) | 1;
  result = sub_25DD41CC0(v5, v4, 0, 1);
  *a2 = result;
  return result;
}

uint64_t sub_25DD45014(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25DD98100;
  *(v4 + 32) = a1;
  *(v4 + 40) = v3;
  *(v4 + 48) = 0;
  *(v4 + 56) = (2 * v2) | 1;

  return sub_25DD41CC0(v4, v2, 0, 1);
}

uint64_t sub_25DD4509C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25DD98100;
  *(v6 + 32) = a1;
  *(v6 + 40) = v5;
  *(v6 + 48) = 0;
  *(v6 + 56) = (2 * v4) | 1;
  result = sub_25DD41CC0(v6, v4, 0, 1);
  *a2 = result;
  return result;
}

uint64_t HTTPBody.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  sub_25DD21C5C(a1, a2);
  v4 = sub_25DD00CE0(a1, a2);
  v5 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25DD98100;
  *(v6 + 32) = v4;
  *(v6 + 40) = v4 + 32;
  *(v6 + 48) = 0;
  *(v6 + 56) = (2 * v5) | 1;

  v7 = sub_25DD41CC0(v6, v5, 0, 1);
  sub_25DD01088(a1, a2);

  return v7;
}

uint64_t Data.init(collecting:upTo:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD45298;

  return sub_25DD4333C(a2);
}

uint64_t sub_25DD45298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 24);
  v12 = *v5;
  *(*v5 + 32) = v4;

  if (v4)
  {
    v13 = sub_25DD43C18;
  }

  else
  {
    v10[5] = a4;
    v10[6] = a3;
    v10[7] = a2;
    v10[8] = a1;
    v13 = sub_25DD453E0;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_25DD453E0()
{
  v1 = v0[2];
  v2 = sub_25DD00A5C(v0[8], v0[7], v0[6], v0[5]);
  v4 = v3;

  v5 = v0[1];

  return v5(v2, v4);
}

uint64_t sub_25DD4548C()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25B8, &qword_25DD9C928);
  v3 = sub_25DD187C0(&qword_27FCC25C0, &qword_27FCC25B8, &qword_25DD9C928);
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_25DD4559C;

  return MEMORY[0x282200308](v0 + 16, v2, v3);
}

uint64_t sub_25DD4559C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_25DD456D8;
  }

  else
  {
    swift_endAccess();
    v3 = sub_25DD456B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD456D8()
{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1();
}

uint64_t sub_25DD4573C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[11] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_25DD457A8, 0, 0);
}

uint64_t sub_25DD457A8()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(MEMORY[0x277D856D0] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_25DD4585C;
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];

  return MEMORY[0x282200308](v0 + 2, v6, v4);
}

uint64_t sub_25DD4585C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_25DD45978;
  }

  else
  {
    swift_endAccess();
    v3 = sub_25DD47720;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD45978()
{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1();
}

uint64_t sub_25DD459FC()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  v2 = v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);

  return v3();
}

uint64_t sub_25DD45A94()
{
  v1 = *(v0 + 16);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_25DD45B80;

  return v6();
}

uint64_t sub_25DD45B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v5 + 24);
  v17 = *v5;

  v15 = *(v17 + 8);
  if (!v4)
  {
    v11 = a1;
    v12 = a2;
    v13 = a3;
    v14 = a4;
  }

  return v15(v11, v12, v13, v14);
}

uint64_t sub_25DD45CA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD45CC8, 0, 0);
}

uint64_t sub_25DD45CC8()
{
  v1 = *(v0 + 24);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_25DD45DB4;

  return v6();
}

uint64_t sub_25DD45DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 32);
  v12 = *v5;

  if (v4)
  {
    v13 = *(v12 + 8);

    return v13();
  }

  else
  {
    v10[5] = a4;
    v10[6] = a3;
    v10[7] = a2;
    v10[8] = a1;

    return MEMORY[0x2822009F8](sub_25DD45F28, 0, 0);
  }
}

uint64_t sub_25DD45F28()
{
  v1 = *(v0 + 16);
  v2 = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  *v1 = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_25DD45F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_25DD45F80, 0, 0);
}

uint64_t sub_25DD45F80()
{
  v1 = *(v0 + 48);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_25DD4606C;

  return v6();
}

uint64_t sub_25DD4606C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 64);
  v12 = *(*v5 + 32);
  v23 = *v5;
  *(*v5 + 72) = v4;

  if (v4)
  {
    if (v12)
    {
      v14 = v10[4];
      v13 = v10[5];
      swift_getObjectType();
      v15 = sub_25DD96DA4();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v21 = sub_25DD46244;
  }

  else
  {
    if (v12)
    {
      v18 = v10[4];
      v19 = v10[5];
      swift_getObjectType();
      v15 = sub_25DD96DA4();
      v17 = v20;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v10[10] = a4;
    v10[11] = a3;
    v10[12] = a2;
    v10[13] = a1;
    v21 = sub_25DD46218;
  }

  return MEMORY[0x2822009F8](v21, v15, v17);
}

uint64_t sub_25DD46218()
{
  v1 = *(v0 + 24);
  v2 = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  *v1 = vextq_s8(*(v0 + 96), *(v0 + 96), 8uLL);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_25DD46244()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_25DD462E4(uint64_t result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  sub_25DD97744();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v9 = *(result + 16);
  v5 = __OFADD__(v9, v7);
  v10 = v9 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v10;

  v11 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

uint64_t sub_25DD4639C(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_25DD97744();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + v4 != v9 + v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_25DD00E5C(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + v14), v4 - v14);
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                v19 = *v1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25DD46514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = *v7;
  v9 = *(v7 + 8);
  (*(v10 + 16))(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = *(a4 + 8);
  v13 = sub_25DD97074();
  return sub_25DD424B8(v13, v14, v15, v16, v8, v9, 1);
}

uint64_t sub_25DD46604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  v12 = *(v10 + 8);
  v14 = *v13;
  (*(v15 + 16))(v9, v17, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v19 = sub_25DD3CC94(v9, v18, a4, a5);
  v21 = v20;
  v22 = swift_allocObject();
  v23 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v24 = sub_25DD96B14();
  [v23 setName_];

  *(v22 + 48) = v21;
  *(v22 + 56) = v23;
  *(v22 + 64) = 0;
  *(v22 + 40) = v19;
  *(v22 + 24) = v11;
  *(v22 + 32) = v12;
  *(v22 + 16) = v14;
  return v22;
}

uint64_t sub_25DD46790(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1BF14;

  return sub_25DD42DE0(a1, a2, v6, v7, v8);
}

uint64_t sub_25DD46854()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD47728;

  return sub_25DD459DC(v2);
}

uint64_t sub_25DD468E8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25DD47728;

  return sub_25DD4546C(v0);
}

uint64_t sub_25DD46978()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25DD47728;

  return sub_25DD4573C(v4, v2, v3);
}

void *sub_25DD46A20(void *result)
{
  v2 = *(v1 + 24);
  v34 = *(v1 + 16);
  v3 = ((v2 >> 1) - v34);
  if (__OFSUB__(v2 >> 1, v34))
  {
    goto LABEL_49;
  }

  v4 = result[4];
  v31 = result[3] >> 1;
  if (v4 == v31)
  {
    return result;
  }

  v30 = result[2];
  if (v4 < v30 || v4 >= v31)
  {
    goto LABEL_50;
  }

  v6 = v1;
  v7 = v4 + 1;
  v8 = *(result[1] + v4);
  v29 = result[1];
  while (!__OFADD__(v3, 1))
  {
    v35 = sub_25DD30B6C(v3, (v3 + 1), *v6, v6[1], v34, v2);
    v9 = sub_25DD30D20();
    v10 = v6;
    sub_25DD30D3C(&v35, v3, 0, v9);

    v11 = v6[3];
    v12 = v11 >> 1;
    v34 = v6[2];
    v13 = (v11 >> 1) - v34;
    if (__OFSUB__(v11 >> 1, v34))
    {
      goto LABEL_44;
    }

    v14 = v6[1];
    v32 = *v6;
    v33 = v6[3];
    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_25DD97744();
    swift_unknownObjectRetain();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = MEMORY[0x277D84F90];
    }

    v16 = *(v15 + 16);
    if (v14 + v34 + v13 != v15 + v16 + 32)
    {

LABEL_19:
      v17 = v13;
      goto LABEL_22;
    }

    v18 = *(v15 + 24);

    v19 = (v18 >> 1) - v16;
    v20 = __OFADD__(v13, v19);
    v17 = (v13 + v19);
    if (v20)
    {
      goto LABEL_48;
    }

    v6 = v10;
LABEL_22:
    if (v3 >= v17)
    {
      v22 = 0;
    }

    else
    {
      v3[v14 + v34] = v8;
      v21 = v3 + 1;
      if (v7 != v31)
      {
        v23 = 0;
        while (1)
        {
          if (v7 < v30)
          {
            goto LABEL_42;
          }

          v24 = v23;
          if (v7 + v23 >= v31)
          {
            goto LABEL_42;
          }

          v8 = *(v29 + v7 + v23);
          if (!(v21 - v17 + v23))
          {
            break;
          }

          v3[v34 + 1 + v14 + v23++] = v8;
          if (!(v7 - v31 + v24 + 1))
          {
            v8 = 0;
            v3 = &v21[v23];
            v7 = v31;
LABEL_33:
            v22 = &v21[v24] < v17;
            goto LABEL_34;
          }
        }

        v7 += v23 + 1;
        v3 = v17;
        goto LABEL_33;
      }

      v8 = 0;
      v22 = 1;
      v7 = v31;
      ++v3;
    }

LABEL_34:
    v2 = v33;
    v25 = &v3[-v13];
    if (__OFSUB__(v3, v13))
    {
      goto LABEL_45;
    }

    if (v25)
    {
      sub_25DD97744();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x277D84F90];
      }

      v26 = result[2];
      v20 = __OFADD__(v26, v25);
      v27 = &v25[v26];
      if (v20)
      {
        goto LABEL_46;
      }

      result[2] = v27;

      v28 = &v25[v12];
      if (__OFADD__(v12, v25))
      {
        goto LABEL_47;
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v2 = v33 & 1 | (2 * v28);
      v6[3] = v2;
    }

    if (v22)
    {
      return result;
    }
  }

  __break(1u);
LABEL_44:
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
  __break(1u);
  return result;
}

void *sub_25DD46D14(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v32 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v16 = v9;
    goto LABEL_10;
  }

  v13 = *v4;
  v12 = v4[1];
  sub_25DD97744();
  swift_unknownObjectRetain();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

  v15 = *(v14 + 16);
  if (v12 + v8 + v9 != v14 + v15 + 32)
  {

    goto LABEL_8;
  }

  v17 = *(v14 + 24);

  v18 = (v17 >> 1) - v15;
  v19 = __OFADD__(v9, v18);
  v16 = v9 + v18;
  if (v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v16 < result)
  {
    if (v16 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = 2 * v16;
    if (v20 > result)
    {
      result = v20;
    }
  }

  result = sub_25DD4639C(result);
  v22 = v4[2];
  v21 = v4[3];
  v23 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_37;
  }

  v24 = (v4[1] + (v21 >> 1));
  if ((v21 & 1) == 0)
  {
LABEL_21:
    v28 = v23;
    goto LABEL_23;
  }

  v25 = *v4;
  sub_25DD97744();
  swift_unknownObjectRetain();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = MEMORY[0x277D84F90];
  }

  v27 = *(v26 + 16);
  if (v24 != (v26 + v27 + 32))
  {

    goto LABEL_21;
  }

  v29 = *(v26 + 24);

  v30 = (v29 >> 1) - v27;
  v19 = __OFADD__(v23, v30);
  v28 = v23 + v30;
  if (v19)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v31 = v28 - v23;
  if (__OFSUB__(v28, v23))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v31 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v24, (a2 + a3), v6);
  if (v6 > 0)
  {
    result = (v23 + v6);
    if (__OFADD__(v23, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_25DD462E4(result);
  }

LABEL_31:
  if (v6 == v31)
  {
    v34[0] = v32;
    v34[1] = a2;
    v34[2] = a3;
    v34[3] = a4;
    v34[4] = v5;
    return sub_25DD46A20(v34);
  }

  return result;
}

uint64_t sub_25DD46F50()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_25DD97004();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  result = sub_25DD96D94();
  v4 = (2 * *(result + 16)) | 1;
  return result;
}

uint64_t sub_25DD47048(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25DD1C68C;

  return sub_25DD44504(a1, a2, v7, v6);
}

uint64_t sub_25DD470FC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25DD1C68C;

  return sub_25DD447E8(a1, a2, v7, v6);
}

uint64_t sub_25DD471B0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD44B20(a1, a2, v6, v7, v8);
}

unint64_t sub_25DD472D0()
{
  result = qword_27FCC25A0;
  if (!qword_27FCC25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC25A0);
  }

  return result;
}

uint64_t sub_25DD4738C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HTTPBody();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPBody.Length(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HTTPBody.Length(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_25DD47434(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD47450(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_25DD47490()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD47524;

  return sub_25DD459DC(v2);
}

uint64_t sub_25DD47524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 16);
  v12 = *v4;

  v10 = *(v12 + 8);

  return v10(a1, a2, a3, a4);
}

unint64_t sub_25DD47648()
{
  result = qword_27FCC9010;
  if (!qword_27FCC9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC9010);
  }

  return result;
}

unint64_t sub_25DD4769C()
{
  result = qword_27FCC9018[0];
  if (!qword_27FCC9018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCC9018);
  }

  return result;
}

uint64_t dispatch thunk of ServerMiddleware.intercept(_:body:metadata:operationID:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 8);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = sub_25DD3D8CC;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t UniversalClient.serverURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25DD96704();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UniversalClient.converter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UniversalClient() + 20);

  return sub_25DD1C360(v3, a1);
}

uint64_t type metadata accessor for UniversalClient()
{
  result = qword_28155EBF0;
  if (!qword_28155EBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UniversalClient.transport.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for UniversalClient() + 24);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_25DCFE2FC(a1, v1 + v3);
}

uint64_t UniversalClient.middlewares.getter()
{
  v1 = *(v0 + *(type metadata accessor for UniversalClient() + 28));
}

uint64_t UniversalClient.middlewares.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UniversalClient() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25DD47B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25DD96704();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for UniversalClient();
  v12 = a5 + v11[5];
  v13 = *(a2 + 112);
  *(v12 + 96) = *(a2 + 96);
  *(v12 + 112) = v13;
  *(v12 + 128) = *(a2 + 128);
  *(v12 + 144) = *(a2 + 144);
  v14 = *(a2 + 48);
  *(v12 + 32) = *(a2 + 32);
  *(v12 + 48) = v14;
  v15 = *(a2 + 80);
  *(v12 + 64) = *(a2 + 64);
  *(v12 + 80) = v15;
  v16 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v16;
  result = sub_25DCFE2FC(a3, a5 + v11[6]);
  *(a5 + v11[7]) = a4;
  return result;
}

uint64_t sub_25DD47C24@<X0>(uint64_t a1@<X8>)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_25DD19594(v5);
  sub_25DD195AC(&v4);
  sub_25DD195B8(v3);
  return Configuration.init(dateTranscoder:jsonEncodingOptions:multipartBoundaryGenerator:xmlCoder:)(v5, &v4, v3, v6, a1);
}

uint64_t UniversalClient.init(serverURL:configuration:transport:middlewares:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25DD96704();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a5, a1, v10);
  sub_25DD19D54(a2, v14);
  v12 = type metadata accessor for UniversalClient();
  Converter.init(configuration:)(v14, (a5 + v12[5]));
  sub_25DD1A5C0(a2);
  (*(v11 + 8))(a1, v10);
  result = sub_25DCFE2FC(a3, a5 + v12[6]);
  *(a5 + v12[7]) = a4;
  return result;
}

uint64_t UniversalClient.send<A, B>(input:forOperation:serializer:deserializer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[21] = v25;
  v9[22] = v8;
  v9[19] = a8;
  v9[20] = v24;
  v9[17] = a6;
  v9[18] = a7;
  v9[15] = a4;
  v9[16] = a5;
  v9[13] = a2;
  v9[14] = a3;
  v9[12] = a1;
  v10 = sub_25DD96984();
  v9[23] = v10;
  v11 = *(v10 - 8);
  v9[24] = v11;
  v12 = *(v11 + 64) + 15;
  v9[25] = swift_task_alloc();
  v13 = *(v24 - 8);
  v9[26] = v13;
  v9[27] = *(v13 + 64);
  v9[28] = swift_task_alloc();
  v14 = type metadata accessor for UniversalClient();
  v9[29] = v14;
  v15 = *(v14 - 8);
  v9[30] = v15;
  v9[31] = *(v15 + 64);
  v9[32] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25E8, &qword_25DD9CB48);
  v9[33] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v9[34] = swift_task_alloc();
  v18 = sub_25DD968B4();
  v9[35] = v18;
  v19 = *(v18 - 8);
  v9[36] = v19;
  v9[37] = *(v19 + 64);
  v9[38] = swift_task_alloc();
  v9[39] = swift_task_alloc();
  v20 = sub_25DD96704();
  v9[40] = v20;
  v21 = *(v20 - 8);
  v9[41] = v21;
  v9[42] = *(v21 + 64);
  v9[43] = swift_task_alloc();
  v9[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD48058, 0, 0);
}

uint64_t sub_25DD48058()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v3 + 16);
  v10 = *(v0 + 104);
  *(v0 + 360) = v9;
  *(v0 + 368) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16 = *(v0 + 128);
  v9(v1, v4, v2);
  v11 = swift_task_alloc();
  *(v0 + 376) = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  *(v11 + 32) = v16;
  *(v11 + 48) = v10;
  v12 = swift_task_alloc();
  *(v0 + 384) = v12;
  v12[2] = v6;
  v12[3] = v5;
  v12[4] = v8;
  v12[5] = v7;
  v12[6] = v10;
  v13 = swift_task_alloc();
  *(v0 + 392) = v13;
  *v13 = v0;
  v13[1] = sub_25DD481AC;
  v14 = *(v0 + 272);

  return sub_25DD49348(v14, dword_25DD9CB58, v11, sub_25DD4A50C, v12);
}

uint64_t sub_25DD481AC()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v8 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = sub_25DD48FE8;
  }

  else
  {
    v6 = *(v2 + 376);
    v5 = *(v2 + 384);

    v4 = sub_25DD482D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DD482D0()
{
  v72 = *(v0 + 360);
  v73 = *(v0 + 368);
  v58 = *(v0 + 352);
  v104 = *(v0 + 344);
  v87 = *(v0 + 336);
  v75 = *(v0 + 328);
  v1 = *(v0 + 312);
  v98 = *(v0 + 304);
  v101 = *(v0 + 320);
  v63 = *(v0 + 296);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 256);
  v67 = v4;
  v5 = *(v0 + 240);
  v52 = v5;
  v55 = *(v0 + 248);
  v93 = *(v0 + 232);
  v6 = *(v0 + 224);
  v78 = v6;
  v60 = *(v0 + 216);
  v7 = *(v0 + 208);
  v8 = *(v0 + 176);
  v90 = v8;
  v84 = *(v0 + 120);
  v50 = *(*(v0 + 272) + *(*(v0 + 264) + 48));
  v81 = *(v0 + 112);
  v9 = *(v0 + 104);
  *(v0 + 408) = v50;
  v74 = *(v2 + 32);
  v95 = *(v0 + 160);
  v71 = v3;
  v74(v1);
  sub_25DD4C7F8(v8, v4, type metadata accessor for UniversalClient);
  v70 = *(v7 + 16);
  v70(v6, v9);
  v69 = *(v2 + 16);
  v69(v98, v1, v3);
  v72(v104, v58, v101);
  v10 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v11 = (v55 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v7 + 80);
  v53 = v63 + 7;
  v56 = (v12 + v11 + 16) & ~v12;
  v13 = *(v2 + 80);
  v51 = v60 + v13;
  v61 = (v56 + v60 + v13) & ~v13;
  v64 = (v61 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v75 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v95;
  sub_25DD4C584(v67, v15 + v10, type metadata accessor for UniversalClient);
  v16 = (v15 + v11);
  *v16 = v81;
  v16[1] = v84;
  v68 = *(v7 + 32);
  v68(v15 + v56, v78, v95);
  (v74)(v15 + v61, v98, v71);
  *(v15 + v64) = v50;
  v17 = *(v75 + 32);
  v17(v15 + ((v64 + v14 + 8) & ~v14), v104, v101);
  v18 = *(v90 + *(v93 + 28));
  v19 = *(v18 + 16);
  if (v19)
  {
    v91 = *(v0 + 368);
    v88 = *(v0 + 360);
    v85 = *(v0 + 352);
    v82 = *(v0 + 344);
    v20 = *(v0 + 336);
    v76 = *(v0 + 312);
    v79 = *(v0 + 320);
    v21 = *(v0 + 304);
    v49 = *(v0 + 280);
    v66 = v17;
    v22 = v18;
    v23 = *(v0 + 224);
    v102 = *(v0 + 120);
    v94 = *(v0 + 112);
    v24 = *(v0 + 104);
    v25 = v0;
    v96 = v19 - 1;
    v26 = (v12 + 104) & ~v12;
    v65 = (v51 + v26) & ~v13;
    v59 = (((v65 + v53) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14;
    v62 = (v65 + v53) & 0xFFFFFFFFFFFFFFF8;
    v99 = v19;
    v57 = v22;
    v105 = *(v25 + 160);
    sub_25DD08A7C(v22 + 40 * v19 - 8, v25 + 16);
    sub_25DCFE2FC((v25 + 16), v25 + 56);
    v27 = v23;
    (v70)(v23, v24, v105);
    v69(v21, v76, v49);
    v28 = v79;
    v88(v82, v85, v79);
    v29 = swift_allocObject();
    *(v29 + 16) = v105;
    sub_25DCFE2FC((v25 + 56), v29 + 32);
    *(v29 + 72) = v94;
    *(v29 + 80) = v102;
    *(v29 + 88) = &unk_25DD9CB70;
    *(v29 + 96) = v15;
    v54 = v26;
    v68(v29 + v26, v27, v105);
    (v74)(v29 + v65, v21, v49);
    v30 = v50;
    *(v29 + v62) = v50;
    v66(v29 + v59, v82, v79);
    if (v96)
    {
      v31 = v96;
      v0 = v99 - 2;
      v32 = *(v57 + 16);
      v103 = *(v25 + 120);

      if (v99 - 2 >= v32)
      {
LABEL_7:
        __break(1u);
      }

      else
      {
        v0 = v25;
        v33 = v57 + 40 * v99 - 48;
        while (1)
        {
          v100 = v29;
          v86 = *(v0 + 360);
          v89 = *(v0 + 368);
          v83 = *(v0 + 352);
          v34 = *(v0 + 312);
          v77 = *(v0 + 344);
          v80 = *(v0 + 320);
          v35 = *(v0 + 304);
          v36 = *(v0 + 280);
          v92 = v36;
          v37 = *(v0 + 224);
          v97 = *(v0 + 112);
          v28 = v30;
          v38 = *(v0 + 104);
          v106 = *(v0 + 160);
          sub_25DD08A7C(v33, v0 + 16);
          sub_25DCFE2FC((v0 + 16), v0 + 56);
          (v70)(v37, v38, v106);
          v69(v35, v34, v36);
          v86(v77, v83, v80);
          v29 = swift_allocObject();
          *(v29 + 16) = v106;
          sub_25DCFE2FC((v0 + 56), v29 + 32);
          *(v29 + 72) = v97;
          *(v29 + 80) = v103;
          *(v29 + 88) = &unk_25DD9CB80;
          *(v29 + 96) = v100;
          v68(v29 + v54, v37, v106);
          (v74)(v29 + v65, v35, v92);
          *(v29 + v62) = v28;
          v66(v29 + v59, v77, v80);
          if (!--v31)
          {
            break;
          }

          v39 = *(v57 + 16);
          v103 = *(v0 + 120);

          v33 -= 40;
          v30 = v28;
          if (v31 > v39)
          {
            goto LABEL_7;
          }
        }
      }

      v30 = v28;
    }

    else
    {
      v0 = v25;
    }

    v40 = *(v0 + 120);

    v41 = &unk_25DD9CB80;
    v15 = v29;
  }

  else
  {
    v48 = *(v0 + 120);
    v41 = &unk_25DD9CB70;
    v30 = v50;
  }

  *(v0 + 416) = v30;
  *(v0 + 424) = v15;

  v107 = (v41 + *v41);
  v42 = v41[1];
  v43 = swift_task_alloc();
  *(v0 + 432) = v43;
  *v43 = v0;
  v43[1] = sub_25DD48AD4;
  v44 = *(v0 + 352);
  v45 = *(v0 + 312);
  v46 = *(v0 + 200);

  return v107(v46, v45, v30, v44);
}

uint64_t sub_25DD48AD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v7 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v5 = sub_25DD490E4;
  }

  else
  {
    v5 = sub_25DD48BE8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25DD48BE8()
{
  v1 = *(v0 + 440);
  v15 = *(v0 + 408);
  v2 = *(v0 + 352);
  v3 = *(v0 + 312);
  v4 = *(v0 + 200);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v14 = *(v0 + 112);
  v7 = *(v0 + 104);
  v8 = swift_task_alloc();
  *(v0 + 456) = v8;
  v9 = *(v0 + 144);
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v9;
  *(v8 + 48) = v4;
  *(v8 + 56) = v1;
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v10 + 32) = v14;
  *(v10 + 48) = v7;
  *(v10 + 56) = v3;
  *(v10 + 64) = v15;
  *(v10 + 72) = v2;
  *(v10 + 80) = v4;
  *(v10 + 88) = v1;
  v11 = swift_task_alloc();
  *(v0 + 472) = v11;
  *v11 = v0;
  v11[1] = sub_25DD48D40;
  v12 = *(v0 + 96);

  return sub_25DD49348(v12, &unk_25DD9CB90, v8, sub_25DD4C3B8, v10);
}

uint64_t sub_25DD48D40()
{
  v2 = *(*v1 + 472);
  v3 = *(*v1 + 464);
  v4 = *(*v1 + 456);
  v7 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v5 = sub_25DD49200;
  }

  else
  {
    v5 = sub_25DD48E94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25DD48E94()
{
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[44];
  v5 = v0[41];
  v14 = v0[40];
  v15 = v0[43];
  v6 = v0[39];
  v7 = v0[36];
  v13 = v0[35];
  v16 = v0[38];
  v17 = v0[34];
  v18 = v0[32];
  v19 = v0[28];
  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[23];

  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v6, v13);
  (*(v5 + 8))(v4, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_25DD48FE8()
{
  v2 = v0[47];
  v1 = v0[48];

  v3 = v0[50];
  v4 = v0[43];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[34];
  v8 = v0[32];
  v9 = v0[28];
  v10 = v0[25];
  (*(v0[41] + 8))(v0[44], v0[40]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_25DD490E4()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[36];

  (*(v5 + 8))(v3, v4);
  v6 = v0[56];
  v7 = v0[43];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[34];
  v11 = v0[32];
  v12 = v0[28];
  v13 = v0[25];
  (*(v0[41] + 8))(v0[44], v0[40]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_25DD49200()
{
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[36];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  v10 = v0[60];
  v11 = v0[43];
  v13 = v0[38];
  v12 = v0[39];
  v14 = v0[34];
  v15 = v0[32];
  v16 = v0[28];
  v17 = v0[25];
  (*(v0[41] + 8))(v0[44], v0[40]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_25DD49348(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v8 = type metadata accessor for ClientError();
  v5[5] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v13 = (a2 + *a2);
  v10 = a2[1];
  v11 = swift_task_alloc();
  v5[8] = v11;
  *v11 = v5;
  v11[1] = sub_25DD4948C;

  return v13(a1);
}

uint64_t sub_25DD4948C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD495D4, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_25DD495D4()
{
  v1 = v0[9];
  v0[2] = v1;
  v2 = v0[7];
  v3 = v0[5];
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v5 = swift_dynamicCast();
  v6 = v0[9];
  if (v5)
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    MEMORY[0x25F8A43F0](v0[9]);
    sub_25DD4C584(v7, v8, type metadata accessor for ClientError);
    sub_25DD2A584();
    swift_allocError();
    sub_25DD4C7F8(v8, v10, type metadata accessor for ClientError);
    swift_willThrow();
    sub_25DD4C860(v8);
    v11 = v0[2];
  }

  else
  {
    v13 = v0[3];
    v12 = v0[4];
    MEMORY[0x25F8A43F0](v0[2]);
    v13(v6);
    swift_willThrow();
    v11 = v6;
  }

  MEMORY[0x25F8A43F0](v11);
  v15 = v0[6];
  v14 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_25DD49738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v91 = a8;
  v90 = a7;
  v94 = a2;
  v95 = a5;
  v97 = a3;
  v98 = a4;
  v96 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v89 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v87 - v16;
  MEMORY[0x28223BE20](v15);
  v93 = &v87 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v87 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v87 - v23;
  MEMORY[0x28223BE20](v22);
  v88 = &v87 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v87 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v87 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25F8, &qword_25DD9CBF8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v87 - v38;
  v40 = type metadata accessor for ClientError();
  v41 = *(v40 - 1);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v87 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v104 = a6;
  v45 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v46 = swift_dynamicCast();
  v47 = *(v41 + 56);
  if (v46)
  {
    v47(v39, 0, 1, v40);
    sub_25DD4C584(v39, v44, type metadata accessor for ClientError);
    v48 = v40[6];
    sub_25DD12B90(&v44[v48], v33, &qword_27FCC2488, &unk_25DD99F10);
    v49 = sub_25DD968B4();
    v50 = *(v49 - 8);
    v51 = *(v50 + 48);
    if (v51(v33, 1, v49) == 1)
    {
      sub_25DD12B90(v96, v35, &qword_27FCC2488, &unk_25DD99F10);
      v52 = v51(v33, 1, v49);
      v53 = v92;
      v54 = v88;
      if (v52 != 1)
      {
        sub_25DD114CC(v33, &qword_27FCC2488, &unk_25DD99F10);
      }
    }

    else
    {
      (*(v50 + 32))(v35, v33, v49);
      (*(v50 + 56))(v35, 0, 1, v49);
      v53 = v92;
      v54 = v88;
    }

    sub_25DD29864(v35, &v44[v48], &qword_27FCC2488, &unk_25DD99F10);
    v60 = v40[7];
    v61 = *&v44[v60];
    if (!v61)
    {
    }

    *&v44[v60] = v61;
    v62 = v40[8];
    sub_25DD12B90(&v44[v62], v24, &qword_27FCC2460, &qword_25DD99E20);
    v63 = sub_25DD96704();
    v64 = *(v63 - 8);
    v65 = *(v64 + 48);
    if (v65(v24, 1, v63) == 1)
    {
      sub_25DD12B90(v97, v54, &qword_27FCC2460, &qword_25DD99E20);
      v66 = v65(v24, 1, v63);
      v67 = v93;
      if (v66 != 1)
      {
        sub_25DD114CC(v24, &qword_27FCC2460, &qword_25DD99E20);
      }
    }

    else
    {
      (*(v64 + 32))(v54, v24, v63);
      (*(v64 + 56))(v54, 0, 1, v63);
      v67 = v93;
    }

    sub_25DD29864(v54, &v44[v62], &qword_27FCC2460, &qword_25DD99E20);
    v69 = v40[9];
    sub_25DD12B90(&v44[v69], v53, &qword_27FCC2490, &unk_25DD99F20);
    v70 = sub_25DD96984();
    v71 = *(v70 - 8);
    v72 = *(v71 + 48);
    if (v72(v53, 1, v70) == 1)
    {
      sub_25DD12B90(v98, v67, &qword_27FCC2490, &unk_25DD99F20);
      if (v72(v53, 1, v70) != 1)
      {
        sub_25DD114CC(v53, &qword_27FCC2490, &unk_25DD99F20);
      }
    }

    else
    {
      (*(v71 + 32))(v67, v53, v70);
      (*(v71 + 56))(v67, 0, 1, v70);
    }

    sub_25DD29864(v67, &v44[v69], &qword_27FCC2490, &unk_25DD99F20);
    v73 = v40[10];
    v74 = *&v44[v73];
    if (!v74)
    {
    }

    *&v44[v73] = v74;
    sub_25DD2A584();
    v75 = swift_allocError();
    sub_25DD4C584(v44, v76, type metadata accessor for ClientError);
  }

  else
  {
    v47(v39, 1, 1, v40);
    sub_25DD114CC(v39, &qword_27FCC25F8, &qword_25DD9CBF8);
    v103 = a6;
    v55 = a6;
    if (swift_dynamicCast())
    {
      v104 = v99;
      v105 = v100;
      v106 = v101;
      v107 = v102;
      v56 = sub_25DD2B858();
      v58 = v57;
      v59 = sub_25DD2B78C();
      sub_25DD2B824(&v104);
      v93 = v58;
      if (v59)
      {
        a6 = v59;
      }

      else
      {
        v77 = a6;
      }
    }

    else
    {
      v100 = 0u;
      v101 = 0u;
      v99 = 0u;
      v102 = -1;
      sub_25DD114CC(&v99, &qword_27FCC2600, &unk_25DD9CCE0);
      v68 = a6;
      v93 = 0xE700000000000000;
      v56 = 0x6E776F6E6B6E55;
    }

    *(&v105 + 1) = a10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v104);
    (*(*(a10 - 8) + 16))(boxed_opaque_existential_0, a9, a10);
    sub_25DD12B90(v96, v30, &qword_27FCC2488, &unk_25DD99F10);
    v79 = v87;
    sub_25DD12B90(v97, v87, &qword_27FCC2460, &qword_25DD99E20);
    v80 = v89;
    sub_25DD12B90(v98, v89, &qword_27FCC2490, &unk_25DD99F20);
    sub_25DD2A584();
    v75 = swift_allocError();
    v82 = v81;
    v83 = v95;

    v84 = v91;

    v85 = v94;

    ClientError.init(operationID:operationInput:request:requestBody:baseURL:response:responseBody:causeDescription:underlyingError:)(v90, v84, &v104, v30, v85, v79, v80, v83, v82, v56, v93, a6);
  }

  return v75;
}

uint64_t sub_25DD4A110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25DD4A134, 0, 0);
}

uint64_t sub_25DD4A134()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 24))(*(v0 + 16), *(v0 + 40));
  v3 = *(v0 + 16);
  *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25E8, &qword_25DD9CB48) + 48)) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25DD4A1E4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25DD1BF14;

  return sub_25DD4A110(a1, v4, v5, v6);
}

uint64_t sub_25DD4A298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v27 - v20;
  v22 = sub_25DD968B4();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = sub_25DD96704();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v24 = sub_25DD96984();
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  v25 = sub_25DD49738(v21, 0, v17, v13, 0, a1, a2, a3, a4, a5);
  sub_25DD114CC(v13, &qword_27FCC2490, &unk_25DD99F20);
  sub_25DD114CC(v17, &qword_27FCC2460, &qword_25DD99E20);
  sub_25DD114CC(v21, &qword_27FCC2488, &unk_25DD99F10);
  return v25;
}

uint64_t sub_25DD4A51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v15;
  *(v8 + 80) = v13;
  *(v8 + 96) = v14;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00);
  *(v8 + 120) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD4A5DC, 0, 0);
}

uint64_t sub_25DD4A5DC()
{
  v1 = *(v0 + 96);
  v14 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  v8 = swift_task_alloc();
  v9 = *(v0 + 104);
  v10 = *(v0 + 64);
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v2;
  v7[7] = v10;
  *(v0 + 144) = v8;
  *(v8 + 16) = v9;
  *(v8 + 32) = v2;
  *(v8 + 40) = v10;
  *(v8 + 56) = v14;
  *(v8 + 72) = v1;
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_25DD4A728;
  v12 = *(v0 + 128);

  return sub_25DD49348(v12, dword_25DD9CC20, v7, sub_25DD4C7E4, v8);
}

uint64_t sub_25DD4A728()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_25DD4A908;
  }

  else
  {
    v6 = *(v2 + 136);
    v5 = *(v2 + 144);

    v4 = sub_25DD4A84C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DD4A84C()
{
  v1 = v0[16];
  v2 = v0[2];
  v3 = *(v1 + *(v0[15] + 48));
  v4 = sub_25DD96984();
  (*(*(v4 - 8) + 32))(v2, v1, v4);

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_25DD4A908()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_25DD4A980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(v4 + 16);
  v23 = *(v4 + 24);
  v8 = *(type metadata accessor for UniversalClient() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + *(*(v7 - 8) + 80) + 16) & ~*(*(v7 - 8) + 80);
  v12 = *(*(v7 - 8) + 64);
  v13 = *(sub_25DD968B4() - 8);
  v14 = (*(v13 + 64) + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(sub_25DD96704() - 8);
  v16 = (v14 + *(v15 + 80) + 8) & ~*(v15 + 80);
  v17 = v4 + v10;
  v18 = *(v4 + v10);
  v19 = *(v17 + 8);
  v20 = *(v4 + v14);
  v21 = swift_task_alloc();
  *(v6 + 16) = v21;
  *v21 = v6;
  v21[1] = sub_25DD3D8CC;

  return sub_25DD4A51C(a1, a2, a3, a4, v4 + v9, v18, v19, v4 + v11);
}

uint64_t sub_25DD4ABD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_25DD4AC04, 0, 0);
}

uint64_t sub_25DD4AC04()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for UniversalClient() + 24));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 8);
  v15 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_25DD4AD4C;
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[4];
  v13 = v0[2];

  return v15(v13, v12, v10, v11, v8, v9, v3, v4);
}

uint64_t sub_25DD4AD4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 80) = a1;
    *(v4 + 88) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00) + 48);

    return MEMORY[0x2822009F8](sub_25DD4AEB4, 0, 0);
  }
}

uint64_t sub_25DD4AEDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a6;
  v37 = a2;
  v38 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v35 - v23;
  v25 = sub_25DD968B4();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v24, a5, v25);
  (*(v26 + 56))(v24, 0, 1, v25);
  v27 = sub_25DD96704();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v20, a7, v27);
  (*(v28 + 56))(v20, 0, 1, v27);
  v29 = sub_25DD96984();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  sub_25DD01034();
  v30 = swift_allocError();
  *v31 = a1;
  *(v31 + 48) = 15;
  v32 = a1;
  v33 = sub_25DD49738(v24, v36, v20, v16, 0, v30, v37, v38, a4, a8);
  sub_25DD114CC(v16, &qword_27FCC2490, &unk_25DD99F20);
  sub_25DD114CC(v20, &qword_27FCC2460, &qword_25DD99E20);
  sub_25DD114CC(v24, &qword_27FCC2488, &unk_25DD99F10);
  MEMORY[0x25F8A43F0](v30);
  return v33;
}

uint64_t sub_25DD4B1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v16;
  *(v8 + 96) = v14;
  *(v8 + 112) = v15;
  *(v8 + 80) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00);
  *(v8 + 136) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD4B2C4, 0, 0);
}

uint64_t sub_25DD4B2C4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v15 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  v14 = *(v0 + 64);
  v8 = swift_task_alloc();
  v9 = *(v0 + 120);
  v10 = *(v0 + 88);
  *(v7 + 16) = v5;
  *(v7 + 24) = v15;
  *(v7 + 40) = v6;
  *(v7 + 48) = v4;
  *(v7 + 56) = v14;
  *(v7 + 72) = v3;
  *(v0 + 160) = v8;
  *(v8 + 16) = v9;
  *(v8 + 32) = v4;
  *(v8 + 40) = v14;
  *(v8 + 48) = v10;
  *(v8 + 64) = v2;
  *(v8 + 72) = v1;
  *(v8 + 80) = v5;
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_25DD4B420;
  v12 = *(v0 + 144);

  return sub_25DD49348(v12, dword_25DD9CC10, v7, sub_25DD4C6D8, v8);
}

uint64_t sub_25DD4B420()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_25DD4B600;
  }

  else
  {
    v6 = *(v2 + 152);
    v5 = *(v2 + 160);

    v4 = sub_25DD4B544;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DD4B544()
{
  v1 = v0[18];
  v2 = v0[2];
  v3 = *(v1 + *(v0[17] + 48));
  v4 = sub_25DD96984();
  (*(*(v4 - 8) + 32))(v2, v1, v4);

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_25DD4B600()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_25DD4B678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4[2];
  v21 = v4[3];
  v8 = *(*(v7 - 8) + 64);
  v9 = (*(*(v7 - 8) + 80) + 104) & ~*(*(v7 - 8) + 80);
  v10 = *(sub_25DD968B4() - 8);
  v11 = (*(v10 + 64) + ((v9 + v8 + *(v10 + 80)) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_25DD96704() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = v4[10];
  v20 = v4[9];
  v16 = v4[11];
  v15 = v4[12];
  v17 = *(v4 + v11);
  v18 = swift_task_alloc();
  *(v6 + 16) = v18;
  *v18 = v6;
  v18[1] = sub_25DD3DB34;

  return sub_25DD4B1FC(a1, a2, a3, a4, (v4 + 4), v20, v14, v16);
}

uint64_t sub_25DD4B878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](sub_25DD4B8B0, 0, 0);
}

void sub_25DD4B8B0()
{
  v1 = v0[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 8);
  v14 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_25DD4B9F0;
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[4];
  v13 = v0[2];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_25DD4B9F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 96) = a1;
    *(v4 + 104) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00) + 48);

    return MEMORY[0x2822009F8](sub_25DD4BB58, 0, 0);
  }
}

uint64_t sub_25DD4BB80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v36 = a4;
  v37 = a6;
  v38 = a2;
  v39 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v36 - v23;
  v25 = sub_25DD968B4();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v24, a5, v25);
  (*(v26 + 56))(v24, 0, 1, v25);
  v27 = sub_25DD96704();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v20, a7, v27);
  (*(v28 + 56))(v20, 0, 1, v27);
  v29 = sub_25DD96984();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  sub_25DD01034();
  v30 = swift_allocError();
  v32 = v31;
  __swift_project_boxed_opaque_existential_1(a8, a8[3]);
  *v32 = swift_getDynamicType();
  *(v32 + 8) = a1;
  *(v32 + 48) = 16;
  v33 = a1;
  v34 = sub_25DD49738(v24, v37, v20, v16, 0, v30, v38, v39, v36, a9);
  sub_25DD114CC(v16, &qword_27FCC2490, &unk_25DD99F20);
  sub_25DD114CC(v20, &qword_27FCC2460, &qword_25DD99E20);
  sub_25DD114CC(v24, &qword_27FCC2488, &unk_25DD99F10);
  MEMORY[0x25F8A43F0](v30);
  return v34;
}

uint64_t sub_25DD4BECC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_25DD1BF14;

  return v12(a1, a4, a5);
}

uint64_t sub_25DD4BFE0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25DD1C68C;

  return sub_25DD4BECC(a1, v4, v5, v7, v6);
}

uint64_t sub_25DD4C0A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a6;
  v38 = a2;
  v39 = a3;
  v35 = a9;
  v36 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v34 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v34 - v24;
  v26 = sub_25DD968B4();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v25, a5, v26);
  (*(v27 + 56))(v25, 0, 1, v26);
  v28 = sub_25DD96704();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v21, a7, v28);
  (*(v29 + 56))(v21, 0, 1, v28);
  v30 = sub_25DD96984();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v17, a8, v30);
  (*(v31 + 56))(v17, 0, 1, v30);
  v32 = sub_25DD49738(v25, v37, v21, v17, v35, v36, v38, v39, a4, a10);
  sub_25DD114CC(v17, &qword_27FCC2490, &unk_25DD99F20);
  sub_25DD114CC(v21, &qword_27FCC2460, &qword_25DD99E20);
  sub_25DD114CC(v25, &qword_27FCC2488, &unk_25DD99F10);
  return v32;
}

void sub_25DD4C418()
{
  sub_25DD96704();
  if (v0 <= 0x3F)
  {
    sub_25DD4C4BC();
    if (v1 <= 0x3F)
    {
      sub_25DD4C520();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_25DD4C4BC()
{
  result = qword_28155EA50;
  if (!qword_28155EA50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28155EA50);
  }

  return result;
}

void sub_25DD4C520()
{
  if (!qword_28155E9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC25F0, &unk_25DD9CBE8);
    v0 = sub_25DD96D84();
    if (!v1)
    {
      atomic_store(v0, &qword_28155E9A0);
    }
  }
}

uint64_t sub_25DD4C584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD4C5EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_25DD1C68C;

  return sub_25DD4B878(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_25DD4C710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25DD1C68C;

  return sub_25DD4ABD8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_25DD4C7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD4C860(uint64_t a1)
{
  v2 = type metadata accessor for ClientError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UniversalServer.serverURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25DD96704();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UniversalServer.serverURL.setter(uint64_t a1)
{
  v3 = sub_25DD96704();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t (*UniversalServer.converter.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t (*UniversalServer.handler.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t UniversalServer.middlewares.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*UniversalServer.middlewares.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_25DD4CB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_25DD96704();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for UniversalServer();
  v14 = a6 + v13[7];
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  v16 = *(a2 + 80);
  *(v14 + 64) = *(a2 + 64);
  *(v14 + 80) = v16;
  v17 = *(a2 + 48);
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = v17;
  *(v14 + 144) = *(a2 + 144);
  v18 = *(a2 + 128);
  *(v14 + 112) = *(a2 + 112);
  *(v14 + 128) = v18;
  *(v14 + 96) = *(a2 + 96);
  result = (*(*(a5 - 8) + 32))(a6 + v13[8], a3, a5);
  *(a6 + v13[9]) = a4;
  return result;
}

uint64_t UniversalServer.init(serverURL:handler:configuration:middlewares:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_25DD96704();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v18[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v16, a1, v12);
  sub_25DD19D54(a3, v18);
  Converter.init(configuration:)(v18, v19);
  sub_25DD1A5C0(a3);
  (*(v13 + 8))(a1, v12);
  return sub_25DD4CB48(v16, v19, a2, a4, a5, a6);
}

uint64_t UniversalServer.handle<A, B>(request:requestBody:metadata:forOperation:using:deserializer:serializer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 208) = v23;
  *(v9 + 216) = v8;
  *(v9 + 192) = v21;
  *(v9 + 200) = v22;
  *(v9 + 176) = v19;
  *(v9 + 184) = v20;
  *(v9 + 160) = v18;
  *(v9 + 144) = a7;
  *(v9 + 152) = a8;
  *(v9 + 128) = a5;
  *(v9 + 136) = a6;
  *(v9 + 112) = a2;
  *(v9 + 120) = a3;
  *(v9 + 104) = a1;
  v11 = *(v21 - 8);
  *(v9 + 224) = v11;
  *(v9 + 232) = *(v11 + 64);
  *(v9 + 240) = swift_task_alloc();
  v12 = sub_25DD968B4();
  *(v9 + 248) = v12;
  v13 = *(v12 - 8);
  *(v9 + 256) = v13;
  *(v9 + 264) = *(v13 + 64);
  v14 = swift_task_alloc();
  v15 = *a4;
  *(v9 + 272) = v14;
  *(v9 + 280) = v15;

  return MEMORY[0x2822009F8](sub_25DD4CF08, 0, 0);
}

uint64_t sub_25DD4CF08()
{
  v78 = *(v0 + 280);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v56 = v2;
  v57 = *(v0 + 272);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v58 = v3;
  v61 = v6;
  v7 = *(v0 + 192);
  v70 = *(v0 + 136);
  v67 = *(v0 + 128);
  v8 = *(v0 + 112);
  v72 = *(v0 + 120);
  v9 = *(v0 + 264) + 7;
  v75 = *(v0 + 176);
  v10 = *(v0 + 160);
  v63 = *(v0 + 144);
  v54 = v10;
  v55 = *(v0 + 200);
  v69 = *(v1 + 16);
  v69();
  (*(v4 + 16))(v3, v6, v7);
  v11 = *(v1 + 80);
  v12 = (v11 + 72) & ~v11;
  v53 = (v12 + v9) & 0xFFFFFFFFFFFFFFF8;
  v51 = v9;
  v52 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v4 + 80) + v13 + 16) & ~*(v4 + 80);
  v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = *(v1 + 32);
  v66 = *(v7 + 16);
  *(v16 + 16) = v66;
  *(v16 + 24) = v55;
  *(v16 + 40) = v54;
  *(v16 + 56) = v67;
  *(v16 + 64) = v70;
  v68 = v17;
  v17(v16 + v12, v57, v56);
  *(v16 + v53) = v72;
  *(v16 + v52) = v78;
  *(v16 + v13) = v63;
  (*(v4 + 32))(v16 + v14, v58, v7);
  *(v16 + v15) = v75;
  v18 = *(v61 + *(v7 + 36));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = ~v11;
    v21 = *(v0 + 272);
    v79 = *(v0 + 280);
    v59 = *(v0 + 248);
    v76 = *(v0 + 128);
    v22 = *(v0 + 112);
    v23 = v19 - 1;
    v24 = v11 + 112;
    v25 = *(v0 + 120);
    v26 = v24 & v20;
    v73 = *(v0 + 136);
    v27 = ((v24 & v20) + v51) & 0xFFFFFFFFFFFFFFF8;
    v64 = *(v0 + 200);
    v71 = v18;
    sub_25DD08A7C(v18 + 40 * v19 - 8, v0 + 16);
    sub_25DCFE2FC((v0 + 16), v0 + 56);
    (v69)(v21, v22, v59);
    v28 = swift_allocObject();
    *(v28 + 16) = v66;
    *(v28 + 24) = v64;
    sub_25DCFE2FC((v0 + 56), v28 + 40);
    *(v28 + 80) = v76;
    *(v28 + 88) = v73;
    *(v28 + 96) = &unk_25DD9CC40;
    *(v28 + 104) = v16;
    v65 = v26;
    v68(v28 + v26, v21, v59);
    v60 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v62 = v27;
    *(v28 + v27) = v25;
    *(v28 + v60) = v79;
    if (v19 != 1)
    {
      v29 = *(v0 + 280);
      v30 = *(v0 + 136);
      v31 = *(v71 + 16);

      if (v19 - 2 >= v31)
      {
LABEL_7:
        __break(1u);
      }

      else
      {
        v32 = v71 + 40 * v19 - 48;
        while (1)
        {
          v80 = v28;
          v33 = *(v0 + 272);
          v34 = *(v0 + 248);
          v35 = *(v0 + 128);
          v77 = *(v0 + 120);
          v36 = *(v0 + 112);
          v74 = *(v0 + 200);
          sub_25DD08A7C(v32, v0 + 16);
          sub_25DCFE2FC((v0 + 16), v0 + 56);
          (v69)(v33, v36, v34);
          v28 = swift_allocObject();
          *(v28 + 16) = v66;
          *(v28 + 24) = v74;
          sub_25DCFE2FC((v0 + 56), v28 + 40);
          *(v28 + 80) = v35;
          *(v28 + 88) = v30;
          *(v28 + 96) = &unk_25DD9CC50;
          *(v28 + 104) = v80;
          v68(v28 + v65, v33, v34);
          *(v28 + v62) = v77;
          *(v28 + v60) = v29;
          if (!--v23)
          {
            break;
          }

          v29 = *(v0 + 280);
          v30 = *(v0 + 136);
          v37 = *(v71 + 16);

          v32 -= 40;
          if (v23 > v37)
          {
            goto LABEL_7;
          }
        }
      }
    }

    v38 = *(v0 + 280);
    v39 = *(v0 + 136);

    v40 = &unk_25DD9CC50;
    v16 = v28;
  }

  else
  {
    v50 = *(v0 + 120);
    v38 = *(v0 + 280);
    v40 = &unk_25DD9CC40;
  }

  *(v0 + 288) = v16;
  v41 = *(v0 + 184);
  v42 = *(v0 + 168);
  v43 = *(v0 + 152);
  *(v0 + 96) = v38;

  v81 = (v40 + *v40);
  v44 = v40[1];
  v45 = swift_task_alloc();
  *(v0 + 296) = v45;
  *v45 = v0;
  v45[1] = sub_25DD4D4E4;
  v46 = *(v0 + 112);
  v47 = *(v0 + 120);
  v48 = *(v0 + 104);

  return v81(v48, v46, v47, v0 + 96);
}

uint64_t sub_25DD4D4E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v7 = sub_25DD4D68C;
  }

  else
  {
    *(v4 + 312) = a1;
    v7 = sub_25DD4D60C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25DD4D60C()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[30];

  v4 = v0[1];
  v5 = v0[39];

  return v4(v5);
}

uint64_t sub_25DD4D68C()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[30];

  v4 = v0[1];
  v5 = v0[38];

  return v4();
}

uint64_t sub_25DD4D708(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v8 = type metadata accessor for ServerError();
  v5[5] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v13 = (a2 + *a2);
  v10 = a2[1];
  v11 = swift_task_alloc();
  v5[8] = v11;
  *v11 = v5;
  v11[1] = sub_25DD4D850;

  return v13(a1);
}

uint64_t sub_25DD4D850()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD4D998, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_25DD4D998()
{
  v1 = v0[9];
  v0[2] = v1;
  v2 = v0[7];
  v3 = v0[5];
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v5 = swift_dynamicCast();
  v6 = v0[9];
  if (v5)
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    MEMORY[0x25F8A43F0](v0[9]);
    sub_25DD41698(v7, v8);
    sub_25DD2D65C();
    swift_allocError();
    sub_25DD51960(v8, v10);
    swift_willThrow();
    sub_25DD416FC(v8);
    v11 = v0[2];
  }

  else
  {
    v13 = v0[3];
    v12 = v0[4];
    MEMORY[0x25F8A43F0](v0[2]);
    v13(v6);
    swift_willThrow();
    v11 = v6;
  }

  MEMORY[0x25F8A43F0](v11);
  v15 = v0[6];
  v14 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_25DD4DAE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v84 = a8;
  v87 = a7;
  v83 = a6;
  v86 = a5;
  v85 = a4;
  v90 = a1;
  v91 = a2;
  v82 = sub_25DD968B4();
  v81 = *(v82 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v93 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a10;
  v92 = sub_25DD96F04();
  v94 = *(v92 - 8);
  v13 = *(v94 + 64);
  v14 = MEMORY[0x28223BE20](v92);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v78 - v17;
  v89 = sub_25DD96F04();
  v88 = *(v89 - 8);
  v18 = *(v88 + 64);
  v19 = MEMORY[0x28223BE20](v89);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v78 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2558, &unk_25DD9C4D8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v78 - v26;
  v28 = type metadata accessor for ServerError();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v101 = a3;
  v33 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v34 = swift_dynamicCast();
  v35 = *(v29 + 56);
  if (v34)
  {
    v35(v27, 0, 1, v28);
    sub_25DD41698(v27, v32);
    v36 = *(v28 + 32);
    sub_25DD2CC78(&v32[v36], &v96);
    if (*(&v97 + 1))
    {
      sub_25DD0DD04(&v96, &v101);
      v38 = v94;
      v37 = v95;
      v39 = v80;
    }

    else
    {
      v46 = v88;
      v47 = v89;
      (*(v88 + 16))(v23, v90, v89);
      v48 = *(a9 - 8);
      v49 = (*(v48 + 48))(v23, 1, a9);
      v38 = v94;
      if (v49 == 1)
      {
        (*(v46 + 8))(v23, v47);
        v101 = 0u;
        v102 = 0u;
      }

      else
      {
        *(&v102 + 1) = a9;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v101);
        (*(v48 + 32))(boxed_opaque_existential_0, v23, a9);
      }

      v37 = v95;
      v39 = v80;
      if (*(&v97 + 1))
      {
        sub_25DD114CC(&v96, &qword_27FCC2200, &unk_25DD98EB0);
      }
    }

    sub_25DD0D564(&v101, &v32[v36]);
    v72 = *(v28 + 36);
    sub_25DD2CC78(&v32[v72], &v96);
    if (*(&v97 + 1))
    {
      sub_25DD0DD04(&v96, &v101);
LABEL_28:
      sub_25DD0D564(&v101, &v32[v72]);
      sub_25DD2D65C();
      v66 = swift_allocError();
      sub_25DD41698(v32, v76);
      return v66;
    }

    v73 = v92;
    (*(v38 + 16))(v39, v91, v92);
    v74 = *(v37 - 8);
    if ((*(v74 + 48))(v39, 1, v37) == 1)
    {
      (*(v38 + 8))(v39, v73);
      v101 = 0u;
      v102 = 0u;
      if (!*(&v97 + 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(&v102 + 1) = v37;
      v75 = __swift_allocate_boxed_opaque_existential_0(&v101);
      (*(v74 + 32))(v75, v39, v37);
      if (!*(&v97 + 1))
      {
        goto LABEL_28;
      }
    }

    sub_25DD114CC(&v96, &qword_27FCC2200, &unk_25DD98EB0);
    goto LABEL_28;
  }

  v35(v27, 1, 1, v28);
  sub_25DD114CC(v27, &qword_27FCC2558, &unk_25DD9C4D8);
  v100 = a3;
  v40 = a3;
  if (swift_dynamicCast())
  {
    v101 = v96;
    v102 = v97;
    v103 = v98;
    v104 = v99;
    v80 = sub_25DD2B858();
    v79 = v41;
    v42 = sub_25DD2B78C();
    sub_25DD2B824(&v101);
    v43 = v93;
    v44 = v94;
    if (v42)
    {
      a3 = v42;
    }

    else
    {
      v50 = v93;
      v51 = a3;
      v43 = v50;
    }
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
    v96 = 0u;
    v99 = -1;
    sub_25DD114CC(&v96, &qword_27FCC2600, &unk_25DD9CCE0);
    v45 = a3;
    v79 = 0xE700000000000000;
    v80 = 0x6E776F6E6B6E55;
    v43 = v93;
    v44 = v94;
  }

  v52 = v84;
  (*(v81 + 16))(v43, v83, v82);
  v100 = v52;
  v53 = v88;
  v54 = v89;
  (*(v88 + 16))(v21, v90, v89);
  v55 = *(a9 - 8);
  if ((*(v55 + 48))(v21, 1, a9) == 1)
  {
    v56 = a3;
    v57 = *(v53 + 8);

    v57(v21, v54);
    v101 = 0u;
    v102 = 0u;
  }

  else
  {
    *(&v102 + 1) = a9;
    v58 = __swift_allocate_boxed_opaque_existential_0(&v101);
    (*(v55 + 32))(v58, v21, a9);
    v59 = a3;
  }

  v60 = v92;
  (*(v44 + 16))(v16, v91, v92);
  v61 = v95;
  v62 = *(v95 - 8);
  v63 = (*(v62 + 48))(v16, 1, v95);
  v64 = v93;
  if (v63 == 1)
  {
    (*(v44 + 8))(v16, v60);
    v96 = 0u;
    v97 = 0u;
  }

  else
  {
    *(&v97 + 1) = v61;
    v65 = __swift_allocate_boxed_opaque_existential_0(&v96);
    (*(v62 + 32))(v65, v16, v61);
  }

  sub_25DD2D65C();
  v66 = swift_allocError();
  v68 = v67;
  v69 = v87;

  v70 = v86;

  ServerError.init(operationID:request:requestBody:requestMetadata:operationInput:operationOutput:causeDescription:underlyingError:)(v85, v70, v64, v69, &v100, &v101, &v96, v80, v68, v79, a3);
  MEMORY[0x25F8A43F0](a3);
  return v66;
}

uint64_t sub_25DD4E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v25;
  *(v8 + 152) = v26;
  *(v8 + 136) = v24;
  *(v8 + 120) = v23;
  *(v8 + 104) = v22;
  *(v8 + 88) = v21;
  *(v8 + 72) = v20;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00);
  *(v8 + 160) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v12 = *(v26 - 8);
  *(v8 + 176) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v14 = *(v25 - 8);
  *(v8 + 192) = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v17 = *a4;
  *(v8 + 200) = v16;
  *(v8 + 208) = v17;

  return MEMORY[0x2822009F8](sub_25DD4E5E4, 0, 0);
}

uint64_t sub_25DD4E5E4()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 56);
  v15 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  v14 = *(v0 + 40);
  v9 = swift_task_alloc();
  v10 = *(v0 + 64);
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = v2;
  *(v8 + 40) = v14;
  *(v8 + 56) = v15;
  *(v8 + 72) = v1;
  *(v0 + 224) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v2;
  *(v9 + 40) = v7;
  *(v9 + 48) = v10;
  *(v9 + 64) = v6;
  *(v9 + 72) = v5;
  v11 = swift_task_alloc();
  *(v0 + 232) = v11;
  *v11 = v0;
  v11[1] = sub_25DD4E73C;
  v12 = *(v0 + 200);

  return sub_25DD4D708(v12, dword_25DD9CCF8, v8, sub_25DD51A90, v9);
}

uint64_t sub_25DD4E73C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v8 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_25DD4EE9C;
  }

  else
  {
    v6 = *(v2 + 216);
    v5 = *(v2 + 224);

    v4 = sub_25DD4E860;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DD4E860()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v16 = v4;
  v17 = *(v0 + 112);
  v5 = *(v0 + 88);
  v18 = *(v0 + 80);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  v10 = *(v0 + 96);
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v2;
  *(v9 + 40) = v10;
  *(v9 + 56) = v17;
  *(v9 + 64) = v1;
  *(v9 + 72) = v8;
  *(v9 + 80) = v7;
  v11 = v8;
  *(v9 + 88) = v6;
  *(v9 + 96) = v18;
  *(v9 + 104) = v5;
  v12 = swift_task_alloc();
  *(v0 + 256) = v12;
  v12[2] = v16;
  v12[3] = v3;
  v12[4] = v2;
  v12[5] = v11;
  v12[6] = v7;
  v12[7] = v6;
  v12[8] = v18;
  v12[9] = v5;
  v12[10] = v1;
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_25DD4E9D8;
  v14 = *(v0 + 184);

  return sub_25DD4D708(v14, dword_25DD9CD08, v9, sub_25DD51BAC, v12);
}

uint64_t sub_25DD4E9D8()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v8 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_25DD4EF30;
  }

  else
  {
    v6 = *(v2 + 248);
    v5 = *(v2 + 256);

    v4 = sub_25DD4EAFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DD4EAFC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v15 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v0 + 280) = v8;
  v14 = *(v0 + 120);
  v9 = swift_task_alloc();
  v10 = *(v0 + 64);
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v3;
  *(v8 + 40) = v14;
  *(v8 + 56) = v2;
  *(v8 + 64) = v7;
  *(v0 + 288) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  *(v9 + 32) = v3;
  *(v9 + 40) = v6;
  *(v9 + 48) = v10;
  *(v9 + 64) = v15;
  *(v9 + 80) = v1;
  *(v9 + 88) = v2;
  v11 = swift_task_alloc();
  *(v0 + 296) = v11;
  *v11 = v0;
  v11[1] = sub_25DD4EC58;
  v12 = *(v0 + 168);

  return sub_25DD4D708(v12, dword_25DD9CD18, v8, sub_25DD51C84, v9);
}

uint64_t sub_25DD4EC58()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_25DD4EFE4;
  }

  else
  {
    v6 = *(v2 + 280);
    v5 = *(v2 + 288);

    v4 = sub_25DD4ED7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DD4ED7C()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[2];
  v9 = *(v5 + *(v0[20] + 48));
  v10 = sub_25DD96984();
  (*(*(v10 - 8) + 32))(v8, v5, v10);
  (*(v4 + 8))(v3, v6);
  (*(v2 + 8))(v1, v7);

  v11 = v0[1];

  return v11(v9);
}

uint64_t sub_25DD4EE9C()
{
  v2 = v0[27];
  v1 = v0[28];

  v3 = v0[30];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[21];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25DD4EF30()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[18];

  (*(v4 + 8))(v3, v5);
  v6 = v0[34];
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[21];

  v10 = v0[1];

  return v10();
}

uint64_t sub_25DD4EFE4()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[18];
  v7 = v0[19];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v3, v8);
  v9 = v0[38];
  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[21];

  v13 = v0[1];

  return v13();
}

uint64_t sub_25DD4F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4[2];
  v28 = v4[3];
  v27 = v4[4];
  v7 = *(sub_25DD968B4() - 8);
  v8 = (*(v7 + 64) + ((*(v7 + 80) + 72) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for UniversalServer() - 8);
  v12 = (*(v11 + 80) + v10 + 16) & ~*(v11 + 80);
  v25 = v4[6];
  v26 = v4[5];
  v23 = v4[8];
  v24 = v4[7];
  v13 = *(v4 + v8);
  v14 = *(v4 + v9);
  v15 = v4 + v10;
  v16 = *(v4 + v10);
  v17 = *(v15 + 1);
  v18 = (v4 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = *v18;
  v20 = v18[1];
  v21 = swift_task_alloc();
  *(v5 + 16) = v21;
  *v21 = v5;
  v21[1] = sub_25DD3DB34;

  return sub_25DD4E45C(a1, a2, a3, a4, v26, v25, v24, v23);
}

uint64_t sub_25DD4F2D0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v13 = (a2 + *a2);
  v10 = a2[1];
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_25DD4F3F8;

  return v13(a1, a4, a5, v6 + 16);
}

uint64_t sub_25DD4F3F8()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD4F52C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25DD4F544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v12 = sub_25DD96F04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = sub_25DD96F04();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v24 - v20;
  (*(*(a7 - 8) + 56))(&v24 - v20, 1, 1, a7);
  (*(*(a8 - 8) + 56))(v16, 1, 1, a8);
  v22 = sub_25DD4DAE0(v21, v16, a1, a2, v24, v25, v26, v27, a7, a8);
  (*(v13 + 8))(v16, v12);
  (*(v18 + 8))(v21, v17);
  return v22;
}

uint64_t sub_25DD4F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v12;
  *(v8 + 80) = v10;
  *(v8 + 96) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25DD4F79C, 0, 0);
}

uint64_t sub_25DD4F79C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v21 = *(v0 + 88);
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  v10 = type metadata accessor for UniversalServer();
  v19 = *(v0 + 64);
  v11 = v9(v8 + *(v10 + 32));
  v13 = v12;
  *(v0 + 120) = v12;
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  v14[2] = v3;
  v14[3] = v2;
  v14[4] = v1;
  v14[5] = v11;
  v14[6] = v13;
  v14[7] = v5;
  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  *(v15 + 16) = v3;
  *(v15 + 24) = v2;
  *(v15 + 32) = v1;
  *(v15 + 40) = v6;
  *(v15 + 48) = v19;
  *(v15 + 64) = v4;
  *(v15 + 72) = v21;
  *(v15 + 80) = v5;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_25DD4F918;
  v17 = *(v0 + 16);

  return sub_25DD4D708(v17, &unk_25DD9CD28, v14, sub_25DD51D70, v15);
}

uint64_t sub_25DD4F918()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_25DD4FAA0;
  }

  else
  {
    v6 = *(v2 + 128);
    v5 = *(v2 + 136);

    v4 = sub_25DD4FA3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DD4FA3C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25DD4FAA0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_25DD4FB18(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25DD1BF14;

  return v10(a1, a4);
}

uint64_t sub_25DD4FC20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v27 = a2;
  v28 = sub_25DD96F04();
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v28);
  v15 = &v27 - v14;
  v16 = sub_25DD96F04();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  v21 = *(a8 - 8);
  (*(v21 + 16))(&v27 - v19, a7, a8);
  (*(v21 + 56))(v20, 0, 1, a8);
  (*(*(a9 - 8) + 56))(v15, 1, 1, a9);
  sub_25DD01034();
  v22 = swift_allocError();
  *v23 = a1;
  *(v23 + 48) = 17;
  v24 = a1;
  v25 = sub_25DD4DAE0(v20, v15, v22, v27, v29, v30, v31, v32, a8, a9);
  (*(v12 + 8))(v15, v28);
  (*(v17 + 8))(v20, v16);
  MEMORY[0x25F8A43F0](v22);
  return v25;
}

uint64_t sub_25DD4FEA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  v11 = sub_25DD96F04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = sub_25DD96F04();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  v21 = *(a8 - 8);
  (*(v21 + 16))(&v24 - v19, a7, a8);
  (*(v21 + 56))(v20, 0, 1, a8);
  (*(*(a9 - 8) + 56))(v15, 1, 1, a9);
  v22 = sub_25DD4DAE0(v20, v15, v24, v25, v26, v27, v28, v29, a8, a9);
  (*(v12 + 8))(v15, v11);
  (*(v17 + 8))(v20, v16);
  return v22;
}

uint64_t sub_25DD500EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25DD50114, 0, 0);
}

uint64_t sub_25DD50114()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 24))(*(v0 + 16), *(v0 + 40), *(v0 + 48));
  v3 = *(v0 + 16);
  *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00) + 48)) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25DD501C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a8;
  v27 = a1;
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v11 = sub_25DD96F04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = sub_25DD96F04();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = *(a9 - 8);
  (*(v21 + 16))(&v25 - v19, a7, a9);
  (*(v21 + 56))(v20, 0, 1, a9);
  v22 = *(a10 - 8);
  (*(v22 + 16))(v15, v26, a10);
  (*(v22 + 56))(v15, 0, 1, a10);
  v23 = sub_25DD4DAE0(v20, v15, v27, v28, v29, v30, v31, v32, a9, a10);
  (*(v12 + 8))(v15, v11);
  (*(v17 + 8))(v20, v16);
  return v23;
}

uint64_t sub_25DD5043C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 88) = v17;
  *(v8 + 72) = v16;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00);
  *(v8 + 128) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a4;
  *(v8 + 136) = v12;
  *(v8 + 144) = v13;

  return MEMORY[0x2822009F8](sub_25DD50510, 0, 0);
}

uint64_t sub_25DD50510()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v14 = *(v0 + 24);
  v15 = *(v0 + 80);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  v13 = *(v0 + 56);
  v8 = swift_task_alloc();
  v9 = *(v0 + 104);
  *(v7 + 16) = v6;
  *(v7 + 24) = v14;
  *(v7 + 40) = v1;
  *(v7 + 48) = v5;
  *(v7 + 56) = v13;
  *(v7 + 72) = v4;
  *(v0 + 160) = v8;
  *(v8 + 16) = v9;
  *(v8 + 32) = v2;
  *(v8 + 40) = v5;
  *(v8 + 48) = v13;
  *(v8 + 56) = v15;
  *(v8 + 72) = v3;
  *(v8 + 80) = v6;
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_25DD50674;
  v11 = *(v0 + 136);

  return sub_25DD4D708(v11, dword_25DD9CCD0, v7, sub_25DD5192C, v8);
}

uint64_t sub_25DD50674()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_25DD50854;
  }

  else
  {
    v6 = *(v2 + 152);
    v5 = *(v2 + 160);

    v4 = sub_25DD50798;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DD50798()
{
  v1 = v0[17];
  v2 = v0[2];
  v3 = *(v1 + *(v0[16] + 48));
  v4 = sub_25DD96984();
  (*(*(v4 - 8) + 32))(v2, v1, v4);

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_25DD50854()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_25DD508CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v5;
  v18 = *(v4 + 16);
  v7 = *(v4 + 32);
  v8 = *(sub_25DD968B4() - 8);
  v9 = (*(v8 + 64) + ((*(v8 + 80) + 112) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v4 + 80);
  v11 = *(v4 + 88);
  v13 = *(v4 + 96);
  v12 = *(v4 + 104);
  v14 = *(v4 + v9);
  v15 = *(v4 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_25DD3D8CC;

  return sub_25DD5043C(a1, a2, a3, a4, v4 + 40, v10, v11, v13);
}

uint64_t sub_25DD50A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  return MEMORY[0x2822009F8](sub_25DD50A80, 0, 0);
}

void sub_25DD50A80()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0[2] = v1;
  v4 = *(v3 + 8);
  v14 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_25DD50BD4;
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[3];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_25DD50BD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v8 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v6 = sub_25DD50D3C;
  }

  else
  {
    *(v4 + 112) = a1;
    *(v4 + 120) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00) + 48);
    v6 = sub_25DD50D14;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25DD50D54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v32 = a5;
  v33 = a6;
  v30 = a3;
  v31 = a4;
  v27 = a1;
  v28 = a2;
  v29 = sub_25DD96F04();
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v29);
  v14 = &v26 - v13;
  v26 = sub_25DD96F04();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v26);
  v18 = &v26 - v17;
  (*(*(a8 - 8) + 56))(&v26 - v17, 1, 1, a8);
  (*(*(a9 - 8) + 56))(v14, 1, 1, a9);
  sub_25DD01034();
  v19 = swift_allocError();
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  *v21 = swift_getDynamicType();
  v22 = v27;
  *(v21 + 8) = v27;
  *(v21 + 48) = 16;
  v23 = v22;
  v24 = sub_25DD4DAE0(v18, v14, v19, v28, v30, v31, v32, v33, a8, a9);
  (*(v11 + 8))(v14, v29);
  (*(v15 + 8))(v18, v26);
  MEMORY[0x25F8A43F0](v19);
  return v24;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UniversalServer.apiPathComponentsWithServerPrefix(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2610, &qword_25DD9CC58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  v7 = sub_25DD96624();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD96604();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25DD114CC(v6, &qword_27FCC2610, &qword_25DD9CC58);
    sub_25DD01034();
    swift_allocError();
    countAndFlagsBits = v12;
    *v12 = sub_25DD966E4();
    *(countAndFlagsBits + 8) = v13;
    *(countAndFlagsBits + 48) = 0;
    swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = sub_25DD96614();
    v16 = v15;
    v17 = v14 == 47 && v15 == 0xE100000000000000;
    if (v17 || (v18 = v14, (sub_25DD975D4() & 1) != 0))
    {
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      v22 = v18;
      v23 = v16;

      MEMORY[0x25F8A3200](countAndFlagsBits, object);

      countAndFlagsBits = v22;
      object = v23;
      (*(v8 + 8))(v11, v7);
    }
  }

  v19 = countAndFlagsBits;
  v20 = object;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

void sub_25DD51234(uint64_t a1)
{
  sub_25DD96704();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_25DD517DC();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25DD512DC(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_25DD96704();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(v9 + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 152) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v13 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v13 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v8 == v13)
  {
    v23 = *(v7 + 48);

    return v23(a1, v8, v6);
  }

  else
  {
    v24 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v12 & 0x80000000) != 0)
    {
      v26 = *(v9 + 48);

      return v26((v24 + v11 + 152) & ~v11);
    }

    else
    {
      v25 = *(v24 + 24);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }
  }
}

double sub_25DD51520(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_25DD96704();
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v10 + 64);
  v14 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((*(v12 + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 152) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v12 + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFF8) + 152) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
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
      if (v11 == v16)
      {
        v24 = *(v10 + 56);

        v24(a1, a2, v11, v8);
      }

      else
      {
        v25 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
        if ((v15 & 0x80000000) != 0)
        {
          v26 = *(v12 + 56);

          v26((v25 + v14 + 152) & ~v14, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v25 + 136) = 0u;
          *(v25 + 120) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 56) = 0u;
          *(v25 + 40) = 0u;
          *(v25 + 24) = 0u;
          *(v25 + 8) = 0u;
          *v25 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v25 + 24) = (a2 - 1);
        }
      }

      return result;
    }
  }

  if (((*(v12 + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFF8) + 152) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(v12 + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFF8) + 152) & ~v14) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }

  return result;
}

void sub_25DD517DC()
{
  if (!qword_27FCC2618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2620, qword_25DD9CCA8);
    v0 = sub_25DD96D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCC2618);
    }
  }
}

uint64_t sub_25DD51840(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_25DD1BF14;

  return sub_25DD50A48(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_25DD51960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD519C4(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25DD1C68C;

  return sub_25DD4F2D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25DD51AA4(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v13 = *(v1 + 96);
  v14 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25DD1C68C;

  return sub_25DD4F75C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25DD51BC4(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v7 = v1[7];
  v6 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25DD1C68C;

  return sub_25DD500EC(a1, v4, v5, v7, v6);
}

uint64_t sub_25DD51CBC(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25DD1C68C;

  return sub_25DD4FB18(a1, v4, v5, v6);
}

void *static MultipartBoundaryGenerator<>.random.getter@<X0>(void *a1@<X8>)
{
  result = sub_25DD00E5C(10, 0);
  qmemcpy(result + 4, "0123456789", 10);
  *a1 = 0xD000000000000012;
  a1[1] = 0x800000025DDAACD0;
  a1[2] = 20;
  a1[3] = result;
  return result;
}

void *RandomMultipartBoundaryGenerator.init(boundaryPrefix:randomNumberSuffixLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_25DD00E5C(10, 0);
  qmemcpy(result + 4, "0123456789", 10);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = result;
  return result;
}

Swift::String __swiftcall ConstantMultipartBoundaryGenerator.makeBoundary()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t RandomMultipartBoundaryGenerator.boundaryPrefix.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_25DD51F64()
{
  result = sub_25DD00E5C(10, 0);
  qmemcpy(result + 4, "0123456789", 10);
  return result;
}

Swift::String __swiftcall RandomMultipartBoundaryGenerator.makeBoundary()()
{
  v1 = v0[2];
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v1)
  {
    v5 = v0[2];
    v6 = sub_25DD96D64();
    *(v6 + 16) = v1;
    v7 = (v6 + 16);
    bzero((v6 + 32), v1);
LABEL_5:
    v10 = *(v4 + 16);
    if (!v10)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v11 = 0;
    v12 = -v10 % v10;
    while (1)
    {
      v21[0] = 0;
      v8 = MEMORY[0x25F8A4630](v21, 8);
      v13 = (v21[0] * v10) >> 64;
      if (v10 > v21[0] * v10 && v12 > v21[0] * v10)
      {
        do
        {
          v21[0] = 0;
          v8 = MEMORY[0x25F8A4630](v21, 8);
        }

        while (v12 > v21[0] * v10);
        v13 = (v21[0] * v10) >> 64;
      }

      if (v13 >= *(v4 + 16))
      {
        break;
      }

      if (v11 >= *v7)
      {
        goto LABEL_17;
      }

      *(v6 + 32 + v11++) = *(v4 + 32 + v13);
      if (v11 == v1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x277D84F90];
  v7 = (MEMORY[0x277D84F90] + 16);
  v1 = *(MEMORY[0x277D84F90] + 16);
  if (v1)
  {
    goto LABEL_5;
  }

LABEL_14:

  v14 = sub_25DD96B74();
  v16 = v15;

  v21[0] = v14;
  v21[1] = v16;
  v19 = sub_25DD96C94();
  v20 = v17;
  sub_25DD96BD4();

  v8 = v19;
  v9 = v20;
LABEL_20:
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_25DD52198(uint64_t a1, int a2)
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

uint64_t sub_25DD521E0(uint64_t result, int a2, int a3)
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

uint64_t _s22OpenAPIRuntimeInternal13MultipartPartV8filenameSSSgvg_0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t _s22OpenAPIRuntimeInternal13MultipartPartV8filenameSSSgvs_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_25DD522E4(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_25DD52308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for MultipartBytesToFramesSequence();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_25DD523B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v21 - v15;
  (*(v7 + 16))(v11, v3, v6);
  sub_25DD96DF4();
  v17 = (v3 + *(a1 + 36));
  v18 = *v17;
  v19 = v17[1];
  swift_getAssociatedConformanceWitness();

  return sub_25DD52558(v16, v18, v19, AssociatedTypeWitness, a2);
}

uint64_t sub_25DD52558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  (*(v10 + 16))(a5, a1, a4);
  v11 = type metadata accessor for MultipartBytesToFramesSequence.Iterator();
  sub_25DD53738(a2, a3, (a5 + *(v11 + 52)));
  return (*(v10 + 8))(a1, a4);
}

uint64_t sub_25DD52678(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25DD5269C, 0, 0);
}

uint64_t sub_25DD5269C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 24) = *(v2 + 24);
  *(v3 + 40) = *(v2 + 40);
  *(v3 + 48) = v1;
  v4 = *(v2 + 52);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_25DD52784;
  v6 = v0[2];

  return sub_25DD52B04(v6, &unk_25DD9CE50, v3);
}

uint64_t sub_25DD52784()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD528C0, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_25DD528C0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_25DD52924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(MEMORY[0x277D856D0] + 4);
  v9 = swift_task_alloc();
  *(v5 + 48) = v9;
  *v9 = v5;
  v9[1] = sub_25DD529D8;

  return MEMORY[0x282200308](v5 + 16, a3, a5);
}

uint64_t sub_25DD529D8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_25DD52AEC;
  }

  else
  {
    v3 = sub_25DD456B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD52B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(type metadata accessor for MultipartParser.StateMachine.State.PartState(0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for MultipartParser.StateMachine.State(0);
  v4[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  NextPartAction = type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
  v4[11] = NextPartAction;
  v9 = *(*(NextPartAction - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD52BF8, 0, 0);
}

uint64_t sub_25DD52BF8()
{
  do
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 56);
    sub_25DD539C4(*(v0 + 96));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  }

  while (EnumCaseMultiPayload == 3);
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v6 = **(v0 + 96);
      sub_25DD559E4();
      swift_allocError();
      *v7 = v6;
      swift_willThrow();
      v8 = *(v0 + 96);
      v9 = *(v0 + 80);
      v10 = *(v0 + 64);

      v11 = *(v0 + 8);
LABEL_14:

      return v11();
    }

    v20 = *(v0 + 96);
    v21 = *(v0 + 32);
    v22 = sub_25DD96814();
    (*(*(v22 - 8) + 32))(v21, v20, v22);
    v23 = type metadata accessor for MultipartFrame();
    swift_storeEnumTagMultiPayload();
    (*(*(v23 - 8) + 56))(v21, 0, 1, v23);
LABEL_13:
    v24 = *(v0 + 96);
    v25 = *(v0 + 80);
    v26 = *(v0 + 64);

    v11 = *(v0 + 8);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 32);
    v14 = v12[1];
    *v13 = *v12;
    v13[1] = v14;
    v15 = type metadata accessor for MultipartFrame();
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v4 = *(v0 + 32);
    v5 = type metadata accessor for MultipartFrame();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    goto LABEL_13;
  }

  v27 = (*(v0 + 40) + **(v0 + 40));
  v16 = *(*(v0 + 40) + 4);
  v17 = swift_task_alloc();
  *(v0 + 104) = v17;
  *v17 = v0;
  v17[1] = sub_25DD52F14;
  v18 = *(v0 + 48);

  return v27();
}

uint64_t sub_25DD52F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 104);
  v10 = *v5;
  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;
  v6[17] = a4;
  v6[18] = v4;

  if (v4)
  {
    v8 = sub_25DD535AC;
  }

  else
  {
    v8 = sub_25DD53030;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25DD53030()
{
  v1 = *(v0 + 72);
  sub_25DD57530(*(v0 + 56), *(v0 + 80), type metadata accessor for MultipartParser.StateMachine.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      __break(1u);
      return result;
    }

    if (!*(v0 + 112))
    {
      goto LABEL_15;
    }

    v9 = 4;
    goto LABEL_20;
  }

  if (result)
  {
    v10 = *(v0 + 112);
    v11 = *(v0 + 80);
    v12 = *(v0 + 64);
    v13 = *v11;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60);
    v15 = *(v14 + 48);
    *(v0 + 16) = v13;
    sub_25DD55A38(v11 + v15, v12);
    if (v10)
    {
      v17 = *(v0 + 128);
      v16 = *(v0 + 136);
      v19 = *(v0 + 112);
      v18 = *(v0 + 120);
      v20 = *(v0 + 72);
      v49 = *(v0 + 64);
      v21 = *(v0 + 56);
      swift_unknownObjectRetain();
      sub_25DD55A9C(v21, type metadata accessor for MultipartParser.StateMachine.State);
      swift_storeEnumTagMultiPayload();
      sub_25DD2EBA0(v19, v18, v17, v16);
      swift_unknownObjectRelease();
      sub_25DD55A9C(v21, type metadata accessor for MultipartParser.StateMachine.State);
      v22 = *(v14 + 48);
      *v21 = *(v0 + 16);
      sub_25DD55A38(v49, v21 + v22);
      goto LABEL_10;
    }

    sub_25DD55A9C(*(v0 + 64), type metadata accessor for MultipartParser.StateMachine.State.PartState);
    goto LABEL_19;
  }

  v3 = *(v0 + 112);
  *(v0 + 24) = **(v0 + 80);
  if (!v3)
  {
LABEL_19:

    v9 = 5;
LABEL_20:
    sub_25DD559E4();
    swift_allocError();
    *v30 = v9;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  swift_unknownObjectRetain();
  sub_25DD55A9C(v8, type metadata accessor for MultipartParser.StateMachine.State);
  swift_storeEnumTagMultiPayload();
  sub_25DD2EBA0(v3, v6, v5, v4);
  swift_unknownObjectRelease();
  sub_25DD55A9C(v8, type metadata accessor for MultipartParser.StateMachine.State);
  *v8 = *(v0 + 24);
LABEL_10:
  swift_storeEnumTagMultiPayload();
  do
  {
    v23 = *(v0 + 88);
    v24 = *(v0 + 56);
    sub_25DD539C4(*(v0 + 96));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  }

  while (EnumCaseMultiPayload == 3);
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v42 = *(v0 + 96);
      v43 = *(v0 + 32);
      v44 = sub_25DD96814();
      (*(*(v44 - 8) + 32))(v43, v42, v44);
      v45 = type metadata accessor for MultipartFrame();
      swift_storeEnumTagMultiPayload();
      (*(*(v45 - 8) + 56))(v43, 0, 1, v45);
      goto LABEL_27;
    }

    v28 = **(v0 + 96);
    sub_25DD559E4();
    swift_allocError();
    *v29 = v28;
    swift_willThrow();
LABEL_21:
    v31 = *(v0 + 96);
    v32 = *(v0 + 80);
    v33 = *(v0 + 64);

    v34 = *(v0 + 8);
LABEL_28:

    return v34();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v35 = *(v0 + 96);
    v36 = *(v0 + 32);
    v37 = v35[1];
    *v36 = *v35;
    v36[1] = v37;
    v38 = type metadata accessor for MultipartFrame();
    swift_storeEnumTagMultiPayload();
    (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 4)
  {
LABEL_15:
    v26 = *(v0 + 32);
    v27 = type metadata accessor for MultipartFrame();
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
LABEL_27:
    v46 = *(v0 + 96);
    v47 = *(v0 + 80);
    v48 = *(v0 + 64);

    v34 = *(v0 + 8);
    goto LABEL_28;
  }

  v50 = (*(v0 + 40) + **(v0 + 40));
  v39 = *(*(v0 + 40) + 4);
  v40 = swift_task_alloc();
  *(v0 + 104) = v40;
  *v40 = v0;
  v40[1] = sub_25DD52F14;
  v41 = *(v0 + 48);

  return v50();
}

uint64_t sub_25DD535AC()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25DD53630(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DD1BF14;

  return sub_25DD52678(a1, a2);
}

uint64_t sub_25DD536D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25DD523B0(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25DD53738@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = MEMORY[0x277D84F90];
  *a3 = MEMORY[0x277D84F90];
  type metadata accessor for MultipartParser.StateMachine.State(0);
  swift_storeEnumTagMultiPayload();
  v7 = sub_25DD3957C(a1, a2);

  v8 = v7[2];
  v9 = (2 * v8) | 1;
  v10 = type metadata accessor for MultipartParser.StateMachine(0);
  v11 = (a3 + v10[5]);
  *v11 = v7;
  v11[1] = v7 + 4;
  v11[2] = 0;
  v11[3] = v9;

  result = sub_25DD0151C();
  v13 = *result;
  *&v21 = v6;
  *(&v21 + 1) = v6 + 32;
  v14 = *(*result + 16);
  v15 = v8 + v14;
  if (__OFADD__(v8, v14))
  {
    __break(1u);
    __break(1u);
    __break(1u);
  }

  else
  {

    sub_25DD4639C(v15);
    sub_25DD57320(v13);

    sub_25DD46D14(v7, (v7 + 4), 0, v9);

    v16 = v21;
    v17 = (a3 + v10[6]);
    *v17 = v21;
    v17[1] = xmmword_25DD9B570;
    swift_unknownObjectRetain();
    v18 = *sub_25DD01534();
    *&v22 = v6;
    *(&v22 + 1) = v6 + 32;
    v19 = v18[2];

    sub_25DD4639C(v19);
    sub_25DD57320(v18);

    sub_25DD46D14(v16, *(&v16 + 1), 0, 1uLL);
    result = swift_unknownObjectRelease();
    v20 = (a3 + v10[7]);
    *v20 = v22;
    v20[1] = xmmword_25DD9B570;
  }

  return result;
}

uint64_t sub_25DD5391C()
{
  v2 = v0[3];
  v4 = v0[5];
  v3 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25DD47524;

  return sub_25DD52924(v3, v6, v2, v7, v4);
}

uint64_t sub_25DD539C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v184 = a1;
  v3 = sub_25DD96A34();
  v177 = *(v3 - 8);
  v4 = *(v177 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v176 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v178 = &v162 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23A0, &qword_25DD99BB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v162 - v10;
  v180 = sub_25DD969E4();
  v181 = *(v180 - 8);
  v12 = *(v181 + 64);
  v13 = MEMORY[0x28223BE20](v180);
  v15 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v179 = &v162 - v16;
  v183 = sub_25DD96814();
  v182 = *(v183 - 8);
  v17 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v19 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v162 - v25;
  v27 = type metadata accessor for MultipartParser.StateMachine.State(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v33 = (&v162 - v32);
  sub_25DD57530(v2, &v162 - v32, type metadata accessor for MultipartParser.StateMachine.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
LABEL_7:
      type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_170;
  }

  v174 = v15;
  if (result)
  {
    v172 = v3;
    v43 = *v33;
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60);
    v44 = *(v173 + 48);
    v192 = v43;
    sub_25DD55A38(v33 + v44, v26);
    sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
    swift_storeEnumTagMultiPayload();
    v175 = v26;
    sub_25DD57530(v26, v24, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    v45 = v182;
    v46 = v183;
    if ((*(v182 + 48))(v24, 1, v183) == 1)
    {
      v181 = v43;
      v190 = v43;
      v47 = &v2[*(type metadata accessor for MultipartParser.StateMachine(0) + 28)];
      v48 = *(v47 + 1);
      v193 = *v47;
      v194 = v48;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2500, &qword_25DD9CE70);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
      v51 = sub_25DD187C0(&qword_27FCC2508, &qword_27FCC2500, &qword_25DD9CE70);
      v52 = sub_25DD187C0(&qword_27FCC2638, &qword_27FCC2100, "4D");
      result = sub_25DD01D84(&v193, v49, v50, v51, v52, MEMORY[0x277D84B90], &v187);
      v53 = v187;
      if (v188)
      {
        v54 = v175;
        if (v188 != 1)
        {
          v95 = v181;
          v96 = *(v181 + 16);

          v97 = v192;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v99 = *(v97 + 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v97 = sub_25DD2ECB4(0, v99, 1, v97);
              v192 = v97;
            }

            sub_25DD2EDA8(0, v99, 0);
            sub_25DD55A9C(v54, type metadata accessor for MultipartParser.StateMachine.State.PartState);
          }

          else
          {
            v103 = sub_25DD00E5C(0, *(v97 + 3) >> 1);
            sub_25DD55A9C(v54, type metadata accessor for MultipartParser.StateMachine.State.PartState);

            v97 = v103;
          }

          sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
          v104 = *(v173 + 48);
          *v2 = v97;
          (*(v182 + 56))(&v2[v104], 1, 1, v183);
          swift_storeEnumTagMultiPayload();
          if (v96)
          {
            v86 = v184;
            *v184 = v95;
            v86[1] = v95 + 32;
            v87 = (2 * v96) | 1;
            goto LABEL_68;
          }

          type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
          swift_storeEnumTagMultiPayload();
        }

        if ((v187 & 0x8000000000000000) == 0)
        {
          v55 = *(v181 + 16);
          if (v55 >= v187)
          {
            v56 = *(&v187 + 1);
            if ((*(&v187 + 1) & 0x8000000000000000) == 0)
            {
              v57 = v55 - *(&v187 + 1);
              if (v55 >= *(&v187 + 1))
              {
                v58 = v181;

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v192 = v58;
                if (!isUniquelyReferenced_nonNull_native || (v60 = v58, v57 > *(v58 + 24) >> 1))
                {
                  if (v55 <= v57)
                  {
                    v61 = v55 - v56;
                  }

                  else
                  {
                    v61 = v55;
                  }

                  v60 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v61, 1, v58);
                  v192 = v60;
                }

                sub_25DD2EDA8(0, v56, 0);
                v62 = *(v173 + 48);
                *v31 = v60;

                MEMORY[0x25F8A2E20](v63);
                sub_25DD55A9C(v175, type metadata accessor for MultipartParser.StateMachine.State.PartState);
                (*(v182 + 56))(v31 + v62, 0, 1, v183);
                swift_storeEnumTagMultiPayload();
                sub_25DD57598(v31, v2);
                if (v53)
                {
                  v64 = v181;
                  v65 = v184;
                  *v184 = v181;
                  v65[1] = v64 + 32;
                  v65[2] = 0;
                  v65[3] = (2 * v53) | 1;
                  type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
                  swift_storeEnumTagMultiPayload();
                }

                else
                {
                  type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
                  swift_storeEnumTagMultiPayload();
                }
              }

              goto LABEL_163;
            }

LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          goto LABEL_159;
        }

        __break(1u);
        goto LABEL_157;
      }

      if ((v187 & 0x8000000000000000) != 0)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v79 = v181;
      v80 = *(v181 + 16);
      v81 = v80 - v187;
      if (v80 < v187)
      {
LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

      v82 = swift_isUniquelyReferenced_nonNull_native();
      v192 = v79;
      if (!v82 || (v83 = v79, v81 > *(v79 + 24) >> 1))
      {
        if (v80 <= v81)
        {
          v84 = v80 - v53;
        }

        else
        {
          v84 = v80;
        }

        v83 = sub_25DD2ECB4(v82, v84, 1, v79);
        v192 = v83;
      }

      sub_25DD2EDA8(0, v53, 0);
      sub_25DD55A9C(v175, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
      v85 = *(v173 + 48);
      *v2 = v83;
      (*(v182 + 56))(&v2[v85], 1, 1, v183);
      swift_storeEnumTagMultiPayload();
      if (v53)
      {
        v86 = v184;
        *v184 = v79;
        v86[1] = v79 + 32;
        v87 = (2 * v53) | 1;
LABEL_68:
        v86[2] = 0;
        v86[3] = v87;
        type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_70;
    }

    v66 = *(v45 + 32);
    v171 = v45 + 32;
    v170 = v66;
    v66(v19, v24, v46);
    *&v187 = v43;

    v190 = *sub_25DD0151C();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2500, &qword_25DD9CE70);
    v68 = sub_25DD187C0(&qword_27FCC2508, &qword_27FCC2500, &qword_25DD9CE70);
    v69 = sub_25DD187C0(&qword_27FCC2640, &qword_27FCC2500, &qword_25DD9CE70);
    sub_25DD016A4(&v190, v67, v67, v68, v69, MEMORY[0x277D84B90], &v193);

    v38 = v43;
    if (!BYTE8(v193))
    {
      v88 = v193;
      sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
      result = swift_storeEnumTagMultiPayload();
      if ((v88 & 0x8000000000000000) != 0)
      {
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      v89 = *(v43 + 16);
      v90 = v89 - v88;
      v91 = v183;
      v92 = v182;
      if (v89 < v88)
      {
LABEL_161:
        __break(1u);
        goto LABEL_162;
      }

      v93 = swift_isUniquelyReferenced_nonNull_native();
      v192 = v43;
      if (!v93 || v90 > *(v43 + 24) >> 1)
      {
        if (v89 <= v90)
        {
          v94 = v89 - v88;
        }

        else
        {
          v94 = v89;
        }

        v192 = sub_25DD2ECB4(v93, v94, 1, v43);
      }

      sub_25DD2EDA8(0, v88, 0);
      (*(v92 + 8))(v19, v91);
      sub_25DD55A9C(v175, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
LABEL_71:
      swift_storeEnumTagMultiPayload();
    }

    if (BYTE8(v193) != 1)
    {
      sub_25DD55A9C(v175, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
      v100 = *(v173 + 48);
      *v2 = v43;
      v101 = &v2[v100];
      v102 = v19;
LABEL_64:
      v72 = v183;
      goto LABEL_86;
    }

    *&v187 = v43;

    v70 = v69;
    v71 = sub_25DD01534();
    v190 = *v71;
    sub_25DD016A4(&v190, v67, v67, v68, v70, MEMORY[0x277D84B90], &v193);

    v72 = v183;
    if (BYTE8(v193))
    {
      if (BYTE8(v193) == 1)
      {
        (*(v182 + 8))(v19, v183);
        sub_25DD55A9C(v175, type metadata accessor for MultipartParser.StateMachine.State.PartState);
        sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
        swift_storeEnumTagMultiPayload();
        v73 = 1;
LABEL_29:
        *v184 = v73;
LABEL_70:
        type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
        goto LABEL_71;
      }

      sub_25DD55A9C(v175, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
      v100 = *(v173 + 48);
      *v2 = v38;
      v101 = &v2[v100];
      v102 = v19;
LABEL_86:
      v170(v101, v102, v72);
      (*(v182 + 56))(&v2[v100], 0, 1, v72);
      goto LABEL_87;
    }

    v167 = v19;
    v168 = v71;
    v105 = v193;
    v106 = *(v38 + 16);
    if (v106 < v193)
    {
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    v169 = v67;
    if ((v193 & 0x8000000000000000) != 0)
    {
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    *&v193 = v38;
    *(&v193 + 1) = v38 + 32;
    *&v194 = v105;
    *(&v194 + 1) = (2 * v106) | 1;
    v190 = *v168;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
    v108 = sub_25DD187C0(&qword_27FCC2648, &qword_27FCC2100, "4D");
    result = sub_25DD016A4(&v190, v107, v169, v108, v70, MEMORY[0x277D84B90], &v187);
    if (!BYTE8(v187))
    {
      v112 = v187;
      if ((v187 & 0x8000000000000000) == 0)
      {
        v113 = *(v38 + 16);
        v114 = v113 - v187;
        v115 = v183;
        v116 = v167;
        if (v113 >= v187)
        {
          v117 = swift_isUniquelyReferenced_nonNull_native();
          v192 = v38;
          if (!v117 || v114 > *(v38 + 24) >> 1)
          {
            if (v113 <= v114)
            {
              v118 = v113 - v112;
            }

            else
            {
              v118 = v113;
            }

            v38 = sub_25DD2ECB4(v117, v118, 1, v38);
            v192 = v38;
          }

          sub_25DD2EDA8(0, v112, 0);
          sub_25DD55A9C(v175, type metadata accessor for MultipartParser.StateMachine.State.PartState);
          sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
          v119 = *(v173 + 48);
          *v2 = v38;
          (*(v182 + 56))(&v2[v119], 1, 1, v115);
          swift_storeEnumTagMultiPayload();
          v170(v184, v116, v115);
          type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
          return swift_storeEnumTagMultiPayload();
        }

        goto LABEL_168;
      }

LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    if (BYTE8(v187) == 1)
    {
      v165 = v107;
      v166 = v38 + 32;
      v109 = *(v38 + 16);
      if (v109 < v105)
      {
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      v110 = v105 - v109;
      if (v110)
      {
        v111 = 0;
        while ((sub_25DD01638(*(v38 + v105 + v111 + 32)) & 1) != 0)
        {
          ++v111;
          if (!(v110 + v111))
          {
            goto LABEL_83;
          }
        }

        v120 = *(v38 + 16);
        v164 = v111;
        v121 = v105 + v111;
        if (v120 < v121)
        {
          goto LABEL_169;
        }

        *&v193 = v38;
        *(&v193 + 1) = v166;
        *&v194 = v121;
        *(&v194 + 1) = (2 * v120) | 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2110, &unk_25DD984C0);
        v122 = swift_allocObject();
        *(v122 + 16) = xmmword_25DD98100;

        *(v122 + 32) = *sub_25DD014E0();
        v190 = v122;
        sub_25DD016A4(&v190, v165, v169, v108, v70, MEMORY[0x277D84B90], &v187);

        if (BYTE8(v187))
        {
          if (BYTE8(v187) == 1)
          {
            (*(v182 + 8))(v167, v183);
            sub_25DD55A9C(v175, type metadata accessor for MultipartParser.StateMachine.State.PartState);
            sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
            swift_storeEnumTagMultiPayload();
            v73 = 3;
            goto LABEL_29;
          }

          goto LABEL_84;
        }

        v163 = v121;
        v123 = v187;
        v124 = *(v38 + 16);
        if (v124 < v187)
        {
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        if ((v187 & 0x8000000000000000) != 0)
        {
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
          goto LABEL_181;
        }

        while (v123 != v124)
        {
          v125 = v123;
          v126 = *(v166 + v123);
          v127 = sub_25DD0158C();
          v128 = *v127;
          if (!*(*v127 + 16))
          {
            goto LABEL_115;
          }

          v129 = MEMORY[0x25F8A3F70](*(v128 + 40), v126, 1);
          v130 = -1 << *(v128 + 32);
          v131 = v129 & ~v130;
          if (((*(v128 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0)
          {
            goto LABEL_115;
          }

          v132 = ~v130;
          while (*(*(v128 + 48) + v131) != v126)
          {
            v131 = (v131 + 1) & v132;
            if (((*(v128 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0)
            {
              goto LABEL_115;
            }
          }

          v123 = v125 + 1;
          if (__OFADD__(v125, 1))
          {
            __break(1u);
LABEL_115:

            v162 = v127;
            v133 = *(v38 + 16);
            if (v133 < v125)
            {
              goto LABEL_173;
            }

            *&v193 = v38;
            *(&v193 + 1) = v166;
            *&v194 = v125;
            *(&v194 + 1) = (2 * v133) | 1;
            v190 = *v168;
            sub_25DD187C0(&qword_27FCC2650, &qword_27FCC2100, "4D");
            sub_25DD187C0(&qword_27FCC2658, &qword_27FCC2500, &qword_25DD9CE70);
            result = sub_25DD965F4();
            if (v188)
            {
              goto LABEL_84;
            }

            v134 = v187;
            if (v187 < v125)
            {
              goto LABEL_174;
            }

            v135 = v125;
            v136 = *(v38 + 16);
            v137 = v163;
            if (v136 < v187)
            {
              goto LABEL_175;
            }

            v138 = v125;
            if (v187 != v125)
            {
              v165 = *(v38 + 16);
              v139 = v187;
              v140 = v187;
              while (1)
              {
                v168 = v139;
                v141 = (v139 - 1);
                if (v139 - 1 < v135 || v141 >= v140)
                {
                  goto LABEL_180;
                }

                v134 = v140;
                v143 = *v162;
                if (!*(*v162 + 16) || (v144 = *(v141 + v166), result = MEMORY[0x25F8A3F70](*(v143 + 40), *(v141 + v166), 1), v145 = -1 << *(v143 + 32), v146 = result & ~v145, ((*(v143 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0))
                {
LABEL_134:
                  v135 = v125;
                  v138 = v168;
                  v137 = v163;
                  v136 = v165;
                  if (v168 < v125)
                  {
                    goto LABEL_176;
                  }

                  break;
                }

                v147 = ~v145;
                while (*(*(v143 + 48) + v146) != v144)
                {
                  v146 = (v146 + 1) & v147;
                  if (((*(v143 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0)
                  {
                    goto LABEL_134;
                  }
                }

                v139 = v141;
                v135 = v125;
                v140 = v134;
                if (v141 == v125)
                {
                  v138 = v125;
                  v137 = v163;
                  v136 = v165;
                  break;
                }
              }
            }

            if (v134 < v138)
            {
              goto LABEL_177;
            }

            *&v193 = v138;
            *(&v193 + 1) = v135;
            *&v194 = v38;
            *(&v194 + 1) = v166;
            *&v195 = v135;
            *(&v195 + 1) = (2 * v134) | 1;
            if (v136 >= v105)
            {
              if (v136 < v137)
              {
                goto LABEL_179;
              }

              swift_bridgeObjectRetain_n();
              sub_25DD96B74();

              sub_25DD969F4();
              v148 = v181;
              v149 = v180;
              v150 = (*(v181 + 48))(v11, 1, v180);
              v39 = v167;
              if (v150 == 1)
              {

                (*(v182 + 8))(v39, v183);
                sub_25DD55A9C(v175, type metadata accessor for MultipartParser.StateMachine.State.PartState);
                sub_25DD114CC(v11, &qword_27FCC23A0, &qword_25DD99BB0);
                sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
                swift_storeEnumTagMultiPayload();
                *v184 = 2;
                goto LABEL_70;
              }

              (*(v148 + 32))(v179, v11, v149);
              v187 = v193;
              v188 = v194;
              v189 = v195;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2660, qword_25DD9CE78);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23E0, &unk_25DD9BEC0);
              v151 = swift_dynamicCast();
              v169 = v134;
              if (!v151)
              {
                v186 = 0;
                memset(v185, 0, sizeof(v185));
                sub_25DD114CC(v185, &qword_27FCC23E8, &qword_25DD99BF8);
                goto LABEL_147;
              }

              sub_25DD19D44(v185, &v190);
              __swift_project_boxed_opaque_existential_1(&v190, v191);
              if ((sub_25DD972E4() & 1) == 0)
              {
                goto LABEL_146;
              }

              __swift_project_boxed_opaque_existential_1(&v190, v191);
              sub_25DD972D4();
              __swift_destroy_boxed_opaque_existential_1(&v190);
              v152 = v177;
              v149 = v180;
              goto LABEL_148;
            }

            goto LABEL_178;
          }
        }
      }

LABEL_83:
    }

LABEL_84:
    sub_25DD55A9C(v175, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
    v100 = *(v173 + 48);
    *v2 = v38;
    v101 = &v2[v100];
    v102 = v167;
    goto LABEL_64;
  }

  v190 = *v33;
  v35 = v190;

  sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
  swift_storeEnumTagMultiPayload();
  *&v185[0] = v35;
  v36 = &v2[*(type metadata accessor for MultipartParser.StateMachine(0) + 24)];
  v37 = *(v36 + 1);
  v193 = *v36;
  v194 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2500, &qword_25DD9CE70);
  v39 = &qword_27FCC2100;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v41 = sub_25DD187C0(&qword_27FCC2508, &qword_27FCC2500, &qword_25DD9CE70);
  v42 = sub_25DD187C0(&qword_27FCC2638, &qword_27FCC2100, "4D");
  sub_25DD016A4(&v193, v38, v40, v41, v42, MEMORY[0x277D84B90], &v187);

  if (BYTE8(v187))
  {
    if (BYTE8(v187) == 1)
    {

      sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
      swift_storeEnumTagMultiPayload();
      *v184 = 0;
      type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
    *v2 = v35;
LABEL_87:
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  v74 = v187;
  if ((v187 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v75 = *(v35 + 2);
    v38 = v75 - v187;
    if (v75 >= v187)
    {
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v190 = v35;
      if (!v76 || v38 > *(v35 + 3) >> 1)
      {
        if (v75 <= v38)
        {
          v77 = v75 - v74;
        }

        else
        {
          v77 = v75;
        }

        v35 = sub_25DD2ECB4(v76, v77, 1, v35);
        v190 = v35;
      }

      sub_25DD2EDA8(0, v74, 0);
      v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60) + 48);
      *v31 = v35;
      MEMORY[0x25F8A2E20]();
      (*(v182 + 56))(v31 + v78, 0, 1, v183);
      swift_storeEnumTagMultiPayload();
      sub_25DD57598(v31, v2);
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_146:
  __swift_destroy_boxed_opaque_existential_1(&v190);
  v149 = v180;
LABEL_147:
  sub_25DD56ED0(&v193);
  v152 = v177;
LABEL_148:
  (*(v181 + 16))(v174, v179, v149);
  v153 = v178;
  sub_25DD96A04();
  (*(v152 + 16))(v176, v153, v172);
  v154 = MEMORY[0x277D0F9A8];
  sub_25DD575FC(&qword_27FCC23F0, MEMORY[0x277D0F9A8]);
  v155 = v183;
  sub_25DD96EA4();
  sub_25DD575FC(&qword_27FCC23F8, v154);
  result = sub_25DD96EE4();
  v156 = *(v38 + 16);
  v157 = v156 - v169;
  if (v156 >= v169)
  {
    v158 = swift_isUniquelyReferenced_nonNull_native();
    v192 = v38;
    if (!v158 || (v159 = v38, v157 > *(v38 + 24) >> 1))
    {
      if (v156 <= v157)
      {
        v160 = v157;
      }

      else
      {
        v160 = v156;
      }

      v159 = sub_25DD2ECB4(v158, v160, 1, v38);
      v192 = v159;
    }

    sub_25DD2EDA8(0, v169, 0);

    (*(v152 + 8))(v178, v172);
    (*(v181 + 8))(v179, v180);
    sub_25DD55A9C(v175, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
    v161 = *(v173 + 48);
    *v2 = v159;
    v170(&v2[v161], v39, v155);
    (*(v182 + 56))(&v2[v161], 0, 1, v155);
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

LABEL_181:
  __break(1u);
  return result;
}