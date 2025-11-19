uint64_t sub_24EBA2064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24EB9FF3C(a1, v5, v4);
}

uint64_t sub_24EBA2110(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24EBA0158(a1, v5, v4);
}

uint64_t sub_24EBA21BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EBA2224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EBA228C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EBA2304(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EBA2384(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RefURLFieldsProvider()
{
  result = qword_27F22A868;
  if (!qword_27F22A868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EBA2440(uint64_t a1)
{
  if (qword_27F210678 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  __swift_project_value_buffer(v2, qword_27F22E418);
  v3 = MEMORY[0x277D837D0];
  result = sub_24F929AD8();
  if (v5[1])
  {
    v5[3] = v3;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t ProductCapabilityLayout.init(metrics:iconView:titleText:captionText:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_24EBA2618(a1, a5 + 120);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F922268();
  sub_24EBA2650(a1);
  sub_24E612C80(a3, a5 + 40);
  sub_24E612C80(a4, a5 + 80);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t ProductCapabilityLayout.Metrics.init(iconSize:iconMargin:titleSpace:captionTopSpace:captionBottomSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = a7;
  a6[1] = a8;
  sub_24E612C80(a1, (a6 + 2));
  sub_24E612C80(a2, (a6 + 7));
  sub_24E612C80(a3, (a6 + 12));
  sub_24E612C80(a4, (a6 + 17));

  return sub_24E612C80(a5, (a6 + 22));
}

double ProductCapabilityLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v48 = sub_24F92CDB8();
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9225E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24F922618();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v47 - v17;
  v51 = a1;
  v19 = [a1 traitCollection];
  v20 = sub_24F92BF98();

  if (v20)
  {
    (*(v10 + 104))(v12, *MEMORY[0x277D22788], v9);
    sub_24F9225F8();
    __swift_project_boxed_opaque_existential_1(v3, *(v3 + 24));
    if ((sub_24F922238() & 1) == 0)
    {
      v22 = *(v3 + 24);
      v21 = *(v3 + 32);
      v23 = __swift_project_boxed_opaque_existential_1(v3, v22);
      v56 = v22;
      v57 = *(v21 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
      (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v23, v22);
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_24E615E00(v3 + 136, v54);
      v56 = sub_24F9229A8();
      v57 = MEMORY[0x277D228E0];
      __swift_allocate_boxed_opaque_existential_1(v55);
      sub_24F9229B8();
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    sub_24E615E00(v3 + 176, v54);
    v25 = sub_24F9229A8();
    v26 = MEMORY[0x277D228E0];
    v56 = v25;
    v57 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(v55);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v55);
    v27 = *(v3 + 104);
    v28 = *(v3 + 112);
    v29 = __swift_project_boxed_opaque_existential_1((v3 + 80), v27);
    v54[3] = v27;
    v54[4] = *(v28 + 8);
    v30 = __swift_allocate_boxed_opaque_existential_1(v54);
    (*(*(v27 - 8) + 16))(v30, v29, v27);
    sub_24E615E00(v3 + 216, v53);
    sub_24E615E00(v3 + 256, v52);
    v56 = sub_24F9229F8();
    v57 = MEMORY[0x277D22900];
    __swift_allocate_boxed_opaque_existential_1(v55);
    sub_24F9229E8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_24E615E00(v3 + 296, v54);
    v56 = v25;
    v57 = v26;
    __swift_allocate_boxed_opaque_existential_1(v55);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_24F9225D8();
    a2 = v31;
    (*(v49 + 8))(v18, v50);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v3, *(v3 + 24));
    if ((sub_24F922238() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1((v3 + 136), *(v3 + 160));
      sub_24E8ED7D8();
      sub_24F9223A8();
      v34 = v33;
      (*(v6 + 8))(v8, v48);
      v32.n128_f64[0] = v34 + *(v3 + 120);
    }

    (*(v10 + 104))(v12, *MEMORY[0x277D22788], v9, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_24F93A400;
    sub_24E615E00(v3 + 176, v55);
    v36 = sub_24F9229A8();
    v37 = MEMORY[0x277D228E0];
    *(v35 + 56) = v36;
    *(v35 + 64) = v37;
    __swift_allocate_boxed_opaque_existential_1((v35 + 32));
    sub_24F9229B8();
    v38 = *(v3 + 104);
    v39 = *(v3 + 112);
    v40 = __swift_project_boxed_opaque_existential_1((v3 + 80), v38);
    v56 = v38;
    v57 = *(v39 + 8);
    v41 = __swift_allocate_boxed_opaque_existential_1(v55);
    (*(*(v38 - 8) + 16))(v41, v40, v38);
    sub_24E615E00(v3 + 216, v54);
    sub_24E615E00(v3 + 256, v53);
    v42 = sub_24F9229F8();
    v43 = MEMORY[0x277D22900];
    *(v35 + 96) = v42;
    *(v35 + 104) = v43;
    __swift_allocate_boxed_opaque_existential_1((v35 + 72));
    sub_24F9229E8();
    sub_24F9225F8();
    sub_24F9225D8();
    __swift_project_boxed_opaque_existential_1((v3 + 136), *(v3 + 160));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v44 = *(v6 + 8);
    v45 = v48;
    v44(v8, v48);
    __swift_project_boxed_opaque_existential_1((v3 + 296), *(v3 + 320));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v44(v8, v45);
    (*(v49 + 8))(v14, v50);
  }

  return a2;
}

uint64_t ProductCapabilityLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v54 = a2;
  v49 = sub_24F92CDB8();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24F922938();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v38 - v7;
  v46 = sub_24F922998();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24F9221D8();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F9228C8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v39 = sub_24F9228E8();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93A400;
  v20 = v2[8];
  v21 = v3[9];
  v22 = __swift_project_boxed_opaque_existential_1(v3 + 5, v20);
  v65 = v20;
  v23 = *(v21 + 8);
  v24 = v50;
  v66 = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v22, v20);
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  sub_24E615E00(v64, v19 + 32);
  sub_24E615E00((v3 + 22), v19 + 80);
  sub_24E930DFC(v62, v19 + 120);
  *(v19 + 72) = 1;
  *(v19 + 160) = 8;
  sub_24E930E6C(v62);
  __swift_destroy_boxed_opaque_existential_1(v64);
  sub_24E615E00((v3 + 32), v64);
  sub_24E615E00((v3 + 10), v19 + 168);
  sub_24E615E00((v3 + 27), v19 + 216);
  sub_24E930DFC(v64, v19 + 256);
  *(v19 + 208) = 1;
  *(v19 + 296) = 8;
  sub_24E930E6C(v64);
  v26 = [v24 traitCollection];
  LOBYTE(v22) = sub_24F92BF98();

  v65 = &type metadata for _VerticalFlowLayout;
  v27 = sub_24EBA3CDC();
  LOBYTE(v64[0]) = 0;
  v66 = v27;
  v64[1] = v19;
  sub_24E615E00(v3, v62);
  sub_24E615E00((v3 + 17), v61);
  if (v22)
  {
    v60 = 0;
    v59 = 0u;
    v58 = 0u;
    v28 = *MEMORY[0x277D22898];
    v29 = *(v11 + 104);
    v29(v16, v28, v10);
    v29(v13, v28, v10);
    v56 = sub_24F922418();
    v57 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v55);
    sub_24F922408();
    sub_24F9228D8();
    v30 = v51;
    sub_24F9228B8();
    (*(v52 + 8))(v30, v53);
    (*(v38 + 8))(v18, v39);
  }

  else
  {
    v31 = *(v41 + 104);
    v32 = v43;
    v31(v40, *MEMORY[0x277D228C0], v43);
    v60 = 0;
    v59 = 0u;
    v58 = 0u;
    v56 = sub_24F922418();
    v57 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v55);
    sub_24F922408();
    v31(v42, *MEMORY[0x277D228C8], v32);
    v33 = v44;
    sub_24F922978();
    v34 = v51;
    sub_24F922958();
    (*(v52 + 8))(v34, v53);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_24F922218();
    v53 = v35;
    __swift_project_boxed_opaque_existential_1(v3 + 17, v3[20]);
    v36 = v47;
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v48 + 8))(v36, v49);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_24F922228();
    (*(v45 + 8))(v33, v46);
  }

  return sub_24F922128();
}

double _s12GameStoreKit23ProductCapabilityLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, void *a2)
{
  v4 = sub_24F9225E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922618();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D22788], v4, v10);
  sub_24F9225F8();
  v13 = [a2 traitCollection];
  LOBYTE(v7) = sub_24F92BF98();

  v14 = MEMORY[0x277D228E0];
  if (v7)
  {
    v15 = *(a1 + 8);
    v21[3] = MEMORY[0x277D85048];
    v21[4] = MEMORY[0x277D225F8];
    v21[0] = v15;
    v16 = sub_24F9229A8();
    v23 = v16;
    v24 = v14;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_24E615E00(a1 + 16, v21);
    v23 = v16;
    v24 = v14;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_24E615E00(a1 + 56, v21);
  v17 = sub_24F9229A8();
  v23 = v17;
  v24 = v14;
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_24E615E00(a1 + 96, v21);
  v23 = v17;
  v24 = v14;
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_24E615E00(a1 + 136, v21);
  v23 = v17;
  v24 = v14;
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_24E615E00(a1 + 176, v21);
  v23 = v17;
  v24 = v14;
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_24F9225D8();
  v19 = v18;
  (*(v9 + 8))(v12, v8);
  return v19;
}

unint64_t sub_24EBA3CDC()
{
  result = qword_27F22A878;
  if (!qword_27F22A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A878);
  }

  return result;
}

unint64_t sub_24EBA3D34()
{
  result = qword_27F22A880;
  if (!qword_27F22A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A880);
  }

  return result;
}

uint64_t sub_24EBA3D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
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

uint64_t sub_24EBA3DD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EBA3E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EBA3EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
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
      *(result + 216) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LocalAskToBuyAction.__allocating_init(adamId:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v12 = *a1;
  v11 = a1[1];
  v13 = (v10 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_adamId);
  *v13 = v12;
  v13[1] = v11;
  v14 = (v10 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_completion);
  *v14 = a2;
  v14[1] = a3;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  *&v26 = 0;
  *(&v26 + 1) = 0xE000000000000000;

  sub_24F92C888();

  *&v26 = 0xD000000000000015;
  *(&v26 + 1) = 0x800000024FA495E0;
  MEMORY[0x253050C20](v12, v11);

  v15 = v26;
  sub_24F928A98();
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(v10 + v16, 1, 1, v17);
  v18 = (v10 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v10 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 16) = v20;
    *(v19 + 32) = v28;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    v25[1] = v21;
    v25[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830);
  }

  sub_24E601704(v29, &qword_27F235830);
  *(v10 + 16) = v15;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  return v10;
}

uint64_t LocalAskToBuyAction.init(adamId:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v32 = sub_24F928AD8();
  v14 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  v19 = (v4 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_adamId);
  *v19 = v18;
  v19[1] = v17;
  v20 = (v4 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_completion);
  *v20 = a2;
  v20[1] = a3;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;

  sub_24F92C888();

  *&v38 = 0xD000000000000015;
  *(&v38 + 1) = 0x800000024FA495E0;
  MEMORY[0x253050C20](v18, v17);

  v21 = v38;
  sub_24F928A98();
  v22 = sub_24F929608();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v30 + 8))(v10, v31);
    v33 = v24;
    v34 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  sub_24E601704(v41, &qword_27F235830);
  v27 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 32) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 16) = v28;
  sub_24E65E0D4(v13, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v4 + 16) = v21;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  (*(v14 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16, v32);
  return v4;
}

uint64_t LocalAskToBuyAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_adamId);
  a1[1] = v2;
}

uint64_t LocalAskToBuyAction.adamIdString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_adamId);

  return v1;
}

uint64_t LocalAskToBuyAction.completion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_completion);

  return v1;
}

uint64_t sub_24EBA46B8()
{
}

uint64_t LocalAskToBuyAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t LocalAskToBuyAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalAskToBuyAction()
{
  result = qword_27F22A888;
  if (!qword_27F22A888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageGridCache.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_24E60E044(MEMORY[0x277D84F90]);
  *(v0 + 24) = sub_24E60E044(v1);
  return v0;
}

uint64_t PageGridCache.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_24E60E044(MEMORY[0x277D84F90]);
  *(v0 + 24) = sub_24E60E044(v1);
  return v0;
}

void *sub_24EBA4AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, double, double, double, double, double, double, double, double, double, double)@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v97 = a2;
  v85 = a6;
  v86 = a5;
  v84 = a4;
  v105 = a3;
  v103 = a14;
  v104 = a15;
  v102 = a1;
  v99 = a7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  MEMORY[0x28223BE20](v23 - 8);
  v88 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v82 - v26;
  MEMORY[0x28223BE20](v27);
  v95 = &v82 - v28;
  MEMORY[0x28223BE20](v29);
  v100 = &v82 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v106 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v82 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  MEMORY[0x28223BE20](v34);
  v83 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v87 = &v82 - v37;
  MEMORY[0x28223BE20](v38);
  v89 = &v82 - v39;
  MEMORY[0x28223BE20](v40);
  v101 = &v82 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v82 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v82 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v82 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v82 - v52;
  sub_24E60169C(v97, &v82 - v52, &unk_27F23A690);
  sub_24E60169C(v105, &v53[*(v34 + 48)], &unk_27F23A690);
  (*(v106 + 16))(v33, v102, v31);
  v97 = v53;
  sub_24E60169C(v53, v50, &unk_27F23A680);
  v54 = *(v34 + 48);
  sub_24EAA34E0(v50, v47);
  sub_24EAA34E0(&v50[v54], &v47[*(v34 + 48)]);
  swift_getKeyPath();
  sub_24F928A48();

  v94 = v108[0];
  swift_getKeyPath();
  sub_24F928A48();

  v93 = v108[0];
  swift_getKeyPath();
  sub_24F928A48();

  v92 = v108[0];
  swift_getKeyPath();
  v96 = v33;
  v55 = v100;
  sub_24F928A48();

  *&v108[21] = v107[1];
  *&v108[37] = v107[2];
  *&v108[53] = v107[3];
  *&v108[69] = *&v107[4];
  *&v108[5] = v107[0];
  v91 = v47;
  sub_24E60169C(v47, v44, &unk_27F23A680);
  v105 = v34;
  v56 = *(v34 + 48);
  sub_24EAA34E0(v44, v55);
  v57 = v106;
  v58 = *(v106 + 48);
  if (v58(v55, 1, v31) == 1)
  {
    sub_24E601704(&v44[v56], &unk_27F23A690);
    sub_24E601704(v55, &unk_27F23A690);
    v59 = v95;
    v60 = v101;
    v61 = v91;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v62 = LOBYTE(v107[0]);
    (*(v57 + 8))(v55, v31);
    sub_24E601704(&v44[v56], &unk_27F23A690);
    LODWORD(v100) = v62;
    v59 = v95;
    v60 = v101;
    v61 = v91;
    if (v62 != 104)
    {
      goto LABEL_8;
    }
  }

  v63 = v87;
  sub_24E60169C(v61, v87, &unk_27F23A680);
  v64 = v63 + *(v105 + 48);
  v65 = v63;
  v66 = v88;
  sub_24EAA34E0(v65, v88);
  if (v58(v66, 1, v31) == 1)
  {
    sub_24E601704(v64, &unk_27F23A690);
    LODWORD(v100) = 104;
    v64 = v66;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();
    v60 = v101;

    LODWORD(v100) = LOBYTE(v107[0]);
    (*(v106 + 8))(v66, v31);
  }

  sub_24E601704(v64, &unk_27F23A690);
LABEL_8:
  sub_24E60169C(v61, v60, &unk_27F23A680);
  sub_24EAA34E0(v60 + *(v105 + 48), v59);
  if (v58(v59, 1, v31) == 1)
  {
    sub_24E601704(v60, &unk_27F23A690);
    sub_24E601704(v59, &unk_27F23A690);
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v67 = LOBYTE(v107[0]);
    v68 = *(v106 + 8);
    v68(v59, v31);
    sub_24E601704(v60, &unk_27F23A690);
    if (v67 != 104)
    {
      sub_24E601704(v61, &unk_27F23A680);
      v68(v96, v31);
      goto LABEL_15;
    }
  }

  v69 = v89;
  sub_24E60169C(v61, v89, &unk_27F23A680);
  v70 = v90;
  sub_24EAA34E0(v69 + *(v105 + 48), v90);
  if (v58(v70, 1, v31) == 1)
  {
    sub_24E601704(v61, &unk_27F23A680);
    (*(v106 + 8))(v96, v31);
    sub_24E601704(v69, &unk_27F23A690);
    sub_24E601704(v70, &unk_27F23A690);
    LOBYTE(v67) = 104;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    sub_24E601704(v61, &unk_27F23A680);
    v71 = *(v106 + 8);
    v71(v96, v31);
    LOBYTE(v67) = v107[0];
    v71(v70, v31);
    sub_24E601704(v69, &unk_27F23A690);
  }

LABEL_15:
  v111 = *&v108[16];
  v112 = *&v108[32];
  *v113 = *&v108[48];
  *&v113[13] = *&v108[61];
  v109[0] = v94;
  v109[1] = v93;
  v109[2] = v92;
  v110 = *v108;
  v114 = v100;
  v115 = v67;
  v117 = WORD2(v107[0]);
  v116 = v107[0];
  v118 = a8;
  v119 = a9;
  v120 = a10;
  v121 = a11;
  v122 = a12;
  v123 = a13;
  v124 = v103;
  v125 = v104;
  v126 = a16;
  v127 = a17;
  v72 = v98;
  swift_beginAccess();
  v73 = *(v72 + 16);
  if (!*(v73 + 16))
  {
LABEL_19:
    v77 = v97;
    v78 = v83;
    sub_24E60169C(v97, v83, &unk_27F23A680);
    v79 = *(v105 + 48);
    v86(v107, v102, v78, v78 + v79, v84, a8, a9, a10, a11, a12, a13, v103, v104, a16, a17);
    sub_24E601704(v78 + v79, &unk_27F23A690);
    sub_24E601704(v78, &unk_27F23A690);
    memcpy(v108, v107, sizeof(v108));
    swift_beginAccess();
    sub_24E8B9768(v108, v107);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v107[0] = *(v72 + 16);
    *(v72 + 16) = 0x8000000000000000;
    sub_24E81E840(v108, v109, isUniquelyReferenced_nonNull_native);
    sub_24E772830(v109);
    *(v72 + 16) = *&v107[0];
    swift_endAccess();
    v76 = v77;
    goto LABEL_20;
  }

  v74 = sub_24E76E2DC(v109);
  if ((v75 & 1) == 0)
  {

    goto LABEL_19;
  }

  memcpy(v108, (*(v73 + 56) + 392 * v74), sizeof(v108));
  sub_24E8B9768(v108, v107);
  sub_24E772830(v109);

  v76 = v97;
LABEL_20:
  sub_24E601704(v76, &unk_27F23A680);
  return memcpy(v99, v108, 0x188uLL);
}

void *sub_24EBA5620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, double, double, double, double, double, double, double, double, double, double)@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v97 = a2;
  v85 = a6;
  v86 = a5;
  v84 = a4;
  v105 = a3;
  v103 = a14;
  v104 = a15;
  v102 = a1;
  v99 = a7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  MEMORY[0x28223BE20](v23 - 8);
  v88 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v82 - v26;
  MEMORY[0x28223BE20](v27);
  v95 = &v82 - v28;
  MEMORY[0x28223BE20](v29);
  v100 = &v82 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v106 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v82 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  MEMORY[0x28223BE20](v34);
  v83 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v87 = &v82 - v37;
  MEMORY[0x28223BE20](v38);
  v89 = &v82 - v39;
  MEMORY[0x28223BE20](v40);
  v101 = &v82 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v82 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v82 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v82 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v82 - v52;
  sub_24E60169C(v97, &v82 - v52, &unk_27F23A690);
  sub_24E60169C(v105, &v53[*(v34 + 48)], &unk_27F23A690);
  (*(v106 + 16))(v33, v102, v31);
  v97 = v53;
  sub_24E60169C(v53, v50, &unk_27F23A680);
  v54 = *(v34 + 48);
  sub_24EAA34E0(v50, v47);
  sub_24EAA34E0(&v50[v54], &v47[*(v34 + 48)]);
  swift_getKeyPath();
  sub_24F928A48();

  v94 = v108[0];
  swift_getKeyPath();
  sub_24F928A48();

  v93 = v108[0];
  swift_getKeyPath();
  sub_24F928A48();

  v92 = v108[0];
  swift_getKeyPath();
  v96 = v33;
  v55 = v100;
  sub_24F928A48();

  *&v108[21] = v107[1];
  *&v108[37] = v107[2];
  *&v108[53] = v107[3];
  *&v108[69] = *&v107[4];
  *&v108[5] = v107[0];
  v91 = v47;
  sub_24E60169C(v47, v44, &unk_27F23A680);
  v105 = v34;
  v56 = *(v34 + 48);
  sub_24EAA34E0(v44, v55);
  v57 = v106;
  v58 = *(v106 + 48);
  if (v58(v55, 1, v31) == 1)
  {
    sub_24E601704(&v44[v56], &unk_27F23A690);
    sub_24E601704(v55, &unk_27F23A690);
    v59 = v95;
    v60 = v101;
    v61 = v91;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v62 = LOBYTE(v107[0]);
    (*(v57 + 8))(v55, v31);
    sub_24E601704(&v44[v56], &unk_27F23A690);
    LODWORD(v100) = v62;
    v59 = v95;
    v60 = v101;
    v61 = v91;
    if (v62 != 104)
    {
      goto LABEL_8;
    }
  }

  v63 = v87;
  sub_24E60169C(v61, v87, &unk_27F23A680);
  v64 = v63 + *(v105 + 48);
  v65 = v63;
  v66 = v88;
  sub_24EAA34E0(v65, v88);
  if (v58(v66, 1, v31) == 1)
  {
    sub_24E601704(v64, &unk_27F23A690);
    LODWORD(v100) = 104;
    v64 = v66;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();
    v60 = v101;

    LODWORD(v100) = LOBYTE(v107[0]);
    (*(v106 + 8))(v66, v31);
  }

  sub_24E601704(v64, &unk_27F23A690);
LABEL_8:
  sub_24E60169C(v61, v60, &unk_27F23A680);
  sub_24EAA34E0(v60 + *(v105 + 48), v59);
  if (v58(v59, 1, v31) == 1)
  {
    sub_24E601704(v60, &unk_27F23A690);
    sub_24E601704(v59, &unk_27F23A690);
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v67 = LOBYTE(v107[0]);
    v68 = *(v106 + 8);
    v68(v59, v31);
    sub_24E601704(v60, &unk_27F23A690);
    if (v67 != 104)
    {
      sub_24E601704(v61, &unk_27F23A680);
      v68(v96, v31);
      goto LABEL_15;
    }
  }

  v69 = v89;
  sub_24E60169C(v61, v89, &unk_27F23A680);
  v70 = v90;
  sub_24EAA34E0(v69 + *(v105 + 48), v90);
  if (v58(v70, 1, v31) == 1)
  {
    sub_24E601704(v61, &unk_27F23A680);
    (*(v106 + 8))(v96, v31);
    sub_24E601704(v69, &unk_27F23A690);
    sub_24E601704(v70, &unk_27F23A690);
    LOBYTE(v67) = 104;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    sub_24E601704(v61, &unk_27F23A680);
    v71 = *(v106 + 8);
    v71(v96, v31);
    LOBYTE(v67) = v107[0];
    v71(v70, v31);
    sub_24E601704(v69, &unk_27F23A690);
  }

LABEL_15:
  v111 = *&v108[16];
  v112 = *&v108[32];
  *v113 = *&v108[48];
  *&v113[13] = *&v108[61];
  v109[0] = v94;
  v109[1] = v93;
  v109[2] = v92;
  v110 = *v108;
  v114 = v100;
  v115 = v67;
  v117 = WORD2(v107[0]);
  v116 = v107[0];
  v118 = a8;
  v119 = a9;
  v120 = a10;
  v121 = a11;
  v122 = a12;
  v123 = a13;
  v124 = v103;
  v125 = v104;
  v126 = a16;
  v127 = a17;
  v72 = v98;
  swift_beginAccess();
  v73 = *(v72 + 24);
  if (!*(v73 + 16))
  {
LABEL_19:
    v77 = v97;
    v78 = v83;
    sub_24E60169C(v97, v83, &unk_27F23A680);
    v79 = *(v105 + 48);
    v86(v107, v102, v78, v78 + v79, v84, a8, a9, a10, a11, a12, a13, v103, v104, a16, a17);
    sub_24E601704(v78 + v79, &unk_27F23A690);
    sub_24E601704(v78, &unk_27F23A690);
    memcpy(v108, v107, sizeof(v108));
    swift_beginAccess();
    sub_24E8B9768(v108, v107);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v107[0] = *(v72 + 24);
    *(v72 + 24) = 0x8000000000000000;
    sub_24E81E840(v108, v109, isUniquelyReferenced_nonNull_native);
    sub_24E772830(v109);
    *(v72 + 24) = *&v107[0];
    swift_endAccess();
    v76 = v77;
    goto LABEL_20;
  }

  v74 = sub_24E76E2DC(v109);
  if ((v75 & 1) == 0)
  {

    goto LABEL_19;
  }

  memcpy(v108, (*(v73 + 56) + 392 * v74), sizeof(v108));
  sub_24E8B9768(v108, v107);
  sub_24E772830(v109);

  v76 = v97;
LABEL_20:
  sub_24E601704(v76, &unk_27F23A680);
  return memcpy(v99, v108, 0x188uLL);
}

uint64_t sub_24EBA6178()
{
  swift_beginAccess();
  v1 = MEMORY[0x277D84F98];
  *(v0 + 16) = MEMORY[0x277D84F98];

  swift_beginAccess();
  *(v0 + 24) = v1;
}

uint64_t PageGridCache.deinit()
{

  return v0;
}

uint64_t PageGridCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EBA6338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_24F91F968();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TitledButtonStack.__allocating_init(id:buttons:compactLineBreaks:regularLineBreaks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_24E65E064(a1, &v23);
  if (*(&v24 + 1))
  {
    v26 = v23;
    v27 = v24;
    v28 = v25;
  }

  else
  {
    sub_24F91F6A8();
    v13 = sub_24F91F668();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v22[1] = v13;
    v22[2] = v15;
    sub_24F92C7F8();
    sub_24E601704(&v23, &qword_27F235830);
  }

  v16 = v12 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_id;
  v17 = v27;
  *v16 = v26;
  *(v16 + 16) = v17;
  *(v16 + 32) = v28;
  sub_24E601704(a1, &qword_27F235830);
  *(v12 + 16) = a2;
  v18 = OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_compactLineBreaks;
  v19 = sub_24F91F968();
  v20 = *(*(v19 - 8) + 32);
  v20(v12 + v18, a3, v19);
  v20(v12 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_regularLineBreaks, a4, v19);
  return v12;
}

uint64_t TitledButtonStack.init(id:buttons:compactLineBreaks:regularLineBreaks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v24);
  if (*(&v25 + 1))
  {
    v27 = v24;
    v28 = v25;
    v29 = v26;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v23[1] = v14;
    v23[2] = v16;
    sub_24F92C7F8();
    sub_24E601704(&v24, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v17 = v5 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_id;
  v18 = v28;
  *v17 = v27;
  *(v17 + 16) = v18;
  *(v17 + 32) = v29;
  *(v5 + 16) = a2;
  v19 = OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_compactLineBreaks;
  v20 = sub_24F91F968();
  v21 = *(*(v20 - 8) + 32);
  v21(v5 + v19, a3, v20);
  v21(v5 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_regularLineBreaks, a4, v20);
  return v5;
}

uint64_t TitledButtonStack.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TitledButtonStack.init(deserializing:using:)(a1, a2);
  return v4;
}

unint64_t *TitledButtonStack.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v98 = a2;
  v5 = *v3;
  v92 = v3;
  v89 = v5;
  v83 = sub_24F91F968();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v93 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v75 - v8;
  v97 = sub_24F9285B8();
  v91 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v86 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v75 - v13;
  MEMORY[0x28223BE20](v14);
  v90 = &v75 - v15;
  v96 = sub_24F92AC28();
  v16 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v85 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v88 = &v75 - v19;
  v95 = sub_24F91F6B8();
  v20 = *(v95 - 1);
  MEMORY[0x28223BE20](v95);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F928388();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v80 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v78 = &v75 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v75 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v75 - v32;
  sub_24F928398();
  v34 = sub_24F928348();
  v104 = a1;
  if (v35)
  {
    v99 = v34;
    v100 = v35;
    sub_24F92C7F8();
    v36 = *(v24 + 8);
    v37 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v33, v23);
    v38 = v92;
  }

  else
  {
    sub_24F91F6A8();
    v39 = sub_24F91F668();
    v41 = v40;
    (*(v20 + 8))(v22, v95);
    v99 = v39;
    v100 = v41;
    v38 = v92;
    sub_24F92C7F8();
    v36 = *(v24 + 8);
    v37 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v33, v23);
  }

  v42 = v38 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_id;
  v43 = v102;
  *v42 = v101;
  *(v42 + 16) = v43;
  *(v42 + 32) = v103;
  sub_24F928398();
  v44 = v90;
  sub_24F9282B8();
  v94 = v37;
  v95 = v36;
  v36(v30, v23);
  v45 = *(v16 + 48);
  v46 = v96;
  if (v45(v44, 1, v96) == 1)
  {
    sub_24E601704(v44, &qword_27F2213B0);
LABEL_8:
    v48 = sub_24F92AC38();
    sub_24EBA75C4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v49 = 0x736E6F74747562;
    v49[1] = 0xE700000000000000;
    v49[2] = v89;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    (*(v91 + 8))(v98, v97);
    v95(v104, v23);
LABEL_9:
    sub_24E6585F8(v42);
    swift_deallocPartialClassInstance();
    return v38;
  }

  v47 = v88;
  (*(v16 + 32))(v88, v44, v46);
  if (sub_24F92ABF8())
  {
    (*(v16 + 8))(v47, v46);
    goto LABEL_8;
  }

  v76 = v45;
  v90 = v23;
  (*(v16 + 16))(v85, v47, v46);
  v51 = v91;
  (*(v91 + 16))(v86, v98, v97);
  v77 = type metadata accessor for TitledButton();
  sub_24EBA75C4(&qword_27F22A898, type metadata accessor for TitledButton);
  v52 = v87;
  v53 = sub_24F92B688();
  if (v52)
  {
    (*(v51 + 8))(v98, v97);
    v95(v104, v90);
    (*(v16 + 8))(v47, v46);
    goto LABEL_9;
  }

  v89 = v53;
  v86 = 0;
  v87 = v16;
  v54 = v78;
  sub_24F928398();
  v55 = v79;
  sub_24F9282B8();
  v56 = v90;
  v95(v54, v90);
  if (v76(v55, 1, v46) == 1)
  {
    sub_24E601704(v55, &qword_27F2213B0);
    v57 = v88;
  }

  else
  {
    v58 = sub_24F92ABC8();
    (*(v87 + 8))(v55, v46);
    v57 = v88;
    if (v58)
    {
      goto LABEL_17;
    }
  }

  v58 = MEMORY[0x277D84F90];
LABEL_17:
  sub_24F91F958();
  v59 = *(v58 + 16);
  v91 = v89 >> 62;
  if (v59)
  {
    if (v91)
    {
      v60 = sub_24F92C738();
    }

    else
    {
      v60 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = (v58 + 32);
    do
    {
      v62 = *v61++;
      if (v62 < v60)
      {
        sub_24F91F8F8();
      }

      --v59;
    }

    while (v59);
  }

  v63 = v80;
  v64 = v104;
  sub_24F928398();
  v65 = v81;
  sub_24F9282B8();
  v95(v63, v56);
  v66 = v96;
  if (v76(v65, 1, v96) == 1)
  {
    sub_24E601704(v65, &qword_27F2213B0);
    v67 = v97;
LABEL_27:

    v68 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v68 = sub_24F92ABC8();
  (*(v87 + 8))(v65, v66);
  v67 = v97;
  if (!v68)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_24F91F958();
  v69 = *(v68 + 16);
  if (v69)
  {
    if (v91)
    {
      v70 = sub_24F92C738();
    }

    else
    {
      v70 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v71 = (v68 + 32);
    do
    {
      v72 = *v71++;
      if (v72 < v70)
      {
        sub_24F91F8F8();
      }

      --v69;
    }

    while (v69);
  }

  (*(v51 + 8))(v98, v67);
  v95(v64, v90);
  (*(v87 + 8))(v57, v96);
  v38 = v92;
  v92[2] = v89;
  v73 = *(v82 + 32);
  v74 = v83;
  v73(v38 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_compactLineBreaks, v84, v83);
  v73(v38 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_regularLineBreaks, v93, v74);
  return v38;
}

uint64_t TitledButtonStack.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_compactLineBreaks;
  v2 = sub_24F91F968();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_regularLineBreaks, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_id);
  return v0;
}

uint64_t TitledButtonStack.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_compactLineBreaks;
  v2 = sub_24F91F968();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_regularLineBreaks, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit17TitledButtonStack_id);

  return swift_deallocClassInstance();
}

uint64_t sub_24EBA75C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TitledButtonStack()
{
  result = qword_27F22A8A8;
  if (!qword_27F22A8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t *sub_24EBA7670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TitledButtonStack.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBA76E0()
{
  result = sub_24F91F968();
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

void *RibbonBarItem.__allocating_init(id:artwork:artworkTintColor:accessibilityLabel:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a3;
  v35 = a4;
  v32 = a9;
  v33 = a2;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v19 = v18 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id;
  sub_24E60169C(a1, &v38, &qword_27F235830);
  if (*(&v39 + 1))
  {
    v20 = v39;
    *v19 = v38;
    *(v19 + 1) = v20;
    *(v19 + 4) = v40;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v30 = a5;
    v31 = a6;
    v22 = a8;
    v23 = v21;
    v24 = a7;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v36 = v23;
    v37 = v26;
    a8 = v22;
    a7 = v24;
    a5 = v30;
    a6 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(v32, v18 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics);
  v27 = v34;
  v18[2] = v33;
  v18[3] = v27;
  v18[4] = v35;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  v18[8] = a8;
  return v18;
}

void *RibbonBarItem.init(id:artwork:artworkTintColor:accessibilityLabel:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v35 = a2;
  v36 = a3;
  v34 = a9;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v39, &qword_27F235830);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v32 = a4;
    v33 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v37 = v24;
    v38 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    a4 = v32;
    a5 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v28 = v10 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id;
  v29 = v43;
  *v28 = v42;
  *(v28 + 1) = v29;
  *(v28 + 4) = v44;
  sub_24E65E0D4(v34, v10 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics);
  v30 = v36;
  v10[2] = v35;
  v10[3] = v30;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a6;
  v10[7] = a7;
  v10[8] = a8;
  return v10;
}

uint64_t RibbonBarItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RibbonBarItem.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *RibbonBarItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v72 = a2;
  v66 = *v3;
  v73 = sub_24F9285B8();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v59 - v9;
  v61 = sub_24F91F6B8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v79 = a1;
  sub_24F928398();
  v22 = sub_24F928348();
  v24 = v23;
  v26 = *(v13 + 8);
  v25 = v13 + 8;
  v27 = v21;
  v28 = v12;
  v29 = v26;
  v26(v27, v28);
  v68 = v24;
  if (v24)
  {
    v66 = v22;
    sub_24F928398();
    v30 = sub_24F928348();
    v64 = v25;
    v65 = v28;
    v63 = v29;
    if (v31)
    {
      v74 = v30;
      v75 = v31;
      sub_24F92C7F8();
      v32 = v18;
      v33 = v28;
    }

    else
    {
      sub_24F91F6A8();
      v37 = sub_24F91F668();
      v38 = v28;
      v40 = v39;
      (*(v60 + 8))(v11, v61);
      v74 = v37;
      v75 = v40;
      sub_24F92C7F8();
      v32 = v18;
      v33 = v38;
    }

    v29(v32, v33);
    v41 = v3 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id;
    v42 = v77;
    *v41 = v76;
    *(v41 + 1) = v42;
    *(v41 + 4) = v78;
    sub_24F929608();
    sub_24F928398();
    v43 = v72;
    v44 = *(v71 + 16);
    v45 = v70;
    v44(v70, v72, v73);
    v46 = v67;
    sub_24F929548();
    sub_24E65E0D4(v46, v3 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics);
    v47 = v73;
    v44(v45, v43, v73);
    type metadata accessor for Artwork();
    v48 = v79;
    sub_24F928398();
    v44(v69, v45, v47);
    sub_24EBA98B0(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    v3[2] = v76;
    sub_24F928398();
    v49 = JSONObject.appStoreColor.getter();
    v50 = v65;
    v51 = v63;
    v63(v15, v65);
    v3[3] = v49;
    sub_24F928398();
    v52 = sub_24F928348();
    v54 = v53;
    v51(v15, v50);
    v62 = v3;
    v3[4] = v52;
    v3[5] = v54;
    v55 = v68;
    v3[6] = v66;
    v3[7] = v55;
    type metadata accessor for Action();
    sub_24F928398();
    v69 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v45);
    v56 = *(v71 + 8);
    v57 = v73;
    v56(v72, v73);
    v51(v48, v50);
    v51(v15, v50);
    v3 = v62;
    v56(v45, v57);
    v3[8] = v69;
  }

  else
  {
    v34 = sub_24F92AC38();
    sub_24EBA98B0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v35 = 0x656C746974;
    v36 = v66;
    v35[1] = 0xE500000000000000;
    v35[2] = v36;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v71 + 8))(v72, v73);
    v29(v79, v28);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void *RibbonBarItem.artworkTintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t RibbonBarItem.accessibilityLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RibbonBarItem.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RibbonBarItem.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t RibbonBarItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F929598();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24F92B218();
  if (v1[2])
  {
    sub_24F92D088();
    sub_24E9F7EC4();
    v17 = v1[3];
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_24F92D088();
    v19 = v1[8];
    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_24F92D088();
  v17 = v1[3];
  if (!v17)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_24F92D088();
  v18 = v17;
  sub_24F92C418();

  v19 = v2[8];
  if (v19)
  {
LABEL_4:
    sub_24E65864C(v19 + OBJC_IVAR____TtC12GameStoreKit6Action_id, v31);
    goto LABEL_8;
  }

LABEL_7:
  v32 = 0;
  memset(v31, 0, sizeof(v31));
LABEL_8:
  sub_24E60169C(v31, &v28, &qword_27F235830);
  if (*(&v29 + 1))
  {
    v26[0] = v28;
    v26[1] = v29;
    v27 = v30;
    sub_24F92D088();
    _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
    sub_24E6585F8(v26);
  }

  else
  {
    sub_24F92D088();
  }

  sub_24E601704(v31, &qword_27F235830);
  v20 = v2[5];
  v25[1] = a1;
  sub_24F92D088();
  if (v20)
  {
    sub_24F92B218();
  }

  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics, v10, &qword_27F213E68);
  v21 = sub_24F929608();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_24E601704(v10, &qword_27F213E68);
    v23 = 1;
  }

  else
  {
    sub_24F9295B8();
    (*(v22 + 8))(v10, v21);
    v23 = 0;
  }

  (*(v5 + 56))(v16, v23, 1, v4);
  sub_24E60169C(v16, v13, &qword_27F228618);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_24F92D088();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_24F92D088();
    sub_24EBA98B0(&qword_27F21BCE8, MEMORY[0x277D21F50]);
    sub_24F92AEF8();
    (*(v5 + 8))(v7, v4);
  }

  return sub_24E601704(v16, &qword_27F228618);
}

uint64_t RibbonBarItem.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics, &qword_27F213E68);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id);
  return v0;
}

uint64_t RibbonBarItem.__deallocating_deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics, &qword_27F213E68);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id);

  return swift_deallocClassInstance();
}

uint64_t RibbonBarItem.hashValue.getter()
{
  sub_24F92D068();
  RibbonBarItem.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EBA8B90@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 64);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_24EBA98B0(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t *sub_24EBA8C30@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = RibbonBarItem.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBA8CA4()
{
  sub_24F92D068();
  RibbonBarItem.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EBA8D0C()
{
  sub_24F92D068();
  RibbonBarItem.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit13RibbonBarItemC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_24F929598();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A8D8);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618);
  MEMORY[0x28223BE20](v16 - 8);
  v61 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v62 = &v55 - v23;
  if ((MEMORY[0x253052150](a1 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id, a2 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id, v22) & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_35;
  }

  v58 = v9;
  v59 = v5;
  v24 = a1[2];
  v25 = a2[2];
  if (!v24)
  {
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_10:
    v57 = v4;
    v27 = a1[3];
    v28 = a2[3];
    if (v27)
    {
      if (!v28)
      {
        goto LABEL_35;
      }

      sub_24E77ACC8();
      v29 = v28;
      v30 = v27;
      v31 = sub_24F92C408();

      if ((v31 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v28)
    {
      goto LABEL_35;
    }

    v32 = a1[8];
    if (v32)
    {
      sub_24E65864C(v32 + OBJC_IVAR____TtC12GameStoreKit6Action_id, v72);
      v33 = a2[8];
      if (v33)
      {
LABEL_17:
        sub_24E65864C(v33 + OBJC_IVAR____TtC12GameStoreKit6Action_id, v70);
        goto LABEL_20;
      }
    }

    else
    {
      v73 = 0;
      memset(v72, 0, sizeof(v72));
      v33 = a2[8];
      if (v33)
      {
        goto LABEL_17;
      }
    }

    v71 = 0;
    memset(v70, 0, sizeof(v70));
LABEL_20:
    sub_24E60169C(v72, v66, &qword_27F235830);
    sub_24E60169C(v70, &v67, &qword_27F235830);
    if (v66[3])
    {
      sub_24E60169C(v66, v65, &qword_27F235830);
      if (*(&v68 + 1))
      {
        v63[0] = v67;
        v63[1] = v68;
        v64 = v69;
        v34 = MEMORY[0x253052150](v65, v63);
        sub_24E6585F8(v63);
        sub_24E601704(v70, &qword_27F235830);
        sub_24E601704(v72, &qword_27F235830);
        sub_24E6585F8(v65);
        sub_24E601704(v66, &qword_27F235830);
        if (v34)
        {
          goto LABEL_26;
        }

LABEL_35:
        LOBYTE(v25) = 0;
        return v25 & 1;
      }

      sub_24E601704(v70, &qword_27F235830);
      sub_24E601704(v72, &qword_27F235830);
      sub_24E6585F8(v65);
    }

    else
    {
      sub_24E601704(v70, &qword_27F235830);
      sub_24E601704(v72, &qword_27F235830);
      if (!*(&v68 + 1))
      {
        sub_24E601704(v66, &qword_27F235830);
LABEL_26:
        v35 = a1[5];
        v36 = a2[5];
        if (v35)
        {
          if (!v36 || (a1[4] != a2[4] || v35 != v36) && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else if (v36)
        {
          goto LABEL_35;
        }

        sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics, v15, &qword_27F213E68);
        v40 = sub_24F929608();
        v41 = *(v40 - 8);
        v56 = *(v41 + 48);
        if (v56(v15, 1, v40) == 1)
        {
          sub_24E601704(v15, &qword_27F213E68);
          v42 = 1;
          v43 = v62;
        }

        else
        {
          v43 = v62;
          v55 = v41;
          sub_24F9295B8();
          v41 = v55;
          (*(v55 + 8))(v15, v40);
          v42 = 0;
        }

        v55 = *(v59 + 56);
        (v55)(v43, v42, 1, v57);
        sub_24E60169C(a2 + OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_impressionMetrics, v12, &qword_27F213E68);
        if (v56(v12, 1, v40) == 1)
        {
          sub_24E601704(v12, &qword_27F213E68);
          v44 = 1;
        }

        else
        {
          sub_24F9295B8();
          (*(v41 + 8))(v12, v40);
          v44 = 0;
        }

        v45 = v57;
        (v55)(v20, v44, 1, v57);
        v46 = *(v7 + 48);
        v47 = v62;
        v48 = v58;
        sub_24E60169C(v62, v58, &qword_27F228618);
        sub_24E60169C(v20, v48 + v46, &qword_27F228618);
        v49 = *(v59 + 48);
        if (v49(v48, 1, v45) == 1)
        {
          sub_24E601704(v20, &qword_27F228618);
          v25 = v58;
          sub_24E601704(v47, &qword_27F228618);
          if (v49(v25 + v46, 1, v45) == 1)
          {
            sub_24E601704(v25, &qword_27F228618);
            LOBYTE(v25) = 1;
            return v25 & 1;
          }
        }

        else
        {
          v50 = v61;
          sub_24E60169C(v48, v61, &qword_27F228618);
          if (v49(v48 + v46, 1, v45) != 1)
          {
            v51 = v50;
            v53 = v59;
            v52 = v60;
            (*(v59 + 32))(v60, v48 + v46, v45);
            sub_24EBA98B0(&qword_27F21BCF0, MEMORY[0x277D21F50]);
            LOBYTE(v25) = sub_24F92AFF8();
            v54 = *(v53 + 8);
            v54(v52, v45);
            sub_24E601704(v20, &qword_27F228618);
            sub_24E601704(v62, &qword_27F228618);
            v54(v51, v45);
            sub_24E601704(v48, &qword_27F228618);
            return v25 & 1;
          }

          sub_24E601704(v20, &qword_27F228618);
          v25 = v58;
          sub_24E601704(v47, &qword_27F228618);
          (*(v59 + 8))(v50, v45);
        }

        v37 = &qword_27F22A8D8;
        v38 = v25;
        goto LABEL_34;
      }
    }

    v37 = &qword_27F21B438;
    v38 = v66;
LABEL_34:
    sub_24E601704(v38, v37);
    goto LABEL_35;
  }

  if (v25)
  {

    v26 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v24, v25);

    if ((v26 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  return v25 & 1;
}

uint64_t type metadata accessor for RibbonBarItem()
{
  result = qword_27F22A8C8;
  if (!qword_27F22A8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EBA9798()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EBA98B0(unint64_t *a1, void (*a2)(uint64_t))
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

double PurchaseIntent.init(from:stateMachine:additionalHeaders:presentingSceneIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  ObjectType = swift_getObjectType();
  v39 = *(a2 + 16);
  v39(&v49, ObjectType, a2);
  v12 = (*(&v49 + 1) << 8) | ((*(&v49 + 5) | (HIBYTE(v49) << 16)) << 40) | v49;
  v13 = v55 >> 60;
  if ((v55 >> 60) <= 2)
  {
    if (v13 == 1)
    {
      if ((v49 & 1) == 0)
      {
        swift_unknownObjectRelease();

        goto LABEL_39;
      }

      v37 = a5;
      v38 = a3;
      v33 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem + 8);
      v34 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);

      v35 = 0;
      v36 = 0;
      goto LABEL_23;
    }

    if (v13 == 2)
    {
      v37 = a5;
      v38 = a3;
      if (*(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) != 1)
      {
        v35 = (*(&v49 + 1) << 8) | ((*(&v49 + 5) | (HIBYTE(v49) << 16)) << 40) | v49;
        v36 = v50;

        v33 = 0;
        v34 = 0;
        v31 = 0;
        v32 = 2;
        goto LABEL_24;
      }

      goto LABEL_21;
    }

LABEL_32:

    sub_24E88D2AC(&v49);
    swift_unknownObjectRelease();
LABEL_39:
    result = 0.0;
    *(a6 + 128) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  if (v13 != 3)
  {
    if (v13 != 7)
    {
      if (v13 == 8 && (v55 == 0x8000000000000000 && !(v12 | v50 | v56 | v54 | v53 | v52 | v51) || v55 == 0x8000000000000000 && v12 == 4 && !(v56 | v50 | v54 | v53 | v52 | v51)))
      {
        v37 = a5;
        v38 = a3;
        if (OfferAction.isRedownload.getter())
        {
          v14 = 3;
        }

        else
        {
          v14 = 1;
        }

        v32 = v14;
        v31 = OfferAction.isRedownload.getter();
        v33 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem + 8);
        v34 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);

        v35 = 0;
        v36 = 0;
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    if (*(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) == 1)
    {
      v37 = a5;
      v38 = a3;
LABEL_21:
      v35 = (*(a2 + 32))(ObjectType, a2);
      v36 = v16;
      v33 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem + 8);
      v34 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v35 = (*(&v49 + 1) << 8) | ((*(&v49 + 5) | (HIBYTE(v49) << 16)) << 40) | v49;
  v36 = v50;
  v37 = a5;
  v38 = a3;
  v15 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem + 8);
  v34 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  sub_24E8B9478(&v49, &v48);
  v33 = v15;
LABEL_22:

LABEL_23:
  v31 = 1;
  v32 = 3;
LABEL_24:
  v17 = OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  sub_24E643A9C(a1 + v17, v42);
  v18 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId + 8);
  v28 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  v29 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  v30 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId + 8);

  v39(v43, ObjectType, a2);
  v19 = v46 >> 60;
  v20 = 1;
  if (v46 >> 60 != 2 && v19 != 7)
  {
    if (v19 != 8 || v47 || v46 != 0x8000000000000000 || v43[0] != 1 || (v21 = vorrq_s8(v44, v45), *&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | v43[1]))
    {
      v20 = 0;
    }
  }

  sub_24E88D2AC(v43);
  v22 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest);
  v23 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason);
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v24 = sub_24EB6C148();
  MetricsSystemInfo.init()(&v41);
  v25 = MetricsSystemInfo.dictionaryRepresentation.getter();
  v48 = v41;
  sub_24EBAA4C4(&v48);
  v26 = sub_24E954060(v25);

  swift_unknownObjectRelease();
  sub_24E88D2AC(&v49);

  *a6 = v32;
  sub_24E612B0C(v42, (a6 + 8));
  *(a6 + 40) = v28;
  *(a6 + 48) = v18;
  *(a6 + 72) = v35;
  *(a6 + 80) = v36;
  *(a6 + 88) = v31 & 1;
  *(a6 + 144) = v34;
  *(a6 + 152) = v33;
  *(a6 + 96) = v24;
  *(a6 + 104) = v26;
  *(a6 + 112) = v38;
  *(a6 + 120) = a4;
  *(a6 + 128) = v37;
  *(a6 + 136) = v20;
  *(a6 + 56) = v29;
  *(a6 + 64) = v30;
  *(a6 + 137) = v22;
  *(a6 + 138) = v23;
  return result;
}

uint64_t sub_24EBA9E24()
{
  v1 = v0;
  v2 = sub_24E608448(MEMORY[0x277D84F90]);
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      v3 = 0xE600000000000000;
      v4 = 0x657461647075;
    }

    else
    {
      v3 = 0xEA00000000006461;
      v4 = 0x6F6C6E776F646572;
    }
  }

  else if (*v1)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6573616863727570;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  v5 = MEMORY[0x277D837D0];
  v43 = MEMORY[0x277D837D0];
  *&v42 = v4;
  *(&v42 + 1) = v3;
  sub_24E612B0C(&v42, v41);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0x74616C6174736E69, 0xEF657079546E6F69, isUniquelyReferenced_nonNull_native);
  sub_24E643A9C((v1 + 8), &v42);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  *&v41[0] = v2;
  sub_24E81C1D4(&v42, 0x6E656B6F74, 0xE500000000000000, v7);
  v8 = *&v41[0];
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v43 = v5;
  *&v42 = v9;
  *(&v42 + 1) = v10;
  sub_24E612B0C(&v42, v41);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0x64496D616461, 0xE600000000000000, v11);
  v12 = v1[88];
  v13 = MEMORY[0x277D839B0];
  v43 = MEMORY[0x277D839B0];
  LOBYTE(v42) = v12;
  sub_24E612B0C(&v42, v41);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0x6E776F6465527369, 0xEC00000064616F6CLL, v14);
  v15 = v1[137];
  v43 = v13;
  LOBYTE(v42) = v15;
  sub_24E612B0C(&v42, v41);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v41, 0xD000000000000018, 0x800000024FA54F80, v16);
  v17 = *(v1 + 10);
  if (v17)
  {
    v18 = *(v1 + 9);
    v43 = v5;
    *&v42 = v18;
    *(&v42 + 1) = v17;
    sub_24E612B0C(&v42, v41);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0xD000000000000011, 0x800000024FA55020, v19);
  }

  v20 = *(v1 + 19);
  if (v20)
  {
    v21 = *(v1 + 18);
    v43 = v5;
    *&v42 = v21;
    *(&v42 + 1) = v20;
    sub_24E612B0C(&v42, v41);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0x6D657449656E696CLL, 0xE800000000000000, v22);
  }

  v23 = *(v1 + 12);
  if (v23)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    *&v42 = v23;
    sub_24E612B0C(&v42, v41);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0x7363697274656DLL, 0xE700000000000000, v24);
  }

  v25 = *(v1 + 13);
  if (v25)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    *&v42 = v25;
    sub_24E612B0C(&v42, v41);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0xD000000000000011, 0x800000024FA55000, v26);
  }

  v27 = *(v1 + 14);
  if (v27)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
    *&v42 = v27;
    sub_24E612B0C(&v42, v41);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0xD000000000000011, 0x800000024FA54FE0, v28);
  }

  v29 = *(v1 + 16);
  if (v29)
  {
    v30 = *(v1 + 15);
    v43 = v5;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    sub_24E612B0C(&v42, v41);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0xD000000000000019, 0x800000024FA54FC0, v31);
  }

  v32 = *(v1 + 8);
  if (v32)
  {
    v33 = *(v1 + 7);
    v43 = v5;
    *&v42 = v33;
    *(&v42 + 1) = v32;
    sub_24E612B0C(&v42, v41);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0x6441746E65726170, 0xEC00000064496D61, v34);
  }

  v35 = v1[138];
  if (v35 != 2)
  {
    v36 = (v35 & 1) == 0;
    if (v35)
    {
      v37 = 0xD000000000000019;
    }

    else
    {
      v37 = 0xD000000000000010;
    }

    if (v36)
    {
      v38 = "gnF";
    }

    else
    {
      v38 = "exceptionDeleted";
    }

    v43 = v5;
    *&v42 = v37;
    *(&v42 + 1) = v38 | 0x8000000000000000;
    sub_24E612B0C(&v42, v41);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v41, 0xD000000000000013, 0x800000024FA54FA0, v39);
  }

  return v8;
}

uint64_t PurchaseIntent.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t PurchaseIntent.parentAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t PurchaseIntent.overrideBuyParameters.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PurchaseIntent.presentingSceneIdentifier.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t PurchaseIntent.lineItem.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

__n128 PurchaseIntent.init(installationType:purchaseToken:adamId:parentAdamId:overrideBuyParameters:isRedownload:lineItem:metricsDictionary:systemInformation:additionalHeaders:presentingSceneIdentifier:isAppInstalled:requiresExceptionRequest:forceAskToBuyReason:)@<Q0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __n128 a12, uint64_t a13, char a14, char a15, char *a16)
{
  v19 = *a3;
  v18 = a3[1];
  v21 = *a4;
  v20 = a4[1];
  v22 = *a16;
  *a9 = *a1;
  sub_24E612B0C(a2, (a9 + 8));
  *(a9 + 40) = v19;
  *(a9 + 48) = v18;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 144) = a8;
  *(a9 + 152) = a10;
  result = a12;
  *(a9 + 96) = a11;
  *(a9 + 112) = a12;
  *(a9 + 128) = a13;
  *(a9 + 136) = a14;
  *(a9 + 56) = v21;
  *(a9 + 64) = v20;
  *(a9 + 137) = a15;
  *(a9 + 138) = v22;
  return result;
}

uint64_t sub_24EBAA5F8()
{
  result = sub_24F92B098();
  qword_27F22A8E0 = result;
  return result;
}

id static PurchaseCompleteNotificationDetails.notificationName.getter()
{
  if (qword_27F2103A8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22A8E0;

  return v1;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_24EBAA6D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EBAA718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit14PurchaseResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_24EBAA7AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void *ProductPageScrollAction.__allocating_init(title:section:index:clicksOnScroll:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  v32 = a1;
  v33 = a2;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_section) = a3;
  v17 = v16 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_index;
  *v17 = a4;
  v17[8] = a5 & 1;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_clicksOnScroll) = a6;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v18 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v19 = sub_24F928AD8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v16 + v18, a7, v19);
  v21 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v22 = sub_24F929608();
  (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
  v23 = (v16 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  v24 = v16 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v39, &v36);
  if (*(&v37 + 1))
  {
    v25 = v37;
    *v24 = v36;
    *(v24 + 1) = v25;
    *(v24 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v28 = v27;
    (*(v13 + 8))(v15, v12);
    v34 = v26;
    v35 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830);
  }

  (*(v20 + 8))(a7, v19);
  sub_24E601704(v39, &qword_27F235830);
  v29 = v33;
  v16[2] = v32;
  v16[3] = v29;
  v16[4] = 0;
  v16[5] = 0;
  return v16;
}

void *ProductPageScrollAction.init(title:section:index:clicksOnScroll:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, uint64_t a7)
{
  v8 = v7;
  v34 = a6;
  v35 = a1;
  v36 = a2;
  v33 = sub_24F91F6B8();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - v16;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_section) = a3;
  v22 = v8 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_index;
  *v22 = a4;
  v22[8] = a5 & 1;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_clicksOnScroll) = v34;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  (*(v19 + 16))(v21, a7, v18);
  v23 = sub_24F929608();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v24 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_24E65E064(v45, &v39);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v32 + 8))(v14, v33);
    v37 = v25;
    v38 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830);
  }

  (*(v19 + 8))(a7, v18);
  sub_24E601704(v45, &qword_27F235830);
  v28 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v28 + 4) = v44;
  v29 = v43;
  *v28 = v42;
  *(v28 + 1) = v29;
  sub_24E65E0D4(v17, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v30 = v36;
  v8[2] = v35;
  v8[3] = v30;
  v8[4] = 0;
  v8[5] = 0;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

char *ProductPageScrollAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v55 = a2;
  v6 = *v4;
  v50 = v3;
  v51 = v6;
  v54 = sub_24F9285B8();
  v7 = *(v54 - 8);
  v8 = MEMORY[0x28223BE20](v54);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v56 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v48 = v13;
  v24 = *(v13 + 8);
  v53 = v12;
  v25 = v12;
  v26 = v24;
  (v24)(v23, v25);
  v52 = v7;
  if (a1)
  {
    v27 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v28 = 0x6E6F6974636573;
    v29 = v51;
    v28[1] = 0xE700000000000000;
    v28[2] = v29;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    v30 = v29;
  }

  else
  {
    sub_24F928398();
    v46 = *(v7 + 16);
    v46(v11, v55, v54);
    type metadata accessor for ProductPageSection();
    swift_allocObject();
    v31 = v50;
    v32 = ProductPageSection.init(deserializing:using:)(v21, v11);
    v30 = v51;
    if (!v31)
    {
      *(v4 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_section) = v32;
      sub_24F928398();
      v34 = sub_24F928258();
      v36 = v35;
      v37 = v23;
      v38 = v53;
      (v26)(v37, v53);
      v39 = v4 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_index;
      *v39 = v34;
      v39[8] = v36 & 1;
      sub_24F928398();
      LOBYTE(v34) = sub_24F928278();
      v51 = v26;
      (v26)(v18, v38);
      v40 = v38;
      *(v4 + OBJC_IVAR____TtC12GameStoreKit23ProductPageScrollAction_clicksOnScroll) = (v34 == 2) | v34 & 1;
      v41 = v47;
      v42 = v56;
      (*(v48 + 16))(v47, v56, v40);
      v43 = v49;
      v45 = v54;
      v44 = v55;
      v46(v49, v55, v54);
      v30 = Action.init(deserializing:using:)(v41, v43);
      (*(v52 + 8))(v44, v45);
      (v51)(v42, v53);
      return v30;
    }
  }

  (*(v52 + 8))(v55, v54);
  (v26)(v56, v53);
  swift_deallocPartialClassInstance();
  return v30;
}

uint64_t ProductPageScrollAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t ProductPageScrollAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductPageScrollAction()
{
  result = qword_27F22A8E8;
  if (!qword_27F22A8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkableText.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LinkableText.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t LinkableText.__allocating_init(id:text:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24E60169C(a1, v14, &qword_27F235830);
  type metadata accessor for StyledText();
  v8 = swift_allocObject();
  *(v8 + 40) = sub_24E609504(MEMORY[0x277D84F90]);
  v9 = OBJC_IVAR____TtC12GameStoreKit10StyledText_cachedAttributedString;
  v10 = sub_24F91F008();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = (v8 + OBJC_IVAR____TtC12GameStoreKit10StyledText____lazy_storage___plainText);
  *v11 = 0;
  v11[1] = 0;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = 0;
  v12 = swift_allocObject();
  LinkableText.init(id:styledText:linkedSubstrings:)(v14, v8, a4);
  sub_24E601704(a1, &qword_27F235830);
  return v12;
}

uint64_t LinkableText.__allocating_init(id:styledText:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E60169C(a1, &v17, &qword_27F235830);
  if (*(&v18 + 1))
  {
    sub_24E601704(a1, &qword_27F235830);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830);
    sub_24E601704(&v17, &qword_27F235830);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t LinkableText.init(id:styledText:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v18, &qword_27F235830);
  if (*(&v19 + 1))
  {
    sub_24E601704(a1, &qword_27F235830);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830);
    sub_24E601704(&v18, &qword_27F235830);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t LinkableText.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = v2;
  v67 = a2;
  v57 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v55 - v6;
  v7 = sub_24F928E68();
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_24F9285B8();
  v9 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F91F6B8();
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v64 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v63 = v15;
  if (v22)
  {
    v68 = v21;
    v69 = v22;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v14;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v11;
    v28 = v14;
    v29 = v7;
    v30 = v9;
    v32 = v31;
    v65[1](v13, v27);
    v68 = v26;
    v69 = v32;
    v9 = v30;
    v7 = v29;
    v14 = v28;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v28;
  }

  v65 = v23;
  (v23)(v24, v25);
  v33 = v71;
  v34 = v66;
  *(v66 + 2) = v70;
  *(v34 + 3) = v33;
  v34[8] = v72;
  type metadata accessor for StyledText();
  v35 = v64;
  sub_24F928398();
  v36 = v67;
  (*(v9 + 2))(v62, v67, v73);
  sub_24EBAC7F0(&qword_27F22A8F8, 255, type metadata accessor for StyledText);
  sub_24F929548();
  v37 = v70;
  if (!v70)
  {
    v45 = sub_24F92AC38();
    sub_24EBAC7F0(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v46 = 0x655464656C797473;
    v47 = v57;
    v46[1] = 0xEA00000000007478;
    v46[2] = v47;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D22530], v45);
    swift_willThrow();
    (v65)(v35, v14);
    sub_24E6585F8((v34 + 4));
    swift_deallocPartialClassInstance();
    (*(v9 + 1))(v36, v73);
    return v34;
  }

  v62 = v9;
  v38 = v58;
  sub_24F928398();
  v39 = v59;
  sub_24F9281F8();
  v40 = v38;
  v41 = v65;
  (v65)(v40, v14);
  v42 = v60;
  if ((*(v60 + 48))(v39, 1, v7) == 1)
  {
    sub_24E601704(v39, qword_27F221C40);
    v43 = sub_24E6091F0(MEMORY[0x277D84F90]);
    (v41)(v35, v14);
    v44 = v67;
LABEL_10:
    v34[2] = v37;
    v34[3] = v43;
    (*(v62 + 1))(v44, v73);
    return v34;
  }

  v63 = v14;
  v48 = v39;
  v49 = v56;
  v50 = (*(v42 + 32))(v56, v48, v7);
  MEMORY[0x28223BE20](v50);
  v51 = v42;
  v59 = v7;
  v44 = v67;
  *(&v55 - 2) = v67;
  type metadata accessor for Action();
  v52 = v61;
  v53 = sub_24F928E38();
  if (!v52)
  {
    v43 = v53;
    (v65)(v35, v63);
    (*(v51 + 8))(v49, v59);
    v34 = v66;
    goto LABEL_10;
  }

  sub_24E6585F8((v66 + 4));
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24EBAC48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  type metadata accessor for Action();
  v15 = static Action.makeInstance(byDeserializing:using:)(a3, a4);
  if (v5)
  {
    sub_24F928548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728);
    sub_24F9285D8();
    (*(v12 + 8))(v14, v11);
    sub_24E60169C(v19, v17, &qword_27F226730);
    if (v18)
    {
      __swift_project_boxed_opaque_existential_1(v17, v18);
      type metadata accessor for LinkableText();
      sub_24F929EC8();

      sub_24E601704(v19, &qword_27F226730);
      result = __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      sub_24E601704(v19, &qword_27F226730);

      result = sub_24E601704(v17, &qword_27F226730);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    *a5 = a1;
    a5[1] = a2;
    a5[2] = v15;
  }

  return result;
}

uint64_t LinkableText.deinit()
{

  sub_24E6585F8(v0 + 32);
  return v0;
}

uint64_t LinkableText.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24EBAC724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = LinkableText.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBAC7F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24EBAC8B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v50 = result + 64;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v51 = v7;
  v52 = result;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v59 = (v6 - 1) & v6;
LABEL_16:
    v60 = v3;
    v11 = v8 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(result + 56) + 8 * v11);

    v16 = sub_24E76D644(v13, v14);
    v18 = v17;

    if ((v18 & 1) == 0 || (v19 = *(*(v2 + 56) + 8 * v16), v20 = *(v19 + 16), v20 != *(v15 + 16)))
    {
LABEL_57:

      return 0;
    }

    if (v20 && v19 != v15)
    {
      v21 = v19 + 32;
      v22 = v15 + 32;

      v23 = 0;
      v56 = v2;
      v57 = result;
      v58 = v15;
      v54 = v21;
      v55 = v20;
      v53 = v15 + 32;
      while (v23 < *(result + 16))
      {
        if (v23 >= *(v15 + 16))
        {
          goto LABEL_62;
        }

        v24 = *(v21 + 8 * v23);
        v25 = *(v22 + 8 * v23);
        if (v24 != v25)
        {
          if (*(v24 + 16) != *(v25 + 16))
          {

            goto LABEL_57;
          }

          v61 = v23;
          v26 = v24 + 64;
          v27 = 1 << *(v24 + 32);
          if (v27 < 64)
          {
            v28 = ~(-1 << v27);
          }

          else
          {
            v28 = -1;
          }

          v29 = v28 & *(v24 + 64);
          v30 = (v27 + 63) >> 6;

          v31 = 0;
          while (v29)
          {
            v32 = __clz(__rbit64(v29));
            v62 = (v29 - 1) & v29;
LABEL_39:
            v35 = 16 * (v32 | (v31 << 6));
            v36 = v24;
            v37 = (*(v24 + 48) + v35);
            v38 = *v37;
            v39 = v37[1];
            v40 = (*(v24 + 56) + v35);
            v42 = *v40;
            v41 = v40[1];

            v43 = sub_24E76D644(v38, v39);
            v45 = v44;

            if ((v45 & 1) == 0)
            {
LABEL_52:

LABEL_56:

              goto LABEL_57;
            }

            v46 = (*(v25 + 56) + 16 * v43);
            v47 = v46[1];
            if (v47)
            {
              if (!v41)
              {
                goto LABEL_55;
              }

              if (*v46 == v42 && v47 == v41)
              {

                v24 = v36;
                v29 = v62;
              }

              else
              {
                v49 = sub_24F92CE08();

                v24 = v36;
                v29 = v62;
                if ((v49 & 1) == 0)
                {
LABEL_55:

                  goto LABEL_56;
                }
              }
            }

            else
            {
              v24 = v36;
              v29 = v62;
              if (v41)
              {
                goto LABEL_52;
              }
            }
          }

          v33 = v31;
          while (1)
          {
            v31 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v31 >= v30)
            {

              v2 = v56;
              result = v57;
              v15 = v58;
              v21 = v54;
              v20 = v55;
              v22 = v53;
              v23 = v61;
              goto LABEL_22;
            }

            v34 = *(v26 + 8 * v31);
            ++v33;
            if (v34)
            {
              v32 = __clz(__rbit64(v34));
              v62 = (v34 - 1) & v34;
              goto LABEL_39;
            }
          }

          __break(1u);
          goto LABEL_60;
        }

LABEL_22:
        if (++v23 == v20)
        {

          goto LABEL_8;
        }
      }

      goto LABEL_61;
    }

LABEL_8:

    v7 = v51;
    result = v52;
    v6 = v59;
    v3 = v60;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v50 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v59 = (v10 - 1) & v10;
      goto LABEL_16;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_24EBACC80(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    sub_24E772674(*(v2 + 48) + 136 * v11, &v27);
    v12 = *(*(v2 + 56) + 8 * v11);
    v25 = v30;
    v26 = v28;
    v20 = v31;
    v21 = v29;
    v23 = v34;
    v24 = v32;
    v19 = v33;
    v13 = v35;
    v22 = v27;
    v14 = *(&v27 + 1);

    if (!v14)
    {
      return 1;
    }

    v27 = v22;
    v28 = v26;
    v29 = v21;
    v30 = v25;
    v31 = v20;
    v32 = v24;
    v33 = v19;
    v34 = v23;
    v35 = v13;
    sub_24E76D6EC(&v27);
    v16 = v15;
    sub_24E7726D0(&v27);
    if ((v16 & 1) == 0)
    {

      return 0;
    }

    v18 = sub_24EDD4178(v17, v12);

    if ((v18 & 1) == 0)
    {
      return 0;
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

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBACE54(uint64_t result, uint64_t a2)
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
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_24E76D644(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_24F92CE08();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_24EBACFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A970);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v54 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v54 + 16))
  {
    v46 = &v43 - v10;
    v47 = v11;
    v13 = 0;
    v44 = a1;
    v14 = *(a1 + 64);
    v43 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v48 = v52 + 16;
    v49 = (v52 + 32);
    v45 = (v52 + 8);
    while (1)
    {
      v19 = v47;
      if (!v17)
      {
        break;
      }

      v50 = (v17 - 1) & v17;
      v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_16:
      v25 = *(*(v44 + 48) + v20);
      v27 = v51;
      v26 = v52;
      (*(v52 + 16))(v51, *(v44 + 56) + *(v52 + 72) * v20, v4, v12);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978);
      v29 = *(v28 + 48);
      *v19 = v25;
      (*(v26 + 32))(&v19[v29], v27, v4);
      (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
LABEL_17:
      v30 = v19;
      v31 = v46;
      sub_24E6009C8(v30, v46, &qword_27F22A970);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978);
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
      {
        return;
      }

      v33 = *(v32 + 48);
      v34 = *v31;
      (*v49)(v53, &v31[v33], v4);
      v35 = sub_24E76D758(v34);
      if ((v36 & 1) == 0)
      {
        (*v45)(v53, v4);
        return;
      }

      v37 = v51;
      v38 = v52;
      (*(v52 + 16))(v51, *(v54 + 56) + *(v52 + 72) * v35, v4);
      sub_24EBB0AE8(&qword_27F226C38, MEMORY[0x277CC9260]);
      v39 = v53;
      v40 = sub_24F92AFF8();
      v41 = *(v38 + 8);
      v41(v37, v4);
      v41(v39, v4);
      v17 = v50;
      if ((v40 & 1) == 0)
      {
        return;
      }
    }

    if (v18 <= v13 + 1)
    {
      v21 = v13 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v23 >= v18)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22A978);
        (*(*(v42 - 8) + 56))(v19, 1, 1, v42);
        v50 = 0;
        v13 = v22;
        goto LABEL_17;
      }

      v24 = *(v43 + 8 * v23);
      ++v13;
      if (v24)
      {
        v50 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v13 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24EBAD4E8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_24E65864C(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_24E76D644(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_24E6585F8(&v24);
      return 0;
    }

    sub_24E65864C(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x253052150](v23, &v24);
    sub_24E6585F8(v23);
    result = sub_24E6585F8(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBAD684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v42 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v5);
  v10 = (&v35 - v9);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v11 = 0;
  v12 = *(a1 + 64);
  v38 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v39 = v16;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v40 = (v15 - 1) & v15;
LABEL_14:
    v20 = v17 | (v11 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(*(a1 + 56) + 8 * v20);

    v25 = sub_24E76D644(v22, v23);
    v27 = v26;

    if ((v27 & 1) == 0 || (v28 = *(*(a2 + 56) + 8 * v25), v29 = *(v28 + 16), v29 != *(v24 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v29 && v28 != v24)
    {
      v36 = a1;
      v37 = a2;
      v30 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v41 = v28 + v30;
      v31 = v24 + v30;

      v32 = 0;
      while (v32 < *(v28 + 16))
      {
        v33 = *(v42 + 72) * v32;
        result = sub_24EBB0A80(v41 + v33, v10, type metadata accessor for Player);
        if (v32 >= *(v24 + 16))
        {
          goto LABEL_31;
        }

        sub_24EBB0A80(v31 + v33, v7, type metadata accessor for Player);
        v34 = _s12GameStoreKit6PlayerV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_24E7E3948(v7, type metadata accessor for Player);
        result = sub_24E7E3948(v10, type metadata accessor for Player);
        if (!v34)
        {

          goto LABEL_26;
        }

        if (v29 == ++v32)
        {

          a1 = v36;
          a2 = v37;
          goto LABEL_6;
        }
      }

      goto LABEL_30;
    }

LABEL_6:

    v16 = v39;
    v15 = v40;
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      return 1;
    }

    v19 = *(v38 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_24EBAD98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Game();
  v65 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v51 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v58 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A960);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v60 = v15;
    v56 = v6;
    v18 = 0;
    v54 = a1;
    v21 = *(a1 + 64);
    v20 = a1 + 64;
    v19 = v21;
    v22 = 1 << *(v20 - 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v19;
    v25 = (v22 + 63) >> 6;
    v53 = v58 + 16;
    v61 = &v51 - v14;
    v62 = (v58 + 32);
    v55 = (v58 + 8);
    v51 = v20;
    v52 = v25;
    while (v24)
    {
      v63 = (v24 - 1) & v24;
      v26 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
      v32 = v54;
      v34 = v57;
      v33 = v58;
      v35 = v66;
      (*(v58 + 16))(v57, *(v54 + 48) + *(v58 + 72) * v26, v66, v16);
      v36 = v64;
      sub_24EBB0A80(*(v32 + 56) + *(v65 + 72) * v26, v64, type metadata accessor for Game);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A968);
      v38 = *(v37 + 48);
      v39 = *(v33 + 32);
      v29 = v60;
      v39(v60, v34, v35);
      sub_24E636644(v36, v29 + v38);
      (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
      v17 = v61;
      v25 = v52;
LABEL_17:
      sub_24E6009C8(v29, v17, &qword_27F22A960);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A968);
      if ((*(*(v40 - 8) + 48))(v17, 1, v40) == 1)
      {
        return;
      }

      v41 = *(v40 + 48);
      v42 = v59;
      v43 = v66;
      (*v62)(v59, v17, v66);
      v44 = &v17[v41];
      v45 = v56;
      sub_24E636644(v44, v56);
      v46 = sub_24E76DF04(v42);
      LOBYTE(v41) = v47;
      (*v55)(v42, v43);
      if ((v41 & 1) == 0)
      {
        sub_24E7E3948(v45, type metadata accessor for Game);
        return;
      }

      v48 = v64;
      sub_24EBB0A80(*(a2 + 56) + *(v65 + 72) * v46, v64, type metadata accessor for Game);
      v49 = _s12GameStoreKit0A0V2eeoiySbAC_ACtFZ_0(v48, v45);
      sub_24E7E3948(v48, type metadata accessor for Game);
      sub_24E7E3948(v45, type metadata accessor for Game);
      v17 = v61;
      v24 = v63;
      if (!v49)
      {
        return;
      }
    }

    if (v25 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v25;
    }

    v28 = v27 - 1;
    v29 = v60;
    while (1)
    {
      v30 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v30 >= v25)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A968);
        (*(*(v50 - 8) + 56))(v29, 1, 1, v50);
        v63 = 0;
        v18 = v28;
        goto LABEL_17;
      }

      v31 = *(v51 + 8 * v30);
      ++v18;
      if (v31)
      {
        v63 = (v31 - 1) & v31;
        v26 = __clz(__rbit64(v31)) | (v30 << 6);
        v18 = v30;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24EBADF38(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_24E76D644(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBAE06C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + 72 * v12;
    v17 = *(v16 + 64);
    v19 = *(v16 + 32);
    v18 = *(v16 + 48);
    v50 = *(v16 + 16);
    v20 = *v16;
    v51 = v19;
    v52 = v18;
    v49 = v20;
    v53 = v17;
    v33 = v18;
    v34 = v50;
    v31 = v19;
    v32 = v20;

    sub_24E627A14(&v49, &v44);
    if (!v14)
    {
      return 1;
    }

    v49 = v32;
    v50 = v34;
    v51 = v31;
    v52 = v33;
    v53 = v17;
    v21 = sub_24E76D644(v15, v14);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      v46 = v51;
      v47 = v52;
      v48 = v53;
      v44 = v49;
      v45 = v50;
      sub_24E627A70(&v44);
      return 0;
    }

    v24 = *(a2 + 56) + 72 * v21;
    v40[0] = *v24;
    v26 = *(v24 + 32);
    v25 = *(v24 + 48);
    v27 = *(v24 + 16);
    v41 = *(v24 + 64);
    v40[2] = v26;
    v40[3] = v25;
    v40[1] = v27;
    v28 = *(v24 + 48);
    v37 = *(v24 + 32);
    v38 = v28;
    v39 = *(v24 + 64);
    v29 = *(v24 + 16);
    v35 = *v24;
    v36 = v29;
    v30 = _s12GameStoreKit0A23ActivityDraftPlayerInfoV2eeoiySbAC_ACtFZ_0(&v35, &v49);
    v42[2] = v37;
    v42[3] = v38;
    v43 = v39;
    v42[0] = v35;
    v42[1] = v36;
    sub_24E627A14(v40, &v44);
    sub_24E627A70(v42);
    v46 = v51;
    v47 = v52;
    v48 = v53;
    v44 = v49;
    v45 = v50;
    result = sub_24E627A70(&v44);
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBAE2BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_allocate_value_buffer(v0, qword_27F22A908);
  __swift_project_value_buffer(v0, qword_27F22A908);
  return sub_24F928C68();
}

uint64_t static ArcadeSeeAllGamesPagePresenter.displayStyleKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2103B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  v3 = __swift_project_value_buffer(v2, qword_27F22A908);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ArcadeSeeAllGamesPagePresenter.init(objectGraph:pageUrl:facetsPresenter:automaticallyManageFacetChanges:)(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v62 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A920);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v44 - v9;
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F928188();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v49 = sub_24F9288E8();
  v18 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  v22._object = 0x800000024FA55100;
  v22._countAndFlagsBits = 0xD000000000000010;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  *v21 = localizedString(_:comment:)(v22, v23);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v58 = v11;
  v59 = v10;
  v24 = *(v11 + 16);
  v60 = a2;
  v52 = v24;
  v48 = v11 + 16;
  v24(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl, a2, v10);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_facetsPresenter) = a3;
  v57 = a4;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_automaticallyManageFacetChanges) = a4;
  sub_24F929388();

  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2103B0 != -1)
  {
    swift_once();
  }

  v61 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_project_value_buffer(v25, qword_27F22A908);
  sub_24F928868();

  v26 = sub_24F92CB88();

  v27 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle) = v26 == 1;
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  v28 = v63[0];
  sub_24F929EB8();
  if (qword_27F2108F0 != -1)
  {
    swift_once();
  }

  v29 = v49;
  (*(v18 + 104))(v20, *MEMORY[0x277D21C38], v49);
  sub_24F92A368();
  (*(v18 + 8))(v20, v29);
  v30 = v51;
  sub_24F92A408();
  (*(v50 + 8))(v17, v30);
  v31 = sub_24F929EA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
  v51 = v31;
  v63[0] = v31;
  v63[1] = MEMORY[0x277D221C0];
  v32 = v53;
  sub_24F928178();
  sub_24F928F88();
  (*(v54 + 8))(v32, v55);
  v55 = v28;
  v33 = v56;
  v34 = v59;
  v35 = v52;
  v52(v56, v60, v59);
  swift_beginAccess();
  LOBYTE(v32) = *(v5 + v27);
  type metadata accessor for ArcadeSeeAllGamesContentPresenter();
  v36 = swift_allocObject();
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x277D84F90];
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x277D84FA0];
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v37 = (v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v37 = 0u;
  v37[1] = 0u;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  v35(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl, v33, v34);
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = v61;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v32;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

  v39 = sub_24EC8415C(v38, 0, 0, 0);

  v58 = *(v58 + 8);
  (v58)(v33, v34);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter) = v39;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

  v41 = sub_24EC8415C(v40, 0, 0, 0);

  if (v57)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A648);
    sub_24EBB00D4();

    sub_24F9288B8();
    type metadata accessor for ArcadeSeeAllGamesPagePresenter();
    v42 = v45;
    sub_24F9288C8();

    (v58)(v60, v59);
    __swift_destroy_boxed_opaque_existential_1(v63);
    (*(v46 + 8))(v42, v47);
  }

  else
  {

    (v58)(v60, v59);
  }

  return v41;
}

uint64_t sub_24EBAEDE0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24EBAEE4C()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24EBAEEA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_24EBAEF08(&v7);
}

uint64_t sub_24EBAEF08(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = *a1;
  v8 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  if (*(v1 + v8))
  {
    v9 = 0x746361706D6F63;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (v7)
  {
    v10 = 0x746361706D6F63;
  }

  else
  {
    v10 = 0x746C7561666564;
  }

  if (v9 == v10)
  {
    return swift_bridgeObjectRelease_n();
  }

  v12 = sub_24F92CE08();
  result = swift_bridgeObjectRelease_n();
  if ((v12 & 1) == 0)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    if (qword_27F2103B0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v3, qword_27F22A908);
    (*(v4 + 16))(v6, v13, v3);
    if (*(v1 + v8))
    {
      v14 = 0x746361706D6F63;
    }

    else
    {
      v14 = 0x746C7561666564;
    }

    v15[1] = v14;
    v15[2] = 0xE700000000000000;
    sub_24F928878();

    return sub_24EBB0184();
  }

  return result;
}

uint64_t sub_24EBAF11C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24EBAF170(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v4;
  return sub_24EBAEF08(&v6);
}

void (*sub_24EBAF1D0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24EBAF264;
}

void sub_24EBAF264(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_24EBAEF08(v6);

  free(v2);
}

uint64_t sub_24EBAF2E0(uint64_t a1)
{
  v3 = a1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(a1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v6 = v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v7 = *(v6 + 8);
  v8 = v5 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v8 + 8) = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(*(v1 + v4) + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = &off_2861E5B48;
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v10 + 16) + 16) + 8))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EBAF48C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EBAF4F8(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;
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

uint64_t sub_24EBAF5FC(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v3 + v4) = a1;
  v5 = v3 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 8);
    v10 = *(v9 + 8);

    v10(ObjectType, v9);
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v11 = *(v5 + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 8);
    v14 = *(v13 + 16);

    v14(v12, v13);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_24EBAF72C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v2 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*sub_24EBAF780(uint64_t *a1))(uint64_t a1)
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
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v6 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + v6);
  return sub_24EBAF824;
}

void sub_24EBAF824(uint64_t a1)
{
  v1 = *a1;
  sub_24EBAF5FC(*(*a1 + 32));

  free(v1);
}

BOOL sub_24EBAF864()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v2 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
  swift_beginAccess();
  sub_24E94E17C(v1 + v2, v5);
  v3 = v6 != 0;
  sub_24E601704(v5, &qword_27F2129B0);
  return v3;
}

uint64_t sub_24EBAF8E4()
{

  sub_24ED07818();
}

uint64_t sub_24EBAF92C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v2 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_24EBAF9A0(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x253052270](a1, v6);

    return v7;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v7 = *(v6 + 8 * a1 + 32);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBAFA68(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v6 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v7 = *(v5 + v6);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v5 + v6) = v7;
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = sub_24ECDE964(v7);
    v7 = result;
    *(v5 + v6) = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;
    *(v5 + v6) = v7;
    swift_endAccess();
  }

  __break(1u);
  return result;
}

BOOL sub_24EBAFB4C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 >> 62)
  {
    v6 = sub_24F92C738();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 > a1;
}

unint64_t sub_24EBAFBD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);

  v2 = sub_24F91FA18();
  v3 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (v2 < sub_24F92C738())
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_3:
  result = sub_24F91FA18();
  v6 = *(v1 + v3);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v11 = result;

    v7 = MEMORY[0x253052270](v11, v6);

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 8 * result + 32);

LABEL_7:
    v8 = *(v7 + 24);

    v9 = *(v8 + 16);

    v10 = sub_24F91FA08();

    return v10 < v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBAFD20()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
  }

  else
  {
    v2 = sub_24F92CE08();

    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + v1);
      *(v0 + v1) = 1;
      goto LABEL_6;
    }
  }

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
LABEL_6:
  v5 = v3;
  return sub_24EBAEF08(&v5);
}

uint64_t sub_24EBAFDE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658);
  sub_24F92BF18();
  v1 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter) + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions);
  if (!v1)
  {

    return sub_24EBB0184();
  }

  v2 = sub_24EBACC80(v4, v1);

  if ((v2 & 1) == 0)
  {
    return sub_24EBB0184();
  }

  return result;
}

uint64_t sub_24EBAFEF4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;

  return sub_24E883630(v3);
}

uint64_t ArcadeSeeAllGamesPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view);
  return v0;
}

uint64_t ArcadeSeeAllGamesPagePresenter.__deallocating_deinit()
{
  ArcadeSeeAllGamesPagePresenter.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EBB00D4()
{
  result = qword_27F22A940;
  if (!qword_27F22A940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A940);
  }

  return result;
}

uint64_t type metadata accessor for ArcadeSeeAllGamesPagePresenter()
{
  result = qword_27F22A950;
  if (!qword_27F22A950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EBB0184()
{
  v1 = v0;
  v2 = sub_24F91F4A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
  v8 = *(v3 + 16);
  v8(v6, v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl, v2, v4);
  v9 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_facetsPresenter);
  v10 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  v11 = *(v1 + v10);
  type metadata accessor for ArcadeSeeAllGamesContentPresenter();
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x277D84F90];
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x277D84FA0];
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v13 = (v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v13 = 0u;
  v13[1] = 0u;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  (v8)(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl, v6, v2);
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = v9;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v11;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

  v14 = sub_24EC8415C(v7, 0, 0, 0);

  (*(v3 + 8))(v6, v2);
  v15 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter) = v14;

  sub_24EBAF2E0(v15);

  memset(v18, 0, sizeof(v18));
  swift_beginAccess();
  sub_24EA095A4(v18, v1 + 40);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(v18, &qword_27F224F98);
  sub_24EC80D60();

  sub_24ED06378();
}

uint64_t sub_24EBB04C4(uint64_t a1)
{
  result = sub_24EBB0AE8(&qword_27F22A948, type metadata accessor for ArcadeSeeAllGamesPagePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EBB051C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_24EBB0578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EBB05D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EBB0630(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EBB0694@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC12GameStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EBB072C()
{
  result = sub_24F91F4A8();
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

uint64_t sub_24EBB0A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EBB0AE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EBB0B40(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  type metadata accessor for LaunchGameActivityAction();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBB0BDC, 0, 0);
}

uint64_t sub_24EBB0BDC()
{
  v1 = v0[19];
  v2 = [objc_opt_self() proxyForLocalPlayer];
  v3 = [v2 gameServicePrivate];
  v0[22] = v3;

  v4 = sub_24F92B098();
  v0[23] = v4;
  if (!*(v1 + 64))
  {
    sub_24E6086DC(MEMORY[0x277D84F90]);
  }

  v5 = v0[19];

  v6 = sub_24F92AE28();
  v0[24] = v6;

  v7 = sub_24F92B098();
  v0[25] = v7;
  if (*(v5 + 40))
  {
    v8 = sub_24F92B098();
  }

  else
  {
    v8 = 0;
  }

  v0[26] = v8;
  if (*(v0[19] + 56))
  {
    v9 = sub_24F92B098();
  }

  else
  {
    v9 = 0;
  }

  v0[27] = v9;
  v0[2] = v0;
  v0[3] = sub_24EBB0E1C;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AA00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24EBB11A4;
  v0[13] = &block_descriptor_56;
  v0[14] = v10;
  [v3 createGameActivityWithIdentifier:v4 properties:v6 bundleID:v7 referenceLeaderboardID:v8 referenceAchievementDescriptionID:v9 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24EBB0E1C()
{

  return MEMORY[0x2822009F8](sub_24EBB0EFC, 0, 0);
}

uint64_t sub_24EBB0EFC()
{
  v29 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  swift_unknownObjectRelease();

  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];
  v9 = sub_24F9220D8();
  __swift_project_value_buffer(v9, qword_27F39E8B0);
  sub_24EBB1464(v8, v7);
  sub_24EBB1464(v8, v6);
  v10 = sub_24F9220B8();
  v11 = sub_24F92BD98();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[20];
  v14 = v0[21];
  if (v12)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315394;
    v17 = *v14;
    v18 = v14[1];

    sub_24EBB1770(v14);
    v19 = sub_24E7620D4(v17, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);

    sub_24EBB1770(v13);
    v22 = sub_24E7620D4(v20, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_24E5DD000, v10, v11, "Game %s: Activity %s deeplink launched", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v16, -1, -1);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  else
  {

    sub_24EBB1770(v13);
    sub_24EBB1770(v14);
  }

  v23 = v0[18];
  v24 = *MEMORY[0x277D21CA8];
  v25 = sub_24F928AE8();
  (*(*(v25 - 8) + 104))(v23, v24, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_24EBB11A4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

unint64_t sub_24EBB11F4()
{
  result = qword_27F2162D8;
  if (!qword_27F2162D8)
  {
    type metadata accessor for LaunchGameActivityAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2162D8);
  }

  return result;
}

uint64_t sub_24EBB1254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for LaunchGameActivityAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_24EBB1464(a1, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_24EBB15D0(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v10 = sub_24F92A9E8();
  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24F988CE8;
  v12[5] = v9;
  v12[6] = v10;

  sub_24E6959D8(0, 0, v4, &unk_24F94D7B0, v12);

  return v10;
}

uint64_t sub_24EBB1464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameActivityAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBB14C8()
{
  v1 = (type metadata accessor for LaunchGameActivityAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EBB15D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameActivityAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBB1634(uint64_t a1)
{
  v4 = *(type metadata accessor for LaunchGameActivityAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24EBB0B40(a1, v1 + v5);
}

uint64_t sub_24EBB1710()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EBB1770(uint64_t a1)
{
  v2 = type metadata accessor for LaunchGameActivityAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ArtworkLoaderURLSession.__allocating_init(configuration:delegate:delegateQueue:)(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v6;
}

id ArtworkLoaderURLSession.init(configuration:delegate:delegateQueue:)(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = v3;
  v9.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v9, sel_initWithConfiguration_delegate_delegateQueue_, a1, a2, a3);

  swift_unknownObjectRelease();
  return v7;
}

id ArtworkLoaderURLSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL AspectRatio.isPortrait.getter()
{
  sub_24F9222C8();
  v1 = v0;
  sub_24F922338();
  return v1 < v2;
}

uint64_t AspectRatio.inverted.getter()
{
  sub_24F922338();
  sub_24F9222C8();

  return _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
}

CGSize __swiftcall AspectRatio.maxSize(filling:)(CGSize filling)
{
  height = filling.height;
  width = filling.width;
  v3 = sub_24F922348();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222E8();
  v8 = v7;
  sub_24F9222E8();
  if (v8 >= v9)
  {
    sub_24F922308();
    height = v11;
  }

  else
  {
    sub_24F9222F8();
    width = v10;
  }

  (*(v4 + 8))(v6, v3);
  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

CGSize __swiftcall AspectRatio.maxSize(fitting:)(CGSize fitting)
{
  height = fitting.height;
  width = fitting.width;
  v3 = sub_24F922348();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222E8();
  v8 = v7;
  sub_24F9222E8();
  if (v9 >= v8)
  {
    sub_24F922308();
    height = v11;
  }

  else
  {
    sub_24F9222F8();
    width = v10;
  }

  (*(v4 + 8))(v6, v3);
  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

BOOL AspectRatio.isLandscape.getter()
{
  sub_24F9222C8();
  v1 = v0;
  sub_24F922338();
  return v1 >= v2;
}

uint64_t sub_24EBB1C90(uint64_t a1)
{
  v2 = sub_24EBB1E3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EBB1CCC(uint64_t a1)
{
  v2 = sub_24EBB1E3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EBB1D28(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AA08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBB1E3C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EBB1E3C()
{
  result = qword_27F22AA10;
  if (!qword_27F22AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA10);
  }

  return result;
}

unint64_t sub_24EBB1EA4()
{
  result = qword_27F22AA18;
  if (!qword_27F22AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA18);
  }

  return result;
}

unint64_t sub_24EBB1EFC()
{
  result = qword_27F22AA20;
  if (!qword_27F22AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA20);
  }

  return result;
}

uint64_t PreorderStatus.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_24EBB209C();
  sub_24F928218();
  v7 = sub_24F9285B8();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_24F928388();
  result = (*(*(v8 - 8) + 8))(a1, v8);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

unint64_t sub_24EBB209C()
{
  result = qword_27F22AA28;
  if (!qword_27F22AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA28);
  }

  return result;
}

GameStoreKit::PreorderStatus_optional __swiftcall PreorderStatus.init(rawValue:)(Swift::String rawValue)
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

uint64_t PreorderStatus.rawValue.getter()
{
  v1 = 0x726F687475416F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6F54656C62616E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C65636E6163;
  }
}

uint64_t sub_24EBB21C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726F687475416F6ELL;
  v4 = 0xEF6E6F6974617A69;
  if (v2 != 1)
  {
    v3 = 0x6F54656C62616E75;
    v4 = 0xEE006C65636E6143;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x64656C65636E6163;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x726F687475416F6ELL;
  v8 = 0xEF6E6F6974617A69;
  if (*a2 != 1)
  {
    v7 = 0x6F54656C62616E75;
    v8 = 0xEE006C65636E6143;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x64656C65636E6163;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
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

unint64_t sub_24EBB22F8()
{
  result = qword_27F22AA30;
  if (!qword_27F22AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA30);
  }

  return result;
}

uint64_t sub_24EBB234C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EBB2408()
{
  sub_24F92B218();
}

uint64_t sub_24EBB24B0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EBB2574(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEF6E6F6974617A69;
  v5 = 0x726F687475416F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6F54656C62616E75;
    v4 = 0xEE006C65636E6143;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64656C65636E6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24EBB25EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_24EBB209C();
  sub_24F928218();
  v7 = sub_24F9285B8();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_24F928388();
  result = (*(*(v8 - 8) + 8))(a1, v8);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_24F928698();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_24F929158();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24F928818();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F922A48();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = a1;
  sub_24F922A38();
  v17 = swift_allocObject();
  *(v17 + 24) = a3;
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = v17;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  sub_24E5FCA4C(a5);
  v19 = sub_24F922A58();
  if ((a4 & 1) == 0)
  {
    v31 = v19;
    sub_24E824448(a5);

    swift_unknownObjectRelease();
    return v31;
  }

  v51 = v19;
  v20 = a1;
  ObjectType = swift_getObjectType();
  v22 = a3;
  v23 = *(a3 + 32);
  v40 = ObjectType;
  v23(v52, ObjectType, a3);
  v41 = a6;
  if (!v53)
  {
    sub_24E601704(v52, &qword_27F224F98);
LABEL_10:
    v26 = a5;
    v54 = 0u;
    v55 = 0u;
    v28 = v20;
    v29 = v45;
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(v52, v53);
  v24 = v42;
  sub_24F92AD48();
  v25 = sub_24F9286C8();
  (*(v43 + 8))(v24, v44);
  if (!v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
    goto LABEL_10;
  }

  v26 = a5;
  if (*(v25 + 16))
  {
    v27 = sub_24E76D644(0x6C725565676170, 0xE700000000000000);
    v28 = v20;
    v29 = v45;
    if (v30)
    {
      sub_24E643A9C(*(v25 + 56) + 32 * v27, &v54);
    }

    else
    {

      v54 = 0u;
      v55 = 0u;
    }
  }

  else
  {

    v54 = 0u;
    v55 = 0u;
    v28 = v20;
    v29 = v45;
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  if (*(&v55 + 1))
  {
    v35 = swift_dynamicCast();
    if (v35)
    {
      v33 = v52[0];
    }

    else
    {
      v33 = 0;
    }

    if (v35)
    {
      v34 = v52[1];
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_21;
  }

LABEL_11:
  sub_24E601704(&v54, &qword_27F2129B0);
  v33 = 0;
  v34 = 0;
LABEL_21:
  type metadata accessor for PageMetricsEvent();
  swift_initStackObject();
  v36 = v28;
  PageMetricsEvent.init(error:pageUrl:)(v28, v33, v34);
  (*(v22 + 88))(v40, v22);
  v37 = v47;
  sub_24E98D0D4();
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v38 = sub_24F929AB8();
  __swift_project_value_buffer(v38, qword_27F22E3B8);
  sub_24F929138();
  swift_unknownObjectRelease();

  sub_24E824448(v26);

  (*(v49 + 8))(v37, v50);
  (*(v46 + 8))(v29, v48);
  return v51;
}

uint64_t sub_24EBB2D40()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EBB2D78(char a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_24F928698();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F929158();
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = v11;
    _s12GameStoreKit17ClickMetricsEventC014makeErrorRetryF0ACyFZ_0();
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {

      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v21 = v7;
    v14 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v14 + 88))(ObjectType, v14);
    swift_unknownObjectRelease();
    sub_24E98C2FC();
    if (qword_27F210658 != -1)
    {
      swift_once();
    }

    v16 = sub_24F929AB8();
    __swift_project_value_buffer(v16, qword_27F22E3B8);
    sub_24F929138();

    (*(v21 + 8))(v9, v6);
    (*(v22 + 8))(v13, v10);
  }

  if (a3)
  {
LABEL_7:

    a3(v17);
    return sub_24E824448(a3);
  }

LABEL_9:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(a2 + 24);
    v20 = swift_getObjectType();
    (*(*(v19 + 24) + 32))(1, v20);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EBB304C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EBB30EC()
{
  if (*v0)
  {
    return 0x79726F6765746163;
  }

  else
  {
    return 0x64496D616461;
  }
}

uint64_t sub_24EBB3128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEA00000000006449)
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

uint64_t sub_24EBB3208(uint64_t a1)
{
  v2 = sub_24EBB38A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EBB3244(uint64_t a1)
{
  v2 = sub_24EBB38A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EBB32FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AA68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBB38A0();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_24EBB3494(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AA58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBB38A0();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v9 = sub_24F92CC28();
    v11 = &v1[OBJC_IVAR____TtC12GameStoreKit21ArcadeDownloadPackApp_adamId];
    *v11 = v9;
    v11[1] = v12;
    v19 = 1;
    v13 = sub_24F92CC28();
    v14 = &v1[OBJC_IVAR____TtC12GameStoreKit21ArcadeDownloadPackApp_categoryId];
    *v14 = v13;
    v14[1] = v15;
    v18.receiver = v1;
    v18.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v18, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

id sub_24EBB36C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_24EBB3494(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_24EBB37A0()
{

  v0 = sub_24F92B098();

  return v0;
}

unint64_t sub_24EBB38A0()
{
  result = qword_27F22AA60;
  if (!qword_27F22AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA60);
  }

  return result;
}

unint64_t sub_24EBB3908()
{
  result = qword_27F22AA70;
  if (!qword_27F22AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA70);
  }

  return result;
}

unint64_t sub_24EBB3960()
{
  result = qword_27F22AA78;
  if (!qword_27F22AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA78);
  }

  return result;
}

unint64_t sub_24EBB39B8()
{
  result = qword_27F22AA80;
  if (!qword_27F22AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA80);
  }

  return result;
}

uint64_t InAppPurchaseShowcase.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t InAppPurchaseShowcase.descriptionText.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t InAppPurchaseShowcase.__allocating_init(id:lockup:subtitle:descriptionText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  sub_24E65E064(a1, &v31);
  if (*(&v32 + 1))
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v27 = a2;
    v28 = a3;
    v18 = v17;
    v19 = a4;
    v20 = a5;
    v21 = a6;
    v23 = v22;
    (*(v13 + 8))(v15, v12);
    v29 = v18;
    v30 = v23;
    a6 = v21;
    a5 = v20;
    a4 = v19;
    a2 = v27;
    a3 = v28;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v31);
  }

  v24 = v35;
  *(v16 + 56) = v34;
  *(v16 + 72) = v24;
  *(v16 + 88) = v36;
  sub_24E9BBAA8(a1);
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  return v16;
}

uint64_t InAppPurchaseShowcase.init(id:lockup:subtitle:descriptionText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v32);
  if (*(&v33 + 1))
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v28 = a2;
    v29 = a3;
    v19 = v18;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v30 = v19;
    v31 = v24;
    a6 = v22;
    a5 = v21;
    a4 = v20;
    a2 = v28;
    a3 = v29;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v32);
  }

  sub_24E9BBAA8(a1);
  v25 = v36;
  *(v7 + 56) = v35;
  *(v7 + 72) = v25;
  *(v7 + 88) = v37;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  return v7;
}

uint64_t InAppPurchaseShowcase.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  InAppPurchaseShowcase.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t InAppPurchaseShowcase.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v54 = sub_24F9285B8();
  v3 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F6B8();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v53 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  v51 = v9;
  if (v19)
  {
    v55 = v18;
    v56 = v19;
    sub_24F92C7F8();
    v20 = v10;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v22 = v6;
    v23 = v10;
    v24 = v5;
    v25 = v3;
    v27 = v26;
    (*(v49 + 8))(v8, v22);
    v55 = v21;
    v56 = v27;
    v3 = v25;
    v5 = v24;
    sub_24F92C7F8();
    v20 = v23;
  }

  v49 = *(v20 + 8);
  (v49)(v17, v9);
  v28 = v58;
  v29 = v60;
  *(v60 + 56) = v57;
  *(v29 + 72) = v28;
  *(v29 + 88) = v59;
  v30 = v53;
  sub_24F928398();
  v31 = v5;
  v32 = v5;
  v33 = v52;
  v34 = v54;
  (*(v3 + 16))(v31, v52, v54);
  type metadata accessor for InAppPurchaseLockup();
  swift_allocObject();
  v35 = v50;
  v36 = InAppPurchaseLockup.init(deserializing:using:)(v14, v32);
  if (v35)
  {
    (*(v3 + 8))(v33, v34);
    (v49)(v30, v51);
    sub_24E6585F8(v29 + 56);
    type metadata accessor for InAppPurchaseShowcase();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v29 + 16) = v36;
    v37 = v48;
    v50 = 0;
    sub_24F928398();
    v38 = sub_24F928348();
    v40 = v39;
    v41 = v51;
    v42 = v49;
    (v49)(v37, v51);
    *(v60 + 24) = v38;
    *(v60 + 32) = v40;
    sub_24F928398();
    v43 = sub_24F928348();
    v45 = v44;
    (*(v3 + 8))(v33, v54);
    v42(v30, v41);
    v46 = v41;
    v29 = v60;
    v42(v37, v46);
    *(v29 + 40) = v43;
    *(v29 + 48) = v45;
  }

  return v29;
}

uint64_t sub_24EBB4304@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for InAppPurchaseShowcase();
  *a1 = v1;
}

uint64_t InAppPurchaseShowcase.deinit()
{

  sub_24E6585F8(v0 + 56);
  return v0;
}

uint64_t InAppPurchaseShowcase.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_24EBB43EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for InAppPurchaseShowcase();
  v7 = swift_allocObject();
  result = InAppPurchaseShowcase.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBB4464@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for InAppPurchaseShowcase();
  *a1 = v3;
}

unint64_t sub_24EBB44E0()
{
  result = qword_27F22AA88;
  if (!qword_27F22AA88)
  {
    type metadata accessor for InAppPurchaseShowcase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AA88);
  }

  return result;
}

uint64_t ImpressionsAppendixFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ImpressionsAppendixFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ImpressionsAppendixFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F2106A8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058);
  __swift_project_value_buffer(v2, qword_27F22E4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060);
  sub_24F929AC8();
  if (v8)
  {
    ObjectType = swift_getObjectType();
    v4 = (*(v9 + 16))(ObjectType, v9);
    if (*(v4 + 16))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      v8 = v4;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }

    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v7 = sub_24F92AAE8();
    __swift_project_value_buffer(v7, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v6 = sub_24F92AAE8();
    __swift_project_value_buffer(v6, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t sub_24EBB4AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EBB4B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ImpressionsAppendixFieldsProvider()
{
  result = qword_27F22AA90;
  if (!qword_27F22AA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscriptionFieldsProvider.init(arcadeSubscriptionManager:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for ArcadeSubscriptionFieldsProvider() + 20);
  v5 = *MEMORY[0x277D22340];
  v6 = sub_24F92A2D8();
  result = (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for ArcadeSubscriptionFieldsProvider()
{
  result = qword_27F22AAA0;
  if (!qword_27F22AAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscriptionFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeSubscriptionFieldsProvider() + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeSubscriptionFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v4 = *v3;
  v10 = *(v3 + 8);
  v5 = sub_24EB6CE50(*v3, v10);
  v7 = ArcadeState.stringValue.getter(v5, v6);
  v11[3] = MEMORY[0x277D837D0];
  v11[0] = v7;
  v11[1] = v8;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F929A28();
  sub_24EB6CE70(v4, v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_24EBB4EA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F92A2D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24EBB4F60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EBB5004()
{
  result = type metadata accessor for ArcadeSubscriptionManager();
  if (v1 <= 0x3F)
  {
    result = sub_24F92A2D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t AnnotationItem.TextPair.leadingText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AnnotationItem.TextPair.trailingText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *AnnotationItem.TextPair.__allocating_init(leadingText:trailingText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *AnnotationItem.TextPair.init(leadingText:trailingText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t AnnotationItem.TextPair.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AnnotationItem.TextPair.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AnnotationItem.TextPair.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v43 = a2;
  v6 = *v2;
  v41 = v3;
  v42 = v6;
  v44 = sub_24F928388();
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  sub_24F9282B8();
  v16 = sub_24F92AC28();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24E601704(v15, &qword_27F2213B0);
LABEL_5:
    v19 = v44;
LABEL_6:
    v20 = sub_24F92AC38();
    sub_24EBB6664(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    v21 = MEMORY[0x277D84F90];
    *v22 = v42;
    v22[1] = v21;
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D22538], v20);
    swift_willThrow();
    v23 = sub_24F9285B8();
    (*(*(v23 - 8) + 8))(v43, v23);
    (*(v7 + 8))(a1, v19);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v40 = a1;
  v18 = sub_24F92AC08();
  (*(v17 + 8))(v15, v16);
  if (*(v18 + 16) < 2uLL)
  {

    a1 = v40;
    goto LABEL_5;
  }

  v25 = *(v7 + 16);
  v37 = v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v38 = v25;
  v26 = v44;
  (v25)(v12);
  v27 = sub_24F928348();
  v28 = v12;
  v19 = v26;
  v30 = v29;
  v39 = *(v7 + 8);
  result = v39(v28, v19);
  if (!v30)
  {
LABEL_12:

    a1 = v40;
    goto LABEL_6;
  }

  v36 = v27;
  if (*(v18 + 16) >= 2uLL)
  {
    v38(v9, v37 + *(v7 + 72), v19);

    v31 = sub_24F928348();
    v33 = v32;
    v34 = v39;
    v39(v9, v19);
    if (v33)
    {
      v35 = sub_24F9285B8();
      (*(*(v35 - 8) + 8))(v43, v35);
      v34(v40, v19);
      v4[2] = v36;
      v4[3] = v30;
      v4[4] = v31;
      v4[5] = v33;
      return v4;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static AnnotationItem.TextPair.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_24F92CE08(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_24F92CE08();
    }
  }

  return result;
}

uint64_t AnnotationItem.TextPair.hash(into:)()
{
  sub_24F92B218();

  return sub_24F92B218();
}

uint64_t AnnotationItem.TextPair.deinit()
{

  return v0;
}

uint64_t AnnotationItem.TextPair.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AnnotationItem.TextPair.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB57E0()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB5834()
{
  sub_24F92B218();

  return sub_24F92B218();
}

uint64_t sub_24EBB5878()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB58C8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = sub_24F92CE08(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 32) == v3[4] && *(v2 + 40) == v3[5])
    {
      return 1;
    }

    else
    {

      return sub_24F92CE08();
    }
  }

  return result;
}

uint64_t AnnotationItem.heading.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AnnotationItem.text.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AnnotationItem.listText.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AnnotationItem.__allocating_init(id:headingArtworkItems:heading:text:listText:textPairs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v14 = a9;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  sub_24E65E064(a1, &v37);
  if (*(&v38 + 1))
  {
    v20 = v38;
    *(v19 + 80) = v37;
    *(v19 + 96) = v20;
    *(v19 + 112) = v39;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v30 = a9;
    v31 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v16 + 8))(v18, v15);
    v35 = v24;
    v36 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v14 = v30;
    a5 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v28 = v33;
  *(v19 + 16) = v32;
  *(v19 + 24) = v28;
  *(v19 + 32) = v34;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = a8;
  *(v19 + 72) = v14;
  return v19;
}

uint64_t AnnotationItem.init(id:headingArtworkItems:heading:text:listText:textPairs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v16 = a9;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v38);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v31 = a9;
    v32 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v36 = v24;
    v37 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v16 = v31;
    a5 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v28 = v42;
  *(v10 + 80) = v41;
  *(v10 + 96) = v28;
  *(v10 + 112) = v43;
  v29 = v34;
  *(v10 + 16) = v33;
  *(v10 + 24) = v29;
  *(v10 + 32) = v35;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 56) = a7;
  *(v10 + 64) = a8;
  *(v10 + 72) = v16;
  return v10;
}

uint64_t AnnotationItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AnnotationItem.init(deserializing:using:)(a1, a2);
  return v4;
}

void *AnnotationItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_24F9285B8();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24F928388();
  v11 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  if (v19)
  {
    v51 = v18;
    v52 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v8;
    v23 = v22;
    (*(v21 + 8))(v10, v7);
    v51 = v20;
    v52 = v23;
  }

  sub_24F92C7F8();
  v24 = *(v11 + 8);
  v24(v16, v56);
  v46 = v24;
  v25 = v54;
  *(v3 + 80) = v53;
  *(v3 + 96) = v25;
  *(v3 + 112) = v55;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v27;
  v29 = v56;
  (v24)(v13);
  *(v3 + 40) = v26;
  *(v3 + 48) = v28;
  sub_24F928398();
  v45 = *(v48 + 16);
  v45(v47, v50, v49);
  type metadata accessor for Artwork();
  sub_24EBB6664(&qword_27F219660, 255, type metadata accessor for Artwork);
  *(v3 + 16) = sub_24F92B698();
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v33 = v29;
  v34 = v29;
  v35 = v3;
  v36 = v46;
  v46(v13, v34);
  v35[3] = v30;
  v35[4] = v32;
  sub_24F928398();
  v37 = sub_24F928348();
  v39 = v38;
  v36(v13, v33);
  v35[7] = v37;
  v35[8] = v39;
  sub_24F928398();
  v41 = v49;
  v40 = v50;
  v45(v47, v50, v49);
  type metadata accessor for AnnotationItem.TextPair();
  sub_24EBB6664(&qword_27F22AAB0, v42, type metadata accessor for AnnotationItem.TextPair);
  v43 = sub_24F92B698();
  (*(v48 + 8))(v40, v41);
  v46(v17, v56);
  v35[9] = v43;
  return v35;
}

uint64_t AnnotationItem.deinit()
{

  sub_24E6585F8(v0 + 80);
  return v0;
}

uint64_t AnnotationItem.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t AnnotationItem.hashValue.getter()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB6444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  v9 = swift_allocObject();
  result = a3(a1, a2);
  if (!v4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t sub_24EBB64B4()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB6524()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EBB6664(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_24EBB677C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9896A0;
  *(inited + 32) = 0x726579616C70;
  v5 = 0xE600000000000000;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6364A0(v2, boxed_opaque_existential_1);
  *(inited + 88) = 0x65736143657375;
  *(inited + 96) = 0xE700000000000000;
  v7 = type metadata accessor for ImpedimentFlowDestinationsIntent();
  v8 = v7;
  v26 = a1;
  if (*(v2 + v7[5]))
  {
    if (*(v2 + v7[5]) == 1)
    {
      v5 = 0xE700000000000000;
      v9 = 0x736572746C6F6DLL;
    }

    else
    {
      v5 = 0xED000072656E6E61;
      v9 = 0x42656D6F636C6577;
    }
  }

  else
  {
    v9 = 0x656D61476E69;
  }

  v10 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v10;
  *(inited + 104) = v9;
  *(inited + 112) = v5;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x800000024FA541F0;
  v11 = *(v2 + v7[6]);
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D22598];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = v13;
  *(inited + 160) = v11;
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x800000024FA54210;
  v14 = *(v2 + v7[7]);
  *(inited + 240) = v12;
  *(inited + 248) = v13;
  *(inited + 216) = v14;
  *(inited + 256) = 0xD000000000000018;
  *(inited + 264) = 0x800000024FA54230;
  v15 = *(v2 + v7[8]);
  *(inited + 296) = v12;
  *(inited + 304) = v13;
  *(inited + 272) = v15;
  *(inited + 312) = 0xD000000000000023;
  *(inited + 320) = 0x800000024FA55A00;
  v16 = *(v2 + v7[9]);
  v17 = MEMORY[0x277D83B88];
  *(inited + 352) = MEMORY[0x277D83B88];
  v18 = sub_24E65901C();
  *(inited + 328) = v16;
  *(inited + 360) = v18;
  *(inited + 368) = 0xD00000000000001ALL;
  *(inited + 376) = 0x800000024FA55A30;
  v19 = *(v2 + v8[10]);
  *(inited + 408) = v17;
  *(inited + 416) = v18;
  *(inited + 384) = v19;
  *(inited + 424) = 0xD00000000000001DLL;
  *(inited + 432) = 0x800000024FA55A50;
  v20 = *(v2 + v8[11]);
  *(inited + 464) = v17;
  *(inited + 472) = v18;
  *(inited + 440) = v20;
  *(inited + 480) = 0xD00000000000001CLL;
  *(inited + 488) = 0x800000024FA55A70;
  v21 = *(v2 + v8[12]);
  *(inited + 520) = v17;
  *(inited + 528) = v18;
  *(inited + 496) = v21;
  *(inited + 536) = 0xD000000000000013;
  *(inited + 544) = 0x800000024FA55A90;
  LOBYTE(v21) = *(v2 + v8[13]);
  *(inited + 576) = v12;
  *(inited + 584) = v13;
  *(inited + 552) = v21;
  *(inited + 592) = 0xD000000000000012;
  *(inited + 600) = 0x800000024FA55AB0;
  LOBYTE(v21) = *(v2 + v8[14]);
  *(inited + 632) = v12;
  *(inited + 640) = v13;
  *(inited + 608) = v21;
  *(inited + 648) = 0xD000000000000018;
  *(inited + 656) = 0x800000024FA55AD0;
  LOBYTE(v21) = *(v2 + v8[15]);
  *(inited + 688) = v12;
  *(inited + 696) = v13;
  *(inited + 664) = v21;
  *(inited + 704) = 0xD000000000000015;
  *(inited + 712) = 0x800000024FA55AF0;
  LOBYTE(v21) = *(v2 + v8[16]);
  *(inited + 744) = v12;
  *(inited + 752) = v13;
  *(inited + 720) = v21;
  *(inited + 760) = 0xD000000000000015;
  *(inited + 768) = 0x800000024FA55B10;
  LOBYTE(v21) = *(v2 + v8[17]);
  *(inited + 800) = v12;
  *(inited + 808) = v13;
  *(inited + 776) = v21;
  *(inited + 816) = 0xD000000000000016;
  *(inited + 824) = 0x800000024FA55B30;
  v22 = *(v2 + v8[18]);
  *(inited + 856) = &type metadata for CommonOnboardingStatus;
  *(inited + 864) = sub_24EBB9898();
  *(inited + 832) = v22;
  v23 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v24 = sub_24E80FFAC(v23);

  v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  v26[4] = result;
  *v26 = v24;
  return result;
}

uint64_t sub_24EBB6BC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v31 - v3;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0x3D726579616C70, 0xE700000000000000);
  sub_24E6364A0(v0, v4);
  v5 = type metadata accessor for Player(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_24E637048(v4);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = Player.debugDescription.getter();
    v7 = v8;
    sub_24EBB9790(v4, type metadata accessor for Player);
  }

  v31[0] = v6;
  v31[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v9 = sub_24F92B188();
  MEMORY[0x253050C20](v9);

  MEMORY[0x253050C20](0x657361436573750ALL, 0xE90000000000003DLL);
  v10 = type metadata accessor for ImpedimentFlowDestinationsIntent();
  LOBYTE(v31[0]) = *(v1 + v10[5]);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA55870);
  if (*(v1 + v10[6]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v1 + v10[6]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v11, v12);

  MEMORY[0x253050C20](0xD000000000000013, 0x800000024FA55890);
  if (*(v1 + v10[7]))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v1 + v10[7]))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v13, v14);

  MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA558B0);
  if (*(v1 + v10[8]))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v1 + v10[8]))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v15, v16);

  MEMORY[0x253050C20](0xD000000000000025, 0x800000024FA558D0);
  v31[0] = *(v1 + v10[9]);
  v17 = sub_24F92CD88();
  MEMORY[0x253050C20](v17);

  MEMORY[0x253050C20](0xD00000000000001CLL, 0x800000024FA55900);
  v31[0] = *(v1 + v10[10]);
  v18 = sub_24F92CD88();
  MEMORY[0x253050C20](v18);

  MEMORY[0x253050C20](0xD00000000000001FLL, 0x800000024FA55920);
  v31[0] = *(v1 + v10[11]);
  v19 = sub_24F92CD88();
  MEMORY[0x253050C20](v19);

  MEMORY[0x253050C20](0xD00000000000001ELL, 0x800000024FA55940);
  v31[0] = *(v1 + v10[12]);
  v20 = sub_24F92CD88();
  MEMORY[0x253050C20](v20);

  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA55960);
  if (*(v1 + v10[14]))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v1 + v10[14]))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v21, v22);

  MEMORY[0x253050C20](0xD00000000000001ALL, 0x800000024FA55980);
  if (*(v1 + v10[15]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v1 + v10[15]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v23, v24);

  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA559A0);
  if (*(v1 + v10[16]))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (*(v1 + v10[16]))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v25, v26);

  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA559C0);
  if (*(v1 + v10[17]))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v1 + v10[17]))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v27, v28);

  MEMORY[0x253050C20](0xD000000000000019, 0x800000024FA559E0);
  v31[0] = *(v1 + v10[18]);
  v29 = sub_24F92B188();
  MEMORY[0x253050C20](v29);

  return v32;
}

unint64_t sub_24EBB710C(char a1)
{
  result = 0x726579616C70;
  switch(a1)
  {
    case 1:
      result = 0x65736143657375;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
    case 11:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24EBB7314(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBB9630();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for ImpedimentFlowDestinationsIntent();
    LOBYTE(v12) = *(v3 + *(v9 + 20));
    v13 = 1;
    sub_24EBB97F0();
    sub_24F92CD48();
    LOBYTE(v12) = 2;
    sub_24F92CD18();
    LOBYTE(v12) = 3;
    sub_24F92CD18();
    LOBYTE(v12) = 4;
    sub_24F92CD18();
    LOBYTE(v12) = 5;
    sub_24F92CD38();
    LOBYTE(v12) = 6;
    sub_24F92CD38();
    LOBYTE(v12) = 7;
    sub_24F92CD38();
    LOBYTE(v12) = 8;
    sub_24F92CD38();
    LOBYTE(v12) = 9;
    sub_24F92CD18();
    LOBYTE(v12) = 10;
    sub_24F92CD18();
    LOBYTE(v12) = 11;
    sub_24F92CD18();
    LOBYTE(v12) = 12;
    sub_24F92CD18();
    v13 = 13;
    sub_24F92CD18();
    v12 = *(v3 + *(v9 + 72));
    v11[15] = 14;
    sub_24EBB9844();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EBB7728@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB10);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ImpedimentFlowDestinationsIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EBB9630();
  v20 = v9;
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  type metadata accessor for Player(0);
  LOBYTE(v22) = 0;
  sub_24E61C064(&qword_27F213E38);
  sub_24F92CC18();
  sub_24E6365D4(v6, v12);
  v23 = 1;
  sub_24EBB9684();
  sub_24F92CC68();
  v12[v10[5]] = v22;
  LOBYTE(v22) = 2;
  v12[v10[6]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 3;
  v12[v10[7]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 4;
  v12[v10[8]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 5;
  *&v12[v10[9]] = sub_24F92CC58();
  LOBYTE(v22) = 6;
  *&v12[v10[10]] = sub_24F92CC58();
  LOBYTE(v22) = 7;
  *&v12[v10[11]] = sub_24F92CC58();
  LOBYTE(v22) = 8;
  *&v12[v10[12]] = sub_24F92CC58();
  LOBYTE(v22) = 9;
  v12[v10[13]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 10;
  v12[v10[14]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 11;
  v12[v10[15]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 12;
  v12[v10[16]] = sub_24F92CC38() & 1;
  LOBYTE(v22) = 13;
  v12[v10[17]] = sub_24F92CC38() & 1;
  v23 = 14;
  sub_24EBB96D8();
  v15 = v19;
  v14 = v20;
  sub_24F92CC68();
  (*(v7 + 8))(v14, v15);
  *&v12[v10[18]] = v22;
  sub_24EBB972C(v12, v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_24EBB9790(v12, type metadata accessor for ImpedimentFlowDestinationsIntent);
}

uint64_t sub_24EBB7CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EBB8C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EBB7D00(uint64_t a1)
{
  v2 = sub_24EBB9630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EBB7D3C(uint64_t a1)
{
  v2 = sub_24EBB9630();

  return MEMORY[0x2821FE720](a1, v2);
}

GameStoreKit::CommonOnboardingStatus __swiftcall CommonOnboardingStatus.init(appStoreSignedIn:gameCenterSignedIn:isSignedIntoAnotherService:appStoreGamesPrivacyAccepted:gameCenterGamesPrivacyAccepted:gameCenterGDPRPrivacyAccepted:appStoreCrossUsePrivacyAccepted:gameCenterCrossUsePrivacyAccepted:)(Swift::Bool appStoreSignedIn, Swift::Bool gameCenterSignedIn, Swift::Bool isSignedIntoAnotherService, Swift::Bool appStoreGamesPrivacyAccepted, Swift::Bool gameCenterGamesPrivacyAccepted, Swift::Bool gameCenterGDPRPrivacyAccepted, Swift::Bool appStoreCrossUsePrivacyAccepted, Swift::Bool gameCenterCrossUsePrivacyAccepted)
{
  *v8 = appStoreSignedIn;
  v8[1] = gameCenterSignedIn;
  v8[2] = isSignedIntoAnotherService;
  v8[3] = appStoreGamesPrivacyAccepted;
  v8[4] = gameCenterGamesPrivacyAccepted;
  v8[5] = gameCenterGDPRPrivacyAccepted;
  v8[6] = appStoreCrossUsePrivacyAccepted;
  v8[7] = gameCenterCrossUsePrivacyAccepted;
  result.appStoreSignedIn = appStoreSignedIn;
  return result;
}

unint64_t CommonOnboardingStatus.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v15 = v1[5];
  v16 = v1[6];
  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F979FB0;
  *(inited + 32) = 0xD000000000000010;
  v10 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000024FA55600;
  v11 = MEMORY[0x277D22598];
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  *(inited + 48) = v3;
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA55620;
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  *(inited + 104) = v4;
  *(inited + 144) = 0xD00000000000001ALL;
  *(inited + 152) = 0x800000024FA55640;
  *(inited + 184) = v10;
  *(inited + 192) = v11;
  *(inited + 160) = v5;
  *(inited + 200) = 0xD00000000000001CLL;
  *(inited + 208) = 0x800000024FA55660;
  *(inited + 240) = v10;
  *(inited + 248) = v11;
  *(inited + 216) = v6;
  *(inited + 256) = 0xD00000000000001ELL;
  *(inited + 264) = 0x800000024FA55680;
  *(inited + 296) = v10;
  *(inited + 304) = v11;
  *(inited + 272) = v7;
  *(inited + 312) = 0xD00000000000001DLL;
  *(inited + 320) = 0x800000024FA556A0;
  *(inited + 352) = v10;
  *(inited + 360) = v11;
  *(inited + 328) = v15;
  *(inited + 368) = 0xD00000000000001FLL;
  *(inited + 376) = 0x800000024FA556C0;
  *(inited + 408) = v10;
  *(inited + 416) = v11;
  *(inited + 384) = v16;
  *(inited + 424) = 0xD000000000000021;
  *(inited + 432) = 0x800000024FA556E0;
  *(inited + 464) = v10;
  *(inited + 472) = v11;
  *(inited + 440) = v8;
  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t CommonOnboardingStatus.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v22 = v0[4];
  v23 = v0[5];
  v24 = v0[6];
  v25 = v0[7];
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000015, 0x800000024FA55710);
  if (v1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v5, v6);

  MEMORY[0x253050C20](0xD000000000000018, 0x800000024FA55730);
  if (v2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v7, v8);

  MEMORY[0x253050C20](0xD000000000000020, 0x800000024FA55750);
  if (v3)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v3)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v9, v10);

  MEMORY[0x253050C20](0xD000000000000022, 0x800000024FA55780);
  if (v4)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v4)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v11, v12);

  MEMORY[0x253050C20](0xD000000000000024, 0x800000024FA557B0);
  if (v22)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v22)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v13, v14);

  MEMORY[0x253050C20](0xD000000000000023, 0x800000024FA557E0);
  if (v23)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v23)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v15, v16);

  MEMORY[0x253050C20](0xD000000000000025, 0x800000024FA55810);
  if (v24)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v24)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v17, v18);

  MEMORY[0x253050C20](0xD000000000000027, 0x800000024FA55840);
  if (v25)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v25)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v19, v20);

  return 0;
}

unint64_t sub_24EBB8324()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001FLL;
  if (v2 != 6)
  {
    v3 = 0xD000000000000021;
  }

  v4 = 0xD00000000000001ELL;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001ALL;
  if (v2 != 2)
  {
    v5 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EBB8408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EBB90DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EBB8430(uint64_t a1)
{
  v2 = sub_24EBB8A34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EBB846C(uint64_t a1)
{
  v2 = sub_24EBB8A34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CommonOnboardingStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AAD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = v1[1];
  v16[4] = v1[2];
  v16[5] = v7;
  v8 = v1[3];
  v16[2] = v1[4];
  v16[3] = v8;
  v16[1] = v1[5];
  v9 = v1[6];
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_24EBB8A34();
  sub_24F92D128();
  v25 = 0;
  v14 = v17;
  sub_24F92CD18();
  if (v14)
  {
    return (*(v4 + 8))(v6, v13);
  }

  LODWORD(v17) = v9;
  v24 = 1;
  sub_24F92CD18();
  v23 = 2;
  sub_24F92CD18();
  v22 = 3;
  sub_24F92CD18();
  v21 = 4;
  sub_24F92CD18();
  v20 = 5;
  sub_24F92CD18();
  v19 = 6;
  sub_24F92CD18();
  v18 = 7;
  sub_24F92CD18();
  return (*(v4 + 8))(v6, v13);
}

uint64_t CommonOnboardingStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AAE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBB8A34();
  sub_24F92D108();
  if (!v2)
  {
    v32 = 0;
    v9 = sub_24F92CC38();
    v31 = 1;
    v10 = sub_24F92CC38();
    v30 = 2;
    v11 = sub_24F92CC38();
    v29 = 3;
    v24 = sub_24F92CC38();
    v28 = 4;
    v23 = sub_24F92CC38();
    v27 = 5;
    v22 = sub_24F92CC38();
    v26 = 6;
    v21 = sub_24F92CC38();
    v25 = 7;
    v13 = sub_24F92CC38();
    v19 = v10 & 1;
    v20 = v9 & 1;
    HIDWORD(v18) = v11 & 1;
    v23 &= 1u;
    v24 &= 1u;
    v14 = v22 & 1;
    LOBYTE(v9) = v21 & 1;
    v15 = v13;
    (*(v6 + 8))(v8, v5);
    v16 = v19;
    *a2 = v20;
    a2[1] = v16;
    a2[2] = BYTE4(v18);
    v17 = v23;
    a2[3] = v24;
    a2[4] = v17;
    a2[5] = v14;
    a2[6] = v9;
    a2[7] = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24EBB8A34()
{
  result = qword_27F22AAD8;
  if (!qword_27F22AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AAD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonOnboardingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
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

uint64_t storeEnumTagSinglePayload for CommonOnboardingStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_24EBB8B4C()
{
  result = qword_27F22AAE8;
  if (!qword_27F22AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AAE8);
  }

  return result;
}

unint64_t sub_24EBB8BA4()
{
  result = qword_27F22AAF0;
  if (!qword_27F22AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AAF0);
  }

  return result;
}

unint64_t sub_24EBB8BFC()
{
  result = qword_27F22AAF8;
  if (!qword_27F22AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AAF8);
  }

  return result;
}

uint64_t sub_24EBB8C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA541F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA54210 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA54230 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA55A00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA55A30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA55A50 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA55A70 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA55A90 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA55AB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA55AD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA55AF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA55B10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA55B30 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_24EBB90DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA55600 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA55620 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA55640 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA55660 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000024FA55680 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA556A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000024FA556C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x800000024FA556E0 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t type metadata accessor for ImpedimentFlowDestinationsIntent()
{
  result = qword_27F22AB00;
  if (!qword_27F22AB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EBB93C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EBB94B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_24EBB9578()
{
  sub_24E637694();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24EBB9630()
{
  result = qword_27F22AB18;
  if (!qword_27F22AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB18);
  }

  return result;
}

unint64_t sub_24EBB9684()
{
  result = qword_27F22AB20;
  if (!qword_27F22AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB20);
  }

  return result;
}

unint64_t sub_24EBB96D8()
{
  result = qword_27F22AB28;
  if (!qword_27F22AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB28);
  }

  return result;
}

uint64_t sub_24EBB972C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImpedimentFlowDestinationsIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBB9790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EBB97F0()
{
  result = qword_27F22AB38;
  if (!qword_27F22AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB38);
  }

  return result;
}

unint64_t sub_24EBB9844()
{
  result = qword_27F22AB40;
  if (!qword_27F22AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB40);
  }

  return result;
}

unint64_t sub_24EBB9898()
{
  result = qword_27F22AB48;
  if (!qword_27F22AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB48);
  }

  return result;
}

unint64_t sub_24EBB9900()
{
  result = qword_27F22AB50;
  if (!qword_27F22AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB50);
  }

  return result;
}

unint64_t sub_24EBB9958()
{
  result = qword_27F22AB58;
  if (!qword_27F22AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB58);
  }

  return result;
}

unint64_t sub_24EBB99B0()
{
  result = qword_27F22AB60;
  if (!qword_27F22AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AB60);
  }

  return result;
}

uint64_t sub_24EBB9A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a2;
  v50 = a4;
  v46 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = sub_24F9288E8();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F929158();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 72) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  v17 = (v4 + qword_27F39B480);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + qword_27F39B488) = 0;
  v18 = (v4 + qword_27F39B490);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v4 + *(*v4 + 176));
  v19[1] = 0;
  v19[2] = 0;
  *v19 = 0x8000000000000000;
  v20 = *(*v4 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEE0);
  swift_allocObject();
  *(v4 + v20) = sub_24F92ADA8();
  v21 = v5 + *(*v5 + 192);
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v22 = v5 + *(*v5 + 200);
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v23 = (v5 + *(*v5 + 208));
  *v23 = 0;
  v23[1] = 0;
  v24 = (v5 + *(*v5 + 216));
  *v24 = 0.0;
  v24[1] = 0.0;
  *(v4 + 16) = a1;
  sub_24F928FD8();

  sub_24F92A758();
  (*(v14 + 32))(v4 + qword_27F39B498, v16, v13);
  v25 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
  sub_24F928EF8();
  v26 = v52;
  v27 = v53;
  swift_beginAccess();
  *v24 = v26;
  *(v24 + 1) = v27;
  swift_unknownObjectRelease();
  type metadata accessor for ASKBagContract();
  sub_24F92A758();
  if (v25)
  {
    v28 = v25;
    v29 = v46;
  }

  else
  {
    v30 = v44;
    v31 = v45;
    v46 = sub_24F929EB8();
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    (*(v30 + 104))(v12, *MEMORY[0x277D21C38], v31);
    sub_24F92A368();
    (*(v30 + 8))(v12, v31);
    v32 = v48;
    sub_24F92A408();
    (*(v47 + 8))(v9, v32);
    v28 = sub_24F929EA8();
    v29 = MEMORY[0x277D221C0];
  }

  v33 = (v5 + qword_27F39B4A0);
  *v33 = v28;
  v33[1] = v29;
  v34 = v50;
  if (v50)
  {
    swift_unknownObjectRetain();
    v35 = v34;
  }

  else
  {
    v36 = qword_27F2108F8;
    swift_unknownObjectRetain();
    if (v36 != -1)
    {
      swift_once();
    }

    sub_24F92A438();
    v37 = v48;
    sub_24F92A408();
    (*(v47 + 8))(v9, v37);
    v38 = v52;
    v39 = v33[1];
    type metadata accessor for ImpressionsCalculator();
    swift_allocObject();
    v40 = swift_unknownObjectRetain();
    v35 = sub_24EB0E424(v38, v40, v39);
    swift_unknownObjectRelease();
  }

  *(v5 + qword_27F39B4A8) = v35;
  type metadata accessor for MetricsPageEnterGate();
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v41 + 32) = 0;
  *(v41 + 34) = 0;
  *(v41 + 24) = &protocol witness table for TimedMetricsPagePresenter<A>;
  swift_unknownObjectWeakAssign();
  v42 = qword_27F39B488;
  swift_beginAccess();
  *(v5 + v42) = v41;

  sub_24F92A0F8();
  sub_24F928EF8();
  sub_24EBD8C00(v51);

  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_24EBBA248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t))
{
  v56 = a7;
  v57 = a4;
  v9 = v7;
  v51 = a3;
  v55 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x28223BE20](v11);
  v52 = &v49 - v12;
  v13 = sub_24F9288E8();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F929158();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 72) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 24) = 0u;
  v20 = (v7 + qword_27F39B480);
  *v20 = 0;
  v20[1] = 0;
  *(v7 + qword_27F39B488) = 0;
  v21 = (v7 + qword_27F39B490);
  *v21 = 0;
  v21[1] = 0;
  v22 = v7 + *(*v7 + 176);
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *v22 = 0;
  *(v22 + 24) = 2;
  v23 = *(*v7 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  swift_allocObject();
  *(v7 + v23) = sub_24F92ADA8();
  v24 = v9 + *(*v9 + 192);
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = v9 + *(*v9 + 200);
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = (v9 + *(*v9 + 208));
  *v26 = 0;
  v26[1] = 0;
  v27 = (v9 + *(*v9 + 216));
  *v27 = 0.0;
  v27[1] = 0.0;
  *(v7 + 16) = a1;
  sub_24F928FD8();

  sub_24F92A758();
  (*(v17 + 32))(v7 + qword_27F39B498, v19, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
  sub_24F928EF8();
  v28 = v59;
  v29 = v60;
  swift_beginAccess();
  *v27 = v28;
  *(v27 + 1) = v29;
  v30 = v55;
  swift_unknownObjectRelease();
  type metadata accessor for ASKBagContract();
  sub_24F92A758();
  if (v30)
  {
    v31 = v30;
    v32 = v51;
  }

  else
  {
    v33 = v49;
    v34 = v50;
    v51 = sub_24F929EB8();
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    (*(v33 + 104))(v15, *MEMORY[0x277D21C38], v34);
    v35 = v52;
    sub_24F92A368();
    (*(v33 + 8))(v15, v34);
    v36 = v54;
    sub_24F92A408();
    (*(v53 + 8))(v35, v36);
    v31 = sub_24F929EA8();
    v32 = MEMORY[0x277D221C0];
  }

  v37 = (v9 + qword_27F39B4A0);
  *v37 = v31;
  v37[1] = v32;
  v38 = v57;
  if (v57)
  {
    swift_unknownObjectRetain();
    v39 = v38;
  }

  else
  {
    v40 = qword_27F2108F8;
    swift_unknownObjectRetain();
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = v52;
    sub_24F92A438();
    v42 = v54;
    sub_24F92A408();
    (*(v53 + 8))(v41, v42);
    v43 = v59;
    v44 = v37[1];
    type metadata accessor for ImpressionsCalculator();
    swift_allocObject();
    v45 = swift_unknownObjectRetain();
    v39 = sub_24EB0E424(v43, v45, v44);
    swift_unknownObjectRelease();
  }

  *(v9 + qword_27F39B4A8) = v39;
  type metadata accessor for MetricsPageEnterGate();
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v46 + 32) = 0;
  *(v46 + 34) = 0;
  *(v46 + 24) = &protocol witness table for TimedMetricsPagePresenter<A>;
  swift_unknownObjectWeakAssign();
  v47 = qword_27F39B488;
  swift_beginAccess();
  *(v9 + v47) = v46;

  sub_24F92A0F8();
  sub_24F928EF8();
  v56(v58);

  swift_unknownObjectRelease();

  return v9;
}

uint64_t GenericDiffablePagePresenter.init(objectGraph:personalizationProvider:sidePackedPage:sidePackedPageRenderMetrics:pageUrl:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v60 = a4;
  v62 = a3;
  v53 = sub_24F928188();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB68);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v50 - v12;
  v61 = sub_24F92BEE8();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24F92BE88();
  MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F927DC8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v50 - v17;
  v55 = &v50 - v17;
  v19 = (v5 + qword_27F39BE28);
  *v19 = 0;
  v19[1] = 0;
  *(v5 + qword_27F39BE30) = 0;
  *(v5 + qword_27F39BE38) = 0;
  *(v5 + qword_27F22AB70) = MEMORY[0x277D84FA0];
  *(v5 + qword_27F22AB78) = 0;
  *(v5 + qword_27F22AB80) = a2;
  v65 = a5;
  sub_24E60169C(a5, v18, &qword_27F228530);
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  *(v5 + qword_27F39CC00) = 0;
  v20 = MEMORY[0x277D84F90];
  *(v6 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v6 + qword_27F2326C8) = 0;
  v21 = *(*v6 + 640);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB88);
  v23 = *(*(v22 - 8) + 56);
  v23(v6 + v21, 1, 1, v22);
  v24 = *(*v6 + 648);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  (*(*(v25 - 8) + 56))(v6 + v24, 1, 1, v25);
  v26 = *(*v6 + 656);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB98);
  (*(*(v27 - 8) + 56))(v6 + v26, 1, 1, v27);
  v23(v6 + *(*v6 + 664), 1, 1, v22);
  v28 = *(*v6 + 672);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  (*(*(v29 - 8) + 56))(v6 + v28, 1, 1, v29);
  v30 = *(*v6 + 680);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  (*(*(v31 - 8) + 56))(v6 + v30, 1, 1, v31);
  v54 = *(*v6 + 688);
  sub_24E74EC40();
  v32 = v60;

  v63 = a1;

  v64 = a2;

  v33 = v62;

  sub_24F927DA8();
  v68 = v20;
  sub_24EBD4288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
  v34 = v55;
  sub_24F92C6A8();
  (*(v59 + 104))(v58, *MEMORY[0x277D85260], v61);
  *(v6 + v54) = sub_24F92BF38();
  sub_24EBD3128(v6 + *(*v6 + 696));
  v35 = (v6 + *(*v6 + 704));
  *v35 = 0u;
  v35[1] = 0u;
  *(v35 + 25) = 0u;
  v36 = *(*v6 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  swift_allocObject();
  *(v6 + v36) = sub_24F92ADA8();
  v37 = *(*v6 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
  swift_allocObject();
  *(v6 + v37) = sub_24F92ADA8();
  v38 = *(*v6 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v6 + v38) = sub_24F92ADA8();
  *(v6 + *(*v6 + 736)) = 0;
  v39 = (v6 + *(*v6 + 752));
  *v39 = 0;
  v39[1] = 0;
  sub_24E60169C(v34, v6 + qword_27F39CBF8, &qword_27F228530);
  sub_24E60169C(v69, v6 + *(*v6 + 744), &qword_27F229490);
  v40 = type metadata accessor for InlineUnifiedMessagePresenter();
  v67.receiver = objc_allocWithZone(v40);
  v67.super_class = v40;
  *(v6 + qword_27F39CC08) = objc_msgSendSuper2(&v67, sel_init);
  if (v33 && v32)
  {
    sub_24F92A0F8();
    v68 = v32;

    v41 = v51;
    sub_24F928168();
    v42 = sub_24F928F88();
    (*(v52 + 8))(v41, v53);
    v43 = v42;
  }

  else
  {
  }

  v44 = sub_24EBBA248(v43, 0, 0, 0, &qword_27F22AF10, &unk_24F989ED0, sub_24EBD8B98);
  v45 = *(*v44 + 1112);

  *(v44 + qword_27F39CC00) = v45(v33);

  sub_24EBC0494(0);

  sub_24E601704(v69, &qword_27F229490);
  sub_24E601704(v34, &qword_27F228530);
  v46 = v66;
  if (*(v44 + qword_27F22AB80))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABC8);
    sub_24E602068(&qword_27F22ABD0, &qword_27F22ABC8);

    sub_24F9288B8();
    type metadata accessor for GenericDiffablePagePresenter();
    sub_24F9288C8();

    sub_24E601704(v65, &qword_27F228530);
    __swift_destroy_boxed_opaque_existential_1(v69);

    v47 = 0;
  }

  else
  {

    sub_24E601704(v65, &qword_27F228530);

    v47 = 1;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABC0);
  (*(*(v48 - 8) + 56))(v46, v47, 1, v48);
  sub_24E601704(v46, &qword_27F22AB68);
  return v44;
}

uint64_t sub_24EBBB524(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + qword_27F22AB70);

  v5 = sub_24F4D42B0(v3, v4);

  if (v5)
  {
    v7 = a2 + *(*a2 + 176);
    result = swift_beginAccess();
    if (*(v7 + 24) < 2u || !(*(v7 + 8) | *(v7 + 16) | *v7))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213920);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_24F93DE60;
      *(v8 + 32) = v3;
      sub_24EBBDC98(v8);
    }
  }

  return result;
}

uint64_t sub_24EBBB684(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27F39BE28);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24EBBB6F0()
{
  v1 = (v0 + qword_27F39BE28);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24EBBB748(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39BE30;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24EBBB7F8(uint64_t a1)
{
  v3 = qword_27F39BE30;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24EBBB8B0()
{
  v1 = qword_27F39BE38;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EBBB8F4(uint64_t a1)
{
  v3 = qword_27F39BE38;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24EBBB9A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  v6 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, &v11[-v4], &qword_27F228530);
  swift_beginAccess();
  v7 = v1[3];
  swift_beginAccess();
  v8 = v1[4];
  type metadata accessor for GenericDiffablePageContentPresenter();
  swift_allocObject();

  v9 = sub_24E9647B8(v6, v5, a1, v7, v8);

  return v9;
}

uint64_t sub_24EBBBAFC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = sub_24F2F373C(*a1, v2, *(a1 + 16));
  if ((v3 & 0x80000000) == 0 && (v3 & 1) == 0)
  {
    v5 = sub_24F0C5C5C(v2);
    v6 = *(v1 + qword_27F22AB70);
    *(v1 + qword_27F22AB70) = v5;

    v7 = sub_24EDD4C24(v6, v5);

    if ((v7 & 1) == 0)
    {

      sub_24EBBDC98(v8);
    }
  }

  return result;
}