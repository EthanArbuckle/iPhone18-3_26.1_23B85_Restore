uint64_t sub_1D931CB68()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_1D931CF58;
  }

  else
  {
    v10 = sub_1D931CD00;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D931CD00()
{
  v29 = v0;
  v1 = v0[14];
  v2 = v0[10];

  sub_1D93281B4();
  if (v1)
  {
    v3 = v0[9];
    v4 = v0[6];

    v5 = v0[1];
  }

  else
  {
    v7 = v0[5];
    v6 = v0[6];
    v9 = v0[3];
    v8 = v0[4];
    sub_1D931727C(0);
    (*(v7 + 16))(v6, v9 + *(*v9 + 176), v8);

    v10 = sub_1D9326BC4();
    v11 = sub_1D9328204();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[5];
    v14 = v0[6];
    v16 = v0[3];
    v15 = v0[4];
    if (v12)
    {
      v27 = v0[6];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136446466;
      v19 = (v16 + *(*v16 + 184));
      v20 = *v19;
      v21 = v19[1];

      v22 = sub_1D9293524(v20, v21, &v28);

      *(v17 + 4) = v22;
      *(v17 + 12) = 1026;
      *(v17 + 14) = *(v16 + qword_1EDE3CCC8[0]);

      _os_log_impl(&dword_1D928E000, v10, v11, "[%{public}s] Control action: animation completed after waiting for minimum duration to pass (isAnimating: %{BOOL,public}d).", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1DA72F920](v18, -1, -1);
      MEMORY[0x1DA72F920](v17, -1, -1);

      (*(v13 + 8))(v27, v15);
    }

    else
    {
      v23 = v0[3];

      (*(v13 + 8))(v14, v15);
    }

    v24 = v0[9];
    v25 = v0[6];

    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_1D931CF58()
{
  v1 = v0[10];

  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D931CFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D93284F4();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D931D0D0, 0, 0);
}

uint64_t sub_1D931D0D0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1D9328504();
  v7 = sub_1D9293198(&qword_1ECAFD388, MEMORY[0x1E69E8820]);
  sub_1D93286A4();
  sub_1D9293198(&qword_1ECAFD390, MEMORY[0x1E69E87E8]);
  sub_1D9328514();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D931D260;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1D931D260()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D931D41C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1D931D41C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void *sub_1D931D488(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1D931D4FC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1D931D52C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D9328404();

  return sub_1D931D698(a1, v5);
}

unint64_t sub_1D931D570(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1D9328714();

  return sub_1D931D760(a1, v4);
}

unint64_t sub_1D931D5B4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D9328724();
  sub_1D92F4CB4();
  v4 = sub_1D9328764();

  return sub_1D931D7CC(a1, v4);
}

unint64_t sub_1D931D620(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D9328724();
  sub_1D9327FB4();
  v6 = sub_1D9328764();

  return sub_1D931DA58(a1, a2, v6);
}

unint64_t sub_1D931D698(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D931EDA8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA72E9C0](v9, a1);
      sub_1D931EE04(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D931D760(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D931D7CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2 + 64;
  v19 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v17 = ~v10;
    v12 = *(v7 + 72);
    do
    {
      sub_1D929712C(*(v19 + 48) + v12 * v11, v9, type metadata accessor for AppIconImageCache.CacheKey);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
      sub_1D9290D60(&qword_1ECAFCF18, &qword_1ECAFCD38, &qword_1D932ECB0);
      sub_1D9327FF4();
      sub_1D9327FF4();
      if (v22 == v20 && v23 == v21)
      {
      }

      else
      {
        v13 = sub_1D9328654();

        if ((v13 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if (*&v9[*(v5 + 20)] != *(a1 + *(v5 + 20)))
      {
LABEL_3:
        sub_1D92974EC(v9, type metadata accessor for AppIconImageCache.CacheKey);
        goto LABEL_4;
      }

      v14 = *&v9[*(v5 + 24)];
      sub_1D92974EC(v9, type metadata accessor for AppIconImageCache.CacheKey);
      if (v14 == *(a1 + *(v5 + 24)))
      {
        return v11;
      }

LABEL_4:
      v11 = (v11 + 1) & v17;
    }

    while (((*(v18 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1D931DA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D9328654())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

BOOL _s16ChronoUIServices21ControlInstanceButtonC9ViewModelV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D9327A94();
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3E0, &unk_1D9330740);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v74 - v12;
  v13 = type metadata accessor for ControlIconView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v74 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD208, &unk_1D932FED0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v74 - v24;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v27 = *(a1 + 2);
  v28 = *(a2 + 2);
  if (v27)
  {
    if (!v28 || (*(a1 + 1) != *(a2 + 1) || v27 != v28) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = *(a1 + 4);
  v30 = *(a2 + 4);
  if (v29)
  {
    if (!v30 || (*(a1 + 3) != *(a2 + 3) || v29 != v30) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v74 = v4;
  v75 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  v31 = v75[8];
  v32 = *(v22 + 48);
  sub_1D92973DC(&a1[v31], v25, &qword_1ECAFCA50, &unk_1D932DF60);
  v33 = &a2[v31];
  v34 = v32;
  sub_1D92973DC(v33, &v25[v32], &qword_1ECAFCA50, &unk_1D932DF60);
  v35 = *(v14 + 48);
  if (v35(v25, 1, v13) != 1)
  {
    sub_1D92973DC(v25, v21, &qword_1ECAFCA50, &unk_1D932DF60);
    if (v35(&v25[v34], 1, v13) != 1)
    {
      sub_1D931EF58(&v25[v34], v17, type metadata accessor for ControlIconView);
      v39 = static ControlIconView.== infix(_:_:)(v21, v17);
      sub_1D92974EC(v17, type metadata accessor for ControlIconView);
      sub_1D92974EC(v21, type metadata accessor for ControlIconView);
      sub_1D92933A0(v25, &qword_1ECAFCA50, &unk_1D932DF60);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_27;
    }

    sub_1D92974EC(v21, type metadata accessor for ControlIconView);
LABEL_24:
    v36 = &qword_1ECAFD208;
    v37 = &unk_1D932FED0;
    v38 = v25;
LABEL_25:
    sub_1D92933A0(v38, v36, v37);
    return 0;
  }

  if (v35(&v25[v34], 1, v13) != 1)
  {
    goto LABEL_24;
  }

  sub_1D92933A0(v25, &qword_1ECAFCA50, &unk_1D932DF60);
LABEL_27:
  v40 = v75;
  v41 = v75[9];
  v42 = *&a2[v41];
  if (*&a1[v41])
  {
    if (!v42)
    {
      return 0;
    }

    v43 = *&a2[v41];

    v44 = sub_1D9327364();

    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v45 = v40[10];
  v46 = &a1[v45];
  v47 = *&a1[v45 + 8];
  v48 = &a2[v45];
  v49 = *(v48 + 1);
  if (v47)
  {
    if (!v49 || (*v46 != *v48 || v47 != v49) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  v50 = v40[11];
  v51 = &a1[v50];
  v52 = *&a1[v50 + 8];
  v53 = &a2[v50];
  v54 = *(v53 + 1);
  if (v52)
  {
    if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  if (a1[v40[12]] != a2[v40[12]] || a1[v40[13]] != a2[v40[13]] || a1[v40[14]] != a2[v40[14]] || a1[v40[15]] != a2[v40[15]])
  {
    return 0;
  }

  v55 = v40[16];
  v56 = &a1[v55];
  v57 = *&a1[v55 + 8];
  v58 = &a2[v55];
  v59 = *(v58 + 1);
  if (v57)
  {
    if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v60 = v75[17];
  v61 = *(v10 + 48);
  v62 = &a1[v60];
  v63 = v79;
  sub_1D92973DC(v62, v79, &qword_1ECAFD360, qword_1D93304C8);
  sub_1D92973DC(&a2[v60], v63 + v61, &qword_1ECAFD360, qword_1D93304C8);
  v64 = *(v78 + 48);
  if (v64(v63, 1, v74) == 1)
  {
    if (v64(v79 + v61, 1, v74) == 1)
    {
      sub_1D92933A0(v79, &qword_1ECAFD360, qword_1D93304C8);
      return 1;
    }

    goto LABEL_62;
  }

  v65 = v79;
  sub_1D92973DC(v79, v77, &qword_1ECAFD360, qword_1D93304C8);
  if (v64(v65 + v61, 1, v74) == 1)
  {
    (*(v78 + 8))(v77, v74);
LABEL_62:
    v36 = &qword_1ECAFD3E0;
    v37 = &unk_1D9330740;
    v38 = v79;
    goto LABEL_25;
  }

  v66 = v78;
  v67 = v79;
  v68 = v79 + v61;
  v69 = v76;
  v70 = v74;
  (*(v78 + 32))(v76, v68, v74);
  sub_1D9293198(&qword_1EDE3BC90, MEMORY[0x1E69858A8]);
  v71 = v77;
  v72 = sub_1D9327F64();
  v73 = *(v66 + 8);
  v73(v69, v70);
  v73(v71, v70);
  sub_1D92933A0(v67, &qword_1ECAFD360, qword_1D93304C8);
  return (v72 & 1) != 0;
}

uint64_t sub_1D931E330(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v39 - v4);
  v6 = sub_1D9326BE4();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9326884();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  result = sub_1D9317478();
  if (result == 1)
  {
    v43 = v5;
    sub_1D9326854();
    sub_1D9326874();
    sub_1D9293198(&qword_1ECAFD3D8, MEMORY[0x1E6969530]);
    v18 = sub_1D9327F44();
    v19 = *(v11 + 8);
    v19(v14, v10);
    if (v18)
    {
      v20 = sub_1D93280D4();
      (*(*(v20 - 8) + 56))(v43, 1, 1, v20);
      (*(v11 + 16))(v14, v16, v10);
      sub_1D93280A4();

      v21 = sub_1D9328094();
      v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v23 = swift_allocObject();
      v45 = v11 + 8;
      v24 = v23;
      v25 = MEMORY[0x1E69E85E0];
      *(v23 + 16) = v21;
      *(v23 + 24) = v25;
      (*(v11 + 32))(v23 + v22, v14, v10);
      *(v24 + ((v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
      v26 = sub_1D9316FD0(0, 0, v43, &unk_1D9330728, v24);
      v19(v16, v10);
      v27 = *(a1 + qword_1EDE3CCC0);
      *(a1 + qword_1EDE3CCC0) = v26;
    }

    else
    {
      v42 = v16;
      v43 = v19;
      sub_1D931727C(0);
      v28 = v44;
      v29 = v45;
      (*(v44 + 16))(v9, a1 + *(*a1 + 176), v45);

      v30 = sub_1D9326BC4();
      v31 = sub_1D9328204();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v41 = v31;
        v33 = v32;
        v40 = swift_slowAlloc();
        v46 = v40;
        *v33 = 136446466;
        v34 = (a1 + *(*a1 + 184));
        v35 = *v34;
        v36 = v34[1];

        v37 = sub_1D9293524(v35, v36, &v46);

        *(v33 + 4) = v37;
        *(v33 + 12) = 1026;
        *(v33 + 14) = *(a1 + qword_1EDE3CCC8[0]);

        _os_log_impl(&dword_1D928E000, v30, v41, "[%{public}s] Control action: animation completed (isAnimating: %{BOOL,public}d).", v33, 0x12u);
        v38 = v40;
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        MEMORY[0x1DA72F920](v38, -1, -1);
        MEMORY[0x1DA72F920](v33, -1, -1);
      }

      else
      {
      }

      (*(v28 + 8))(v9, v29);
      return v43(v42, v10);
    }
  }

  return result;
}

uint64_t sub_1D931E850(uint64_t a1)
{
  result = sub_1D9293198(&qword_1EDE3CCA8, type metadata accessor for ControlInstanceButton.ViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of ControlInstanceButton.performAction()()
{
  v2 = *(*v0 + 808);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D92DA198;

  return v6();
}

uint64_t dispatch thunk of ControlInstanceButton.setState(_:)()
{
  v2 = *(*v0 + 816);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D92DA198;

  return v6();
}

void sub_1D931EBD0()
{
  sub_1D931ED08(319, &qword_1EDE3DA78);
  if (v0 <= 0x3F)
  {
    sub_1D931ED54(319, qword_1EDE3D3F8, type metadata accessor for ControlIconView);
    if (v1 <= 0x3F)
    {
      sub_1D931ED08(319, &qword_1EDE3BD18);
      if (v2 <= 0x3F)
      {
        sub_1D931ED54(319, &qword_1EDE3BC88, MEMORY[0x1E69858A8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D931ED08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D9328374();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D931ED54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9328374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D931EE58@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1D929E490(&qword_1EDE3CCB0, a1);
}

uint64_t sub_1D931EE8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D92DA198;

  return sub_1D931B3B8(a1, v4, v5, v7);
}

uint64_t sub_1D931EF4C(unsigned __int8 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1D9319AAC(a1);
}

uint64_t sub_1D931EF58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D931EFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D931F030(uint64_t a1)
{
  v4 = *(sub_1D9326884() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D92D9CEC;

  return sub_1D931C934(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D931F150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D92DA198;

  return sub_1D9316998(a1, v4, v5, v6);
}

uint64_t ControlInstanceToggle.ViewModel.Option.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.Option.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.Option.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void *ControlInstanceToggle.ViewModel.Option.platformIcon.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.Option.tint.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.Option.status.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.Option.status.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.Option.actionHint.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.Option.actionHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.subtitle.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ControlInstanceToggle.ViewModel.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.currentValue.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlInstanceToggle.ViewModel.currentValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.currentTint.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 36));
}

uint64_t ControlInstanceToggle.ViewModel.currentTint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.on.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 40);

  return sub_1D93248D8(a1, v3);
}

uint64_t ControlInstanceToggle.ViewModel.off.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 44);

  return sub_1D93248D8(a1, v3);
}

uint64_t ControlInstanceToggle.ViewModel.isRedacted.setter(char a1)
{
  result = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.disabled.setter(char a1)
{
  result = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.hasError.setter(char a1)
{
  result = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t ControlInstanceToggle.ViewModel.accessibilityIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlInstanceToggle.ViewModel.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1D931FDA8()
{
  v1 = v0;
  v68 = sub_1D9326BE4();
  v64 = *(v68 - 8);
  v2 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD400, &unk_1D9330950);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v59 - v14;
  v16 = sub_1D9327EC4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC0, &unk_1D932E7C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v61 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v65 = &v59 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v59 - v29;
  BSDispatchQueueAssertMain();
  v31 = *(v5 + 56);
  v66 = v4;
  v67 = v30;
  v60 = v31;
  v31(v30, 1, 1, v4);
  v32 = *(*v1 + 152);
  v33 = *(v1 + v32);
  if (!v33)
  {
    goto LABEL_4;
  }

  v34 = *(v1 + v32);

  BSDispatchQueueAssertMain();
  v35 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  swift_beginAccess();
  sub_1D92973DC(v33 + v35, v11, &qword_1ECAFC4F0, &qword_1D932CC18);

  v36 = sub_1D9327B44();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v11, 1, v36) == 1)
  {
    sub_1D92933A0(v11, &qword_1ECAFC4F0, &qword_1D932CC18);
LABEL_4:
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_5:
    sub_1D92933A0(v15, &unk_1ECAFD400, &unk_1D9330950);
    v38 = v67;
    goto LABEL_6;
  }

  sub_1D9327B34();
  (*(v37 + 8))(v11, v36);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_5;
  }

  v56 = v59;
  (*(v17 + 32))(v59, v15, v16);
  v57 = v65;
  sub_1D93205FC(v56, v65);
  (*(v17 + 8))(v56, v16);
  v38 = v67;
  sub_1D92933A0(v67, &qword_1ECAFCBC0, &unk_1D932E7C0);
  sub_1D9297374(v57, v38, &qword_1ECAFCBC0, &unk_1D932E7C0);
LABEL_6:
  sub_1D92973DC(v38, v26, &qword_1ECAFCBC0, &unk_1D932E7C0);
  v39 = v66;
  if ((*(v5 + 48))(v26, 1, v66) == 1)
  {
    sub_1D92933A0(v26, &qword_1ECAFCBC0, &unk_1D932E7C0);
    v41 = v63;
    v40 = v64;
    (*(v64 + 16))(v63, v1 + *(*v1 + 176), v68);

    v42 = sub_1D9326BC4();
    v43 = sub_1D9328234();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = v38;
      v46 = swift_slowAlloc();
      v69 = v46;
      *v44 = 136446210;
      v47 = (v1 + *(*v1 + 184));
      v48 = *v47;
      v49 = v47[1];

      v50 = sub_1D9293524(v48, v49, &v69);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_1D928E000, v42, v43, "[%{public}s] No view model changes found.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1DA72F920](v46, -1, -1);
      MEMORY[0x1DA72F920](v44, -1, -1);

      (*(v40 + 8))(v41, v68);
      v51 = v45;
    }

    else
    {

      (*(v40 + 8))(v41, v68);
      v51 = v38;
    }
  }

  else
  {
    v52 = v62;
    sub_1D93250E0(v26, v62, type metadata accessor for ControlInstanceToggle.ViewModel);
    v53 = v65;
    sub_1D9325018(v52, v65, type metadata accessor for ControlInstanceToggle.ViewModel);
    v60(v53, 0, 1, v39);
    v54 = *(*v1 + 112);
    swift_beginAccess();
    v55 = v61;
    sub_1D92973DC(v1 + v54, v61, &qword_1ECAFCBC0, &unk_1D932E7C0);
    swift_beginAccess();
    sub_1D9325148(v53, v1 + v54);
    swift_endAccess();
    sub_1D931601C(v55);
    sub_1D92933A0(v55, &qword_1ECAFCBC0, &unk_1D932E7C0);
    sub_1D92933A0(v53, &qword_1ECAFCBC0, &unk_1D932E7C0);
    sub_1D9325080(v52, type metadata accessor for ControlInstanceToggle.ViewModel);
    v51 = v38;
  }

  return sub_1D92933A0(v51, &qword_1ECAFCBC0, &unk_1D932E7C0);
}

uint64_t sub_1D93205FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v118 = &v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v117 = &v102 - v9;
  v104 = type metadata accessor for ControlIconView.Mode(0);
  v10 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = &v102 - v14;
  v107 = sub_1D9327EC4();
  v106 = *(v107 - 8);
  v15 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ControlIconView(0);
  v110 = *(v18 - 8);
  v19 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1D9327E94();
  v22 = *(v112 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ControlInstanceToggle.ViewModel.Option(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v116 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v115 = &v102 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v121 = (&v102 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v120 = (&v102 - v35);
  MEMORY[0x1EEE9AC00](v34);
  v119 = (&v102 - v36);
  BSDispatchQueueAssertMain();
  v37 = *(*v2 + 152);
  v122 = v2;
  v38 = *(v2 + v37);
  v113 = v37;
  v111 = v21;
  v108 = v18;
  if (v38)
  {

    v39 = sub_1D92C6A40();

    if (v39)
    {
      goto LABEL_6;
    }
  }

  BSDispatchQueueAssertMain();
  v40 = *(v122 + v37);
  if (!v40 || (v41 = *(v122 + v37), , BSDispatchQueueAssertMain(), v42 = *(v40 + 32), , , !v42))
  {
LABEL_6:
    v44 = 0;
  }

  else
  {
    v43 = sub_1D9326A24();

    v44 = v43 > 0;
  }

  v45 = v123;
  sub_1D9327DF4();
  v46 = v119;
  sub_1D93211EC(v119);
  v47 = *(v22 + 8);
  v48 = v112;
  v47(v25, v112);
  sub_1D9327E04();
  v49 = v120;
  sub_1D93211EC(v120);
  v47(v25, v48);
  v114 = v44;
  if (v44)
  {
    v50 = v46;
  }

  else
  {
    v50 = v49;
  }

  v51 = v121;
  sub_1D9325018(v50, v121, type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  v109 = v51[4];
  sub_1D9327E14();
  v52 = MEMORY[0x1DA72E390](v45, v17);
  (*(v106 + 8))(v17, v107);
  v53 = v111;
  v54 = v113;
  if (v52)
  {
    v55 = *(v122 + v113);
    if (v55)
    {
      v56 = *(v55 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
      v57 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
      swift_beginAccess();
      v58 = *(v56 + v57);

      v59 = sub_1D93276C4();

      if (v59)
      {
        v60 = sub_1D93277C4();

        if (v60)
        {
          sub_1D92F06E8(v53);
          v61 = v109;
          v62 = v108;
          goto LABEL_20;
        }
      }

      else
      {
      }
    }
  }

  v63 = v114;
  v102 = a2;
  if (v114)
  {
    sub_1D9327DF4();
  }

  else
  {
    sub_1D9327E04();
  }

  v64 = v103;
  sub_1D9327E44();
  v47(v25, v112);
  LOBYTE(v132) = v63;
  v61 = v109;

  sub_1D9327544();
  v65 = v124;
  v66 = v125;
  v67 = v126;
  v68 = v105;
  sub_1D92973DC(v64, v105, &qword_1ECAFCBD8, &qword_1D932E920);
  swift_storeEnumTagMultiPayload();
  v62 = v108;
  v69 = v108[7];
  *(v53 + v108[10]) = 1;
  v70 = v62[11];
  v71 = sub_1D9326E44();
  (*(*(v71 - 8) + 56))(v53 + v70, 1, 1, v71);
  v72 = v53 + v62[12];
  *v72 = swift_getKeyPath();
  *(v72 + 8) = 0;
  sub_1D9325018(v68, v53, type metadata accessor for ControlIconView.Mode);
  *(v53 + v62[5]) = 0;
  *(v53 + v62[6]) = 1;
  *(v53 + v69) = v61;
  v73 = v53 + v62[8];
  *v73 = v65;
  *(v73 + 8) = v66;
  *(v73 + 16) = v67;
  v129 = v65;
  v130 = v66;
  v131 = v67;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
  MEMORY[0x1DA72DAB0](&v128, v74);
  v127 = v128;
  sub_1D9327544();
  sub_1D9325080(v68, type metadata accessor for ControlIconView.Mode);
  sub_1D92933A0(v64, &qword_1ECAFCBD8, &qword_1D932E920);
  v75 = v133;
  v76 = v134;
  v77 = v53 + v62[9];
  *v77 = v132;
  *(v77 + 8) = v75;
  *(v77 + 16) = v76;
  v54 = v113;
  a2 = v102;
LABEL_20:
  v113 = sub_1D9327E24();
  v112 = v78;
  v109 = sub_1D9327EB4();
  v107 = v79;
  v80 = v117;
  sub_1D9325018(v53, v117, type metadata accessor for ControlIconView);
  (*(v110 + 56))(v80, 0, 1, v62);
  v81 = v121[1];
  v110 = *v121;
  if (v61)
  {

    v82 = v61;
  }

  else
  {
    v83 = qword_1EDE3C838;

    if (v83 != -1)
    {
      swift_once();
    }

    v82 = qword_1EDE400F8;
  }

  sub_1D9325018(v119, v115, type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  sub_1D9325018(v120, v116, type metadata accessor for ControlInstanceToggle.ViewModel.Option);

  sub_1D9327DC4();
  if (*(v122 + v54))
  {
    v84 = *(v122 + v54);

    v85 = sub_1D92C6A40();
  }

  else
  {
    v85 = 0;
  }

  v86 = sub_1D9327EA4();
  v87 = *(v122 + v54);
  if (v87)
  {
    v88 = *(v87 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
    v89 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
    swift_beginAccess();
    v90 = *(v88 + v89);

    v91 = sub_1D93276C4();

    if (v91)
    {
      v92 = sub_1D93277C4();
    }

    else
    {
      v92 = 0;
    }
  }

  else
  {
    v92 = 0;
  }

  v93 = sub_1D9327DD4();
  v95 = v94;
  sub_1D9325080(v53, type metadata accessor for ControlIconView);
  sub_1D9325080(v120, type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  sub_1D9325080(v119, type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  *a2 = v114;
  v96 = v112;
  *(a2 + 8) = v113;
  *(a2 + 16) = v96;
  v97 = v107;
  *(a2 + 24) = v109;
  *(a2 + 32) = v97;
  v98 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  sub_1D9297374(v117, a2 + v98[7], &qword_1ECAFCA50, &unk_1D932DF60);
  v99 = (a2 + v98[8]);
  *v99 = v110;
  v99[1] = v81;
  *(a2 + v98[9]) = v82;
  sub_1D93250E0(v115, a2 + v98[10], type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  sub_1D93250E0(v116, a2 + v98[11], type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  sub_1D9297374(v118, a2 + v98[12], &qword_1ECAFD1A8, &qword_1D932FC48);
  *(a2 + v98[13]) = v85 & 1;
  *(a2 + v98[14]) = v86 & 1;
  *(a2 + v98[15]) = v92 & 1;
  v100 = (a2 + v98[16]);
  *v100 = v93;
  v100[1] = v95;
  sub_1D9325080(v121, type metadata accessor for ControlInstanceToggle.ViewModel.Option);
  return (*(*(v98 - 1) + 56))(a2, 0, 1, v98);
}

uint64_t sub_1D93211EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE68, &qword_1D932F470);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = sub_1D9327E24();
  v37 = v14;
  v38 = v13;
  sub_1D9327E44();
  v15 = sub_1D93271E4();
  v16 = *(v15 - 8);
  v36 = *(v16 + 48);
  if (v36(v12, 1, v15) == 1)
  {
    sub_1D92933A0(v12, &qword_1ECAFCBD8, &qword_1D932E920);
    v35 = 0;
  }

  else
  {
    v17 = sub_1D93270E4();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    v35 = sub_1D93271A4();
    sub_1D92933A0(v5, &qword_1ECAFCE68, &qword_1D932F470);
    (*(v16 + 8))(v12, v15);
  }

  sub_1D9327E54();
  v39 = v15;
  v40 = v10;
  v34 = v16;
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_1D9327434();
  }

  v20 = sub_1D9327E84();
  v22 = v21;
  v23 = sub_1D9327E34();
  v25 = v24;
  v26 = *(type metadata accessor for ControlInstanceToggle.ViewModel.Option(0) + 40);
  sub_1D9327E74();
  v27 = sub_1D9327A94();
  (*(*(v27 - 8) + 56))(a1 + v26, 0, 1, v27);
  v28 = v37;
  *a1 = v38;
  a1[1] = v28;
  a1[2] = v35;
  a1[4] = v19;
  a1[5] = v20;
  a1[6] = v22;
  a1[7] = v23;
  a1[8] = v25;
  v29 = v40;
  sub_1D9327E44();
  v30 = v39;
  if (v36(v29, 1, v39) == 1)
  {
    result = sub_1D92933A0(v29, &qword_1ECAFCBD8, &qword_1D932E920);
    v32 = 0;
  }

  else
  {
    v32 = sub_1D9327174();
    result = (*(v34 + 8))(v29, v30);
  }

  a1[3] = v32;
  return result;
}

uint64_t sub_1D9321554@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC0, &unk_1D932E7C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = *(*v2 + 112);
  if (a1)
  {
    swift_beginAccess();
    sub_1D92973DC(v2 + v16, v11, &qword_1ECAFCBC0, &unk_1D932E7C0);
    v17 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
    if ((*(*(v17 - 8) + 48))(v11, 1, v17))
    {
      v9 = v11;
LABEL_5:
      sub_1D92933A0(v9, &qword_1ECAFCBC0, &unk_1D932E7C0);
      v19 = sub_1D9327A94();
      (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
LABEL_9:
      sub_1D92933A0(v15, &qword_1ECAFD360, qword_1D93304C8);
      sub_1D92F0450();
      swift_allocError();
      *v25 = 1;
      return swift_willThrow();
    }

    v20 = (v17 + 40);
  }

  else
  {
    swift_beginAccess();
    sub_1D92973DC(v2 + v16, v9, &qword_1ECAFCBC0, &unk_1D932E7C0);
    v18 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
    if ((*(*(v18 - 8) + 48))(v9, 1, v18))
    {
      goto LABEL_5;
    }

    v20 = (v18 + 44);
    v11 = v9;
  }

  v21 = *v20;
  v22 = type metadata accessor for ControlInstanceToggle.ViewModel.Option(0);
  sub_1D92973DC(&v11[v21 + *(v22 + 40)], v15, &qword_1ECAFD360, qword_1D93304C8);
  sub_1D92933A0(v11, &qword_1ECAFCBC0, &unk_1D932E7C0);
  v23 = sub_1D9327A94();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v15, 1, v23) == 1)
  {
    goto LABEL_9;
  }

  return (*(v24 + 32))(a2, v15, v23);
}

uint64_t sub_1D93218CC()
{
  v1[12] = v0;
  v2 = sub_1D9327A94();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = sub_1D9326BE4();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_1D93280A4();
  v1[21] = sub_1D9328094();
  v9 = sub_1D9328064();
  v1[22] = v9;
  v1[23] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D9321A34, v9, v8);
}

uint64_t sub_1D9321A34()
{
  v35 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 96);
  BSDispatchQueueAssertMain();
  v5 = *(*v4 + 176);
  *(v0 + 192) = v5;
  v6 = *(v3 + 16);
  *(v0 + 200) = v6;
  *(v0 + 208) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);

  v7 = sub_1D9326BC4();
  v8 = sub_1D9328234();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 160);
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  if (v9)
  {
    v13 = *(v0 + 96);
    v33 = *(v0 + 160);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446210;
    v16 = (v13 + *(*v13 + 184));
    v17 = *v16;
    v18 = v16[1];

    v19 = sub_1D9293524(v17, v18, &v34);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1D928E000, v7, v8, "[%{public}s] Asked to perform control action", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1DA72F920](v15, -1, -1);
    MEMORY[0x1DA72F920](v14, -1, -1);

    v20 = *(v11 + 8);
    v20(v33, v12);
  }

  else
  {

    v20 = *(v11 + 8);
    v20(v10, v12);
  }

  *(v0 + 216) = v20;
  v21 = *(v0 + 96);
  BSDispatchQueueAssertMain();
  v22 = *(*v21 + 152);
  *(v0 + 224) = v22;
  v23 = *(v21 + v22);
  if (v23 && (v24 = *(v21 + v22), , BSDispatchQueueAssertMain(), v25 = *(v23 + 32), , , v25))
  {
    v26 = sub_1D9326A24();

    v27 = v26 < 1;
  }

  else
  {
    v27 = 1;
  }

  *(v0 + 280) = v27;
  v28 = *(v0 + 96);
  sub_1D9321554(v27, *(v0 + 120));
  v29 = swift_task_alloc();
  *(v0 + 232) = v29;
  *v29 = v0;
  v29[1] = sub_1D9321D78;
  v30 = *(v0 + 120);
  v31 = *(v0 + 96);

  return sub_1D9303580(v30);
}

uint64_t sub_1D9321D78()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_1D9322664;
  }

  else
  {
    v7 = sub_1D9321EB4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D9321EB4()
{
  v48 = v0;
  v1 = *(v0 + 224);
  v2 = *(*(v0 + 96) + v1);
  if (v2 && (v3 = *(*(v0 + 96) + v1), , BSDispatchQueueAssertMain(), v4 = *(v2 + 32), , , v4))
  {
    v5 = *(v0 + 280);
    v6 = sub_1D93269F4();
  }

  else
  {
    v7 = *(v0 + 280);
    sub_1D9326A34();
    v6 = sub_1D9326A14();
  }

  *(v0 + 248) = v6;
  v8 = *(v0 + 96);
  v9 = *(*v8 + 168);
  if (*(v8 + v9))
  {
    v10 = *(v8 + v9);

    sub_1D92D3994(v0 + 16);
    if (*(v0 + 40))
    {
      sub_1D929CF00(v0 + 16, v0 + 56);
      sub_1D92933A0(v0 + 16, &qword_1ECAFC858, &unk_1D932FC60);
      v11 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      sub_1D9327AB4();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    }

    else
    {
      sub_1D92933A0(v0 + 16, &qword_1ECAFC858, &unk_1D932FC60);
      memset(v46, 0, sizeof(v46));
      v47 = 0;
    }

    sub_1D92D3B80(v46);

    v12 = *(v0 + 96);
  }

  sub_1D931FDA8();
  v13 = *(v8 + v9);
  *(v0 + 256) = v13;
  if (v13)
  {

    v14 = swift_task_alloc();
    *(v0 + 264) = v14;
    *v14 = v0;
    v14[1] = sub_1D93222EC;
    v15 = *(v0 + 120);

    return sub_1D92D7500(v15);
  }

  else
  {
    v17 = *(v0 + 168);

    v18 = *(v0 + 208);
    (*(v0 + 200))(*(v0 + 152), *(v0 + 96) + *(v0 + 192), *(v0 + 128));

    v19 = sub_1D9326BC4();
    v20 = sub_1D9328234();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 248);
    v23 = *(v0 + 216);
    v24 = *(v0 + 152);
    v25 = *(v0 + 136);
    v45 = *(v0 + 128);
    v27 = *(v0 + 112);
    v26 = *(v0 + 120);
    v28 = *(v0 + 104);
    if (v21)
    {
      v44 = *(v0 + 120);
      v29 = *(v0 + 96);
      v43 = *(v0 + 216);
      v30 = swift_slowAlloc();
      v42 = v24;
      v31 = swift_slowAlloc();
      *&v46[0] = v31;
      *v30 = 136446210;
      v32 = (v29 + *(*v29 + 184));
      v41 = v28;
      v33 = *v32;
      v34 = v32[1];

      v35 = sub_1D9293524(v33, v34, v46);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1D928E000, v19, v20, "[%{public}s] Toggle control action succeeded", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1DA72F920](v31, -1, -1);
      MEMORY[0x1DA72F920](v30, -1, -1);

      v43(v42, v45);
      (*(v27 + 8))(v44, v41);
    }

    else
    {

      v23(v24, v45);
      (*(v27 + 8))(v26, v28);
    }

    v37 = *(v0 + 152);
    v36 = *(v0 + 160);
    v38 = *(v0 + 144);
    v39 = *(v0 + 120);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_1D93222EC()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = v2[22];
    v5 = v2[23];
    v6 = sub_1D9322718;
  }

  else
  {
    v7 = v2[32];

    v4 = v2[22];
    v5 = v2[23];
    v6 = sub_1D9322408;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D9322408()
{
  v32 = v0;
  v1 = *(v0 + 168);

  v2 = *(v0 + 208);
  (*(v0 + 200))(*(v0 + 152), *(v0 + 96) + *(v0 + 192), *(v0 + 128));

  v3 = sub_1D9326BC4();
  v4 = sub_1D9328234();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  v30 = *(v0 + 128);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 104);
  if (v5)
  {
    v29 = *(v0 + 120);
    v13 = *(v0 + 96);
    v28 = *(v0 + 216);
    v14 = swift_slowAlloc();
    v27 = v8;
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136446210;
    v16 = (v13 + *(*v13 + 184));
    v26 = v12;
    v17 = *v16;
    v18 = v16[1];

    v19 = sub_1D9293524(v17, v18, &v31);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1D928E000, v3, v4, "[%{public}s] Toggle control action succeeded", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1DA72F920](v15, -1, -1);
    MEMORY[0x1DA72F920](v14, -1, -1);

    v28(v27, v30);
    (*(v11 + 8))(v29, v26);
  }

  else
  {

    v7(v8, v30);
    (*(v11 + 8))(v10, v12);
  }

  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 144);
  v23 = *(v0 + 120);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D9322664()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  (*(v3 + 8))(v2, v4);
  v5 = v0[30];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v9 = v0[15];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D9322718()
{
  v1 = v0[34];
  v2 = v0[32];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[12];

  v4(v7, v9 + v5, v8);

  v10 = v1;
  v11 = sub_1D9326BC4();
  v12 = sub_1D9328214();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[34];
  v15 = v0[31];
  v16 = v0[27];
  v17 = v0[17];
  v18 = v0[18];
  v19 = v0[15];
  v41 = v0[16];
  v21 = v0[13];
  v20 = v0[14];
  if (v13)
  {
    v40 = v0[27];
    v22 = v0[13];
    v23 = v0[15];
    v24 = v0[12];
    v39 = v0[18];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543618;
    v27 = *(v24 + *(*v24 + 120));
    v19 = v23;
    v21 = v22;
    v16 = v40;
    v28 = [v27 control];
    *(v25 + 4) = v28;
    *v26 = v28;
    *(v25 + 12) = 2114;
    v29 = v14;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v30;
    v26[1] = v30;
    _os_log_impl(&dword_1D928E000, v11, v12, "[%{public}@] Toggle control action failed: %{public}@", v25, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC510, &qword_1D932CEE0);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v26, -1, -1);
    v31 = v25;
    v18 = v39;
    MEMORY[0x1DA72F920](v31, -1, -1);
  }

  v16(v18, v41);
  swift_willThrow();

  (*(v20 + 8))(v19, v21);
  v32 = v0[34];
  v34 = v0[19];
  v33 = v0[20];
  v35 = v0[18];
  v36 = v0[15];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1D93229AC(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 296) = a1;
  v3 = sub_1D9326BE4();
  *(v2 + 144) = v3;
  v4 = *(v3 - 8);
  *(v2 + 152) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v6 = type metadata accessor for SetControlStateRequest();
  *(v2 + 176) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v8 = sub_1D9327A94();
  *(v2 + 192) = v8;
  v9 = *(v8 - 8);
  *(v2 + 200) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  sub_1D93280A4();
  *(v2 + 216) = sub_1D9328094();
  v12 = sub_1D9328064();
  *(v2 + 224) = v12;
  *(v2 + 232) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D9322B3C, v12, v11);
}

uint64_t sub_1D9322B3C()
{
  v1 = *(v0 + 136);
  BSDispatchQueueAssertMain();
  v2 = *(*v1 + 168);
  *(v0 + 240) = v2;
  v3 = *(v1 + v2);
  *(v0 + 248) = v3;
  if (v3)
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 136);
    v6 = *(v0 + 296);

    sub_1D9321554(v6, v4);
    v15 = swift_task_alloc();
    *(v0 + 256) = v15;
    *v15 = v0;
    v15[1] = sub_1D9322D00;
    v16 = *(v0 + 208);
    v17 = *(v0 + 136);

    return sub_1D9303580(v16);
  }

  else
  {
    v7 = *(v0 + 216);

    sub_1D92F0450();
    swift_allocError();
    *v8 = 4;
    swift_willThrow();
    v9 = *(v0 + 208);
    v10 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1D9322D00()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_1D93238F0;
  }

  else
  {
    v7 = sub_1D9322E3C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D9322E3C()
{
  v16 = v0;
  v1 = *(v0 + 136);
  v2 = *(v1 + *(*v1 + 152));
  if (v2 && (v3 = *(v1 + *(*v1 + 152)), , BSDispatchQueueAssertMain(), v4 = *(v2 + 32), , , v4))
  {
    v5 = *(v0 + 296);
    v6 = sub_1D93269F4();
  }

  else
  {
    v7 = *(v0 + 296);
    sub_1D9326A34();
    v6 = sub_1D9326A14();
  }

  *(v0 + 272) = v6;
  v8 = *(v0 + 240);
  v9 = *(v0 + 136);
  if (*(v9 + v8))
  {
    v10 = *(v9 + v8);

    sub_1D92D3994(v0 + 16);
    if (*(v0 + 40))
    {
      sub_1D929CF00(v0 + 16, v0 + 96);
      sub_1D92933A0(v0 + 16, &qword_1ECAFC858, &unk_1D932FC60);
      v11 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      sub_1D9327AB4();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    }

    else
    {
      sub_1D92933A0(v0 + 16, &qword_1ECAFC858, &unk_1D932FC60);
      memset(v14, 0, sizeof(v14));
      v15 = 0;
    }

    sub_1D92D3B80(v14);

    v12 = *(v0 + 136);
  }

  sub_1D931FDA8();

  return MEMORY[0x1EEE6DFA0](sub_1D9322FF0, 0, 0);
}

uint64_t sub_1D9322FF0()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[23];
  v4 = v0[22];
  v5 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
  (*(v0[25] + 16))(&v3[*(v4 + 20)], v0[26], v0[24]);
  *v3 = v5;
  *&v3[*(v4 + 24)] = v1;
  sub_1D929CF00(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, (v0 + 7));
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  v8 = *(v7 + 72);

  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[35] = v10;
  *v10 = v0;
  v10[1] = sub_1D932319C;
  v11 = v0[23];

  return v13(v11, v6, v7);
}

uint64_t sub_1D932319C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1D93235D0;
  }

  else
  {
    v3 = sub_1D93232B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D93232B0()
{
  sub_1D9325080(v0[23], type metadata accessor for SetControlStateRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[28];
  v2 = v0[29];

  return MEMORY[0x1EEE6DFA0](sub_1D9323330, v1, v2);
}

uint64_t sub_1D9323330()
{
  v36 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);

  (*(v4 + 16))(v2, v5 + *(*v5 + 176), v3);

  v6 = sub_1D9326BC4();
  v7 = sub_1D9328234();

  v8 = os_log_type_enabled(v6, v7);
  v34 = *(v0 + 272);
  v9 = *(v0 + 248);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 192);
  v13 = *(v0 + 168);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  if (v8)
  {
    v33 = *(v0 + 192);
    v16 = *(v0 + 136);
    v29 = *(v0 + 296);
    v32 = *(v0 + 144);
    v17 = swift_slowAlloc();
    v31 = v10;
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136446466;
    v19 = (v16 + *(*v16 + 184));
    v30 = v13;
    v20 = *v19;
    v21 = v19[1];

    v22 = sub_1D9293524(v20, v21, &v35);

    *(v17 + 4) = v22;
    *(v17 + 12) = 1026;
    *(v17 + 14) = v29;
    _os_log_impl(&dword_1D928E000, v6, v7, "[%{public}s] Control set state succeeded (new state %{BOOL,public}d)", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1DA72F920](v18, -1, -1);
    MEMORY[0x1DA72F920](v17, -1, -1);

    (*(v14 + 8))(v30, v32);
    (*(v11 + 8))(v31, v33);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  v23 = *(v0 + 208);
  v24 = *(v0 + 184);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1D93235D0()
{
  sub_1D9325080(v0[23], type metadata accessor for SetControlStateRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[28];
  v2 = v0[29];

  return MEMORY[0x1EEE6DFA0](sub_1D9323650, v1, v2);
}

uint64_t sub_1D9323650()
{
  v1 = v0[36];
  v2 = v0[27];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];

  (*(v4 + 16))(v3, v6 + *(*v6 + 176), v5);

  v7 = v1;
  v8 = sub_1D9326BC4();
  v9 = sub_1D9328214();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[36];
  v12 = v0[34];
  v13 = v0[31];
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[24];
  v17 = v0[19];
  v18 = v0[18];
  v37 = v18;
  v38 = v0[20];
  if (v10)
  {
    v35 = v0[36];
    v19 = v0[24];
    v20 = v0[17];
    v36 = v0[26];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543618;
    v23 = *(v20 + *(*v20 + 120));
    v16 = v19;
    v24 = [v23 control];
    *(v21 + 4) = v24;
    *v22 = v24;
    *(v21 + 12) = 2114;
    v25 = v11;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v26;
    v22[1] = v26;
    _os_log_impl(&dword_1D928E000, v8, v9, "[%{public}@] Control action failed: %{public}@", v21, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC510, &qword_1D932CEE0);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v22, -1, -1);
    v27 = v21;
    v14 = v36;
    MEMORY[0x1DA72F920](v27, -1, -1);
  }

  (*(v17 + 8))(v38, v37);
  swift_willThrow();

  (*(v15 + 8))(v14, v16);
  v28 = v0[36];
  v29 = v0[26];
  v30 = v0[23];
  v32 = v0[20];
  v31 = v0[21];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1D93238F0()
{
  v1 = v0[31];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v5 = v0[25];

  (*(v5 + 8))(v3, v4);
  v6 = v0[33];
  v7 = v0[26];
  v8 = v0[23];
  v10 = v0[20];
  v9 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t ControlInstanceToggle.__allocating_init(instanceIdentity:client:)(void *a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  sub_1D929CF00(a2, v9);
  v7 = sub_1D92E23F8(a1, v9);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v7;
}

uint64_t ControlInstanceToggle.init(instanceIdentity:client:)(void *a1, uint64_t *a2)
{
  sub_1D929CF00(a2, v6);
  v4 = sub_1D92E23F8(a1, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v4;
}

uint64_t ControlInstanceToggle.__deallocating_deinit()
{
  _s16ChronoUIServices21ControlInstanceToggleCfd_0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D9323AD8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D92D9CEC;

  return sub_1D93218CC();
}

uint64_t sub_1D9323B68(char *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92DA198;

  return sub_1D93229AC(v3);
}

BOOL _s16ChronoUIServices21ControlInstanceToggleC9ViewModelV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D9326814();
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD200, &qword_1D9330960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v66 - v12;
  v13 = type metadata accessor for ControlIconView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD208, &unk_1D932FED0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v66 - v24;
  if (*a1 != *a2)
  {
    return 0;
  }

  v27 = a1[2];
  v28 = a2[2];
  if (v27)
  {
    if (!v28 || (a1[1] != a2[1] || v27 != v28) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = a1[4];
  v30 = a2[4];
  if (v29)
  {
    if (!v30 || (a1[3] != a2[3] || v29 != v30) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v66 = v4;
  v67 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  v31 = *(v67 + 28);
  v32 = *(v22 + 48);
  sub_1D92973DC(a1 + v31, v25, &qword_1ECAFCA50, &unk_1D932DF60);
  v33 = a2 + v31;
  v34 = v32;
  sub_1D92973DC(v33, &v25[v32], &qword_1ECAFCA50, &unk_1D932DF60);
  v35 = *(v14 + 48);
  if (v35(v25, 1, v13) == 1)
  {
    if (v35(&v25[v34], 1, v13) == 1)
    {
      sub_1D92933A0(v25, &qword_1ECAFCA50, &unk_1D932DF60);
      goto LABEL_26;
    }

LABEL_23:
    v36 = &qword_1ECAFD208;
    v37 = &unk_1D932FED0;
    v38 = v25;
LABEL_24:
    sub_1D92933A0(v38, v36, v37);
    return 0;
  }

  sub_1D92973DC(v25, v21, &qword_1ECAFCA50, &unk_1D932DF60);
  if (v35(&v25[v34], 1, v13) == 1)
  {
    sub_1D9325080(v21, type metadata accessor for ControlIconView);
    goto LABEL_23;
  }

  sub_1D93250E0(&v25[v34], v17, type metadata accessor for ControlIconView);
  v39 = static ControlIconView.== infix(_:_:)(v21, v17);
  sub_1D9325080(v17, type metadata accessor for ControlIconView);
  sub_1D9325080(v21, type metadata accessor for ControlIconView);
  sub_1D92933A0(v25, &qword_1ECAFCA50, &unk_1D932DF60);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v40 = v67;
  v41 = *(v67 + 32);
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    v46 = v71;
    if (!v45 || (*v42 != *v44 || v43 != v45) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v46 = v71;
    if (v45)
    {
      return 0;
    }
  }

  v47 = v40[9];
  v48 = *(a2 + v47);
  if (*(a1 + v47))
  {
    if (!v48)
    {
      return 0;
    }

    v49 = *(a2 + v47);

    v50 = sub_1D9327364();

    if ((v50 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  if (!_s16ChronoUIServices21ControlInstanceToggleC9ViewModelV6OptionV2eeoiySbAG_AGtFZ_0((a1 + v40[10]), (a2 + v40[10])) || !_s16ChronoUIServices21ControlInstanceToggleC9ViewModelV6OptionV2eeoiySbAG_AGtFZ_0((a1 + v40[11]), (a2 + v40[11])))
  {
    return 0;
  }

  v51 = v40[12];
  v52 = *(v10 + 48);
  v53 = v69;
  sub_1D92973DC(a1 + v51, v69, &qword_1ECAFD1A8, &qword_1D932FC48);
  sub_1D92973DC(a2 + v51, v53 + v52, &qword_1ECAFD1A8, &qword_1D932FC48);
  v54 = v70;
  v55 = *(v70 + 48);
  v56 = v66;
  if (v55(v53, 1, v66) != 1)
  {
    sub_1D92973DC(v53, v46, &qword_1ECAFD1A8, &qword_1D932FC48);
    if (v55(v53 + v52, 1, v56) != 1)
    {
      v57 = v53 + v52;
      v58 = v68;
      (*(v54 + 32))(v68, v57, v56);
      sub_1D93249DC(&qword_1ECAFD210, MEMORY[0x1E6968FB0]);
      v59 = sub_1D9327F64();
      v60 = *(v54 + 8);
      v60(v58, v56);
      v60(v46, v56);
      sub_1D92933A0(v53, &qword_1ECAFD1A8, &qword_1D932FC48);
      if ((v59 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_47;
    }

    (*(v54 + 8))(v46, v56);
    goto LABEL_45;
  }

  if (v55(v53 + v52, 1, v56) != 1)
  {
LABEL_45:
    v36 = &qword_1ECAFD200;
    v37 = &qword_1D9330960;
    v38 = v53;
    goto LABEL_24;
  }

  sub_1D92933A0(v53, &qword_1ECAFD1A8, &qword_1D932FC48);
LABEL_47:
  if (*(a1 + v40[13]) == *(a2 + v40[13]) && *(a1 + v40[14]) == *(a2 + v40[14]) && *(a1 + v40[15]) == *(a2 + v40[15]))
  {
    v61 = v40[16];
    v62 = (a1 + v61);
    v63 = *(a1 + v61 + 8);
    v64 = (a2 + v61);
    v65 = v64[1];
    if (v63)
    {
      return v65 && (*v62 == *v64 && v63 == v65 || (sub_1D9328654() & 1) != 0);
    }

    if (!v65)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s16ChronoUIServices21ControlInstanceToggleC9ViewModelV6OptionV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D9327A94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3E0, &unk_1D9330740);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = a2[2];
  if (a1[2])
  {
    if (!v19)
    {
      return 0;
    }

    v20 = a2[2];

    v21 = sub_1D9327484();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v42 = v5;
  v22 = a1[3];
  v23 = a2[3];
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    sub_1D9324F78();
    v24 = v23;
    v25 = v22;
    v26 = sub_1D9328314();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v27 = a2[4];
  if (a1[4])
  {
    if (!v27)
    {
      return 0;
    }

    v28 = a2[4];

    v29 = sub_1D9327364();

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v30 = a1[6];
  v31 = a2[6];
  if (v30)
  {
    if (!v31 || (a1[5] != a2[5] || v30 != v31) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = a1[8];
  v33 = a2[8];
  if (v32)
  {
    if (!v33 || (a1[7] != a2[7] || v32 != v33) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = *(type metadata accessor for ControlInstanceToggle.ViewModel.Option(0) + 40);
  v35 = *(v13 + 48);
  sub_1D92973DC(a1 + v34, v16, &qword_1ECAFD360, qword_1D93304C8);
  sub_1D92973DC(a2 + v34, &v16[v35], &qword_1ECAFD360, qword_1D93304C8);
  v36 = v42;
  v37 = *(v42 + 48);
  if (v37(v16, 1, v4) == 1)
  {
    if (v37(&v16[v35], 1, v4) == 1)
    {
      sub_1D92933A0(v16, &qword_1ECAFD360, qword_1D93304C8);
      return 1;
    }

    goto LABEL_42;
  }

  sub_1D92973DC(v16, v12, &qword_1ECAFD360, qword_1D93304C8);
  if (v37(&v16[v35], 1, v4) == 1)
  {
    (*(v36 + 8))(v12, v4);
LABEL_42:
    sub_1D92933A0(v16, &qword_1ECAFD3E0, &unk_1D9330740);
    return 0;
  }

  (*(v36 + 32))(v8, &v16[v35], v4);
  sub_1D93249DC(&qword_1EDE3BC90, MEMORY[0x1E69858A8]);
  v39 = sub_1D9327F64();
  v40 = *(v36 + 8);
  v40(v8, v4);
  v40(v12, v4);
  sub_1D92933A0(v16, &qword_1ECAFD360, qword_1D93304C8);
  return (v39 & 1) != 0;
}

uint64_t sub_1D93248D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlInstanceToggle.ViewModel.Option(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D932493C(uint64_t a1)
{
  result = sub_1D93249DC(qword_1EDE3B8E0, type metadata accessor for ControlInstanceToggle.ViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D93249DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ControlInstanceToggle.performAction()()
{
  v2 = *(*v0 + 688);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D92D9CEC;

  return v6();
}

uint64_t dispatch thunk of ControlInstanceToggle.setState(_:)(uint64_t a1)
{
  v4 = *(*v1 + 696);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D92DA198;

  return v8(a1);
}

void sub_1D9324CC4()
{
  sub_1D931ED08(319, &qword_1EDE3DA78);
  if (v0 <= 0x3F)
  {
    sub_1D9324FC4(319, qword_1EDE3D3F8, type metadata accessor for ControlIconView);
    if (v1 <= 0x3F)
    {
      sub_1D931ED08(319, &qword_1EDE3BD18);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ControlInstanceToggle.ViewModel.Option(319);
        if (v3 <= 0x3F)
        {
          sub_1D9324FC4(319, &qword_1EDE3BAE0, MEMORY[0x1E6968FB0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9324E38()
{
  sub_1D931ED08(319, &qword_1EDE3DA78);
  if (v0 <= 0x3F)
  {
    sub_1D931ED08(319, &qword_1EDE3BD00);
    if (v1 <= 0x3F)
    {
      sub_1D9324FC4(319, &qword_1EDE3B228, sub_1D9324F78);
      if (v2 <= 0x3F)
      {
        sub_1D931ED08(319, &qword_1EDE3BD18);
        if (v3 <= 0x3F)
        {
          sub_1D9324FC4(319, &qword_1EDE3BC88, MEMORY[0x1E69858A8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D9324F78()
{
  result = qword_1EDE3B230;
  if (!qword_1EDE3B230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE3B230);
  }

  return result;
}

void sub_1D9324FC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9328374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D9325018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9325080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D93250E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9325148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC0, &unk_1D932E7C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t CHSDynamicColor.resolvedColor(in:)()
{
  v1 = sub_1D9326D24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = sub_1D9326D04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  sub_1D9326E74();
  (*(v10 + 16))(v14, v16, v9);
  v17 = (*(v10 + 88))(v14, v9);
  if (v17 == *MEMORY[0x1E697DBB8])
  {
    v18 = 1;
  }

  else
  {
    if (v17 != *MEMORY[0x1E697DBA8])
    {
LABEL_15:
      sub_1D9328644();
      __break(1u);
      goto LABEL_16;
    }

    v18 = 2;
  }

  sub_1D9326E94();
  (*(v2 + 16))(v6, v8, v1);
  v19 = (*(v2 + 88))(v6, v1);
  if (v19 == *MEMORY[0x1E697DE20])
  {
    v20 = 1;
LABEL_9:
    v21 = [v0 resolvedColorForColorScheme:v18 displayGamut:v20];
    if (!v21)
    {
      v23 = 0;
      goto LABEL_13;
    }

    v22 = v21;
    if ([v21 CGColor])
    {
      v23 = sub_1D9327334();

LABEL_13:
      (*(v2 + 8))(v8, v1);
      (*(v10 + 8))(v16, v9);
      return v23;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v19 == *MEMORY[0x1E697DE28])
  {
    v20 = 0;
    goto LABEL_9;
  }

LABEL_16:
  result = sub_1D9328644();
  __break(1u);
  return result;
}