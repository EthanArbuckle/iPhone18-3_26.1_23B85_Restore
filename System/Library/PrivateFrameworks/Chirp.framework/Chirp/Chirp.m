uint64_t sub_2433E9FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2433FFF40();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2433EA01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2433FFF40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t getEnumTagSinglePayload for SecureBytes.BackingHeader(uint64_t a1, int a2)
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

uint64_t sub_2433EA0B4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    v12 = type metadata accessor for CipherState();
    v13 = *(*(v12 - 8) + 48);
    v14 = &a1[*(a3 + 40)];

    return v13(v14, a2, v12);
  }
}

_BYTE *sub_2433EA16C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v6 = *(a4 + 16);
    v7 = *(a4 + 24);
    v9 = type metadata accessor for CipherState();
    v10 = *(*(v9 - 8) + 56);
    v11 = &v5[*(a4 + 40)];

    return v10(v11, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2433EA220()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_2433EA324(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2433EA350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  type metadata accessor for CipherState();
  v8 = sub_243400280();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(v9 + 48);
    v12 = a1;
  }

  else
  {
    v13 = sub_2433FFF40();
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a2)
    {
      v16 = *(a1 + *(a3 + 56) + 8) >> 60;
      if (((4 * v16) & 0xC) != 0)
      {
        return 16 - ((4 * v16) & 0xC | (v16 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v10 = v13;
    v11 = *(v14 + 48);
    v12 = a1 + *(a3 + 52);
  }

  return v11(v12, a2, v10);
}

uint64_t sub_2433EA484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 32);
  type metadata accessor for CipherState();
  v10 = sub_243400280();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = *(v11 + 56);
    v14 = a1;
  }

  else
  {
    result = sub_2433FFF40();
    v16 = *(result - 8);
    if (*(v16 + 84) != a3)
    {
      v17 = (a1 + *(a4 + 56));
      *v17 = 0;
      v17[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v12 = result;
    v13 = *(v16 + 56);
    v14 = a1 + *(a4 + 52);
  }

  return v13(v14, a2, a2, v12);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2433EA5EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_2433EA648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2433EA6CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2433EA728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2433EA7A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2433EA7C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2433EA810()
{
  result = sub_2433FFF40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2433EA8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2433FFF40();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  result = type metadata accessor for CipherState();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2433EA94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a7;
  v8 = v7;
  v51 = a5;
  v52 = a6;
  v49 = a4;
  v46 = a1;
  v47 = a2;
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = sub_243400280();
  v48 = *(v50 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v15 = &v43 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v44 = *(v16 - 8);
  v45 = v16;
  v17 = *(v44 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v55 = &v43 - v19;
  v20 = AssociatedTypeWitness;
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v24 = *(a3 + 36);
  v25 = *(v8 + v24);
  v59 = &v43 - v26;
  result = sub_2433EAD84(v23, v25, v10, v11);
  if (v25 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v8 + v24) = v25 + 1;
    v28 = v20;
    (*(v21 + 16))(v15, v59, v20);
    (*(v21 + 56))(v15, 0, 1, v20);
    v29 = v54;
    (*(v11 + 72))(v46, v8, v15, v47, v49, v51, v52, v53, v10, v11);
    if (v29)
    {
      (*(v48 + 8))(v15, v50);
      return (*(v21 + 8))(v59, v20);
    }

    else
    {
      (*(v48 + 8))(v15, v50);
      v30 = v45;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v32 = (*(AssociatedConformanceWitness + 32))(v30, AssociatedConformanceWitness);
      v34 = v33;
      v35 = v30;
      v36 = (*(AssociatedConformanceWitness + 24))(v30, AssociatedConformanceWitness);
      v38 = v37;
      v39 = v32;
      v57 = v32;
      v58 = v34;
      v40 = v34;
      v56[3] = MEMORY[0x277CC9318];
      v56[4] = MEMORY[0x277CC9300];
      v56[0] = v36;
      v56[1] = v37;
      v41 = __swift_project_boxed_opaque_existential_1(v56, MEMORY[0x277CC9318]);
      v42 = *v41;
      v54 = v41[1];
      sub_2433EB648(v39, v40);
      sub_2433EB648(v36, v38);
      sub_2433F5580(v42, v54);
      sub_2433EB69C(v36, v38);
      sub_2433EB69C(v39, v40);
      (*(v44 + 8))(v55, v35);
      (*(v21 + 8))(v59, v28);
      __swift_destroy_boxed_opaque_existential_1(v56);
      return v57;
    }
  }

  return result;
}

uint64_t sub_2433EAD84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = sub_243400230();
  *(v7 + 16) = 4;
  *(v7 + 32) = 0;
  v19[0] = v7;
  v8 = (*(a4 + 56))(a3, a4);
  v9 = bswap64(a2);
  if ((v8 & 1) == 0)
  {
    v9 = a2;
  }

  v18 = v9;
  sub_2433F83CC(&v18, v19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = v19[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 24);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73558, &qword_243400908);
  v14 = sub_2433EB558();
  v12(&v17, v13, v14, AssociatedTypeWitness, AssociatedConformanceWitness);

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2433EAF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = a2;
  v73 = a1;
  v67 = *(a4 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](a1);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v14;
  v59 = *(*(v14 + 8) + 8);
  v72 = *(v59 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v60 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = &v52 - v18;
  v20 = *(a3 + 16);
  v19 = *(a3 + 24);
  v63 = swift_getAssociatedTypeWitness();
  v58 = *(v63 - 8);
  v21 = *(v58 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v52 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v70 = *(v23 - 8);
  v71 = v23;
  v24 = *(v70 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v29 = *(a3 + 36);
  v30 = *(v7 + v29);
  v69 = &v52 - v31;
  result = sub_2433EAD84(v28, v30, v20, v19);
  if (v30 == -1)
  {
    __break(1u);
  }

  else
  {
    v54 = a5;
    v55 = v7;
    v56 = a7;
    *(v7 + v29) = v30 + 1;
    v33 = sub_243400240();
    v34 = *(v19 + 64);
    v35 = v20;
    if (v33 < v34(v20, v19))
    {
      sub_2433EB4BC();
      swift_allocError();
      *v36 = 6;
      swift_willThrow();
      goto LABEL_7;
    }

    v37 = *(v70 + 16);
    v53 = v27;
    v37(v27, v69, v71);
    v38 = v66;
    v67 = *(v67 + 16);
    (v67)(v66, v73, a4);
    v39 = sub_243400240();
    v40 = v34(v20, v19);
    v41 = __OFSUB__(v39, v40);
    result = v39 - v40;
    if (!v41)
    {
      sub_243400250();
      (v67)(v38, v73, a4);
      v34(v20, v19);
      v42 = v60;
      sub_243400090();
      v43 = v63;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v45 = *(AssociatedConformanceWitness + 48);
      v46 = AssociatedTypeWitness;
      v47 = swift_getAssociatedConformanceWitness();
      v48 = v61;
      v49 = v46;
      v50 = v46;
      v35 = v43;
      v51 = v65;
      v45(v53, v68, v42, v49, v50, v47, v47, v43, AssociatedConformanceWitness);
      if (!v51)
      {
        v35 = (*(v19 + 80))(v48, v55, v57, v54, v56, v20, v19);
        (*(v58 + 8))(v48, v43);
        (*(v70 + 8))(v69, v71);
        return v35;
      }

LABEL_7:
      (*(v70 + 8))(v69, v71);
      return v35;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2433EB4BC()
{
  result = qword_27ED73550;
  if (!qword_27ED73550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73550);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2433EB558()
{
  result = qword_27ED73560;
  if (!qword_27ED73560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED73558, &qword_243400908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73560);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2433EB648(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2433EB69C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2433EB78C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_2433EB7E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2433EB84C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2433EB8A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for SecureBytes.BackingHeader(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_2433EB984(uint64_t a1, unint64_t *a2)
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

uint64_t TransportState.readKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for CipherState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, v2 + *(a1 + 44));
  v12 = sub_2433FFF40();
  return (*(*(v12 - 8) + 32))(a2, v10, v12);
}

uint64_t TransportState.writeKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for CipherState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, v2 + *(a1 + 40));
  v12 = sub_2433FFF40();
  return (*(*(v12 - 8) + 32))(a2, v10, v12);
}

uint64_t TransportState.encryptOutgoingPayload<A>(_:authenticating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(*(a6 + 8) + 8) + 8);
  v13 = sub_243400240();
  result = (*(*(a4 + 24) + 64))(*(a4 + 16), *(a4 + 24));
  if (__OFSUB__(0xFFFFLL, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (0xFFFF - result < v13)
  {
    sub_2433EB4BC();
    swift_allocError();
    *v15 = 5;
    return swift_willThrow();
  }

  if (*v6 != 1)
  {
    if ((v6[1] & 1) == 0)
    {
      v21 = a2;
      v22 = a3;
      v17 = *(a4 + 44);
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v21 = a2;
  v22 = a3;
  v16 = *(a4 + 40);
LABEL_8:
  v18 = type metadata accessor for CipherState();
  v19 = sub_2433EBF08();
  return sub_2433EA94C(a1, &v21, v18, a5, MEMORY[0x277CC9318], a6, v19);
}

unint64_t sub_2433EBF08()
{
  result = qword_27ED73590;
  if (!qword_27ED73590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73590);
  }

  return result;
}

uint64_t TransportState.decryptIncomingPayload<A>(_:authenticating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(*(*(a6 + 8) + 8) + 8);
  result = sub_243400240();
  if (result >= 0x10000)
  {
    sub_2433EB4BC();
    swift_allocError();
    *v15 = 5;
    return swift_willThrow();
  }

  if (*v6 == 1)
  {
    if (v6[1])
    {
      __break(1u);
      return result;
    }

    v22 = a2;
    v23 = a3;
    v16 = *(a4 + 44);
  }

  else
  {
    v22 = a2;
    v23 = a3;
    v17 = *(a4 + 40);
  }

  v18 = *(a4 + 16);
  v19 = *(a4 + 24);
  v20 = type metadata accessor for CipherState();
  v21 = sub_2433EBF08();
  return sub_2433EAF34(a1, &v22, v20, a5, MEMORY[0x277CC9318], a6, v21);
}

uint64_t sub_2433EC090(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for CipherState();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2433EC150@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for TransportState();
  v9 = *(v8 + 40);
  v10 = type metadata accessor for CipherState();
  v13 = *(*(v10 - 8) + 32);
  (v13)((v10 - 8), &a5[v9], a3, v10);
  v11 = &a5[*(v8 + 44)];

  return v13(v11, a4, v10);
}

uint64_t type metadata accessor for SecureBytes.Backing()
{
  result = qword_27ED735A0;
  if (!qword_27ED735A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2433EC2C8()
{
  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  qword_27ED73598 = result;
  return result;
}

void *sub_2433EC2FC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = _swift_stdlib_malloc_size(result);
  if ((result - 4) < a3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = _swift_stdlib_malloc_size(v3) - 32;
  result = swift_beginAccess();
  v8 = v3[2];
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(v10, v11);
  v12 = v10 - v11;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    return sub_2433EEDAC((v6 + 4), v6 + v6[2] + 32, a2, a3, v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

size_t sub_2433EC3E0(char a1)
{
  v3 = _swift_stdlib_malloc_size(v1) - 32;
  result = swift_beginAccess();
  v5 = v1[2];
  v6 = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v1);
  if ((result - 32) < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + v5 + 32) = a1;
  v9 = v1[2];
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    result = swift_beginAccess();
    v1[2] = v10;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

size_t sub_2433EC49C(const void *a1, size_t a2)
{
  v5 = _swift_stdlib_malloc_size(v2) - 32;
  result = swift_beginAccess();
  v7 = v2[2];
  v8 = v5 - v7;
  if (__OFSUB__(v5, v7))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = __OFSUB__(v8, a2);
  v10 = v8 - a2;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v7)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    result = memmove(v2 + v7 + 32, a1, a2);
LABEL_8:
    v11 = v2[2];
    v9 = __OFADD__(v11, a2);
    v12 = v11 + a2;
    if (!v9)
    {
      result = swift_beginAccess();
      v2[2] = v12;
      return result;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_2433EC57C()
{
  v1 = sub_243400240();
  v2 = _swift_stdlib_malloc_size(v0) - 32;
  result = swift_beginAccess();
  v4 = v0[2];
  v5 = v2 - v4;
  if (__OFSUB__(v2, v4))
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = __OFSUB__(v5, v1);
  v7 = v5 - v1;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v0);
  if ((result - 32) < v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2434002E0();
  v8 = v0[2];
  v6 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v6)
  {
    v0[2] = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

size_t sub_2433EC664(int64_t a1)
{
  v2 = v1;
  v4 = *v2;
  result = _swift_stdlib_malloc_size(*v2);
  if ((result - 32) < a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      if (a1)
      {
        v6 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
        v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
        v8 = v7 | HIWORD(v7);
        if (v8 == -1)
        {
          v9 = 0xFFFFFFFFLL;
        }

        else
        {
          v9 = (v8 + 1);
        }
      }

      else
      {
        v9 = 1;
      }

      type metadata accessor for SecureBytes.Backing();
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = v9;
      result = swift_beginAccess();
      v11 = v4[2];
      if ((v11 & 0x8000000000000000) == 0)
      {
        sub_2433EC2FC(v4, 0, v11);

        *v2 = v10;
        return result;
      }

LABEL_14:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2433EC764@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 16);
  return result;
}

uint64_t sub_2433EC7E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = swift_beginAccess();
  v8 = *(v6 + 16);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 >= v4)
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2433EC864@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v5;
  }

  return result;
}

BOOL sub_2433EC8B4()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16) == 0;
}

uint64_t sub_2433EC8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v9 = *(a4 + 16);
  if (v9 < a3 || (a3 | a1) < 0 || v9 < a1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = a3 - a1;
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_11:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || v9 < result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t *sub_2433EC9C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_2433EC9E0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2433EC9FC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_2433ECA18@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2433ECA30(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_2433ECA64(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_19:

    return v4;
  }

  result = sub_2433EF80C(*(a1 + 16), 0);
  if (v2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = result + 4;
    if (v2 >= 8 && result - a1 >= 0x20)
    {
      if (v2 < 0x20)
      {
        v5 = 0;
        goto LABEL_12;
      }

      v5 = v2 & 0x7FFFFFFFFFFFFFE0;
      v7 = result + 6;
      v8 = (a1 + 48);
      v9 = v2 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v10 = *v8;
        *(v7 - 1) = *(v8 - 1);
        *v7 = v10;
        v7 += 2;
        v8 += 2;
        v9 -= 32;
      }

      while (v9);
      if (v2 == v5)
      {
        goto LABEL_19;
      }

      if ((v2 & 0x18) != 0)
      {
LABEL_12:
        v11 = v5;
        v5 = v2 & 0x7FFFFFFFFFFFFFF8;
        v6 += v2 & 0x7FFFFFFFFFFFFFF8;
        v12 = v11 + 32;
        v13 = v11 - (v2 & 0x7FFFFFFFFFFFFFF8);
        do
        {
          *(result + v12) = *(a1 + v12);
          v12 += 8;
          v13 += 8;
        }

        while (v13);
        if (v2 == v5)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v6 += v5;
    }

LABEL_17:
    v14 = (v5 + a1 + 32);
    v15 = v2 - v5;
    do
    {
      v16 = *v14++;
      *v6++ = v16;
      --v15;
    }

    while (v15);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_2433ECBA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_13;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = swift_beginAccess();
    v8 = 0;
    v9 = *(a4 + 16);
    while (!__OFSUB__(v9, v8))
    {
      if (v9 == v8)
      {
        v6 = v9;
        goto LABEL_13;
      }

      *(a2 + v8) = *(a4 + 32 + v8);
      if (v6 - 1 == v8)
      {
        goto LABEL_13;
      }

      if (__OFADD__(++v8, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2433ECCA4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_2433ECCBC(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void *sub_2433ECCD4@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    result = swift_beginAccess();
    if ((v5 & 0x8000000000000000) == 0 && *(v6 + 16) >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2433ECD44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2433EC8FC(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_2433ECD80(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (v7 >= v4 && ((v4 | v3) & 0x8000000000000000) == 0 && v7 >= v3)
  {
    return v4 - v3;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2433ECE08(uint64_t a1, uint64_t *a2))(uint64_t result)
{
  v3 = *a2;
  v4 = *v2;
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v4 + v3 + 32);
  return sub_2433ECE40;
}

uint64_t sub_2433ECE54(uint64_t *a1, uint64_t *a2)
{
  sub_2433EF710(v2, *a2, a2[1], *a1, a1[1], a1[2]);
}

void (*sub_2433ECEA0(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2433ECF60(v4, *a2, a2[1]);
  return sub_2433ECF18;
}

void sub_2433ECF18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_2433ECF60(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  v9 = *v3;
  result = swift_beginAccess();
  v11 = *(v9 + 16);
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;

    return sub_2433ED030;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_2433ED030(uint64_t **a1)
{
  v1 = *a1;
  sub_2433EF710((*a1)[8], v1[6], (*a1)[7], *v1, v1[1], v1[2]);
  v2 = v1[2];

  free(v1);
}

uint64_t sub_2433ED080@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2433EF910(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_2433ED0AC(void *result, void *a2)
{
  v3 = *result;
  v4 = *a2;
  if (__OFSUB__(*a2, *result))
  {
    __break(1u);
  }

  else if (*a2 != *result)
  {
    v5 = *v2 + 32;
    v6 = *(v5 + v3);
    *(v5 + v3) = *(v5 + v4);
    *(v5 + v4) = v6;
  }

  return result;
}

size_t sub_2433ED128(int64_t a1, int64_t a2, size_t a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v8[2];
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = _swift_stdlib_malloc_size(v8);
  v16 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    if (a2 >= a1)
    {
      v17 = *v4;
      return sub_2433ED644(a1, a2, a3);
    }

    goto LABEL_23;
  }

  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v14))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14)
  {
    v18 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
    v20 = v19 | HIWORD(v19);
    if (v20 == -1)
    {
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v21 = (v20 + 1);
    }
  }

  else
  {
    v21 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v21;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v22 = result;
  v23 = *v4;
  result = swift_beginAccess();
  v24 = v23[2];
  if (v24 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_2433EC2FC(v23, 0, a1);
  sub_2433EC3E0(a3);
  sub_2433EC2FC(v23, a2, v24);

  *v4 = v22;
  return result;
}

size_t sub_2433ED2C8(uint64_t a1, int64_t a2, void *a3, size_t a4)
{
  v5 = v4;
  v10 = *v4;
  result = swift_beginAccess();
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v10[2];
  v14 = __OFSUB__(v13, v12);
  v15 = v13 - v12;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15 + a4;
  if (__OFADD__(v15, a4))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = _swift_stdlib_malloc_size(v10);
  v18 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v17 - 32) >= v16)
  {
    if (a2 >= a1)
    {
      v19 = *v5;
      return sub_2433ED740(a1, a2, a3, a4);
    }

    goto LABEL_23;
  }

  if (v16 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v16)
  {
    v20 = (v16 - 1) | ((v16 - 1) >> 1) | (((v16 - 1) | ((v16 - 1) >> 1)) >> 2);
    v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
    v22 = v21 | HIWORD(v21);
    if (v22 == -1)
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = (v22 + 1);
    }
  }

  else
  {
    v23 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v23;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v24 = result;
  v25 = *v5;
  result = swift_beginAccess();
  v26 = v25[2];
  if (v26 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_2433EC2FC(v25, 0, a1);
  sub_2433EC49C(a3, a4);
  sub_2433EC2FC(v25, a2, v26);

  *v5 = v24;
  return result;
}

size_t sub_2433ED474(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v8[2];
  v12 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = sub_243400240();
  v13 = __OFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = _swift_stdlib_malloc_size(v8);
  v16 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    if (a2 >= a1)
    {
      v17 = *v4;
      return sub_2433ED840(a1, a2, a3);
    }

    goto LABEL_23;
  }

  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v14))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14)
  {
    v18 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
    v20 = v19 | HIWORD(v19);
    if (v20 == -1)
    {
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v21 = (v20 + 1);
    }
  }

  else
  {
    v21 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v21;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v22 = result;
  v23 = *v4;
  result = swift_beginAccess();
  v24 = v23[2];
  if (v24 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_2433EC2FC(v23, 0, a1);
  sub_2433EC57C();
  sub_2433EC2FC(v23, a2, v24);

  *v4 = v22;
  return result;
}

size_t sub_2433ED644(int64_t a1, int64_t a2, size_t a3)
{
  result = swift_beginAccess();
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v3[2];
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v3);
  if ((result - 32) < v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = __OFSUB__(1, v8);
  v13 = 1 - v8;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_2433EEAE0(a2, v9, v13);
  result = sub_2433EEBA8(a3, a1);
  v14 = v3[2];
  v15 = v14 + v13;
  if (!__OFADD__(v14, v13))
  {
    result = swift_beginAccess();
    v3[2] = v15;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_2433ED740(uint64_t a1, int64_t a2, void *a3, size_t a4)
{
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v4[2];
  v12 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12 + a4;
  if (__OFADD__(v12, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = __OFSUB__(a4, v10);
  v15 = a4 - v10;
  if (v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_2433EEAE0(a2, v11, v15);
  result = sub_2433EEC1C(a3, a4, a1);
  v16 = v4[2];
  v17 = v16 + v15;
  if (!__OFADD__(v16, v15))
  {
    result = swift_beginAccess();
    v4[2] = v17;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_2433ED840(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  result = swift_beginAccess();
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v3[2];
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_243400240();
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_243400240();
  if (__OFSUB__(result, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v4[2];
  if (v13 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_2433EEAE0(a2, v13, result - v9);
  sub_2433EECD8(a3, a1);
  result = sub_243400240();
  v14 = result - v9;
  if (__OFSUB__(result, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v4[2];
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    v4[2] = v17;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2433ED97C(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    if (result >= 1)
    {
      v4 = v2;
      while (1)
      {
        v6 = *v4;
        result = swift_beginAccess();
        v7 = v6[2];
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v9 = _swift_stdlib_malloc_size(v6) - 32;
        v10 = *v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v11 = v9 < v8;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          if (v8 < 0)
          {
            goto LABEL_32;
          }

          if (HIDWORD(v8))
          {
            goto LABEL_34;
          }

          if (v7 == -1)
          {
            v15 = 1;
          }

          else
          {
            v12 = v7 | (v7 >> 1) | ((v7 | (v7 >> 1)) >> 2);
            v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
            v14 = v13 | HIWORD(v13);
            if (v14 == -1)
            {
              v15 = 0xFFFFFFFFLL;
            }

            else
            {
              v15 = (v14 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v15;
          if (v7 < 0)
          {
            goto LABEL_36;
          }

          v20 = result;
          v21 = *v4;
          result = swift_beginAccess();
          v22 = v21[2];
          if (v22 < v7)
          {
            __break(1u);
            return result;
          }

          sub_2433EC2FC(v21, 0, v7);
          sub_2433EC3E0(a2);
          sub_2433EC2FC(v21, v7, v22);

          *v4 = v20;
          if (!--v3)
          {
            return result;
          }
        }

        else
        {
          v16 = *v4;
          result = swift_beginAccess();
          v17 = v16[2];
          if (__OFADD__(v17, 1))
          {
            goto LABEL_33;
          }

          result = _swift_stdlib_malloc_size(v16);
          if (result - 32 < v17 + 1)
          {
            goto LABEL_35;
          }

          if (v17 < v7)
          {
            goto LABEL_37;
          }

          result = sub_2433EEAE0(v7, v17, 1);
          if (v7 < 0)
          {
            goto LABEL_38;
          }

          result = _swift_stdlib_malloc_size(v16);
          if (result - 32 < v8)
          {
            goto LABEL_39;
          }

          if (v8 < v7)
          {
            goto LABEL_40;
          }

          result = _swift_stdlib_malloc_size(v16);
          *(v16 + v7 + 32) = a2;
          v18 = v16[2];
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_41;
          }

          result = swift_beginAccess();
          v16[2] = v19;
          if (!--v3)
          {
            return result;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

size_t sub_2433EDBC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v33 - v12;
  v35 = v3;
  result = sub_243400220();
  if (v36 == 1)
  {
    (*(v6 + 16))(v9, a1, a2);
    sub_2434001F0();
    swift_getAssociatedConformanceWitness();
    sub_2434002D0();
    if (v38)
    {
      return (*(v34 + 8))(v13, AssociatedTypeWitness);
    }

    else
    {
      v15 = v37;
      while (1)
      {
        v16 = *v3;
        result = swift_beginAccess();
        v17 = v16[2];
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v19 = _swift_stdlib_malloc_size(v16) - 32;
        v20 = *v3;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v21 = v19 < v18;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          if (v18 < 0)
          {
            goto LABEL_33;
          }

          if (HIDWORD(v18))
          {
            goto LABEL_35;
          }

          if (v17 == -1)
          {
            v25 = 1;
          }

          else
          {
            v22 = v17 | (v17 >> 1) | ((v17 | (v17 >> 1)) >> 2);
            v23 = v22 | (v22 >> 4) | ((v22 | (v22 >> 4)) >> 8);
            v24 = v23 | HIWORD(v23);
            if (v24 == -1)
            {
              v25 = 0xFFFFFFFFLL;
            }

            else
            {
              v25 = (v24 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v25;
          if (v17 < 0)
          {
            goto LABEL_37;
          }

          v30 = result;
          v31 = *v3;
          result = swift_beginAccess();
          v32 = v31[2];
          if (v32 < v17)
          {
            __break(1u);
            break;
          }

          sub_2433EC2FC(v31, 0, v17);
          sub_2433EC3E0(v15);
          sub_2433EC2FC(v31, v17, v32);

          *v3 = v30;
        }

        else
        {
          v26 = *v3;
          result = swift_beginAccess();
          v27 = v26[2];
          if (__OFADD__(v27, 1))
          {
            goto LABEL_34;
          }

          result = _swift_stdlib_malloc_size(v26);
          if ((result - 32) < v27 + 1)
          {
            goto LABEL_36;
          }

          if (v27 < v17)
          {
            goto LABEL_38;
          }

          result = sub_2433EEAE0(v17, v27, 1);
          if (v17 < 0)
          {
            goto LABEL_39;
          }

          result = _swift_stdlib_malloc_size(v26);
          if ((result - 32) < v18)
          {
            goto LABEL_40;
          }

          if (v18 < v17)
          {
            goto LABEL_41;
          }

          result = _swift_stdlib_malloc_size(v26);
          *(v26 + v17 + 32) = v15;
          v28 = v26[2];
          v29 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_42;
          }

          swift_beginAccess();
          v26[2] = v29;
        }

        sub_2434002D0();
        v15 = v37;
        if (v38 == 1)
        {
          return (*(v34 + 8))(v13, AssociatedTypeWitness);
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2433EDFE4@<X0>(void *a1@<X8>)
{
  if (qword_27ED73520 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27ED73598;
}

uint64_t sub_2433EE054(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2433ED474(*a1, a1[1], a2);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t sub_2433EE0D8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (qword_27ED73520 != -1)
  {
    swift_once();
  }

  result = qword_27ED73598;
  v7 = qword_27ED73598;
  if (!a2)
  {

    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    sub_2433ED97C(a2, v5);
    result = v7;
LABEL_7:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

size_t sub_2433EE194(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  swift_beginAccess();
  return sub_2433ED128(*(v2 + 16), *(v2 + 16), v3);
}

uint64_t sub_2433EE1EC(uint64_t a1, uint64_t a2)
{
  sub_2433EDBC0(a1, a2);
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

size_t sub_2433EE280@<X0>(int64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = swift_beginAccess();
  if (!*(v5 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 >= v4)
  {
    v8 = *(v5 + v4 + 32);
    result = sub_2433EFC2C(v4, v7);
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t sub_2433EE324@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v3 + 32);
  result = sub_2433EC8FC(0, 1, v5, v3);
  if ((v7 & 1) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      result = sub_2433EFC2C(0, result);
      *a1 = v6;
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_2433EE3B0(size_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      swift_beginAccess();
      result = sub_2433EC8FC(0, v2, *(v3 + 16), v3);
      if (v4)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        return sub_2433EFC2C(0, result);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

size_t sub_2433EE438(char a1)
{
  v2 = *v1;
  if (a1)
  {
    swift_beginAccess();
    v3 = *(v2 + 16);
    if ((v3 & 0x8000000000000000) == 0)
    {
      return sub_2433EFC2C(0, v3);
    }

    __break(1u);
    goto LABEL_9;
  }

  v5 = *v1;

  if (qword_27ED73520 != -1)
  {
LABEL_9:
    swift_once();
  }

  *v1 = qword_27ED73598;
}

uint64_t sub_2433EE508(uint64_t (*a1)(char *))
{
  v4 = *v1;
  result = swift_beginAccess();
  v6 = 0;
  v7 = v4 + 32;
  do
  {
    v8 = *(v4 + 16);
    if (__OFSUB__(v8, v6))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v6 == v8)
    {
      goto LABEL_11;
    }

    v14 = *(v7 + v6);
    result = a1(&v14);
    if (v2)
    {
      return result;
    }

    v9 = v6 + 1;
    v10 = __OFADD__(v6, 1);
    if (result)
    {
      if (!v10)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_14:
      v11 = __OFADD__(v6++, 1);
      if (!v11)
      {
        while (1)
        {
          v11 = __OFADD__(v9++, 1);
          if (v11)
          {
            break;
          }

LABEL_16:
          v12 = *(v4 + 16);
          if (__OFSUB__(v12, v9))
          {
            goto LABEL_27;
          }

          if (v12 == v9)
          {
            if (v9 < v6)
            {
              goto LABEL_31;
            }

            return sub_2433EFC2C(v6, v9);
          }

          v14 = *(v7 + v9);
          result = a1(&v14);
          if ((result & 1) == 0)
          {
            if (__OFSUB__(v9, v6))
            {
              goto LABEL_29;
            }

            if (v9 != v6)
            {
              v13 = *(v7 + v6);
              *(v7 + v6) = *(v7 + v9);
              *(v7 + v9) = v13;
            }

            goto LABEL_14;
          }
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (!v10);
  __break(1u);
LABEL_11:
  v9 = v6;
  return sub_2433EFC2C(v6, v9);
}

uint64_t sub_2433EE758@<X0>(uint64_t (*a1)(uint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = a1(v3 + 32, *(v3 + 16));
  if (!v4)
  {
    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }

  return result;
}

uint64_t sub_2433EE8E4()
{
  v1 = *v0;
  sub_243400440();
  MEMORY[0x245D33DD0](v1);
  return sub_243400460();
}

uint64_t sub_2433EE958()
{
  v1 = *v0;
  sub_243400440();
  MEMORY[0x245D33DD0](v1);
  return sub_243400460();
}

void *sub_2433EE99C(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

void *sub_2433EEA08@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *sub_2433EEA24@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *sub_2433EEA40(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

uint64_t sub_2433EEA64()
{
  swift_beginAccess();
  memset_s((v0 + 32), *(v0 + 24), 0, *(v0 + 24));
  return swift_deallocClassInstance();
}

size_t sub_2433EEAE0(size_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v7 = result;
  result = _swift_stdlib_malloc_size(v4);
  v8 = v7 + a3;
  if (__OFADD__(v7, a3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = __OFADD__(a2, a3);
  v10 = a2 + a3;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 < v8)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 1 || (result - 32) < a2)
  {
    goto LABEL_15;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v10)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  _swift_stdlib_malloc_size(v4);

  return memmove(&v4[v8 + 32], &v4[v7 + 32], a2 - v7);
}

size_t sub_2433EEBA8(size_t result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= a2)
  {
    result = _swift_stdlib_malloc_size(v2);
    *(v2 + a2 + 32) = v5;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_2433EEC1C(void *result, size_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v7 = a3 + a2;
  if (__OFADD__(a3, a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  result = _swift_stdlib_malloc_size(v4);
  if (result - 32 < v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 < a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = _swift_stdlib_malloc_size(v4);
  if (!v8)
  {
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return memmove(&v4[a3 + 32], v8, a2);
}

uint64_t sub_2433EECD8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_243400240();
  v4 = a2 + result;
  if (__OFADD__(a2, result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = _swift_stdlib_malloc_size(v2);
  if (result - 32 < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_243400240();
  if (__OFADD__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 + result < a2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  _swift_stdlib_malloc_size(v2);

  return sub_2434002E0();
}

size_t sub_2433EEDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = a1 + a4;
  }

  else
  {
    v6 = 0;
  }

  if (a1)
  {
    v7 = (a1 + a3);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = a5[2];
  result = _swift_stdlib_malloc_size(a5);
  if ((result - 32) < v8)
  {
    __break(1u);
  }

  else
  {
    if (v7)
    {
      v10 = v6 - v7;
      result = memmove(a5 + v8 + 32, v7, v10);
    }

    else
    {
      v10 = 0;
    }

    v11 = a5[2];
    v12 = v11 + v10;
    if (!__OFADD__(v11, v10))
    {
      result = swift_beginAccess();
      a5[2] = v12;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2433EEEA0()
{
  result = qword_27ED735B0;
  if (!qword_27ED735B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735B0);
  }

  return result;
}

unint64_t sub_2433EEF0C()
{
  result = qword_27ED735B8;
  if (!qword_27ED735B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735B8);
  }

  return result;
}

unint64_t sub_2433EEF60()
{
  result = qword_27ED735C0;
  if (!qword_27ED735C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735C0);
  }

  return result;
}

unint64_t sub_2433EEFB8()
{
  result = qword_27ED735C8;
  if (!qword_27ED735C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735C8);
  }

  return result;
}

unint64_t sub_2433EF010()
{
  result = qword_27ED735D0;
  if (!qword_27ED735D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735D0);
  }

  return result;
}

unint64_t sub_2433EF068()
{
  result = qword_27ED735D8;
  if (!qword_27ED735D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED735D8);
  }

  return result;
}

unint64_t sub_2433EF14C()
{
  result = qword_27ED73600;
  if (!qword_27ED73600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73600);
  }

  return result;
}

unint64_t sub_2433EF1E8()
{
  result = qword_27ED73610;
  if (!qword_27ED73610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73610);
  }

  return result;
}

unint64_t sub_2433EF2D0()
{
  result = qword_27ED73628;
  if (!qword_27ED73628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73628);
  }

  return result;
}

unint64_t sub_2433EF358()
{
  result = qword_27ED73640;
  if (!qword_27ED73640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73640);
  }

  return result;
}

unint64_t sub_2433EF3AC()
{
  result = qword_27ED73648;
  if (!qword_27ED73648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73648);
  }

  return result;
}

uint64_t sub_2433EF4C4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED735F8, &qword_243400CA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2433EF584()
{
  result = qword_27ED73678;
  if (!qword_27ED73678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73678);
  }

  return result;
}

uint64_t sub_2433EF60C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED73638, &qword_243400E88);
    sub_2433EF358();
    sub_2433EF3AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2433EF6C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2433EF710(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = swift_beginAccess();
  v14 = *(v11 + 16);
  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 < a3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    while (1)
    {
      LOBYTE(v13) = __OFSUB__(a5, a4);
      if (a3 == a2)
      {
        break;
      }

      if (v13)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (a5 == a4)
      {
        goto LABEL_27;
      }

      if (a4 >= a5)
      {
        goto LABEL_20;
      }

      *(v11 + 32 + a2) = *(a6 + 32 + a4);
      v13 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_21;
      }

      ++a4;
      ++a2;
      if (__OFSUB__(a3, v13))
      {
        goto LABEL_15;
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    if (a5 == a4)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_2433EF80C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73690, &qword_2434010B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_2433EF880(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73698, &qword_243401550);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_2433EF910(uint64_t (*a1)(char *))
{
  v4 = *v1;
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v4 + 32;
  do
  {
    v12 = *(v7 + v6);
    v8 = a1(&v12);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v5;
      while (1)
      {
        v5 = v9 - 1;
        if (v6 >= v9 - 1)
        {
          return v6;
        }

        v12 = *(v4 + v9 + 31);
        result = a1(&v12);
        v9 = v5;
        if ((result & 1) == 0)
        {
          if (__OFSUB__(v5, v6))
          {
            __break(1u);
            return result;
          }

          if (v6 != v5)
          {
            v11 = *(v7 + v6);
            *(v7 + v6) = *(v4 + v5 + 32);
            *(v4 + v5 + 32) = v11;
          }

          break;
        }
      }
    }

    ++v6;
  }

  while (v6 < v5);
  return v6;
}

BOOL sub_2433EFA24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  sub_2433F5808(a2 + 32, a2 + 32 + *(a2 + 16), a1 + 32, a1 + 32 + v4, &v6);
  return v6;
}

size_t sub_2433EFAB0()
{
  v1 = _swift_stdlib_malloc_size(v0) - 32;
  result = swift_beginAccess();
  v3 = v0[2];
  if (__OFSUB__(v1, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (((v1 - v3) & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = _swift_stdlib_malloc_size(v0);
  if ((result - 32) >= v3)
  {
    v0[2] = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_2433EFB30(int64_t a1, int64_t a2)
{
  result = swift_beginAccess();
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v2[2];
  if (__OFSUB__(v7, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v7 - v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = __OFSUB__(0, v6);
  v9 = a1 - a2;
  if (v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_2433EEAE0(a2, v7, v9);
  if (a1 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < a1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = _swift_stdlib_malloc_size(v2);
  v10 = v2[2];
  v11 = v10 + v9;
  if (!__OFADD__(v10, v9))
  {
    result = swift_beginAccess();
    v2[2] = v11;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

size_t sub_2433EFC2C(int64_t a1, int64_t a2)
{
  v3 = v2;
  v6 = *v2;
  result = swift_beginAccess();
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = v6[2];
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = _swift_stdlib_malloc_size(v6);
  v12 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v11 - 32) >= v10)
  {
    if (a2 >= a1)
    {
      v13 = *v3;
      return sub_2433EFB30(a1, a2);
    }

    goto LABEL_21;
  }

  if (v10 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v10))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10)
  {
    v14 = (v10 - 1) | ((v10 - 1) >> 1) | (((v10 - 1) | ((v10 - 1) >> 1)) >> 2);
    v15 = v14 | (v14 >> 4) | ((v14 | (v14 >> 4)) >> 8);
    v16 = v15 | HIWORD(v15);
    if (v16 == -1)
    {
      v17 = 0xFFFFFFFFLL;
    }

    else
    {
      v17 = (v16 + 1);
    }
  }

  else
  {
    v17 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v17;
  if (a1 < 0)
  {
    goto LABEL_23;
  }

  v18 = result;
  v19 = *v3;
  result = swift_beginAccess();
  v20 = v19[2];
  if (v20 < a2)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  sub_2433EC2FC(v19, 0, a1);
  sub_2433EFAB0();
  sub_2433EC2FC(v19, a2, v20);

  *v3 = v18;
  return result;
}

size_t sub_2433EFDAC(void *a1, size_t a2)
{
  v5 = **(v2 + 16);
  swift_beginAccess();
  return sub_2433ED2C8(*(v5 + 16), *(v5 + 16), a1, a2);
}

uint64_t HandshakeState.e.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 84);
  v5 = *(a1 + 40);
  v6 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  v7 = sub_243400280();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t HandshakeState.e.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 84);
  v5 = *(a2 + 40);
  v6 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  v7 = sub_243400280();
  v8 = *(*(v7 - 8) + 40);

  return v8(v2 + v4, a1, v7);
}

uint64_t (*HandshakeState.e.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 84);
  return result;
}

uint64_t HandshakeState.init(handshakePattern:isInitiator:prologue:psk:responderStaticPriv:responderStaticPublic:initiatorStaticPriv:initiatorStaticPublic:)@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v160 = a8;
  v161 = a7;
  v162 = a6;
  v157 = a5;
  v167 = a3;
  v168 = a4;
  v154 = a2;
  v153 = a16;
  v152 = a13;
  v150 = a12;
  v170 = a15;
  v159 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_243400280();
  v20 = *(v19 - 8);
  v165 = v19;
  v166 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v140 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v138 = &v133 - v25;
  v26 = *(AssociatedTypeWitness - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v24);
  v139 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v136 = &v133 - v30;
  v156 = a14;
  v151 = a11;
  v31 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  v32 = swift_getAssociatedTypeWitness();
  v169 = v32;
  v33 = sub_243400280();
  v163 = *(v33 - 8);
  v164 = v33;
  v34 = *(v163 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v137 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v134 = &v133 - v38;
  v39 = *(v32 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v37);
  v135 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v133 = &v133 - v43;
  v44 = *a1;
  v45 = *(a1 + 1);
  *(a9 + 8) = 0u;
  *(a9 + 24) = 0u;
  v46 = a9;
  v172 = a11;
  v173 = a12;
  v47 = v152;
  v174 = v152;
  v175 = a14;
  v48 = v153;
  v176[0] = v170;
  v176[1] = v153;
  v49 = type metadata accessor for HandshakeState();
  v50 = v49[20];
  v148 = v26;
  v51 = *(v26 + 56);
  v144 = v26 + 56;
  v145 = v50;
  v51(v46 + v50, 1, 1, AssociatedTypeWitness);
  v52 = v46 + v49[21];
  v149 = AssociatedTypeWitness;
  v146 = v51;
  v51(v52, 1, 1, AssociatedTypeWitness);
  v53 = v169;
  v54 = v49[22];
  v147 = v39;
  v56 = v39 + 56;
  v55 = *(v39 + 56);
  v142 = v54;
  v55(v46 + v54, 1, 1, v169);
  v57 = v46 + v49[23];
  v143 = v55;
  v141 = v56;
  v55(v57, 1, 1, v53);
  v58 = v44;
  LOBYTE(v172) = v44;
  v155 = v45;
  v173 = v45;
  v59 = v150;
  v60 = v170;
  v61 = sub_2433F0DDC(&v172, v151, v150, v47, v156, v170, v48);
  v156 = v49;
  v62 = *(v48 + 8);
  sub_2433FB8F8(v61, v63, v59, v47, v60, v62, v46 + v49[25]);
  v172 = v59;
  v173 = v47;
  v174 = v60;
  v175 = v62;
  v64 = type metadata accessor for SymmetricState();
  sub_2433FBD18(v167, v168, v64);
  v65 = v154;
  *(v46 + 1) = v154;
  v158 = v44;
  if ((v65 & 1) == 0)
  {
    LOBYTE(v172) = v44;
    if (sub_2433F8834())
    {
      v88 = v165;
      v89 = v166;
      v90 = v138;
      (*(v166 + 16))(v138, v162, v165);
      v91 = v148;
      v92 = v149;
      if ((*(v148 + 48))(v90, 1, v149) == 1)
      {
        (*(v89 + 8))(v90, v88);
        v172 = 0;
        v173 = 0xE000000000000000;
        sub_243400330();
        MEMORY[0x245D33B00](0xD00000000000001ALL, 0x80000002434019B0);
        v171 = v158;
        sub_243400350();
        MEMORY[0x245D33B00](0xD00000000000001CLL, 0x80000002434019F0);
        goto LABEL_43;
      }

      v93 = *(v91 + 32);
      v94 = v136;
      v93(v136, v90, v92);
      v95 = *(v89 + 8);
      v96 = v145;
      v95(v46 + v145, v88);
      v93((v46 + v96), v94, v92);
      v146(v46 + v96, 0, 1, v92);
      v58 = v158;
    }

    LOBYTE(v172) = v58;
    if ((sub_2433F8B98() & 1) == 0)
    {
LABEL_15:
      v70 = v58;
      LOBYTE(v172) = v58;
      v106 = v155;

      v108 = sub_2433F8D6C(v107);
      v68 = v109;
      v111 = v110;
      v113 = v112;

      v69 = v156;
      v114 = (v46 + *(v156 + 96));
      *v114 = v108;
      v114[1] = v68;
      v114[2] = v111;
      v114[3] = v113;
      *v46 = 0;
      if (v106)
      {
        v115 = v157;
        if (v157)
        {
          v116 = *(v106 + 16);
          v68 = *(v157 + 16);

          if (v116 == v68)
          {
            v117 = *(v115 + 16);
            *(v46 + 8) = v115;
            *(v46 + 16) = v115 + 32;
            *(v46 + 24) = 0;
            *(v46 + 32) = (2 * v117) | 1;
            v118 = (v115 + 40);
            v119 = v117 + 1;
            v120 = v166;
            while (--v119)
            {
              v121 = *(v118 - 1);
              v122 = *v118 >> 62;
              if (v122 > 1)
              {
                if (v122 != 2)
                {
                  goto LABEL_37;
                }

                v126 = v121 + 16;
                v124 = *(v121 + 16);
                v125 = *(v126 + 8);
                v123 = __OFSUB__(v125, v124);
                v121 = v125 - v124;
                if (v123)
                {
                  __break(1u);
                  goto LABEL_30;
                }
              }

              else if (v122)
              {
                v123 = __OFSUB__(HIDWORD(v121), v121);
                LODWORD(v121) = HIDWORD(v121) - v121;
                if (v123)
                {
                  __break(1u);
                  goto LABEL_36;
                }

                v121 = v121;
              }

              else
              {
                v121 = BYTE6(*v118);
              }

              v118 += 2;
              if (v121 != 32)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_34;
          }

LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_30:
      if (v157)
      {
        v127 = *(v157 + 16);

        v120 = v166;
        if (!v127)
        {
LABEL_34:
          LOBYTE(v172) = v70;
          *(v46 + 2) = sub_2433F8DF4() & 1;
          LOBYTE(v172) = v70;
          sub_2433F1228(&v172, v69);
          sub_2433EB69C(v167, v168);
          v128 = v164;
          v129 = *(v163 + 8);
          v129(v159, v164);
          v130 = *(v120 + 8);
          v131 = v165;
          v130(v160, v165);
          v129(v161, v128);
          return (v130)(v162, v131);
        }

        __break(1u);
      }

      v120 = v166;
      goto LABEL_34;
    }

    v98 = v163;
    v97 = v164;
    v99 = v137;
    (*(v163 + 16))(v137, v159, v164);
    v100 = v147;
    if ((*(v147 + 48))(v99, 1, v169) == 1)
    {
      (*(v98 + 8))(v99, v97);
      v172 = 0;
      v173 = 0xE000000000000000;
      sub_243400330();
      MEMORY[0x245D33B00](0xD00000000000001ALL, 0x80000002434019B0);
      v171 = v158;
      sub_243400350();
      MEMORY[0x245D33B00](0xD00000000000001CLL, 0x80000002434019D0);
      goto LABEL_43;
    }

    v101 = *(v100 + 32);
    v102 = v135;
    v103 = v169;
    v101(v135, v99, v169);
    v104 = v142;
    (*(v98 + 8))(v46 + v142, v97);
    v101((v46 + v104), v102, v103);
    v84 = v46 + v104;
    v85 = v103;
    v86 = v143;
    v87 = &v173;
LABEL_14:
    v105 = *(v87 - 32) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v86(v84, 0, 1, v85);
    v58 = v158;
    goto LABEL_15;
  }

  LOBYTE(v172) = v44;
  v66 = sub_2433F8668();
  v67 = v149;
  if ((v66 & 1) == 0)
  {
LABEL_5:
    LOBYTE(v172) = v58;
    if ((sub_2433F8A68() & 1) == 0)
    {
      goto LABEL_15;
    }

    v76 = v165;
    v77 = v166;
    v78 = v140;
    (*(v166 + 16))(v140, v160, v165);
    v79 = v148;
    if ((*(v148 + 48))(v78, 1, v67) == 1)
    {
      (*(v77 + 8))(v78, v76);
      v172 = 0;
      v173 = 0xE000000000000000;
      sub_243400330();
      MEMORY[0x245D33B00](0xD00000000000001ALL, 0x80000002434019B0);
      v171 = v158;
      sub_243400350();
      MEMORY[0x245D33B00](0xD00000000000001CLL, 0x80000002434019D0);
      goto LABEL_43;
    }

    v80 = *(v79 + 32);
    v81 = v139;
    v80(v139, v78, v67);
    v82 = *(v77 + 8);
    v83 = v145;
    v82(v46 + v145, v76);
    v80((v46 + v83), v81, v67);
    v84 = v46 + v83;
    v85 = v67;
    v86 = v146;
    v87 = v176;
    goto LABEL_14;
  }

  v69 = v163;
  v68 = v164;
  v70 = v134;
  (*(v163 + 16))(v134, v161, v164);
  v71 = v147;
  if ((*(v147 + 48))(v70, 1, v169) != 1)
  {
    v72 = *(v71 + 32);
    v73 = v133;
    v74 = v169;
    v72(v133, v70, v169);
    v75 = v142;
    (*(v69 + 8))(v46 + v142, v68);
    v72((v46 + v75), v73, v74);
    v143(v46 + v75, 0, 1, v74);
    v58 = v158;
    goto LABEL_5;
  }

LABEL_39:
  (*(v69 + 8))(v70, v68);
  v172 = 0;
  v173 = 0xE000000000000000;
  sub_243400330();
  MEMORY[0x245D33B00](0xD00000000000001ALL, 0x80000002434019B0);
  v171 = v158;
  sub_243400350();
  MEMORY[0x245D33B00](0xD00000000000001CLL, 0x80000002434019F0);
LABEL_43:
  result = sub_243400360();
  __break(1u);
  return result;
}

uint64_t sub_2433F0DDC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a6;
  v59 = a4;
  v56 = a5;
  v57 = a3;
  v55 = a2;
  v9 = sub_2434000F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 1);
  if (v15)
  {
    HIDWORD(v50) = *a1;
    v51 = a7;
    v52 = v13;
    v53 = v10;
    v54 = v9;
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 32);
      v18 = MEMORY[0x277D84F90];
      do
      {
        v20 = *v17++;
        v19 = v20;
        v21 = v20 == 3;
        v22 = 862679920;
        if (v20 != 3)
        {
          v22 = 0x6B6361626C6C6166;
        }

        v23 = 0xE800000000000000;
        if (v21)
        {
          v23 = 0xE400000000000000;
        }

        if (v19 == 2)
        {
          v22 = 845902704;
          v23 = 0xE400000000000000;
        }

        v24 = 812348272;
        if (v19)
        {
          v24 = 829125488;
        }

        if (v19 <= 1)
        {
          v25 = v24;
        }

        else
        {
          v25 = v22;
        }

        if (v19 <= 1)
        {
          v26 = 0xE400000000000000;
        }

        else
        {
          v26 = v23;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_2433F6938(0, *(v18 + 2) + 1, 1, v18);
        }

        v28 = *(v18 + 2);
        v27 = *(v18 + 3);
        if (v28 >= v27 >> 1)
        {
          v18 = sub_2433F6938((v27 > 1), v28 + 1, 1, v18);
        }

        *(v18 + 2) = v28 + 1;
        v29 = &v18[16 * v28];
        *(v29 + 4) = v25;
        *(v29 + 5) = v26;
        --v16;
      }

      while (v16);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v60 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736B8, &unk_243401130);
    sub_2433F57A4();
    v30 = sub_2434000A0();
    v31 = v32;

    v10 = v53;
    v9 = v54;
    a7 = v51;
    v13 = v52;
    v14 = BYTE4(v50);
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  sub_243400330();

  v60 = 0x5F6573696F4ELL;
  v61 = 0xE600000000000000;
  if (qword_27ED73528 != -1)
  {
    result = swift_once();
  }

  v34 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  result = sub_2433FAB7C(v14);
  if ((v35 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v36 = (*(v34 + 56) + 32 * result);
  v37 = *v36;
  v38 = v36[1];
  v40 = v36[2];
  v39 = v36[3];

  v41 = MEMORY[0x245D33A90](v37, v38, v40, v39);
  v43 = v42;

  MEMORY[0x245D33B00](v41, v43);

  MEMORY[0x245D33B00](v30, v31);

  MEMORY[0x245D33B00](95, 0xE100000000000000);
  v44 = (*(v56 + 24))();
  MEMORY[0x245D33B00](v44);

  MEMORY[0x245D33B00](95, 0xE100000000000000);
  v45 = (*(v58 + 48))();
  MEMORY[0x245D33B00](v45);

  MEMORY[0x245D33B00](95, 0xE100000000000000);
  v46 = (*(a7 + 16))();
  MEMORY[0x245D33B00](v46);

  sub_2434000E0();
  v47 = sub_2434000D0();
  v49 = v48;
  result = (*(v10 + 8))(v13, v9);
  if (v49 >> 60 != 15)
  {

    return v47;
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_2433F1228(char *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v54 = a2;
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_243400280();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v48 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  v51 = swift_getAssociatedTypeWitness();
  v13 = sub_243400280();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v46 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v46 - v26;
  MEMORY[0x28223BE20](v25);
  v30 = &v46 - v29;
  v31 = *a1;
  if (*(v2 + 1) != 1)
  {
    v46 = v28;
    v58 = v31;
    v38 = sub_2433F8B98();
    v39 = v2;
    v35 = v53;
    v34 = v54;
    if (v38)
    {
      v40 = v52;
      (*(v52 + 16))(v18, v2 + *(v54 + 88), v53);
      v41 = v51;
      v42 = *(v51 - 8);
      result = (*(v42 + 48))(v18, 1, v51);
      if (result == 1)
      {
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      (*(v42 + 32))(v21, v18, v41);
      (*(v42 + 56))(v21, 0, 1, v41);
      sub_2433F18C8(v21, v34);
      (*(v40 + 8))(v21, v35);
    }

    v57 = v31;
    result = sub_2433F8668();
    if ((result & 1) == 0)
    {
      return result;
    }

    v43 = v47;
    (*(v49 + 16))(v47, v39 + *(v34 + 80), v50);
    v44 = *(AssociatedTypeWitness - 8);
    result = (*(v44 + 48))(v43, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v27 = v46;
      sub_2433FFF60();
      (*(v44 + 8))(v43, AssociatedTypeWitness);
      (*(*(v51 - 8) + 56))(v27, 0, 1);
      goto LABEL_14;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v56 = *a1;
  if ((sub_2433F8B98() & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v49 + 16))(v12, v2 + *(v54 + 80), v50);
  v32 = *(AssociatedTypeWitness - 8);
  result = (*(v32 + 48))(v12, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_2433FFF60();
  (*(v32 + 8))(v12, AssociatedTypeWitness);
  (*(*(v51 - 8) + 56))(v30, 0, 1);
  sub_2433F18C8(v30, v54);
  (*(v52 + 8))(v30, v53);
LABEL_5:
  v55 = v31;
  result = sub_2433F8668();
  v35 = v53;
  v34 = v54;
  if ((result & 1) == 0)
  {
    return result;
  }

  (*(v52 + 16))(v24, v2 + *(v54 + 88), v53);
  v36 = v51;
  v37 = *(v51 - 8);
  result = (*(v37 + 48))(v24, 1, v51);
  if (result == 1)
  {
    goto LABEL_18;
  }

  (*(v37 + 32))(v27, v24, v36);
  (*(v37 + 56))(v27, 0, 1, v36);
LABEL_14:
  v45 = v52;
  sub_2433F18C8(v27, v34);
  return (*(v45 + 8))(v27, v35);
}

uint64_t sub_2433F18C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  v6 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_243400280();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  (*(v9 + 16))(&v23 - v11, a1, v8);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = v17;
  (*(v13 + 8))(v12, AssociatedTypeWitness);
  v19 = *(a2 + 100);
  v20 = *(a2 + 48);
  v21 = *(*(a2 + 56) + 8);
  v23 = *(a2 + 24);
  v24 = v20;
  v25 = v21;
  v22 = type metadata accessor for SymmetricState();
  sub_2433FBD18(v16, v18, v22);
  return sub_2433EB69C(v16, v18);
}

uint64_t sub_2433F1B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v47 = a2;
  v4 = *(a3 + 40);
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_243400280();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v42 = &v31 - v10;
  v11 = sub_243400280();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = sub_2433FFF10();
  v34 = *(v15 - 8);
  v35 = v15;
  v16 = *(v34 + 64);
  MEMORY[0x28223BE20](v15);
  v37 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 48);
  if (v19(a1, 1, AssociatedTypeWitness) == 1 || (v32 = *(v7 - 8), v33 = *(v32 + 48), v33(v47, 1, v7) == 1))
  {
    sub_2433EB4BC();
    swift_allocError();
    *v20 = 2;
    return swift_willThrow();
  }

  (*(v43 + 16))(v14, a1, v11);
  result = (v19)(v14, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = v42;
  (*(v40 + 16))(v42, v47, v41);
  result = (v33)(v22, 1, v7);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v23 = v37;
  v24 = v39;
  sub_2433FFF50();
  (*(v32 + 8))(v22, v7);
  if (v24)
  {
    return (*(v18 + 8))(v14, AssociatedTypeWitness);
  }

  (*(v18 + 8))(v14, AssociatedTypeWitness);
  v25 = *(v36 + 100);
  v26 = *(v36 + 48);
  v27 = *(*(v36 + 56) + 8);
  v44 = *(v36 + 24);
  v45 = v26;
  v46 = v27;
  v28 = type metadata accessor for SymmetricState();
  sub_2433F574C();
  v29 = v28;
  v30 = v35;
  sub_2433FBF00(v23, v29, v35);
  return (*(v34 + 8))(v23, v30);
}

uint64_t HandshakeState.readPayload(_:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = a3;
  v9 = a2;
  v10 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    LODWORD(v11) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = v11;
    goto LABEL_7;
  }

  if (v10 != 2)
  {
    goto LABEL_9;
  }

  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (!v14)
  {
LABEL_7:
    if (v11 >= 0x10000)
    {
      sub_2433EB4BC();
      swift_allocError();
      *v15 = 5;
      swift_willThrow();
      return v8;
    }

LABEL_9:
    v43 = a2;
    v44 = a3;
    v16 = *(a4 + 96);
    v17 = (v4 + v16);
    v19 = *(v6 + v16 + 16);
    v18 = *(v6 + v16 + 24);
    if (v19 == v18 >> 1)
    {
      sub_2433EB4BC();
      swift_allocError();
      *v20 = 3;
      swift_willThrow();
      sub_2433EB648(v9, v8);
      v21 = v43;
      v22 = v44;
      goto LABEL_23;
    }

    if (v19 < (v18 >> 1))
    {
      v36 = result;
      v45 = v5;
      v23 = v17[1];
      result = sub_2433F22A8(v23 + 40 * v19, v40);
      if (__OFSUB__(v18 >> 1, v19))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v17[1] = v23;
      v17[2] = v19 + 1;
      v17[3] = v18;
      v24 = v41;
      v25 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v26 = *(v25 + 16);
      sub_2433EB648(v9, v8);
      result = v26(v24, v25);
      v27 = result;
      v28 = *(result + 16);
      if (!v28)
      {
LABEL_19:

        v30 = *(a4 + 100);
        v31 = *(a4 + 48);
        v32 = *(*(a4 + 56) + 8);
        v37 = *(a4 + 24);
        v38 = v31;
        v39 = v32;
        v33 = type metadata accessor for SymmetricState();
        v34 = v45;
        v35 = sub_2433FC088(v9, v8, v33);
        if (!v34)
        {
          v8 = v35;
          sub_2433F3494(a4, v36);
          __swift_destroy_boxed_opaque_existential_1(v40);
          sub_2433EB69C(v43, v44);
          return v8;
        }

LABEL_22:
        __swift_destroy_boxed_opaque_existential_1(v40);
        v21 = v43;
        v22 = v44;
LABEL_23:
        sub_2433EB69C(v21, v22);
        return v8;
      }

      v8 = 0;
      v29 = v45;
      while (v8 < *(v27 + 16))
      {
        LOBYTE(v37) = *(v27 + v8 + 32);
        result = sub_2433F230C(&v37, v6, &v43, *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40), *(a4 + 48), *(a4 + 56));
        if (v29)
        {

          goto LABEL_22;
        }

        if (v28 == ++v8)
        {
          v45 = 0;
          v9 = v43;
          v8 = v44;
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2433F22A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2433F230C(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v197 = a3;
  v205 = a1;
  v206 = a2;
  *(&v207 + 1) = a6;
  v208 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_243400280();
  v15 = *(v14 - 8);
  v198 = v14;
  v199 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v194 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v192 = &v188 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v191 = &v188 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v190 = &v188 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v189 = &v188 - v26;
  MEMORY[0x28223BE20](v25);
  v196 = &v188 - v27;
  *&v207 = a5;
  v213 = a8;
  v193 = type metadata accessor for CipherState();
  v28 = sub_243400280();
  v195 = *(v28 - 8);
  v29 = *(v195 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v188 - v30;
  v203 = a4;
  v204 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = *(*(*(AssociatedConformanceWitness + 8) + 8) + 8);
  v34 = swift_getAssociatedTypeWitness();
  v35 = sub_243400280();
  v36 = *(v35 - 8);
  v201 = v35;
  v202 = v36;
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v188 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = MEMORY[0x28223BE20](&v188 - v41);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v188 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v188 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v188 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v53 = MEMORY[0x28223BE20](v52);
  v54 = MEMORY[0x28223BE20](v53);
  result = MEMORY[0x28223BE20](v54);
  v61 = &v188 - v60;
  v62 = *v205;
  if (v62 > 2)
  {
    if (*v205 <= 4u)
    {
      if (v62 == 3)
      {
        v63 = v206;
        v64 = v199;
        v65 = (v199 + 16);
        if (*(v206 + 1) == 1)
        {
          *v209 = v203;
          *&v209[8] = v207;
          v210 = v204;
          v211 = v213;
          v212 = v208;
          v66 = type metadata accessor for HandshakeState();
          v67 = v189;
          v68 = v198;
          (*v65)(v189, v63 + *(v66 + 84), v198);
          v69 = v201;
          v70 = v202;
          (*(v202 + 16))(v48, v63 + *(v66 + 88), v201);
          sub_2433F1B3C(v67, v48, v66);
          (*(v70 + 8))(v48, v69);
          return (*(v64 + 8))(v67, v68);
        }

        else
        {
          *v209 = v203;
          *&v209[8] = v207;
          v210 = v204;
          v211 = v213;
          v212 = v208;
          v166 = type metadata accessor for HandshakeState();
          v167 = v190;
          v168 = v198;
          (*v65)(v190, v63 + *(v166 + 80), v198);
          v170 = v201;
          v169 = v202;
          (*(v202 + 16))(v45, v63 + *(v166 + 92), v201);
          sub_2433F1B3C(v167, v45, v166);
          (*(v169 + 8))(v45, v170);
          return (*(v64 + 8))(v167, v168);
        }
      }

      else
      {
        v123 = v206;
        v124 = (v199 + 16);
        if (*(v206 + 1) == 1)
        {
          *v209 = v203;
          *&v209[8] = v207;
          v210 = v204;
          v211 = v213;
          v212 = v208;
          v125 = v56;
          v126 = type metadata accessor for HandshakeState();
          v127 = v191;
          v128 = v198;
          (*v124)(v191, v123 + *(v126 + 80), v198);
          v130 = v201;
          v129 = v202;
          (*(v202 + 16))(v125, v123 + *(v126 + 92), v201);
          sub_2433F1B3C(v127, v125, v126);
          (*(v129 + 8))(v125, v130);
          return (*(v199 + 8))(v127, v128);
        }

        else
        {
          *v209 = v203;
          *&v209[8] = v207;
          v210 = v204;
          v211 = v213;
          v212 = v208;
          v171 = result;
          v172 = type metadata accessor for HandshakeState();
          v173 = v192;
          v174 = v198;
          (*v124)(v192, v123 + *(v172 + 84), v198);
          v176 = v201;
          v175 = v202;
          (*(v202 + 16))(v171, v123 + *(v172 + 88), v201);
          sub_2433F1B3C(v173, v171, v172);
          (*(v175 + 8))(v171, v176);
          return (*(v199 + 8))(v173, v174);
        }
      }
    }

    if (v62 == 5)
    {
      *v209 = v203;
      *&v209[8] = v207;
      v210 = v204;
      v211 = v213;
      v212 = v208;
      v90 = type metadata accessor for HandshakeState();
      v92 = v198;
      v91 = v199;
      v93 = v206;
      v94 = v194;
      (*(v199 + 16))(v194, v206 + *(v90 + 80), v198);
      v96 = v201;
      v95 = v202;
      (*(v202 + 16))(v40, v93 + *(v90 + 88), v201);
      sub_2433F1B3C(v94, v40, v90);
      (*(v95 + 8))(v40, v96);
      return (*(v91 + 8))(v94, v92);
    }

    v131 = v206;
    v132 = *(v206 + 8);
    if (v132)
    {
      v134 = *(v206 + 24);
      v133 = *(v206 + 32);
      if (v134 == v133 >> 1)
      {
        __break(1u);
      }

      else
      {
        v205 = (v133 >> 1);
        v202 = v133;
        if (v134 < (v133 >> 1))
        {
          v201 = *(v206 + 16);
          v135 = (v201 + 16 * v134);
          v136 = *v135;
          v137 = v135[1];
          v138 = v207;
          *v209 = v203;
          *&v209[8] = v207;
          v210 = v204;
          v139 = v213;
          v140 = v208;
          v211 = v213;
          v212 = v208;
          v204 = *(type metadata accessor for HandshakeState() + 100);
          swift_unknownObjectRetain();
          sub_2433EB648(v136, v137);
          v141 = *(v140 + 8);
          *v209 = v138;
          *&v209[16] = v139;
          v210 = v141;
          v142 = type metadata accessor for SymmetricState();
          sub_2433FC2AC(v136, v137, v142);
          result = sub_2433EB69C(v136, v137);
          if (!__OFSUB__(v205, v134))
          {
            v143 = v131[1];
            v144 = v201;
            v131[1] = v132;
            v131[2] = v144;
            v145 = v202;
            v131[3] = v134 + 1;
            v131[4] = v145;
            return swift_unknownObjectRelease();
          }

          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_2433EB4BC();
    swift_allocError();
    v147 = 1;
LABEL_33:
    *v146 = v147;
    return swift_willThrow();
  }

  v71 = v195;
  v72 = v28;
  v73 = v196;
  v194 = AssociatedConformanceWitness;
  v74 = v197;
  v192 = AssociatedTypeWitness;
  v205 = v34;
  if (v62)
  {
    if (v62 != 1)
    {
      *v209 = v203;
      *&v209[8] = v207;
      v210 = v204;
      v211 = v213;
      v212 = v208;
      v117 = type metadata accessor for HandshakeState();
      v118 = v198;
      v119 = v199;
      v120 = v206;
      (*(v199 + 16))(v73, v206 + *(v117 + 84), v198);
      v122 = v201;
      v121 = v202;
      (*(v202 + 16))(v51, v120 + *(v117 + 92), v201);
      sub_2433F1B3C(v73, v51, v117);
      (*(v121 + 8))(v51, v122);
      return (*(v119 + 8))(v73, v118);
    }

    v198 = v57;
    v199 = v58;
    *v209 = v203;
    *&v209[8] = v207;
    v210 = v204;
    v211 = v213;
    v212 = v208;
    v75 = type metadata accessor for HandshakeState();
    v76 = *(v71 + 16);
    v77 = v206;
    v203 = *(v75 + 100);
    v78 = v72;
    v76(v31, v206 + v203, v72);
    v79 = (*(*(v193 - 8) + 48))(v31, 1);
    (*(v71 + 8))(v31, v78);
    v80 = v205;
    v81 = swift_getAssociatedConformanceWitness();
    result = (*(v81 + 24))(v80, v81);
    if (v79 == 1)
    {
      v82 = *v74;
      v83 = v74[1];
      v84 = result;
      sub_2433EB648(*v74, v83);
      sub_2433FB624(v84, v82, v83, v209);
      v204 = *&v209[8];
      v85 = *v209;
      v86 = *v74;
      v87 = v74[1];
      sub_2433EB648(*v74, v87);
      v88 = v84;
      v89 = v86;
    }

    else
    {
      v148 = result + 16;
      if (__OFADD__(result, 16))
      {
LABEL_43:
        __break(1u);
        return result;
      }

      v149 = *v74;
      v150 = v74[1];
      sub_2433EB648(*v74, v150);
      sub_2433FB624(v148, v149, v150, v209);
      v204 = *&v209[8];
      v85 = *v209;
      v151 = *v74;
      v87 = v74[1];
      sub_2433EB648(*v74, v87);
      v88 = v148;
      v89 = v151;
    }

    sub_2433F8F68(v88, v89, v87, v209);
    v152 = *v74;
    v153 = v74[1];
    *v74 = *v209;
    sub_2433EB69C(v152, v153);
    v154 = *(v75 + 88);
    v156 = v201;
    v155 = v202;
    v157 = v199;
    (*(v202 + 16))(v199, v77 + v154, v201);
    v158 = *(v205 - 1);
    v159 = (*(v158 + 48))(v157, 1);
    (*(v155 + 8))(v157, v156);
    if (v159 == 1)
    {
      v160 = *(v208 + 8);
      *v209 = v207;
      *&v209[16] = v213;
      v210 = v160;
      v161 = type metadata accessor for SymmetricState();
      v162 = v204;
      v163 = v200;
      v164 = sub_2433FC088(v85, v204, v161);
      if (v163)
      {
        return sub_2433EB69C(v85, v162);
      }

      else
      {
        v200 = 0;
        v182 = v164;
        v183 = v165;
        v184 = v205;
        v185 = swift_getAssociatedConformanceWitness();
        v186 = v198;
        v187 = v200;
        (*(v185 + 16))(v182, v183, v184, v185);
        result = sub_2433EB69C(v85, v162);
        if (!v187)
        {
          (*(v158 + 56))(v186, 0, 1, v184);
          return (*(v202 + 40))(v77 + v154, v186, v201);
        }
      }
    }

    else
    {
      sub_2433EB4BC();
      swift_allocError();
      *v177 = 2;
      swift_willThrow();
      return sub_2433EB69C(v85, v204);
    }
  }

  else
  {
    v199 = v59;
    *v209 = v203;
    *&v209[8] = v207;
    v210 = v204;
    v211 = v213;
    v212 = v208;
    v97 = type metadata accessor for HandshakeState();
    v98 = *(v97 + 92);
    v100 = v201;
    v99 = v202;
    (*(v202 + 16))(v61, v206 + v98, v201);
    v101 = v205;
    v102 = *(v205 - 1);
    v103 = (*(v102 + 48))(v61, 1, v205);
    (*(v99 + 8))(v61, v100);
    if (v103 != 1)
    {
      sub_2433EB4BC();
      swift_allocError();
      v147 = 2;
      goto LABEL_33;
    }

    v198 = v102;
    v203 = v98;
    v204 = v97;
    v104 = swift_getAssociatedConformanceWitness();
    v105 = (*(v104 + 24))(v101, v104);
    v106 = *v74;
    v107 = v74[1];
    sub_2433EB648(*v74, v107);
    sub_2433FB624(v105, v106, v107, v209);
    v108 = *v209;
    v109 = v101;
    v110 = *v74;
    v111 = v74[1];
    sub_2433EB648(*v74, v111);
    sub_2433F8F68(v105, v110, v111, v209);
    v112 = *v74;
    v113 = v74[1];
    *v74 = *v209;
    sub_2433EB69C(v112, v113);
    v114 = *(v104 + 16);
    sub_2433EB648(v108, *(&v108 + 1));
    v116 = v199;
    v115 = v200;
    v114(v108, *(&v108 + 1), v109, v104);
    if (!v115)
    {
      (*(v198 + 56))(v116, 0, 1, v109);
      v178 = v206;
      (*(v202 + 40))(v206 + v203, v116, v201);
      v179 = *(v204 + 100);
      v180 = *(v208 + 8);
      *v209 = v207;
      *&v209[16] = v213;
      v210 = v180;
      v181 = type metadata accessor for SymmetricState();
      sub_2433FBD18(v108, *(&v108 + 1), v181);
      if (*(v178 + 8))
      {
        *v209 = v108;
        sub_2433FBF00(v209, v181, MEMORY[0x277CC9318]);
      }
    }

    return sub_2433EB69C(v108, *(&v108 + 1));
  }

  return result;
}

uint64_t sub_2433F3494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 96) + 16) == *(v2 + *(a1 + 96) + 24) >> 1)
  {
    v4 = *(v2 + 1);
    v5 = *(v2 + 2);
    v6 = *(a1 + 100);
    v14 = *(a1 + 24);
    v15 = *(a1 + 48);
    v16 = *(*(a1 + 56) + 8);
    v7 = type metadata accessor for SymmetricState();
    sub_2433FC528(v4, v5, v7, a2);
    v8 = type metadata accessor for TransportState();
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  else
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 48);
    v12 = type metadata accessor for TransportState();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t HandshakeState.writePayload(_:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = v4;
  v50 = xmmword_2434010E0;
  v8 = (v4 + *(a4 + 96));
  v10 = v8[2];
  v9 = v8[3];
  if (v10 == v9 >> 1)
  {
    sub_2433EB4BC();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
LABEL_32:
    sub_2433EB69C(v50, *(&v50 + 1));
    return v6;
  }

  if (v10 >= (v9 >> 1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = a2;
  v45 = result;
  v51 = v5;
  v14 = v8[1];
  result = sub_2433F22A8(v14 + 40 * v10, v47);
  if (__OFSUB__(v9 >> 1, v10))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8[1] = v14;
  v8[2] = v10 + 1;
  v8[3] = v9;
  v15 = v48;
  v16 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  result = (*(v16 + 16))(v15, v16);
  v17 = result;
  v18 = *(result + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v51;
    do
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      LOBYTE(v46[0]) = *(v17 + v19 + 32);
      result = sub_2433F3940(v46, v7, &v50, *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40), *(a4 + 48), *(a4 + 56));
      if (v20)
      {
        goto LABEL_22;
      }

      ++v19;
    }

    while (v18 != v19);
    v51 = 0;
    v21 = *(&v50 + 1);
    v22 = v50;

    v24 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (!v24)
      {
        v25 = BYTE6(v21);
        goto LABEL_15;
      }

      LODWORD(v25) = HIDWORD(v22) - v22;
      if (!__OFSUB__(HIDWORD(v22), v22))
      {
        v25 = v25;
        goto LABEL_15;
      }

      goto LABEL_47;
    }

    if (v24 != 2)
    {
      goto LABEL_14;
    }

    v41 = *(v22 + 16);
    v40 = *(v22 + 24);
    v30 = __OFSUB__(v40, v41);
    v25 = v40 - v41;
    if (v30)
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  else
  {

LABEL_14:
    v25 = 0;
  }

LABEL_15:
  v26 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v26 == 2)
    {
      v29 = *(v6 + 16);
      v28 = *(v6 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        __break(1u);
LABEL_22:

LABEL_31:
        __swift_destroy_boxed_opaque_existential_1(v47);
        goto LABEL_32;
      }
    }

    else
    {
      v27 = 0;
    }

LABEL_26:
    v31 = v25 + v27;
    if (!__OFADD__(v25, v27))
    {
      v32 = *(a4 + 24);
      v33 = *(a4 + 48);
      result = (*(v33 + 64))(v32, v33);
      if (!__OFADD__(v31, result))
      {
        if (v31 + result < 0x10000)
        {
          v35 = *(a4 + 100);
          v36 = *(a4 + 32);
          v37 = *(*(a4 + 56) + 8);
          v46[0] = v32;
          v46[1] = v36;
          v46[2] = v33;
          v46[3] = v37;
          v38 = type metadata accessor for SymmetricState();
          v39 = v51;
          result = sub_2433FC7AC(v6, a3, v38);
          if (!v39)
          {
LABEL_38:
            v42 = result;
            v43 = v23;
            sub_2433FFE50();
            sub_2433EB69C(v42, v43);
            v44 = *(&v50 + 1);
            v6 = v50;
            sub_2433EB648(v50, *(&v50 + 1));
            sub_2433F3494(a4, v45);
            __swift_destroy_boxed_opaque_existential_1(v47);
            sub_2433EB69C(v6, v44);
            return v6;
          }
        }

        else
        {
          sub_2433EB4BC();
          swift_allocError();
          *v34 = 5;
          swift_willThrow();
        }

        goto LABEL_31;
      }

      goto LABEL_45;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v26)
  {
    v27 = BYTE6(a3);
    goto LABEL_26;
  }

  LODWORD(v27) = HIDWORD(v6) - v6;
  if (!__OFSUB__(HIDWORD(v6), v6))
  {
    v27 = v27;
    goto LABEL_26;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_2433F3940(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v185 = a8;
  v186 = a5;
  v193 = a6;
  v168 = a3;
  v181 = a1;
  v183 = a2;
  v184 = a9;
  swift_getAssociatedTypeWitness();
  v179 = a4;
  v180 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v163 = *(AssociatedConformanceWitness + 8);
  v172 = *(*(v163 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_243400280();
  v13 = *(v12 - 8);
  v175 = v12;
  v176 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v170 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v167 = &v162 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v166 = &v162 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v165 = &v162 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v164 = &v162 - v24;
  MEMORY[0x28223BE20](v23);
  v169 = &v162 - v25;
  v26 = swift_checkMetadataState();
  v174 = *(v26 - 8);
  v27 = *(v174 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v162 - v29;
  v171 = *(AssociatedTypeWitness - 8);
  v31 = *(v171 + 64);
  v32 = MEMORY[0x28223BE20](v28);
  v34 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v162 - v35;
  v177 = sub_243400280();
  v182 = *(v177 - 8);
  v37 = *(v182 + 64);
  v38 = MEMORY[0x28223BE20](v177);
  v39 = MEMORY[0x28223BE20](v38);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v162 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = MEMORY[0x28223BE20](&v162 - v43);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v162 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v162 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v162 - v53;
  result = MEMORY[0x28223BE20](v52);
  v61 = &v162 - v60;
  v62 = *v181;
  if (v62 <= 2)
  {
    v170 = v36;
    v181 = AssociatedTypeWitness;
    if (v62)
    {
      v69 = v182;
      v70 = v183;
      v71 = v177;
      if (v62 != 1)
      {
        v187 = v179;
        v188 = v186;
        v189 = v193;
        v190 = v180;
        v191 = v185;
        v192 = v184;
        v105 = type metadata accessor for HandshakeState();
        (*(v69 + 16))(v47, v70 + *(v105 + 84), v71);
        v107 = v175;
        v106 = v176;
        v108 = v169;
        (*(v176 + 16))(v169, v70 + *(v105 + 92), v175);
        sub_2433F1B3C(v47, v108, v105);
        (*(v106 + 8))(v108, v107);
        return (*(v69 + 8))(v47, v71);
      }

      v187 = v179;
      v188 = v186;
      v189 = v193;
      v190 = v180;
      v191 = v185;
      v192 = v184;
      v72 = type metadata accessor for HandshakeState();
      (*(v69 + 16))(v50, v70 + *(v72 + 80), v71);
      v73 = v26;
      if ((*(v174 + 48))(v50, 1, v26) == 1)
      {
        (*(v69 + 8))(v50, v71);
LABEL_28:
        sub_2433EB4BC();
        swift_allocError();
        v129 = 2;
        goto LABEL_35;
      }

      v130 = v30;
      (*(v174 + 32))(v30, v50, v73);
      v131 = v34;
      sub_2433FFF60();
      v132 = v73;
      v133 = v181;
      v134 = swift_getAssociatedConformanceWitness();
      v96 = (*(v134 + 8))(v133, v134);
      v98 = v135;
      (*(v171 + 8))(v131, v133);
      v136 = *(v72 + 100);
      v137 = *(v184 + 8);
      v187 = v186;
      v188 = v193;
      v189 = v185;
      v190 = v137;
      v138 = type metadata accessor for SymmetricState();
      v139 = v178;
      v140 = sub_2433FC7AC(v96, v98, v138);
      if (!v139)
      {
        v157 = v140;
        v158 = v141;
        sub_2433EB69C(v96, v98);
        v190 = MEMORY[0x277CC9318];
        v191 = MEMORY[0x277CC9300];
        v187 = v157;
        v188 = v158;
        v159 = __swift_project_boxed_opaque_existential_1(&v187, MEMORY[0x277CC9318]);
        v160 = *v159;
        v161 = v159[1];
        sub_2433EB648(v157, v158);
        sub_2433F5580(v160, v161);
        sub_2433EB69C(v157, v158);
        (*(v174 + 8))(v130, v132);
        return __swift_destroy_boxed_opaque_existential_1(&v187);
      }

      (*(v174 + 8))(v130, v132);
    }

    else
    {
      v176 = v57;
      v83 = v182;
      v82 = v183;
      v84 = v177;
      v85 = v186;
      if ((*v183 & 1) == 0)
      {
        v187 = v179;
        v188 = v186;
        v189 = v193;
        v190 = v180;
        v191 = v185;
        v192 = v184;
        v86 = type metadata accessor for HandshakeState();
        v87 = *(v83 + 16);
        v175 = *(v86 + 84);
        v87(v61, v82 + v175, v84);
        v88 = v174;
        v89 = (*(v174 + 48))(v61, 1, v26);
        (*(v83 + 8))(v61, v84);
        if (v89 != 1)
        {
          goto LABEL_28;
        }

        sub_2433FFF70();
        (*(v88 + 56))(v54, 0, 1, v26);
        (*(v83 + 40))(v82 + v175, v54, v84);
        v85 = v186;
      }

      v187 = v179;
      v188 = v85;
      v189 = v193;
      v190 = v180;
      v191 = v185;
      v192 = v184;
      v90 = type metadata accessor for HandshakeState();
      v91 = v176;
      (*(v83 + 16))(v176, v82 + *(v90 + 84), v84);
      v92 = v174;
      result = (*(v174 + 48))(v91, 1, v26);
      if (result == 1)
      {
LABEL_40:
        __break(1u);
        return result;
      }

      v93 = v170;
      sub_2433FFF60();
      (*(v92 + 8))(v91, v26);
      v94 = v181;
      v95 = swift_getAssociatedConformanceWitness();
      v96 = (*(v95 + 8))(v94, v95);
      v98 = v97;
      (*(v171 + 8))(v93, v94);
      v190 = MEMORY[0x277CC9318];
      v191 = MEMORY[0x277CC9300];
      v187 = v96;
      v188 = v98;
      v99 = __swift_project_boxed_opaque_existential_1(&v187, MEMORY[0x277CC9318]);
      v100 = *v99;
      v101 = v99[1];
      sub_2433EB648(v96, v98);
      sub_2433F5580(v100, v101);
      __swift_destroy_boxed_opaque_existential_1(&v187);
      v102 = *(v90 + 100);
      v103 = *(v184 + 8);
      v187 = v186;
      v188 = v193;
      v189 = v185;
      v190 = v103;
      v104 = type metadata accessor for SymmetricState();
      sub_2433FBD18(v96, v98, v104);
      if (*(v82 + 8))
      {
        v187 = v96;
        v188 = v98;
        sub_2433FBF00(&v187, v104, MEMORY[0x277CC9318]);
      }
    }

    return sub_2433EB69C(v96, v98);
  }

  if (*v181 > 4u)
  {
    if (v62 == 5)
    {
      v187 = v179;
      v188 = v186;
      v189 = v193;
      v190 = v180;
      v191 = v185;
      v192 = v184;
      v74 = v58;
      v75 = type metadata accessor for HandshakeState();
      v77 = v182;
      v76 = v183;
      v78 = v177;
      (*(v182 + 16))(v74, v183 + *(v75 + 80), v177);
      v80 = v175;
      v79 = v176;
      v81 = v170;
      (*(v176 + 16))(v170, v76 + *(v75 + 88), v175);
      sub_2433F1B3C(v74, v81, v75);
      (*(v79 + 8))(v81, v80);
      return (*(v77 + 8))(v74, v78);
    }

    v112 = v183;
    v113 = *(v183 + 8);
    if (v113)
    {
      v115 = *(v183 + 24);
      v114 = *(v183 + 32);
      if (v115 == v114 >> 1)
      {
        __break(1u);
      }

      else
      {
        v181 = (v114 >> 1);
        v182 = v113;
        v177 = v114;
        if (v115 < (v114 >> 1))
        {
          v176 = *(v183 + 16);
          v116 = (v176 + 16 * v115);
          v117 = *v116;
          v118 = v116[1];
          v120 = v185;
          v119 = v186;
          v187 = v179;
          v188 = v186;
          v121 = v193;
          v189 = v193;
          v190 = v180;
          v122 = v184;
          v191 = v185;
          v192 = v184;
          v180 = *(type metadata accessor for HandshakeState() + 100);
          swift_unknownObjectRetain();
          sub_2433EB648(v117, v118);
          v123 = *(v122 + 8);
          v187 = v119;
          v188 = v121;
          v189 = v120;
          v190 = v123;
          v124 = type metadata accessor for SymmetricState();
          sub_2433FC2AC(v117, v118, v124);
          result = sub_2433EB69C(v117, v118);
          if (!__OFSUB__(v181, v115))
          {
            v125 = v112[1];
            v126 = v176;
            v112[1] = v182;
            v112[2] = v126;
            v127 = v177;
            v112[3] = v115 + 1;
            v112[4] = v127;
            return swift_unknownObjectRelease();
          }

          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_2433EB4BC();
    swift_allocError();
    v129 = 1;
LABEL_35:
    *v128 = v129;
    return swift_willThrow();
  }

  if (v62 == 3)
  {
    v63 = v183;
    v64 = (v182 + 16);
    if (*(v183 + 1) == 1)
    {
      v187 = v179;
      v188 = v186;
      v189 = v193;
      v190 = v180;
      v191 = v185;
      v192 = v184;
      v142 = v56;
      v65 = type metadata accessor for HandshakeState();
      v144 = v177;
      (*v64)(v142, v63 + *(v65 + 84), v177);
      v67 = v175;
      v66 = v176;
      v68 = v164;
      (*(v176 + 16))(v164, v63 + *(v65 + 88), v175);
      sub_2433F1B3C(v142, v68, v65);
      (*(v66 + 8))(v68, v67);
    }

    else
    {
      v187 = v179;
      v188 = v186;
      v189 = v193;
      v190 = v180;
      v191 = v185;
      v192 = v184;
      v142 = result;
      v143 = type metadata accessor for HandshakeState();
      v144 = v177;
      (*v64)(v142, v63 + *(v143 + 80), v177);
      v146 = v175;
      v145 = v176;
      v147 = v165;
      (*(v176 + 16))(v165, v63 + *(v143 + 92), v175);
      sub_2433F1B3C(v142, v147, v143);
      (*(v145 + 8))(v147, v146);
    }

    return (*(v182 + 8))(v142, v144);
  }

  else
  {
    v110 = v182;
    v109 = v183;
    v111 = (v182 + 16);
    if (*(v183 + 1) == 1)
    {
      v187 = v179;
      v188 = v186;
      v189 = v193;
      v190 = v180;
      v191 = v185;
      v192 = v184;
      v148 = v42;
      v149 = type metadata accessor for HandshakeState();
      v150 = v177;
      (*v111)(v42, v109 + v149[20], v177);
      v151 = v176;
      v152 = *(v176 + 16);
      v153 = v109 + v149[23];
      v154 = &v194;
    }

    else
    {
      v187 = v179;
      v188 = v186;
      v189 = v193;
      v190 = v180;
      v191 = v185;
      v192 = v184;
      v148 = v59;
      v149 = type metadata accessor for HandshakeState();
      v150 = v177;
      (*v111)(v148, v109 + v149[21], v177);
      v151 = v176;
      v152 = *(v176 + 16);
      v153 = v109 + v149[22];
      v154 = &v195;
    }

    v155 = *(v154 - 32);
    v156 = v175;
    v152(v155, v153, v175);
    sub_2433F1B3C(v148, v155, v149);
    (*(v151 + 8))(v155, v156);
    return (*(v110 + 8))(v148, v150);
  }
}

void sub_2433F49B8(uint64_t a1)
{
  sub_2433F551C(319, &qword_281505A58, &qword_27ED736A0, &qword_243401110, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 16);
    swift_getAssociatedTypeWitness();
    sub_243400280();
    if (v5 <= 0x3F)
    {
      v6 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
      swift_getAssociatedTypeWitness();
      sub_243400280();
      if (v7 <= 0x3F)
      {
        sub_2433F551C(319, &qword_281505A50, &qword_27ED736A8, qword_243401118, MEMORY[0x277D83F98]);
        if (v8 <= 0x3F)
        {
          v10 = *(a1 + 24);
          v11 = *(a1 + 48);
          v12 = *(*(a1 + 56) + 8);
          type metadata accessor for SymmetricState();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2433F4B90(int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  v56 = AssociatedTypeWitness;
  v55 = swift_getAssociatedTypeWitness();
  v11 = *(v55 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v57 = v9;
  if (v9 <= v13)
  {
    v9 = v13;
  }

  v14 = *(sub_2433FFF40() - 8);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = *(v14 + 84);
  v18 = *(v6 + 64);
  v19 = v17 - 1;
  if (!v17)
  {
    v19 = 0;
  }

  v20 = *(v6 + 80);
  v21 = *(v11 + 80);
  v22 = *(v14 + 64);
  if (v17 <= 0xC)
  {
    v23 = 12;
  }

  else
  {
    v23 = *(v14 + 84);
  }

  if (v9 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v9;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = v24;
  }

  if (!v8)
  {
    ++v18;
  }

  if (v12)
  {
    v26 = *(v11 + 64);
  }

  else
  {
    v26 = *(v11 + 64) + 1;
  }

  if (v17)
  {
    v27 = 8;
  }

  else
  {
    v27 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = v18 + v20;
  v29 = v18 + v21;
  v30 = v26 + v21;
  v31 = v26 + 7;
  v32 = v16;
  v33 = v16 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v34 = v16 + 32;
  v35 = v22 + 7;
  v36 = ((v22 + 7) & 0xFFFFFFFFFFFFFFF8) + v32 + v27;
  if (v25 < a2)
  {
    v37 = ((v35 + (v36 & ~v32)) & 0xFFFFFFFFFFFFFFF8) + ((v34 + ((v31 + ((v30 + ((v29 + ((v28 + ((v20 + 40) & ~v20)) & ~v20)) & ~v21)) & ~v21)) & 0xFFFFFFFFFFFFFFF8)) & v33) + 16;
    v38 = v37 & 0xFFFFFFF8;
    if ((v37 & 0xFFFFFFF8) != 0)
    {
      v39 = 2;
    }

    else
    {
      v39 = a2 - v25 + 1;
    }

    if (v39 >= 0x10000)
    {
      v40 = 4;
    }

    else
    {
      v40 = 2;
    }

    if (v39 < 0x100)
    {
      v40 = 1;
    }

    if (v39 >= 2)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v42 = *(a1 + v37);
        if (v42)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v42 = *(a1 + v37);
        if (v42)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v41)
    {
      v42 = *(a1 + v37);
      if (v42)
      {
LABEL_44:
        v43 = v42 - 1;
        if (v38)
        {
          v43 = 0;
          v44 = *a1;
        }

        else
        {
          v44 = 0;
        }

        return v25 + (v44 | v43) + 1;
      }
    }
  }

  v45 = (((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + v20 + 32) & ~v20;
  if (v57 == v25)
  {
    if (v8 >= 2)
    {
      v46 = (*(v7 + 48))(v45, v8, v56);
      goto LABEL_65;
    }

    return 0;
  }

  v47 = ~v21;
  v48 = (v29 + ((v28 + v45) & ~v20)) & v47;
  if (v13 == v25)
  {
    if (v12 < 2)
    {
      return 0;
    }

    v46 = (*(v11 + 48))(v48, v12, v55);
LABEL_65:
    if (v46 >= 2)
    {
      return v46 - 1;
    }

    else
    {
      return 0;
    }
  }

  v50 = ((v31 + ((v30 + v48) & v47)) & 0xFFFFFFFFFFFFFFF8);
  if ((v24 & 0x80000000) != 0)
  {
    v52 = (v50 + v34) & v33;
    if (v19 == v23)
    {
      v46 = (*(v15 + 48))(v52);
      goto LABEL_65;
    }

    v53 = *(v15 + 48);
    v54 = (v36 + v52) & ~v32;

    return v53(v54);
  }

  else
  {
    v51 = *v50;
    if (*v50 >= 0xFFFFFFFF)
    {
      LODWORD(v51) = -1;
    }

    return (v51 + 1);
  }
}

void sub_2433F4FE4(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  v5 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v62 = v7;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  v60 = swift_getAssociatedTypeWitness();
  v11 = *(v60 - 8);
  v66 = v11;
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v61 = v9;
  if (v9 <= v13)
  {
    v9 = v13;
  }

  v14 = 0;
  v15 = *(sub_2433FFF40() - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  v18 = *(v7 + 64);
  v19 = v17 - 1;
  if (!v17)
  {
    v19 = 0;
  }

  v20 = *(v7 + 80);
  v21 = *(v11 + 80);
  v22 = *(v11 + 64);
  v23 = *(v15 + 80);
  v24 = *(v15 + 64);
  if (v17 <= 0xC)
  {
    v25 = 12;
  }

  else
  {
    v25 = *(v15 + 84);
  }

  if (v9 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v9;
  }

  if (v26 <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = v26;
  }

  if (!v8)
  {
    ++v18;
  }

  v28 = v18 + v20;
  v29 = v18 + v21;
  v30 = (v18 + v21 + ((v18 + v20 + ((v20 + 40) & ~v20)) & ~v20)) & ~v21;
  if (!v12)
  {
    ++v22;
  }

  v31 = v22 + v21;
  v32 = v22 + 7;
  v33 = (v22 + 7 + ((v22 + v21 + v30) & ~v21)) & 0xFFFFFFFFFFFFFFF8;
  v34 = v23;
  v35 = v23 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v36 = v23 + 32;
  v37 = (v36 + v33) & v35;
  v38 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = v38 + 8;
  v40 = v38 + 9;
  if (v17)
  {
    v40 = v39;
  }

  v41 = v40 + v34;
  v42 = (v41 & ~v34) + v24;
  v43 = ((v42 + 7) & 0xFFFFFFFFFFFFFFF8) + v37 + 16;
  if (v27 < a3)
  {
    if (((v42 + 7) & 0xFFFFFFF8) + v37 == -16)
    {
      v44 = a3 - v27 + 1;
    }

    else
    {
      v44 = 2;
    }

    if (v44 >= 0x10000)
    {
      v45 = 4;
    }

    else
    {
      v45 = 2;
    }

    if (v44 < 0x100)
    {
      v45 = 1;
    }

    if (v44 >= 2)
    {
      v14 = v45;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 > v27)
  {
    if (v43)
    {
      v46 = 1;
    }

    else
    {
      v46 = a2 - v27;
    }

    if (v43)
    {
      v47 = ~v27 + a2;
      bzero(a1, v43);
      *a1 = v47;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v43) = v46;
      }

      else
      {
        *(a1 + v43) = v46;
      }
    }

    else if (v14)
    {
      *(a1 + v43) = v46;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v43) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_56;
    }

    *(a1 + v43) = 0;
  }

  else if (v14)
  {
    *(a1 + v43) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_56;
  }

  if (!a2)
  {
    return;
  }

LABEL_56:
  v48 = (((a1 + 10) & 0xFFFFFFFFFFFFFFF8) + v20 + 32) & ~v20;
  if (v61 == v27)
  {
    if (v8 < 2)
    {
      return;
    }

    v49 = *(v62 + 56);
    v50 = a2 + 1;
    v51 = v8;
    v52 = AssociatedTypeWitness;

    goto LABEL_60;
  }

  v48 = (v29 + ((v28 + v48) & ~v20)) & ~v21;
  if (v13 == v27)
  {
    if (v12 < 2)
    {
      return;
    }

    v49 = *(v66 + 56);
    v50 = a2 + 1;
    v51 = v12;
    v52 = v60;

LABEL_60:
    v49(v48, v50, v51, v52);
    return;
  }

  v53 = ((v32 + ((v31 + v48) & ~v21)) & 0xFFFFFFFFFFFFFFF8);
  if ((v26 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v53[2] = 0;
      v53[3] = 0;
      *v53 = a2 & 0x7FFFFFFF;
      v53[1] = 0;
    }

    else
    {
      *v53 = a2 - 1;
    }

    return;
  }

  v54 = ((v53 + v36) & v35);
  if (v25 < a2)
  {
    v55 = (v42 + 7) & 0xFFFFFFF8;
    v39 = (v55 + 16);
    if (v55 == -16)
    {
      return;
    }

    v56 = ~v25 + a2;
LABEL_75:
    bzero(((v53 + v36) & v35), v39);
    *v54 = v56;
    return;
  }

  if (v19 == v25)
  {
    v56 = a2 - v17;
    if (a2 >= v17)
    {
      if (!v39)
      {
        return;
      }

      goto LABEL_75;
    }

    v57 = *(v16 + 56);
    v58 = a2 + 1;
    v59 = (v53 + v36) & v35;
  }

  else
  {
    v57 = *(v16 + 56);
    v59 = (v54 + v41) & ~v34;
    v58 = a2;
  }

  v57(v59, v58);
}

void sub_2433F551C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2433F5580(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_2433FFE30();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_2433F56B8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2433F56B8(uint64_t a1, uint64_t a2)
{
  result = sub_2433FFD70();
  if (!result || (result = sub_2433FFDA0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2433FFD90();
      return sub_2433FFE30();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2433F574C()
{
  result = qword_27ED736B0;
  if (!qword_27ED736B0)
  {
    sub_2433FFF10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED736B0);
  }

  return result;
}

unint64_t sub_2433F57A4()
{
  result = qword_27ED736C0;
  if (!qword_27ED736C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED736B8, &unk_243401130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED736C0);
  }

  return result;
}

uint64_t sub_2433F5808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  result = a4 - a3;
  if (a3)
  {
    v7 = a4 - a3;
  }

  else
  {
    v7 = 0;
  }

  if (a1)
  {
    if (v7 == a2 - a1)
    {
      if (a3)
      {
        result = cc_cmp_safe();
        *a5 = result == 0;
        return result;
      }

      goto LABEL_11;
    }

LABEL_9:
    *a5 = 0;
    return result;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2433F588C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_2434001C0();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2433F58D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_2434002F0();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    result = sub_2433F798C(v9, result, *(a1 + 36), 0, a1);
    *a2 = v9[0];
    *(a2 + 8) = result;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
  }

  return result;
}

Chirp::Modifiers_optional __swiftcall Modifiers.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2434003A0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Modifiers.rawValue.getter()
{
  v1 = *v0;
  v2 = 812348272;
  v3 = 845902704;
  v4 = 862679920;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 829125488;
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

uint64_t sub_2433F5A54(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 829125488;
    }

    else
    {
      v3 = 812348272;
    }

    v2 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE400000000000000;
    v3 = 845902704;
  }

  else if (a1 == 3)
  {
    v2 = 0xE400000000000000;
    v3 = 862679920;
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x6B6361626C6C6166;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 829125488;
    }

    else
    {
      v8 = 812348272;
    }

    v7 = 0xE400000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 862679920;
    if (a2 != 3)
    {
      v5 = 0x6B6361626C6C6166;
      v4 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v6 = 845902704;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_2434003C0();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_2433F5BA8()
{
  v1 = *v0;
  sub_243400440();
  sub_243400130();

  return sub_243400460();
}

uint64_t sub_2433F5C6C()
{
  *v0;
  *v0;
  *v0;
  sub_243400130();
}

uint64_t sub_2433F5D1C()
{
  v1 = *v0;
  sub_243400440();
  sub_243400130();

  return sub_243400460();
}

void sub_2433F5DE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 812348272;
  v5 = 0xE400000000000000;
  v6 = 845902704;
  v7 = 0xE400000000000000;
  v8 = 862679920;
  if (v2 != 3)
  {
    v8 = 0x6B6361626C6C6166;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 829125488;
    v3 = 0xE400000000000000;
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

uint64_t sub_2433F5E78@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v7 = 0;
  v8 = a1 >> 16;
  v9 = a2 >> 16;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v13 = byte_285625770[v7 + 32];
    v14 = 862679920;
    if (v13 != 3)
    {
      v14 = 0x6B6361626C6C6166;
    }

    v15 = 0xE800000000000000;
    if (v13 == 3)
    {
      v15 = 0xE400000000000000;
    }

    if (v13 == 2)
    {
      v14 = 845902704;
      v15 = 0xE400000000000000;
    }

    v16 = 812348272;
    if (byte_285625770[v7 + 32])
    {
      v16 = 829125488;
    }

    if (byte_285625770[v7 + 32] <= 1u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    if (byte_285625770[v7 + 32] <= 1u)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = v15;
    }

    if (v17 == a3 && v18 == a4 && !v8 && (HIBYTE(v18) & 0xC) == v9)
    {
    }

    else
    {
      v19 = sub_2434003B0();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2433F6C70(0, *(v10 + 16) + 1, 1);
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_2433F6C70((v11 > 1), v12 + 1, 1);
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + v12 + 32) = v13;
LABEL_5:
    ++v7;
  }

  while (v7 != 5);

  if (*(v10 + 16))
  {
    v20 = *(v10 + 32);
  }

  else
  {
    v20 = 5;
  }

  *a5 = v20;
  return result;
}

unint64_t HandshakeAndModifiers.init(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v75 = a5;
  v77 = sub_243400490();
  v10 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v13 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 >> 14;
  v78 = a2;
  v79 = (a2 >> 14);
  if (a1 >> 14 == a2 >> 14)
  {

    goto LABEL_38;
  }

  v76 = (v11 + 8);

  v15 = a1;
  v74 = a1 >> 14;
  while (1)
  {
    v17 = a3;
    v18 = sub_2434002B0();
    v20 = v19;
    if (sub_243400070())
    {
      if ((v20 & 0x2000000000000000) != 0)
      {
        v21 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v21 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (!v21)
      {
        __break(1u);
        goto LABEL_61;
      }

      if ((v20 & 0x1000000000000000) != 0)
      {
        v26 = sub_243400120();
      }

      else
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v23 = v18;
        }

        else
        {
          if ((v18 & 0x1000000000000000) != 0)
          {
            v22 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v22 = sub_243400340();
          }

          v23 = *v22;
        }

        v24 = v23;
        v25 = (__clz(~v23) - 24) << 16;
        if (v24 < 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 65541;
        }
      }

      v27 = 4 * v21;
      if (v27 == v26 >> 14)
      {
        result = sub_2433F7590(v18, v20);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_67;
        }

        sub_2434004A0();
        v5 = sub_243400470();
        (*v76)(v13, v77);
        if (v5)
        {
          goto LABEL_32;
        }
      }

      if (sub_243400060())
      {
        if ((v20 & 0x1000000000000000) != 0)
        {
          if (v27 != sub_243400120() >> 14)
          {
LABEL_30:
            if ((sub_243400060() & 1) == 0 || (sub_243400050() & 1) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_4;
          }
        }

        else if (v27 != ((4 * sub_243400310()) & 0x3FFFFFFFFFFFFLL))
        {
          goto LABEL_30;
        }

        result = sub_2433F7590(v18, v20);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_68;
        }

        sub_2434004A0();
        v5 = sub_243400480();
        (*v76)(v13, v77);
        if (v5)
        {
LABEL_32:

          goto LABEL_5;
        }

        goto LABEL_30;
      }
    }

LABEL_4:
    v16 = sub_243400080();

    if ((v16 & 1) == 0)
    {
      break;
    }

LABEL_5:
    a3 = v17;
    v15 = sub_243400290();
    v14 = v15 >> 14;
    if ((v15 >> 14) == v79)
    {
      v14 = v79;
      goto LABEL_37;
    }
  }

  a3 = v17;
LABEL_37:
  if (v14 < v74)
  {
    goto LABEL_63;
  }

LABEL_38:
  v29 = sub_2434002C0();
  v5 = v30;
  v77 = v31;
  v15 = v32;

  if (v79 < v5 >> 14)
  {
    goto LABEL_64;
  }

  v76 = v29;

  v74 = a3;
  v33 = sub_2434002C0();
  v35 = v34;
  v37 = v36;

  v80 = 43;
  v81 = 0xE100000000000000;
  MEMORY[0x28223BE20](v38);
  v73[-2] = &v80;

  v73[2] = v35;
  v73[3] = v33;
  v73[1] = v37;
  v79 = sub_2433F6E90(0x7FFFFFFFFFFFFFFFLL, 1, sub_2433F7A24, &v73[-4], v33, v35, v37, v39);
  if (qword_27ED73528 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v40 = qword_27ED737D0;

    v41 = v76;
    v42 = v77;
    v43 = sub_2433F7BF4(v40, v76, v5, v77, v15);

    sub_2433F58D4(v43, &v80);

    if (!v82)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736C8, &qword_243401150);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_243401140;
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_243400330();
      v49 = MEMORY[0x245D33A90](v41, v5, v42, v15);
      v51 = v50;

      v80 = v49;
      v81 = v51;
      v52 = 0xD000000000000018;
      v53 = 0x8000000243401A10;
      goto LABEL_57;
    }

    v44 = v80;

    v45 = sub_2434002A0();
    v46 = v74;
    if (v45 == sub_2434002A0())
    {

      v47 = 0;
      goto LABEL_58;
    }

    v54 = sub_2434002A0();

    v55 = sub_2434002A0();

    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      break;
    }

    v58 = v78;
    if (v57 != sub_2434002A0())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736C8, &qword_243401150);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_243401140;
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_243400330();
      MEMORY[0x245D33B00](0xD000000000000019, 0x8000000243401A30);
      v67 = MEMORY[0x245D33A90](a1, v58, v46, a4);
      v69 = v68;

      MEMORY[0x245D33B00](v67, v69);

      v53 = 0x8000000243401A50;
      v52 = 0xD000000000000019;
LABEL_57:
      MEMORY[0x245D33B00](v52, v53);
      v71 = v80;
      v70 = v81;
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 32) = v71;
      *(v48 + 40) = v70;
      sub_243400430();

      v44 = 0;
      v47 = 1;
LABEL_58:
      v72 = v75;
      *v75 = v44;
      v72[1] = v47;
      return result;
    }

    v59 = v79;
    v60 = *(v79 + 2);
    if (!v60)
    {
      v47 = MEMORY[0x277D84F90];

      goto LABEL_58;
    }

    v5 = 0;
    v15 = (v79 + 56);
    v47 = MEMORY[0x277D84F90];
    a4 = &unk_2434012A0;
    while (v5 < *(v59 + 16))
    {
      v61 = *(v15 - 8);
      v62 = *v15;
      a1 = *(v15 - 24);
      v63 = *(v15 - 16);
      swift_bridgeObjectRetain_n();
      sub_2433F5E78(a1, v63, v61, v62, &v80);
      v64 = v80;
      if (v80 == 5)
      {
        goto LABEL_62;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_2433F6B64(0, *(v47 + 16) + 1, 1, v47, &qword_27ED736E8, &unk_2434012A0);
      }

      v59 = v79;
      v66 = *(v47 + 16);
      v65 = *(v47 + 24);
      if (v66 >= v65 >> 1)
      {
        a1 = v79;
        v47 = sub_2433F6B64((v65 > 1), v66 + 1, 1, v47, &qword_27ED736E8, &unk_2434012A0);
        v59 = a1;
      }

      ++v5;
      *(v47 + 16) = v66 + 1;
      *(v47 + v66 + 32) = v64;
      v15 += 32;
      if (v60 == v5)
      {

        goto LABEL_58;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

char *sub_2433F6938(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73710, &qword_2434012C8);
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

char *sub_2433F6A44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736F8, &qword_2434012B0);
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

char *sub_2433F6B64(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_2433F6C50(char *a1, int64_t a2, char a3)
{
  result = sub_2433F6C90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2433F6C70(char *a1, int64_t a2, char a3)
{
  result = sub_2433F6D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2433F6C90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73708, &qword_2434012C0);
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

char *sub_2433F6D9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736E8, &unk_2434012A0);
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

char *sub_2433F6E90@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x277D84F90];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_2434002B0();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_243400290() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_243400290();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_2434002C0();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2433F6A44(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_2433F6A44((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_243400290();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_2434002C0();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_2433F6A44((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_2433F6A44(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_2434002C0();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_2433F6A44(0, 1, 1, MEMORY[0x277D84F90]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x277D84F90];
}

void *sub_2433F7298(void *result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v9 = result;
      v10 = a2;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v9;
      a2 = v10;
      a4 = v13;
      a5 = v12;
      a6 = v11;
    }

    v14 = sub_2433F7A7C(result, a2, a3, a4, a5, a6, a7);

    return v14;
  }

  return result;
}

uint64_t sub_2433F7348(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736F0, &unk_243401540);
  result = sub_243400390();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = (*(v4 + 56) + 32 * v16);
    v33 = v18[1];
    v34 = *v18;
    v19 = v18[3];
    v32 = v18[2];
    v20 = *(v9 + 40);
    sub_243400440();
    MEMORY[0x245D33DD0](v17);
    result = sub_243400460();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + v24) = v17;
    v29 = (*(v9 + 56) + 32 * v24);
    *v29 = v34;
    v29[1] = v33;
    v29[2] = v32;
    v29[3] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2433F7590(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2433F76E0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_243400320();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_243400340() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_2433F76E0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2433F7778(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2433F77EC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2433F7778(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2433F7910(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2433F77EC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
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
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_243400340();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_2433F7910(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2434001B0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245D33B20](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

_BYTE *sub_2433F798C(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(a5 + 56);
    *result = *(*(a5 + 48) + a2);
    v6 = (v5 + 32 * a2);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];

    return v7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2433F7A24(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2434003C0() & 1;
  }
}

uint64_t sub_2433F7A7C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = result;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = a4 >> 16;
  v16 = a5 >> 16;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = (*(a3 + 56) + 32 * v20);
    result = v21[2];
    if (result != a6 || v21[3] != a7 || *v21 >> 16 != v15 || v21[1] >> 16 != v16)
    {
      result = sub_2434003B0();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v27 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    if (__OFADD__(v28++, 1))
    {
      __break(1u);
      return sub_2433F7348(v27, a2, v28, a3);
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_2433F7348(v27, a2, v28, a3);
    }

    v19 = *(v10 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v13 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2433F7BF4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = swift_bridgeObjectRetain_n();
  if (v12 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v20 = swift_slowAlloc();

      v18 = sub_2433F7298(v20, v13, a1, a2, a3, a4, a5);
      MEMORY[0x245D34100](v20, -1, -1);
      result = swift_bridgeObjectRelease_n();
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v21[0] = v21;
  MEMORY[0x28223BE20](v15);
  bzero(v21 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v14);
  v16 = sub_2433F7A7C(v21 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v13, a1, a2, a3, a4, a5);
  if (v5)
  {
    swift_willThrow();
    result = swift_bridgeObjectRelease_n();
    goto LABEL_7;
  }

  v18 = v16;
  swift_bridgeObjectRelease_n();
LABEL_6:
  result = v18;
LABEL_7:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2433F7DDC()
{
  result = qword_27ED736D0;
  if (!qword_27ED736D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED736D0);
  }

  return result;
}

unint64_t sub_2433F7E34()
{
  result = qword_27ED736D8;
  if (!qword_27ED736D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED736E0, &qword_2434011F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED736D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Modifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Modifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2433F8004(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2433F8060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t ChirpErrors.hashValue.getter()
{
  v1 = *v0;
  sub_243400440();
  MEMORY[0x245D33DD0](v1);
  return sub_243400460();
}

uint64_t sub_2433F815C()
{
  v1 = *v0;
  sub_243400440();
  MEMORY[0x245D33DD0](v1);
  return sub_243400460();
}

uint64_t sub_2433F81D0()
{
  v1 = *v0;
  sub_243400440();
  MEMORY[0x245D33DD0](v1);
  return sub_243400460();
}

unint64_t sub_2433F8218()
{
  result = qword_27ED73718;
  if (!qword_27ED73718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73718);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChirpErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChirpErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2433F83CC(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  v10 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v11 = *(v7 + 24) >> 1, v11 < v9))
  {
    if (v8 <= v9)
    {
      v12 = v8 + v6;
    }

    else
    {
      v12 = v8;
    }

    result = sub_2433F6924(result, v12, 1, v7);
    v7 = result;
    v11 = *(result + 24) >> 1;
  }

  v13 = *(v7 + 16);
  v14 = v11 - v13;
  v15 = 0;
  if (v3 && v4 && v4 > v3 && v11 != v13)
  {
    if (v5 >= v14)
    {
      v15 = v11 - v13;
    }

    else
    {
      v15 = v5;
    }

    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v13 + 32), v3, v15);
    v3 += v15;
  }

  if (v15 < v6)
  {
    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (!v17)
  {
    *(v7 + 16) = v18;
LABEL_24:
    if (v15 != v14 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v21 = *(v7 + 16);
  v24 = *v3;
  v22 = v3 + 1;
  v23 = v24;
  while (1)
  {
    v25 = *(v7 + 24);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v21 + 1)
    {
      break;
    }

    if (v21 < v26)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v21;
  }

  result = sub_2433F6924((v25 > 1), v21 + 1, 1, v7);
  v7 = result;
  v26 = *(result + 24) >> 1;
  if (v21 >= v26)
  {
    goto LABEL_37;
  }

LABEL_40:
  v27 = v21 + 32;
  while (1)
  {
    *(v7 + v27) = v23;
    if (v22 == v4)
    {
      break;
    }

    v28 = *v22++;
    v23 = v28;
    if (++v27 - v26 == 32)
    {
      v21 = v26;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v27 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t sub_2433F857C(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2433F6B50(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_2433F8668()
{
  v1 = *v0;
  result = sub_2433F8DF4();
  if (result)
  {
    v3 = 1;
    return v3 & 1;
  }

  if (qword_27ED73528 != -1)
  {
    result = swift_once();
  }

  v4 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  result = sub_2433FAB7C(v1);
  if ((v5 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = (*(v4 + 56) + 32 * result);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];

  MEMORY[0x245D33A90](v7, v8, v9, v10);

  v11 = sub_243400190();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    do
    {
      if (sub_243400070())
      {
        MEMORY[0x245D33AF0](v13, v14);
      }

      v13 = sub_243400190();
      v14 = v15;
    }

    while (v15);
  }

  v16 = sub_2433F954C(0, 0xE000000000000000);
  v18 = v17;

  if (v18)
  {
    if (v16 == 75 && v18 == 0xE100000000000000)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_2434003C0();
    }

    return v3 & 1;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_2433F8834()
{
  v1 = *v0;
  result = sub_2433F8DF4();
  if (result)
  {
    v3 = 1;
    return v3 & 1;
  }

  if (qword_27ED73528 != -1)
  {
    result = swift_once();
  }

  v4 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  result = sub_2433FAB7C(v1);
  if ((v5 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = (*(v4 + 56) + 32 * result);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];

  MEMORY[0x245D33A90](v7, v8, v9, v10);

  v11 = sub_243400190();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = MEMORY[0x277D84F90];
    do
    {
      if (sub_243400070())
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2433F6C50(0, v15[2] + 1, 1);
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          sub_2433F6C50((v17 > 1), v18 + 1, 1);
        }

        v15[2] = v18 + 1;
        v19 = &v15[2 * v18];
        v19[4] = v13;
        v19[5] = v14;
      }

      else
      {
      }

      v13 = sub_243400190();
      v14 = v16;
    }

    while (v16);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v15[2] >= 2uLL)
  {
    v21 = v15[6];
    v20 = v15[7];

    if (v21 == 78 && v20 == 0xE100000000000000)
    {

      v3 = 0;
    }

    else
    {
      v22 = sub_2434003C0();

      v3 = v22 ^ 1;
    }

    return v3 & 1;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2433F8A68()
{
  result = *v0;
  if (qword_27ED73528 != -1)
  {
    v18 = *v0;
    swift_once();
    result = v18;
  }

  v2 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_2433FAB7C(result);
  if ((v3 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = (*(v2 + 56) + 32 * result);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  v9 = MEMORY[0x245D33A90](v5, v6, v7, v8);
  v11 = v10;

  v12 = sub_2433F588C(v9, v11);
  v14 = v13;

  if (!v14)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v12 == 78 && v14 == 0xE100000000000000)
  {

    v17 = 0;
  }

  else
  {
    v16 = sub_2434003C0();

    v17 = v16 ^ 1;
  }

  return v17 & 1;
}

unint64_t sub_2433F8B98()
{
  result = *v0;
  if (qword_27ED73528 != -1)
  {
    v20 = *v0;
    swift_once();
    result = v20;
  }

  v2 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  result = sub_2433FAB7C(result);
  if ((v3 & 1) == 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v4 = (*(v2 + 56) + 32 * result);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  MEMORY[0x245D33A90](v5, v6, v7, v8);

  v9 = sub_243400190();
  v11 = v10;
  if (v10)
  {
    v12 = v9;
    do
    {
      if (sub_243400070())
      {
        MEMORY[0x245D33AF0](v12, v11);
      }

      v12 = sub_243400190();
      v11 = v13;
    }

    while (v13);
  }

  v14 = sub_2434001D0();
  v16 = sub_2433F588C(v14, v15);
  v18 = v17;

  if (!v18)
  {
    goto LABEL_18;
  }

  if (v16 == 75 && v18 == 0xE100000000000000)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_2434003C0();
  }

  return v19 & 1;
}

uint64_t sub_2433F8D6C(uint64_t a1)
{
  LOBYTE(v10[0]) = *v1;
  result = sub_2433F95CC();
  v10[0] = result;
  v10[1] = v4;
  v10[2] = 0;
  v10[3] = v5;
  if (a1)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = (a1 + 32);
      do
      {
        v8 = *v7++;
        v9 = v8;
        sub_2433FA794(&v9, v10);
        --v6;
      }

      while (v6);
      return v10[0];
    }
  }

  return result;
}

unint64_t sub_2433F8DF4()
{
  result = *v0;
  if (qword_27ED73528 != -1)
  {
    v15 = *v0;
    swift_once();
    result = v15;
  }

  v2 = qword_27ED737D0;
  if (!*(qword_27ED737D0 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  result = sub_2433FAB7C(result);
  if ((v3 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v4 = (*(v2 + 56) + 32 * result);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  MEMORY[0x245D33A90](v5, v6, v7, v8);

  v9 = sub_243400190();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    do
    {
      if (sub_243400070())
      {
        MEMORY[0x245D33AF0](v11, v12);
      }

      v11 = sub_243400190();
      v12 = v13;
    }

    while (v13);
  }

  v14 = sub_243400140();

  return v14 == 1;
}