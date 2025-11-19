uint64_t sub_252B751B8(uint64_t a1)
{
  v2[2832] = v1;
  v2[2831] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A8, &qword_252E4E438) - 8) + 64) + 15;
  v2[2833] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B0, &qword_252E4E440);
  v2[2834] = v4;
  v5 = *(v4 - 8);
  v2[2835] = v5;
  v6 = *(v5 + 64) + 15;
  v2[2836] = swift_task_alloc();
  v7 = sub_252E33EF4();
  v2[2837] = v7;
  v8 = *(v7 - 8);
  v2[2838] = v8;
  v9 = *(v8 + 64) + 15;
  v2[2839] = swift_task_alloc();
  v10 = sub_252E33D64();
  v2[2840] = v10;
  v11 = *(v10 - 8);
  v2[2841] = v11;
  v12 = *(v11 + 64) + 15;
  v2[2842] = swift_task_alloc();
  v13 = sub_252E334A4();
  v2[2843] = v13;
  v14 = *(v13 - 8);
  v2[2844] = v14;
  v15 = *(v14 + 64) + 15;
  v2[2845] = swift_task_alloc();
  v2[2846] = swift_task_alloc();
  v16 = sub_252E336B4();
  v2[2847] = v16;
  v17 = *(v16 - 8);
  v2[2848] = v17;
  v18 = *(v17 + 64) + 15;
  v2[2849] = swift_task_alloc();
  v19 = sub_252E339C4();
  v2[2850] = v19;
  v20 = *(v19 - 8);
  v2[2851] = v20;
  v21 = *(v20 + 64) + 15;
  v2[2852] = swift_task_alloc();
  v22 = sub_252E34164();
  v2[2853] = v22;
  v23 = *(v22 - 8);
  v2[2854] = v23;
  v24 = *(v23 + 64) + 15;
  v2[2855] = swift_task_alloc();
  v2[2856] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B8, &qword_252E4E448) - 8) + 64) + 15;
  v2[2857] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437C0, &qword_252E4E450);
  v2[2858] = v26;
  v27 = *(v26 - 8);
  v2[2859] = v27;
  v28 = *(v27 + 64) + 15;
  v2[2860] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v2[2861] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v2[2862] = swift_task_alloc();
  v2[2863] = swift_task_alloc();
  v31 = sub_252E34104();
  v2[2864] = v31;
  v32 = *(v31 - 8);
  v2[2865] = v32;
  v33 = *(v32 + 64) + 15;
  v2[2866] = swift_task_alloc();
  v2[2867] = swift_task_alloc();
  v2[2868] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B7565C, 0, 0);
}

uint64_t sub_252B7565C()
{
  v1 = v0[2832];
  v2 = *(v1 + 32);
  v0[2869] = v2;
  if (v2)
  {
    memcpy(v0 + 254, (v1 + 40), 0x1F8uLL);
    memcpy(v0 + 317, (v1 + 40), 0x1F8uLL);
    v2;
    sub_252938414((v0 + 254), (v0 + 380), &qword_27F5404C8, &unk_252E3FD60);
    v3 = swift_task_alloc();
    v0[2870] = v3;
    *v3 = v0;
    v3[1] = sub_252B75ABC;

    return sub_252C50064(v0 + 317);
  }

  else
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
      v1 = v0[2832];
    }

    v5 = v0[2862];
    v6 = v0[2861];
    v7 = v0[2831];
    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544DA8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E82A80);
    v9 = *(v1 + 32);
    v0[2829] = v9;
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A0, &unk_252E4E420);
    v11 = sub_252E36F94();
    MEMORY[0x2530AD570](v11);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E82AA0);
    memcpy(v0 + 443, (v1 + 40), 0x1F8uLL);
    memcpy(v0 + 569, (v1 + 40), 0x1F8uLL);
    sub_252938414((v0 + 443), (v0 + 632), &qword_27F5404C8, &unk_252E3FD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v12 = sub_252E36F94();
    MEMORY[0x2530AD570](v12);

    MEMORY[0x2530AD570](0x202020200A726F20, 0xEE00207475706E49);
    v13 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
    swift_beginAccess();
    sub_252938414(v1 + v13, v5, &qword_27F543798, &unk_252E4E410);
    v14 = sub_252E36F94();
    MEMORY[0x2530AD570](v14);

    MEMORY[0x2530AD570](10530, 0xE200000000000000);
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E828C0);

    sub_252E33B24();
    v15 = v0[2868];
    v16 = v0[2867];
    v17 = v0[2866];
    v18 = v0[2863];
    v19 = v0[2862];
    v20 = v0[2860];
    v21 = v0[2857];
    v22 = v0[2856];
    v23 = v0[2855];
    v24 = v0[2852];
    v26 = v0[2849];
    v27 = v0[2846];
    v28 = v0[2845];
    v29 = v0[2842];
    v30 = v0[2839];
    v31 = v0[2836];
    v32 = v0[2833];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_252B75ABC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 22960);
  v4 = *(*v1 + 22952);
  v6 = *v1;
  v2[2871] = a1;

  memcpy(v2 + 191, v2 + 317, 0x1F8uLL);
  sub_25293847C((v2 + 191), &qword_27F5404C8, &unk_252E3FD60);

  return MEMORY[0x2822009F8](sub_252B75C00, 0, 0);
}

uint64_t sub_252B75C00()
{
  v306 = v0;
  v1 = v0[2832];
  memcpy(v0 + 128, (v1 + 40), 0x1F8uLL);
  memcpy(v0 + 1766, (v1 + 40), 0x1F8uLL);
  if (sub_252956B94(v0 + 1766) == 1)
  {

LABEL_5:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v8 = v0[2862];
    v9 = v0[2861];
    v10 = v0[2832];
    v298 = v0[2831];
    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E82A80);
    v12 = *(v10 + 32);
    v0[2829] = v12;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A0, &unk_252E4E420);
    v14 = sub_252E36F94();
    MEMORY[0x2530AD570](v14);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E82AA0);
    memcpy(v0 + 443, (v10 + 40), 0x1F8uLL);
    memcpy(v0 + 569, (v10 + 40), 0x1F8uLL);
    sub_252938414((v0 + 443), (v0 + 632), &qword_27F5404C8, &unk_252E3FD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v15 = sub_252E36F94();
    MEMORY[0x2530AD570](v15);

    MEMORY[0x2530AD570](0x202020200A726F20, 0xEE00207475706E49);
    v16 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
    swift_beginAccess();
    sub_252938414(v10 + v16, v8, &qword_27F543798, &unk_252E4E410);
    v17 = sub_252E36F94();
    MEMORY[0x2530AD570](v17);

    MEMORY[0x2530AD570](10530, 0xE200000000000000);
    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000076, 0x8000000252E828C0);

    sub_252E33B24();
    goto LABEL_8;
  }

  v2 = v0[2865];
  v3 = v0[2864];
  v4 = v0[2863];
  v5 = v0[2832];
  memcpy(v0 + 2144, v0 + 1766, 0x1F8uLL);
  v6 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
  swift_beginAccess();
  sub_252938414(v5 + v6, v4, &qword_27F543798, &unk_252E4E410);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v7 = v0[2863];

    sub_25293847C(v7, &qword_27F543798, &unk_252E4E410);
    goto LABEL_5;
  }

  v30 = v0[2832];
  v31 = *(v0[2865] + 32);
  v31(v0[2868], v0[2863], v0[2864]);
  v32 = v0;
  v33 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state;
  v300 = v32;
  v32[2872] = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state;
  v34 = *(v30 + v33);
  if (v34 <= 5)
  {
    if (*(v30 + v33) <= 1u)
    {
      if (!*(v30 + v33))
      {
        v0 = v32;
        memcpy(v32 + 821, v32 + 128, 0x1F8uLL);
        sub_2529353AC((v0 + 821), (v0 + 506));
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v78 = v300[2871];
        v79 = v300[2868];
        v80 = v300[2865];
        v81 = v300[2864];
        v82 = v300[2844];
        v83 = v300[2832];
        v84 = v300[2831];
        v85 = sub_252E36AD4();
        __swift_project_value_buffer(v85, qword_27F544DA8);
        sub_252CC3D90(0xD000000000000021, 0x8000000252E82EB0, 0xD000000000000076, 0x8000000252E828C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541830, &qword_252E40AC8);
        v86 = *(v82 + 72);
        v87 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        *(swift_allocObject() + 16) = xmmword_252E3C290;
        sub_252E33484();
        v88 = sub_252E33144();

        type metadata accessor for HomeStore();
        v89 = static HomeStore.shared.getter();
        sub_2529E0898();

        v300[2830] = v88;
        v90 = swift_allocObject();
        *(v90 + 16) = sub_252B7D538;
        *(v90 + 24) = v83;
        sub_252E33454();

        sub_252E33AC4();

        sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v80 + 8))(v79, v81);

        goto LABEL_8;
      }

      v56 = v32;
      memcpy(__dst, v32 + 2144, 0x1F8uLL);
      memcpy(v56 + 2711, v56 + 128, 0x1F8uLL);
      sub_2529353AC((v56 + 2711), (v56 + 2396));
      if (sub_252A12D08())
      {
        v57 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
        v58 = sub_252AC5368(0x6553746E65746E69, 0xEF6E6F697463656CLL);

        if (v58 != 2 && (v58 & 1) == 0)
        {
          if (qword_27F53F500 != -1)
          {
            swift_once();
          }

          v59 = sub_252E36AD4();
          __swift_project_value_buffer(v59, qword_27F544DA8);
          sub_252CC4050(0xD000000000000053, 0x8000000252E82DF0, 0xD000000000000076, 0x8000000252E828C0, 0x2865747563657865, 0xE900000000000029, 243);
          sub_2529515FC(0, 18, 0xD00000000000001BLL, 0x8000000252E82E50);
        }
      }

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v30 = v300;
      v60 = v300[2868];
      v61 = v300[2867];
      v62 = v300[2865];
      v63 = v300[2864];
      v64 = sub_252E36AD4();
      __swift_project_value_buffer(v64, qword_27F544DA8);
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E82DD0, 0xD000000000000076, 0x8000000252E828C0);
      memcpy(__dst, v300 + 2144, 0x1F8uLL);
      v66 = *(v62 + 16);
      v65 = (v62 + 16);
      v66(v61, v60, v63);
      memcpy(v30 + 2207, v30 + 128, 0x1F8uLL);
      sub_2529353AC((v30 + 2207), (v30 + 1955));
      if (qword_27F53F880 != -1)
      {
        swift_once();
      }

      v67 = qword_27F575DA0;
      v33 = *(qword_27F575DA0 + 16);
      if (v33 >= 0xB)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v33 >= *(v67 + 3) >> 1)
        {
          v67 = sub_2529F8F68(isUniquelyReferenced_nonNull_native, v33 + 1, 1, v67);
        }

        v69 = *(v67 + 2);
        memmove(v67 + 224, v67 + 208, 16 * v69 - 176);
        *(v67 + 2) = v69 + 1;
        *(v67 + 26) = &type metadata for PrioritizeSceneNameOverEvent;
        *(v67 + 27) = &off_2864BEE58;
        if (qword_27F53F430 != -1)
        {
          swift_once();
        }

        v70 = qword_27F575A98;
        v71 = qword_27F53F218;

        if (v71 != -1)
        {
          swift_once();
        }

        v72 = qword_27F5753E0;
        v73 = qword_27F53F8A0;

        if (v73 != -1)
        {
          swift_once();
        }

        v0 = v300;
        v289 = v300[2868];
        v74 = v300[2867];
        v75 = v300[2865];
        v271 = v300[2871];
        v278 = v300[2864];
        v76 = v300[2832];
        v267 = v300[2831];
        v77 = qword_27F575DC0;
        type metadata accessor for IntentSelectionFlow();
        swift_allocObject();

        v300[2826] = sub_252D3FCBC(__dst, v74, v70, v72, v77, v67);
        sub_252B7DA48(&qword_27F543808, type metadata accessor for IntentSelectionFlow);

        sub_252E33AC4();

        sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v75 + 8))(v289, v278);
        goto LABEL_8;
      }

      __break(1u);
    }

    else
    {
      if (v34 == 2)
      {
        v122 = v32;
        memcpy(v32 + 1703, v32 + 128, 0x1F8uLL);
        sub_2529353AC((v122 + 1703), (v122 + 2));
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v123 = v300[2860];
        v124 = v300[2857];
        v125 = sub_252E36AD4();
        __swift_project_value_buffer(v125, qword_27F544DA8);
        sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E82DB0, 0xD000000000000076, 0x8000000252E828C0);
        type metadata accessor for ShowHomeRCHStrategy();
        v300[2820] = swift_allocObject();
        sub_252B791F0();
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437F8, &unk_252E4E460);
        v127 = *(v126 + 48);
        v128 = *(v126 + 52);
        swift_allocObject();
        sub_252E335D4();
        sub_252B7DA48(&qword_27F543800, type metadata accessor for ShowHomeRCHStrategy);
        sub_252E33A44();
        if (qword_27F53F720 != -1)
        {
          swift_once();
        }

        v300[2873] = qword_27F575C30;
        memcpy(v300 + 1577, v300 + 2144, 0x1F8uLL);
        v129 = swift_task_alloc();
        v300[2874] = v129;
        *v129 = v300;
        v129[1] = sub_252B78AB0;

        return sub_252976614();
      }

      if (v34 != 4)
      {
        if (v34 == 5)
        {
          memcpy(v32 + 2270, v32 + 128, 0x1F8uLL);
          sub_2529353AC((v300 + 2270), (v300 + 2333));
          if (qword_27F53F500 != -1)
          {
            swift_once();
          }

          v43 = v300[2871];
          v288 = v300[2868];
          v37 = v300[2865];
          v38 = v300[2864];
          v44 = v300[2832];
          v45 = v300[2831];
          v46 = sub_252E36AD4();
          __swift_project_value_buffer(v46, qword_27F544DA8);
          sub_252CC3D90(0xD000000000000016, 0x8000000252E82C50, 0xD000000000000076, 0x8000000252E828C0);
          type metadata accessor for ControlHomeBlockingFlow();
          v47 = swift_allocObject();
          *(v47 + 528) = 0;
          *(v47 + 16) = v43;
          memcpy((v47 + 24), v300 + 2144, 0x1F8uLL);
          v300[2823] = v47;
          sub_252938414((v300 + 128), (v300 + 2459), &qword_27F5404C8, &unk_252E3FD60);
          sub_252B7DA48(&qword_27F5437E8, type metadata accessor for ControlHomeBlockingFlow);

          v48 = v43;
          sub_252E33AC4();

          sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

          goto LABEL_26;
        }

        goto LABEL_106;
      }

      v65 = v32;
      memcpy(v32 + 1892, v32 + 128, 0x1F8uLL);
      sub_2529353AC((v65 + 1892), (v65 + 1073));
      if (qword_27F53F500 == -1)
      {
LABEL_59:
        v91 = v65[2871];
        v92 = v65[2868];
        v93 = v65[2865];
        v94 = v65[2864];
        v95 = v65[2831];
        v96 = sub_252E36AD4();
        __swift_project_value_buffer(v96, qword_27F544DA8);
        sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E82E70, 0xD000000000000076, 0x8000000252E828C0);
        *(v30 + v33) = 9;
        sub_252E33AB4();
        sub_25293847C((v65 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v93 + 8))(v92, v94);
        v0 = v65;
LABEL_8:
        v18 = v0[2868];
        v19 = v0[2867];
        v20 = v0[2866];
        v21 = v0[2863];
        v22 = v0[2862];
        v23 = v0[2860];
        v24 = v0[2857];
        v25 = v0[2856];
        v26 = v0[2855];
        v27 = v0[2852];
        v261 = v0[2849];
        v263 = v0[2846];
        v266 = v0[2845];
        v270 = v0[2842];
        v277 = v0[2839];
        v287 = v0[2836];
        v299 = v0[2833];

        v28 = v0[1];

        return v28();
      }
    }

    swift_once();
    goto LABEL_59;
  }

  if (*(v30 + v33) <= 8u)
  {
    if (v34 != 6)
    {
      if (v34 == 7)
      {
        v97 = v32;
        memcpy(__dst, v32 + 2144, 0x1F8uLL);
        memcpy(v97 + 2018, v97 + 128, 0x1F8uLL);
        sub_252938414((v97 + 128), (v97 + 1829), &qword_27F5404C8, &unk_252E3FD60);
        sub_2529353AC((v97 + 2018), (v97 + 1640));
        v98 = sub_252AEFEB0();
        type metadata accessor for AccessoriesWarmupManager();
        swift_allocObject();
        v99 = sub_252A75FBC(v98);
        memcpy(v97 + 2081, v97 + 1766, 0x1F8uLL);
        GEOLocationCoordinate2DMake(v300 + 2081);
        memcpy(v300 + 65, v99 + 2, 0x1F8uLL);
        memcpy(v99 + 2, v300 + 2081, 0x1F8uLL);

        sub_25293847C((v300 + 65), &qword_27F5404C8, &unk_252E3FD60);

        sub_252A760A0();

        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v100 = v300[2871];
        v101 = v300[2865];
        v279 = v300[2864];
        v290 = v300[2868];
        v102 = v300[2832];
        v103 = v300[2831];
        v104 = sub_252E36AD4();
        __swift_project_value_buffer(v104, qword_27F544C70);
        sub_252CC3D90(0xD000000000000017, 0x8000000252E82CA0, 0xD000000000000076, 0x8000000252E828C0);
        memcpy(__dst, v300 + 2144, 0x1F8uLL);
        type metadata accessor for ControlHomeModifyingFlow();
        swift_allocObject();
        v300[2821] = sub_252C63D74(v100, __dst);
        v105 = swift_allocObject();
        *(v105 + 16) = sub_252B7D4B0;
        *(v105 + 24) = v102;
        sub_252938414((v300 + 128), (v300 + 1325), &qword_27F5404C8, &unk_252E3FD60);
        sub_252B7DA48(&qword_27F5437F0, type metadata accessor for ControlHomeModifyingFlow);

        v106 = v100;
        sub_252E33AC4();

        sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v101 + 8))(v290, v279);
        goto LABEL_68;
      }

      if (v34 == 8)
      {
        v35 = v32;
        memcpy(v32 + 2522, v32 + 128, 0x1F8uLL);
        sub_2529353AC((v35 + 2522), (v35 + 2585));
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v36 = v300[2871];
        v288 = v300[2868];
        v37 = v300[2865];
        v38 = v300[2864];
        v39 = v300[2832];
        v40 = v300[2831];
        v41 = sub_252E36AD4();
        __swift_project_value_buffer(v41, qword_27F544C70);
        sub_252CC3D90(0xD000000000000022, 0x8000000252E82C70, 0xD000000000000076, 0x8000000252E828C0);
        memcpy(__dst, v300 + 2144, 0x1F8uLL);
        type metadata accessor for RestrictedGuestCheckFlow();
        swift_allocObject();
        sub_252938414((v300 + 128), (v300 + 2648), &qword_27F5404C8, &unk_252E3FD60);
        v42 = v36;
        v300[2822] = sub_25296AB2C(__dst, v42);
        sub_252B7DA48(&qword_27F5406B8, type metadata accessor for RestrictedGuestCheckFlow);

        sub_252E33AC4();

        sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

LABEL_26:

        (*(v37 + 8))(v288, v38);
LABEL_68:
        v0 = v300;
        goto LABEL_8;
      }

      goto LABEL_106;
    }

    v130 = v32;
    memcpy(__dst, v32 + 2144, 0x1F8uLL);
    memcpy(v130 + 1262, v130 + 128, 0x1F8uLL);
    sub_2529353AC((v130 + 1262), (v130 + 1199));
    sub_252A0EF78();
    if (v131)
    {
      memcpy(__dst, v300 + 2144, 0x1F8uLL);
      if ((sub_252A0F090() & 1) == 0)
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v191 = v300[2868];
        v275 = v300[2871];
        v284 = v300[2865];
        v294 = v300[2864];
        v192 = v300[2856];
        v193 = v300[2855];
        v194 = v300[2854];
        v195 = v300[2853];
        v259 = v300[2852];
        v260 = v300[2866];
        v264 = v300[2851];
        v269 = v300[2850];
        v196 = v300[2832];
        v262 = v300[2831];
        v197 = sub_252E36AD4();
        __swift_project_value_buffer(v197, qword_27F544DA8);
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_252E379F4();
        v301 = __dst[0];
        v303 = __dst[1];
        MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E82D40);
        memcpy(__dst, v300 + 2144, 0x1F8uLL);
        v198 = HomeAutomationIntent.description.getter();
        MEMORY[0x2530AD570](v198);

        MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E82D70);
        sub_252CC4050(v301, v303, 0xD000000000000076, 0x8000000252E828C0, 0x2865747563657865, 0xE900000000000029, 266);

        memcpy(__dst, v300 + 2144, 0x1F8uLL);
        v199 = v191;
        sub_252E340E4();
        sub_25294E0C8(__dst, v193, v192);
        v200 = *(v194 + 8);
        v201 = v195;
        v200(v193, v195);
        v202 = *(v196 + 16);
        v203 = *(v196 + 24);
        (*(v194 + 16))(v193, v192, v195);

        sub_252E340F4();
        sub_252E339B4();
        sub_252E33B34();
        sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v264 + 8))(v259, v269);
        v0 = v300;
        v200(v192, v201);
        (*(v284 + 8))(v199, v294);
        goto LABEL_8;
      }
    }

    memcpy(__dst, v300 + 2144, 0x1F8uLL);
    if (sub_252A16EC4())
    {
      v132 = [v300[2871] userTask];
      if (v132)
      {
        v133 = v132;
        v134 = [v132 taskType];

        if (v134 == 4)
        {
          type metadata accessor for HomeStore();
          v135 = static HomeStore.shared.getter();
          v136 = v135;
          v137 = v135[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
          if (v137 == 2 || (v137 & 1) != 0)
          {
            v130 = v300;
            v138 = [v300[2871] filters];
            if (v138)
            {
              v139 = v138;
              v140 = v300[2871];
              type metadata accessor for HomeFilter();
              v141 = sub_252E37264();

              v142 = [v140 userTask];
              v143 = HomeStore.accessories(matching:supporting:)(v141, v142);
              v145 = v144;

              if (v145)
              {
                sub_252929F10(v143, 1);
                v130 = v300;
              }

              else
              {
                if (v143 >> 62)
                {
                  v247 = sub_252E378C4();
                }

                else
                {
                  v247 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                sub_252929F10(v143, 0);
                v130 = v300;
                if (!v247)
                {
                  if (qword_27F53F500 != -1)
                  {
                    swift_once();
                  }

                  v0 = v300;
                  v248 = v300[2871];
                  v265 = v248;
                  v249 = v300[2865];
                  v286 = v300[2864];
                  v297 = v300[2868];
                  v250 = v300[2849];
                  v251 = v300[2848];
                  v252 = v300[2847];
                  v276 = v300[2831];
                  v253 = sub_252E36AD4();
                  __swift_project_value_buffer(v253, qword_27F544DA8);
                  __dst[0] = 0;
                  __dst[1] = 0xE000000000000000;
                  sub_252E379F4();
                  v302 = __dst[0];
                  v304 = __dst[1];
                  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E82CE0);
                  v254 = [v248 description];
                  v255 = sub_252E36F34();
                  v257 = v256;

                  MEMORY[0x2530AD570](v255, v257);

                  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E82D00);
                  memcpy(__dst, v300 + 2144, 0x1F8uLL);
                  v258 = HomeAutomationIntent.description.getter();
                  MEMORY[0x2530AD570](v258);

                  sub_252CC4050(v302, v304, 0xD000000000000076, 0x8000000252E828C0, 0x2865747563657865, 0xE900000000000029, 278);

                  (*(v251 + 104))(v250, *MEMORY[0x277D5B8A8], v252);
                  sub_252E33B44();
                  sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

                  (*(v251 + 8))(v250, v252);
                  (*(v249 + 8))(v297, v286);
                  goto LABEL_8;
                }
              }
            }

            else
            {
            }
          }

          else
          {

            v130 = v300;
          }
        }
      }

      else
      {
        v215 = v300[2871];
        sub_252C515AC();
      }
    }

    v216 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v216 + 288), (v130 + 2799));

    v217 = v130[2802];
    v218 = v130[2803];
    __swift_project_boxed_opaque_existential_1(v130 + 2799, v217);
    v219 = (*(v218 + 176))(v217, v218);
    __swift_destroy_boxed_opaque_existential_1(v130 + 2799);
    if (v219)
    {
      v220 = v130[2846];
      v221 = v130[2845];
      v222 = v130[2844];
      v223 = v130[2843];
      sub_252E33464();
      (*(v222 + 16))(v221, v220, v223);
      v224 = sub_2529F90D4(0, 1, 1, MEMORY[0x277D84F90]);
      v226 = v224[2];
      v225 = v224[3];
      if (v226 >= v225 >> 1)
      {
        v224 = sub_2529F90D4(v225 > 1, v226 + 1, 1, v224);
      }

      v227 = v300[2845];
      v228 = v300[2844];
      v229 = v300[2843];
      (*(v228 + 8))(v300[2846], v229);
      v224[2] = v226 + 1;
      (*(v228 + 32))(v224 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v226, v227, v229);
    }

    else
    {
      v224 = MEMORY[0x277D84F90];
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v0 = v300;
    v230 = v300[2871];
    v295 = v300[2868];
    v231 = v300[2865];
    v232 = v300[2864];
    v233 = v300[2843];
    v234 = v300[2832];
    v235 = v300[2831];
    v236 = sub_252E36AD4();
    __swift_project_value_buffer(v236, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD00000000000001BLL;
    __dst[1] = 0x8000000252E82CC0;
    v237 = MEMORY[0x2530AD730](v224, v233);
    MEMORY[0x2530AD570](v237);

    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000076, 0x8000000252E828C0);

    v238 = sub_252E33144();

    v300[2819] = v238;
    v239 = swift_allocObject();
    *(v239 + 16) = sub_252B7D52C;
    *(v239 + 24) = v234;
    sub_252E33454();

    sub_252E33AC4();

    sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

    (*(v231 + 8))(v295, v232);
LABEL_132:

    goto LABEL_8;
  }

  if (v34 != 9)
  {
    if (v34 == 10)
    {
      v107 = *(v32[2832] + 32);
      if (v107)
      {
        sub_252938414((v32 + 128), (v32 + 1010), &qword_27F5404C8, &unk_252E3FD60);
        v108 = v107;
        v109 = sub_252C50874();

        if (v109)
        {
          if (qword_27F53F500 != -1)
          {
            swift_once();
          }

          v110 = v300[2868];
          v272 = v300[2871];
          v280 = v110;
          v111 = v300[2866];
          v112 = v300[2865];
          v113 = v300[2864];
          v291 = v300[2831];
          v114 = sub_252E36AD4();
          __swift_project_value_buffer(v114, qword_27F544DA8);
          sub_252CC3D90(0xD000000000000018, 0x8000000252E82B40, 0xD000000000000076, 0x8000000252E828C0);
          (*(v112 + 16))(v111, v110, v113);
          v115 = type metadata accessor for ControlHomeFollowUpFlow();
          v116 = *(v115 + 48);
          v117 = *(v115 + 52);
          v118 = swift_allocObject();
          *(v118 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_state) = 0;
          v119 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_confirmationState;
          v120 = *MEMORY[0x277D5BED0];
          v121 = sub_252E33DE4();
          (*(*(v121 - 8) + 104))(v118 + v119, v120, v121);
          *(v118 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_followUpSiriKitIntent) = 0;
          *(v118 + 16) = v272;
          memcpy((v118 + 24), v300 + 2144, 0x1F8uLL);
          v31(v118 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_input, v111, v113);
          v300[2828] = v118;
          sub_252B7DA48(&qword_27F5437C8, type metadata accessor for ControlHomeFollowUpFlow);
          sub_252E33AF4();

          (*(v112 + 8))(v280, v113);
          goto LABEL_68;
        }
      }

      else
      {
        memcpy(v32 + 1136, v32 + 128, 0x1F8uLL);
        sub_2529353AC((v300 + 1136), (v300 + 1388));
      }

LABEL_114:
      v186 = v300[2871];
      v187 = v300[2868];
      v188 = v300[2865];
      v189 = v300[2864];
      v190 = v300[2831];
      sub_252E33B24();
      sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

      v0 = v300;
      (*(v188 + 8))(v187, v189);
      goto LABEL_8;
    }

    if (v34 == 12)
    {
      v49 = v32;
      memcpy(v32 + 884, v32 + 128, 0x1F8uLL);
      sub_2529353AC((v49 + 884), (v49 + 947));
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v50 = v300[2871];
      v51 = v300[2868];
      v52 = v300[2865];
      v53 = v300[2864];
      v54 = v300[2831];
      v55 = sub_252E36AD4();
      __swift_project_value_buffer(v55, qword_27F544DA8);
      sub_252CC7784(0xD000000000000054, 0x8000000252E82AE0, 0, 0xD000000000000076, 0x8000000252E828C0);
      sub_252E33B24();
      sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

      (*(v52 + 8))(v51, v53);
      goto LABEL_68;
    }

LABEL_106:
    v175 = v32;
    memcpy(v32 + 695, v32 + 128, 0x1F8uLL);
    sub_2529353AC((v175 + 695), (v175 + 758));
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v176 = sub_252E36AD4();
    __swift_project_value_buffer(v176, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    v300[2816] = 0;
    v300[2817] = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E82AC0);
    *(v300 + 23032) = *(v30 + v33);
    sub_252E37AE4();
    sub_252CC3D90(v300[2816], v300[2817], 0xD000000000000076, 0x8000000252E828C0);

    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F34();

    v177 = sub_252E36804();
    v179 = v178;

    if (v179)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
      v180 = swift_allocObject();
      *(v180 + 16) = xmmword_252E3C290;
      *(v180 + 32) = 25705;
      v181 = v180 + 32;
      *(v180 + 72) = MEMORY[0x277D837D0];
      *(v180 + 40) = 0xE200000000000000;
      *(v180 + 48) = v177;
      *(v180 + 56) = v179;
      sub_252CC630C(v180);
      swift_setDeallocating();
      sub_25293847C(v181, &unk_27F541F10, &unk_252E42870);
      swift_deallocClassInstance();
    }

    v182 = [objc_opt_self() sharedAnalytics];
    if (v182)
    {
      v183 = v182;

      sub_252CC1408(v184);

      v185 = sub_252E36E24();

      [v183 logEventWithType:6504 context:v185];
    }

    goto LABEL_114;
  }

  v268 = v30;
  v146 = v32;
  v147 = v32[2871];
  v148 = v32[2842];
  v149 = v32[2841];
  v150 = v32[2839];
  v151 = v32[2838];
  v273 = v32[2837];
  v281 = v32[2840];
  memcpy(v32 + 1451, v32 + 128, 0x1F8uLL);
  sub_2529353AC(v146 + 11608, (v146 + 757));
  v292 = sub_252C4BEB8();
  v152 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v152 + 16), (v300 + 2794));

  v153 = v300[2798];
  __swift_project_boxed_opaque_existential_1(v146 + 2794, *(v146 + 2797));
  sub_252E33EE4();
  sub_252E33D54();
  (*(v151 + 8))(v150, v273);
  v274 = sub_252E33864();
  (*(v149 + 8))(v148, v281);
  __swift_destroy_boxed_opaque_existential_1(v300 + 2794);
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();

  v154 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  [v154 canEvaluatePolicy:2 error:0];

  v155 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v155 + 16), (v300 + 2789));

  v156 = v300[2793];
  __swift_project_boxed_opaque_existential_1(v146 + 2789, *(v146 + 2792));
  v282 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v300 + 2789);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v157 = sub_252E36AD4();
  v300[2876] = __swift_project_value_buffer(v157, qword_27F544DA8);
  sub_252E379F4();

  __dst[0] = 0xD000000000000013;
  __dst[1] = 0x8000000252E82B60;
  v158 = 0x65736C6166;
  if (v292)
  {
    v159 = 1702195828;
  }

  else
  {
    v159 = 0x65736C6166;
  }

  if (v292)
  {
    v160 = 0xE400000000000000;
  }

  else
  {
    v160 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v159, v160);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000076, 0x8000000252E828C0);

  sub_252E379F4();

  __dst[0] = 0xD000000000000019;
  __dst[1] = 0x8000000252E82B80;
  if (v274)
  {
    v161 = 1702195828;
  }

  else
  {
    v161 = 0x65736C6166;
  }

  if (v274)
  {
    v162 = 0xE400000000000000;
  }

  else
  {
    v162 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v161, v162);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000076, 0x8000000252E828C0);

  sub_252E379F4();

  __dst[0] = 0xD000000000000013;
  __dst[1] = 0x8000000252E82BA0;
  if (v282)
  {
    v158 = 1702195828;
    v163 = 0xE400000000000000;
  }

  else
  {
    v163 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v158, v163);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000076, 0x8000000252E828C0);

  sub_252E379F4();

  __dst[0] = 0xD000000000000014;
  __dst[1] = 0x8000000252E82BC0;
  MEMORY[0x2530AD570](v158, v163);

  sub_252CC3D90(0xD000000000000014, 0x8000000252E82BC0, 0xD000000000000076, 0x8000000252E828C0);

  if (v292)
  {
    if (v282)
    {
      v164 = v300[2871];
      v165 = v300[2865];
      v283 = v300[2864];
      v293 = v300[2868];
      v166 = v300[2831];
      sub_252CC3D90(0xD000000000000028, 0x8000000252E82C20, 0xD000000000000076, 0x8000000252E828C0);
      type metadata accessor for ControlHomeHandoffFlowStrategy();
      v167 = swift_allocObject();
      *(v167 + 16) = v164;
      v168 = v164;
      v169 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v169 + 16), (v300 + 2784));

      v170 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v170 + 96), (v300 + 2779));

      v300[2818] = v167;
      v171 = sub_252E333F4();
      v172 = *(v171 + 48);
      v173 = *(v171 + 52);
      swift_allocObject();
      sub_252B7DA48(&qword_27F5437E0, type metadata accessor for ControlHomeHandoffFlowStrategy);
      v174 = sub_252E333E4();
      *(v268 + v33) = 10;
      v0 = v300;
      v300[2824] = v174;
      sub_252E33AF4();
      sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

      (*(v165 + 8))(v293, v283);
      goto LABEL_132;
    }

    v146 = v300;
    if ((v274 & 1) == 0)
    {
      sub_252B7BC6C(v300[2871]);
      if ((v204 & 1) == 0)
      {
        v240 = v300[2871];
        v241 = v300[2865];
        v285 = v300[2864];
        v296 = v300[2868];
        v242 = v300[2832];
        v243 = v300[2831];
        sub_252CC3D90(0xD000000000000014, 0x8000000252E82C00, 0xD000000000000076, 0x8000000252E828C0);
        v244 = *(v242 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_guardFlowSupplier + 8);
        v245 = (*(v242 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_guardFlowSupplier))(v242);
        *(v268 + v33) = 3;
        v300[2825] = v245;
        v246 = swift_allocObject();
        *(v246 + 16) = sub_252B7D460;
        *(v246 + 24) = v242;
        sub_252E33454();

        sub_252E33AC4();

        sub_25293847C((v300 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v241 + 8))(v296, v285);

        v0 = v300;
        goto LABEL_8;
      }
    }
  }

  v205 = *(v146 + 2871);
  v206 = *(v146 + 2832);
  sub_252B795A0(type metadata accessor for ControlHomeFlow, &qword_27F543830, type metadata accessor for ControlHomeFlow);
  v207 = v205;
  v208 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v209 = *(v208 + 22);

  v210 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v210 + 136), (v146 + 1387));

  v211 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v212 = *(v211 + 23);

  type metadata accessor for EagerMessagesGenerator();
  v213 = swift_allocObject();
  *(v146 + 2877) = v213;
  v213[8] = v207;
  v213[2] = v209;
  sub_252927BEC(v146 + 1387, (v213 + 3));
  v213[9] = v212;
  v214 = swift_task_alloc();
  *(v146 + 2878) = v214;
  *v214 = v146;
  v214[1] = sub_252B78DA0;

  return sub_252C7CF5C();
}

uint64_t sub_252B78AB0(uint64_t a1)
{
  v2 = *(*v1 + 22992);
  v4 = *v1;
  *(*v1 + 23000) = a1;

  return MEMORY[0x2822009F8](sub_252B78BB0, 0, 0);
}

uint64_t sub_252B78BB0()
{
  v1 = v0[2875];
  v2 = v0[2873];
  v3 = v0[2871];
  v28 = v0[2868];
  v4 = v0[2865];
  v5 = v0[2864];
  v6 = v0[2860];
  v7 = v0[2859];
  v8 = v0[2858];
  v9 = v0[2831];
  sub_252E33A34();

  (*(v7 + 8))(v6, v8);
  sub_252E33B14();

  sub_25293847C((v0 + 128), &qword_27F5404C8, &unk_252E3FD60);

  (*(v4 + 8))(v28, v5);
  v10 = v0[2868];
  v11 = v0[2867];
  v12 = v0[2866];
  v13 = v0[2863];
  v14 = v0[2862];
  v15 = v0[2860];
  v16 = v0[2857];
  v17 = v0[2856];
  v18 = v0[2855];
  v19 = v0[2852];
  v22 = v0[2849];
  v23 = v0[2846];
  v24 = v0[2845];
  v25 = v0[2842];
  v26 = v0[2839];
  v27 = v0[2836];
  v29 = v0[2833];

  v20 = v0[1];

  return v20();
}

uint64_t sub_252B78DA0()
{
  v1 = *(*v0 + 23024);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_252B78E9C, 0, 0);
}

uint64_t sub_252B78E9C()
{
  v1 = *(v0 + 23008);
  v2 = *(v0 + 22688);
  v3 = *(v0 + 22664);
  sub_252CC3D90(0xD000000000000011, 0x8000000252E82BE0, 0xD000000000000076, 0x8000000252E828C0);
  type metadata accessor for ControlHomeRCHStrategyAsync();
  *(v0 + 22616) = swift_allocObject();
  sub_252B79980((v0 + 17152), v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437D0, &qword_252E4E458);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_252E335D4();
  sub_252B7DA48(&qword_27F5437D8, type metadata accessor for ControlHomeRCHStrategyAsync);
  sub_252E33A44();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 22976);
  v8 = *(v0 + 22968);
  v35 = *(v0 + 22944);
  v9 = *(v0 + 22920);
  v31 = *(v0 + 23016);
  v33 = *(v0 + 22912);
  v10 = *(v0 + 22688);
  v11 = *(v0 + 22680);
  v12 = *(v0 + 22672);
  v13 = *(v0 + 22656);
  v14 = *(v0 + 22648);
  sub_252E33A34();
  (*(v11 + 8))(v10, v12);
  *(v13 + v7) = 10;
  sub_252E33AD4();

  sub_25293847C(v0 + 1024, &qword_27F5404C8, &unk_252E3FD60);

  (*(v9 + 8))(v35, v33);
  v15 = *(v0 + 22944);
  v16 = *(v0 + 22936);
  v17 = *(v0 + 22928);
  v18 = *(v0 + 22904);
  v19 = *(v0 + 22896);
  v20 = *(v0 + 22880);
  v21 = *(v0 + 22856);
  v22 = *(v0 + 22848);
  v23 = *(v0 + 22840);
  v24 = *(v0 + 22816);
  v27 = *(v0 + 22792);
  v28 = *(v0 + 22768);
  v29 = *(v0 + 22760);
  v30 = *(v0 + 22736);
  v32 = *(v0 + 22712);
  v34 = *(v0 + 22688);
  v36 = *(v0 + 22664);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_252B791F0()
{
  type metadata accessor for ShowHomeIntent();
  type metadata accessor for ShowHomeIntentResponse();
  sub_252E335C4();
  type metadata accessor for ShowHomeUnsupportedValueFlowStrategy();
  v0 = swift_allocObject();
  v1 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v2 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v0[5] = v2;
  v0[6] = &off_2864BA730;
  v0[2] = v1;
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v4 = *(v3 + 22);

  v0[7] = v4;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 136), (v0 + 8));

  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v7 = *(v6 + 23);

  v0[13] = v7;
  sub_252B7DA48(&qword_27F543870, type metadata accessor for ShowHomeUnsupportedValueFlowStrategy);
  sub_252E33544();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B8, &qword_252E4E448);
  sub_252E33594();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  sub_252E33504();
  sub_252E33574();
  type metadata accessor for ShowHomeHandleIntentStrategy();
  v8 = swift_allocObject();
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v10 = *(v9 + 22);

  v8[2] = v10;
  v11 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v8[6] = v2;
  v8[7] = &off_2864BA730;
  v8[3] = v11;
  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v12 + 136), (v8 + 8));

  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v14 = *(v13 + 23);

  v8[13] = v14;
  sub_252B7DA48(&qword_27F543878, type metadata accessor for ShowHomeHandleIntentStrategy);
  sub_252E334F4();

  return sub_252E33564();
}

uint64_t sub_252B795A0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v6 = *(sub_252B680FC() + 136);

  if (v6)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D60);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E82FA0);
    sub_252E336A4();
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000075, 0x8000000252E6F840, 0xD000000000000016, 0x8000000252E82FE0, 25);

    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E83000);
    a1(0);
    sub_252B7DA48(a2, a3);
    sub_252E35FA4();
    sub_252E35F24();

    sub_252E37AE4();

    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000075, 0x8000000252E6F840, 0xD000000000000016, 0x8000000252E82FE0, 26);

    sub_2529515FC(6, 9, 0xD000000000000014, 0x8000000252E83020);
  }

  v8 = sub_252B680FC();
  a1(0);
  sub_252B7DA48(a2, a3);
  sub_252E35FA4();
  v9 = sub_252E35F24();

  v10 = *(v8 + 136);
  *(v8 + 136) = v9;
}

uint64_t sub_252B79980@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  type metadata accessor for ControlHomeIntent();
  type metadata accessor for ControlHomeIntentResponse();
  sub_252E335C4();
  type metadata accessor for ControlHomeUnsupportedValueFlowStrategy();
  v3 = swift_allocObject();
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v5 = *(v4 + 22);

  v3[2] = v5;
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v6 + 136), (v3 + 3));

  v7 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v8 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v3[11] = v8;
  v3[12] = &off_2864BA730;
  v3[8] = v7;
  *&v61[0] = v3;
  sub_252B7DA48(&qword_27F543880, type metadata accessor for ControlHomeUnsupportedValueFlowStrategy);
  sub_252E33544();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A8, &qword_252E4E438);
  sub_252E33594();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  sub_252E33504();
  sub_252E33574();
  if (v60[384] == 22)
  {
    v10 = 0;
  }

  else
  {
    LOBYTE(v61[0]) = v60[384];
    v10 = sub_252AB54DC();
  }

  type metadata accessor for ControlHomeNeedsValueStrategy();
  v11 = swift_allocObject();

  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v13 = *(v12 + 22);

  v11[3] = v13;
  v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v14 + 136), (v11 + 4));

  v15 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v11[12] = v8;
  v11[13] = &off_2864BA730;
  v11[9] = v15;
  v11[2] = v10;
  *&v61[0] = v11;
  sub_252B7DA48(&qword_27F542AF0, type metadata accessor for ControlHomeNeedsValueStrategy);
  sub_252E334E4();

  sub_252E33554();
  type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  v16 = swift_allocObject();

  v17 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v18 = *(v17 + 22);

  v16[2] = v18;
  v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v19 + 136), (v16 + 3));

  v20 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v16[11] = v8;
  v16[12] = &off_2864BA730;
  v16[13] = v10;
  v16[8] = v20;
  sub_252B7DA48(&qword_27F540778, type metadata accessor for ControlHomeNeedsConfirmationStrategy);
  sub_252E33514();

  v58 = a2;
  sub_252E335A4();
  type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  swift_allocObject();

  v59 = v10;
  *&v61[0] = sub_252DF2820(v21);
  sub_252B7DA48(&qword_27F543888, type metadata accessor for ControlHomeNeedsDisambiguationStrategy);
  sub_252E33524();

  sub_252E335B4();

  v22 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v53 = *(v22 + 22);

  v23 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v23 + 136), v61);

  v24 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v64 = v8;
  v65 = &off_2864BA730;
  v63[0] = v24;
  v25 = type metadata accessor for ControlHomeConfirmIntentStrategy();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v63, v8);
  v57 = v9;
  v30 = *(v8 - 8);
  v55 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v56 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = (&v50 - v56);
  v54 = *(v30 + 16);
  v54(&v50 - v56);
  v33 = *v32;
  *(v28 + 11) = v8;
  *(v28 + 12) = &off_2864BA730;
  *(v28 + 8) = v33;
  v34 = OBJC_IVAR____TtC22HomeAutomationInternal32ControlHomeConfirmIntentStrategy_store;
  v35 = sub_252E35E44();
  v36 = *(v35 - 8);
  v51 = *(v36 + 56);
  v52 = v36 + 56;
  v51(&v28[v34], 1, 1, v35);
  *(v28 + 13) = v59;
  *(v28 + 2) = v53;
  sub_252927BEC(v61, (v28 + 24));
  __swift_destroy_boxed_opaque_existential_1(v63);
  v62 = v28;

  v37 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v38 = *(v37 + 22);

  v39 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v39 + 136), v61);

  v40 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v64 = v8;
  v65 = &off_2864BA730;
  v63[0] = v40;
  v41 = *(v25 + 48);
  v42 = *(v25 + 52);
  v43 = swift_allocObject();
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v63, v8);
  MEMORY[0x28223BE20](v44);
  v45 = (&v50 - v56);
  v54(&v50 - v56);
  v46 = *v45;
  *(v43 + 11) = v8;
  *(v43 + 12) = &off_2864BA730;
  *(v43 + 8) = v46;
  v51(&v43[OBJC_IVAR____TtC22HomeAutomationInternal32ControlHomeConfirmIntentStrategy_store], 1, 1, v35);
  *(v43 + 13) = v59;
  *(v43 + 2) = v38;
  sub_252927BEC(v61, (v43 + 24));
  __swift_destroy_boxed_opaque_existential_1(v63);
  sub_252B7DA48(&qword_27F543890, type metadata accessor for ControlHomeConfirmIntentStrategy);
  sub_252E33534();

  sub_252E33584();
  type metadata accessor for ControlHomeHandleIntentStrategy();
  v47 = swift_allocObject();
  v47[65] = 0x486C6F72746E6F43;
  v47[66] = 0xEB00000000656D6FLL;
  v48 = v60;
  memcpy(v47 + 2, v60, 0x1F8uLL);
  v47[67] = sub_252A4D720;
  v47[68] = 0;
  v63[0] = v47;
  sub_2529353AC(v48, v61);
  sub_252B7DA48(&qword_27F543898, type metadata accessor for ControlHomeHandleIntentStrategy);
  sub_252E334F4();

  sub_252E33564();
}

uint64_t sub_252B7A2EC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_252E33EF4();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E36AD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 32);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 filters];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for HomeFilter();
      v15 = sub_252E37264();

      v16 = sub_252DD5A58(v15);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v18 = sub_252C758E0(v16);

    v17 = sub_252DD6238(v18);

    if (v17)
    {
      v19 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

      v17 = [v19 homeLocationStatus];

      v20 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
  }

  v20 = 1;
LABEL_9:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v6, qword_27F544DA8);
  (*(v7 + 16))(v10, v21, v6);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_252E379F4();

  v30 = 0xD000000000000016;
  v31 = 0x8000000252E83240;
  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = v17;
  }

  v28 = v22;
  v29 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v23 = sub_252E36F94();
  MEMORY[0x2530AD570](v23);

  sub_252CC3D90(v30, v31, 0xD000000000000076, 0x8000000252E828C0);

  (*(v7 + 8))(v10, v6);
  if ((v20 & 1) != 0 || (v17 | 2) != 3)
  {
    return sub_252E33D44();
  }

  sub_252E33EE4();
  sub_252E33D54();
  return (*(v26 + 8))(v5, v2);
}

uint64_t sub_252B7A674(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state;
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 12;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544DA8);
    sub_252E379F4();
    v4 = "pdating the flowState to ";
    v5 = 0xD000000000000035;
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_shouldRunIntentSelection))
    {
      v6 = 1;
    }

    else
    {
      v6 = 6;
    }

    v2 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state;
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = v6;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544DA8);
    sub_252E379F4();
    v4 = "l. Flow state set to: ";
    v5 = 0xD000000000000039;
  }

  MEMORY[0x2530AD570](v5, v4 | 0x8000000000000000);
  v9 = *(v1 + v2);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E828C0);
}

uint64_t sub_252B7A840(char a1)
{
  v2 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state;
  if (a1)
  {
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 12;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544DA8);
    sub_252E379F4();
    v4 = "s. Flow state updated to: ";
    v5 = 0xD000000000000036;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 7;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544DA8);
    sub_252E379F4();
    v4 = " result. Flow state set to: ";
    v5 = 0xD00000000000003ALL;
  }

  MEMORY[0x2530AD570](v5, v4 | 0x8000000000000000);
  v8 = *(v1 + v2);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E828C0);
}

uint64_t sub_252B7A9F0(char a1)
{
  v2 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state;
  if (a1)
  {
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 12;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544DA8);
    sub_252E379F4();
    v4 = "he flowState to ";
    v5 = 0xD00000000000003CLL;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 4;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544DA8);
    sub_252E379F4();
    v4 = "FlowTask already set";
    v5 = 0xD000000000000040;
  }

  MEMORY[0x2530AD570](v5, v4 | 0x8000000000000000);
  v8 = *(v1 + v2);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E828C0);
}

uint64_t sub_252B7ABA0()
{
  v0 = sub_252E33D64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541830, &qword_252E40AC8);
  v5 = *(sub_252E334A4() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_252E3C290;
  sub_252B7A2EC(v4);
  sub_252E33494();
  (*(v1 + 8))(v4, v0);
  v8 = sub_252E33144();

  return v8;
}

uint64_t sub_252B7AD18(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  GEOLocationCoordinate2DMake(__srca);
  memcpy(v15, (v2 + 40), sizeof(v15));
  memcpy((v2 + 40), __srca, 0x1F8uLL);
  sub_2529353AC(__dst, v12);
  sub_25293847C(v15, &qword_27F5404C8, &unk_252E3FD60);
  memcpy(v12, __dst, sizeof(v12));
  v4 = sub_252AEFEB0();
  v5 = *(v2 + 32);
  *(v2 + 32) = v4;

  v6 = sub_252B680FC();
  swift_beginAccess();
  v7 = *(v6 + 16);
  sub_2529353AC(__dst, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2529F7FB0(0, *(v7 + 2) + 1, 1, v7);
    *(v6 + 16) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_2529F7FB0((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  memcpy(&v7[504 * v10 + 32], __dst, 0x1F8uLL);
  *(v6 + 16) = v7;
  swift_endAccess();

  *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 6;
  return result;
}

uint64_t ControlHomeFlow.deinit()
{
  v1 = *(v0 + 24);

  memcpy(__dst, (v0 + 40), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input, &qword_27F543798, &unk_252E4E410);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_outputPublisher));
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_catProvider);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_outputGenerator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_patternProvider));
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_guardFlowSupplier + 8);

  return v0;
}

uint64_t ControlHomeFlow.__deallocating_deinit()
{
  ControlHomeFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*sub_252B7B028(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_252E35F94();
  return sub_252A6999C;
}

uint64_t sub_252B7B0E0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252B751B8(a1);
}

uint64_t sub_252B7B17C()
{
  type metadata accessor for ControlHomeFlow();

  return sub_252E33644();
}

unint64_t sub_252B7B1B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_252B7B280(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 504 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 504 * a3;
  v13 = (v7 + 32 + 504 * a2);
  if (result != v13 || result >= v13 + 504 * v12)
  {
    result = memmove(result, v13, 504 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_252B7B358(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for HomeFilter();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_252E378C4();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_252E378C4();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_252B7B474(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_252B7B518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252B7B588(const void *a1)
{
  v42 = sub_252E36AD4();
  v2 = *(v42 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v42);
  v41 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36AB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v46, a1, 0x1F8uLL);
  if (qword_27F53F5D0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v10 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3C290;
  memcpy((v11 + 32), v46, 0x1F8uLL);
  v44[0] = v11;
  sub_2529353AC(v46, v45);

  sub_25297AA34(v12);
  v13 = v44[0];
  v14 = *(v44[0] + 16);
  if (v14)
  {
    v30 = v10;
    v31 = v9;
    v32 = v6;
    v33 = v5;
    v15 = 0;
    v39 = "reset the stack.";
    v40 = "ShouldHandleControlHomeIntent";
    v37 = (v2 + 2);
    v38 = 0x8000000252E83220;
    v34 = v14 - 1;
    v5 = 32;
    v35 = 0xD00000000000002CLL;
    v36 = (v2 + 1);
    while (1)
    {
      memcpy(v45, (v13 + v5), sizeof(v45));
      memcpy(v44, (v13 + v5), sizeof(v44));
      sub_2529353AC(v45, v43);
      v2 = sub_252AEFEB0();
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v16 = v42;
      v6 = __swift_project_value_buffer(v42, qword_27F544D60);
      (*v37)(v41, v6, v16);
      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](v35, v40 | 0x8000000000000000);
      v43[0] = [v2 userTask];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
      v17 = sub_252E36F94();
      MEMORY[0x2530AD570](v17);

      MEMORY[0x2530AD570](0x737265746C69460ALL, 0xEA0000000000203ALL);
      v18 = [v2 filters];
      if (v18)
      {
        v19 = v18;
        type metadata accessor for HomeFilter();
        v20 = sub_252E37264();
      }

      else
      {
        v20 = 0;
      }

      v43[0] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
      v21 = sub_252E36F94();
      MEMORY[0x2530AD570](v21);

      MEMORY[0x2530AD570](0x203A656D69540ALL, 0xE700000000000000);
      v43[0] = [v2 time];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542778, &unk_252E4E770);
      v22 = sub_252E36F94();
      MEMORY[0x2530AD570](v22);

      v23 = v39;
      v24 = v41;
      sub_252CC3D90(v44[0], v44[1], 0xD000000000000076, v39 | 0x8000000000000000);

      (*v36)(v24, v42);
      v25 = sub_252C4F88C();
      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      sub_252E379F4();

      v44[0] = 0xD000000000000014;
      v44[1] = v38;
      if (v25)
      {
        v26 = 1702195828;
      }

      else
      {
        v26 = 0x65736C6166;
      }

      if (v25)
      {
        v27 = 0xE400000000000000;
      }

      else
      {
        v27 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v26, v27);

      sub_252CC3D90(v44[0], v44[1], 0xD000000000000076, v23 | 0x8000000000000000);

      sub_252935408(v45);

      if (v25)
      {

        sub_252E375C4();
        v9 = v31;
        sub_252E36A74();
        v28 = 1;
        v6 = v32;
        v5 = v33;
        goto LABEL_23;
      }

      if (v34 == v15)
      {
        break;
      }

      ++v15;
      v5 += 504;
      v9 = 0xE000000000000000;
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    v6 = v32;
    v5 = v33;
    v9 = v31;
  }

  else
  {
  }

  sub_252E375C4();
  sub_252E36A74();
  v28 = 0;
LABEL_23:
  (*(v6 + 8))(v9, v5);
  return v28;
}

void sub_252B7BC6C(unint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 16), &v243);

  __swift_project_boxed_opaque_existential_1(&v243, v245);
  v3 = sub_252E338E4();
  __swift_destroy_boxed_opaque_existential_1(&v243);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v4 = 0xD000000000000076;
  v5 = 0x65736C6166;
  v6 = 1702195828;
  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544DA8);
  v243 = 0;
  v244 = 0xE000000000000000;
  sub_252E379F4();

  v243 = 0xD00000000000002ALL;
  v244 = 0x8000000252E83260;
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v8, v9);

  sub_252CC3D90(v243, v244, 0xD000000000000076, 0x8000000252E828C0);

  if ((v3 & 1) == 0)
  {
    return;
  }

  if ((sub_252C4D664(5) & 1) == 0)
  {
    v4 = &off_279711000;
    v14 = [a1 userTask];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 taskType];

      if (v16 == 1)
      {
        type metadata accessor for HomeStore();
        v17 = static HomeStore.shared.getter();
        v18 = HomeStore.accessories(for:)(a1);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          goto LABEL_35;
        }

        v21 = v18;
        v22 = 1;
        goto LABEL_248;
      }
    }

LABEL_249:
    v27 = 0;
LABEL_250:
    v4 = 0xD000000000000076;
    goto LABEL_251;
  }

  type metadata accessor for HomeStore();
  v10 = static HomeStore.shared.getter();
  v11 = [a1 filters];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for HomeFilter();
    v13 = sub_252E37264();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v18 = HomeStore.scenes(matching:)(v13);
  v24 = v23;

  if (v24)
  {
    v25 = v18;
    v26 = 1;
    goto LABEL_21;
  }

  v4 = (v18 & 0xFFFFFFFFFFFFFF8);
  v6 = 0x65736C6166;
  if (v18 >> 62)
  {
    v28 = sub_252E378C4();
    if (v28)
    {
      goto LABEL_25;
    }

LABEL_243:
    sub_252929F10(v18, 0);
    v27 = 0;
    goto LABEL_244;
  }

  v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_243;
  }

LABEL_25:
  a1 = 0;
  v5 = v18 & 0xC000000000000001;
  while (1)
  {
    if (v28 == a1)
    {
      goto LABEL_243;
    }

    if (v5)
    {
      MEMORY[0x2530ADF00](a1, v18);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      goto LABEL_30;
    }

    if (a1 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_171;
    }

    v29 = *(v18 + 8 * a1 + 32);

    if (__OFADD__(a1, 1))
    {
      break;
    }

LABEL_30:
    v30 = sub_252B2FD74();

    ++a1;
    if (v30)
    {
      sub_252929F10(v18, 0);
      v27 = 1;
LABEL_244:
      v5 = 0x65736C6166;
      v6 = 1702195828;
      goto LABEL_250;
    }
  }

  __break(1u);
LABEL_35:
  v31 = v18 & 0xFFFFFFFFFFFFFF8;
  v242 = v18;
  if (!(v18 >> 62))
  {
    v32 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_37;
    }

LABEL_246:
    v21 = v242;
LABEL_247:
    v22 = 0;
LABEL_248:
    sub_252929F10(v21, v22);
    goto LABEL_249;
  }

  v32 = sub_252E378C4();
  v31 = v18 & 0xFFFFFFFFFFFFFF8;
  if (!v32)
  {
    goto LABEL_246;
  }

LABEL_37:
  v240 = v31;
  v241 = v32;
  v33 = [a1 v4[214]];
  if (!v33)
  {
    goto LABEL_46;
  }

  v34 = v33;
  v35 = [v33 attribute];

  if (v35 != 10)
  {
    goto LABEL_46;
  }

  v36 = [a1 v4[214]];
  v37 = &off_279711000;
  if (!v36 || (v38 = v36, v39 = [v36 value], v38, !v39) || (objc_msgSend(v39, sel_doubleValue), v41 = v40, v39, v41 != 1.0))
  {
    v42 = [a1 v4[214]];
    if (!v42 || (v43 = v42, v44 = [v42 value], v43, !v44) || (v45 = objc_msgSend(v44, sel_integerValue), v44, v45 != 1))
    {
LABEL_46:
      v48 = [a1 v4[214]];
      if (!v48)
      {
        goto LABEL_246;
      }

      v49 = v48;
      v50 = [v48 attribute];

      if (v50 != 8)
      {
        goto LABEL_246;
      }

      v51 = [a1 v4[214]];
      v37 = v242;
      if (!v51)
      {
        goto LABEL_77;
      }

      v52 = v51;
      v53 = [v51 value];

      v4 = 0xD000000000000076;
      if (!v53 || (v54 = [v53 BOOLValue], v53, (v54 & 1) != 0))
      {
LABEL_51:
        v25 = v37;
        goto LABEL_52;
      }

      v75 = 0;
      v76 = v242 & 0xC000000000000001;
      v237 = (v242 + 32);
      v238 = v242 & 0xC000000000000001;
      while (1)
      {
        if (v76)
        {
          v77 = MEMORY[0x2530ADF00](v75, v37);
          v56 = __OFADD__(v75++, 1);
          if (v56)
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (v75 >= *(v240 + 16))
          {
            goto LABEL_262;
          }

          v77 = *&v237[8 * v75];

          v56 = __OFADD__(v75++, 1);
          if (v56)
          {
LABEL_104:
            __break(1u);
LABEL_105:

            goto LABEL_106;
          }
        }

        v78 = (*v77 + 256);
        v79 = *v78;
        if ((*v78)() == 7)
        {

          goto LABEL_169;
        }

        v80 = (*(*v77 + 272))();
        v81 = v80;
        if (*(v80 + 16))
        {
          v82 = *(v80 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](7);
          v83 = sub_252E37F14();
          v84 = -1 << *(v81 + 32);
          v85 = v83 & ~v84;
          if ((*(v81 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85))
          {
            v86 = ~v84;
            while (*(*(v81 + 48) + 8 * v85) != 7)
            {
              v85 = (v85 + 1) & v86;
              if (((*(v81 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
              {
                goto LABEL_91;
              }
            }

LABEL_169:
            v4 = 0xD000000000000076;
            goto LABEL_172;
          }
        }

LABEL_91:

        v88 = (v79)(v87);
        if (v88 == 38)
        {
          break;
        }

        v89 = MEMORY[0x277D84FA0];
        v4 = 0xD000000000000076;
        if (v88 == 41)
        {
          v90 = &unk_2864ADA88;
LABEL_95:
          v89 = sub_2529FC004(v90);
        }

        if (*(v89 + 16))
        {
          v91 = *(v89 + 40);
          sub_252E37EC4();
          MEMORY[0x2530AE390](7);
          v92 = sub_252E37F14();
          v93 = -1 << *(v89 + 32);
          v94 = v92 & ~v93;
          if ((*(v89 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94))
          {
            v95 = ~v93;
            while (*(*(v89 + 48) + 8 * v94) != 7)
            {
              v94 = (v94 + 1) & v95;
              if (((*(v89 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
              {
                goto LABEL_81;
              }
            }

LABEL_171:

LABEL_172:
            v165 = 0;
            v166 = v242;
            while (2)
            {
              if (v238)
              {
                v169 = MEMORY[0x2530ADF00](v165, v166);
              }

              else
              {
                if (v165 >= *(v240 + 16))
                {
                  goto LABEL_263;
                }

                v169 = *&v237[8 * v165];
              }

              v239 = v165 + 1;
              if (__OFADD__(v165, 1))
              {
                goto LABEL_260;
              }

              v170 = (*v169 + 256);
              v171 = *v170;
              v172 = (*v170)();
              if (v172 == 28)
              {
                goto LABEL_198;
              }

              v173 = (*(*v169 + 272))();
              if (*(v173 + 16))
              {
                v174 = *(v173 + 40);
                v175 = v171;
                v176 = v173;
                sub_252E37EC4();
                MEMORY[0x2530AE390](28);
                v177 = sub_252E37F14();
                v178 = v176;
                v171 = v175;
                v179 = -1 << *(v178 + 32);
                v180 = v177 & ~v179;
                if ((*(v178 + 56 + ((v180 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v180))
                {
                  v181 = ~v179;
                  while (*(*(v178 + 48) + 8 * v180) != 28)
                  {
                    v180 = (v180 + 1) & v181;
                    if (((*(v178 + 56 + ((v180 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v180) & 1) == 0)
                    {
                      goto LABEL_186;
                    }
                  }

LABEL_197:

LABEL_198:
                  v196 = (v171)(v172);
                  if (v196 == 27)
                  {
                    goto LABEL_217;
                  }

                  v197 = (*(*v169 + 272))();
                  if (*(v197 + 16))
                  {
                    v198 = *(v197 + 40);
                    v199 = v171;
                    v200 = v197;
                    sub_252E37EC4();
                    MEMORY[0x2530AE390](27);
                    v201 = sub_252E37F14();
                    v202 = v200;
                    v171 = v199;
                    v203 = -1 << *(v202 + 32);
                    v204 = v201 & ~v203;
                    if ((*(v202 + 56 + ((v204 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v204))
                    {
                      v205 = ~v203;
                      while (*(*(v202 + 48) + 8 * v204) != 27)
                      {
                        v204 = (v204 + 1) & v205;
                        if (((*(v202 + 56 + ((v204 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v204) & 1) == 0)
                        {
                          goto LABEL_204;
                        }
                      }

LABEL_216:

                      goto LABEL_217;
                    }
                  }

LABEL_204:

                  v207 = (v171)(v206);
                  if (v207 == 38)
                  {
                    v210 = &unk_2864ADB00;
LABEL_208:
                    v209 = sub_2529FC004(v210);
                  }

                  else
                  {
                    v208 = v207;
                    v209 = MEMORY[0x277D84FA0];
                    if (v208 == 41)
                    {
                      v210 = &unk_2864ADB28;
                      goto LABEL_208;
                    }
                  }

                  if (*(v209 + 16))
                  {
                    v211 = *(v209 + 40);
                    v212 = v171;
                    v213 = v209;
                    sub_252E37EC4();
                    MEMORY[0x2530AE390](27);
                    v214 = sub_252E37F14();
                    v215 = v213;
                    v171 = v212;
                    v216 = -1 << *(v215 + 32);
                    v217 = v214 & ~v216;
                    if ((*(v215 + 56 + ((v217 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v217))
                    {
                      v218 = ~v216;
                      while (*(*(v215 + 48) + 8 * v217) != 27)
                      {
                        v217 = (v217 + 1) & v218;
                        if (((*(v215 + 56 + ((v217 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v217) & 1) == 0)
                        {
                          goto LABEL_214;
                        }
                      }

                      goto LABEL_216;
                    }
                  }

LABEL_214:

                  v196 = sub_252D4FE78(27);
                  if ((v196 & 1) == 0)
                  {
LABEL_215:

                    v168 = v241;
LABEL_174:
                    v165 = v239;
                    v166 = v242;
                    if (v239 == v168)
                    {
                      sub_252929F10(v242, 0);
                      v27 = 0;
                      goto LABEL_251;
                    }

                    continue;
                  }

LABEL_217:
                  if ((v171)(v196) == 4)
                  {
LABEL_235:
                    sub_252929F10(v242, 0);

                    goto LABEL_22;
                  }

                  v219 = (*(*v169 + 272))();
                  v220 = v219;
                  if (*(v219 + 16))
                  {
                    v221 = *(v219 + 40);
                    sub_252E37EC4();
                    MEMORY[0x2530AE390](4);
                    v222 = sub_252E37F14();
                    v223 = -1 << *(v220 + 32);
                    v224 = v222 & ~v223;
                    if ((*(v220 + 56 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224))
                    {
                      v225 = ~v223;
                      do
                      {
                        if (*(*(v220 + 48) + 8 * v224) == 4)
                        {
                          goto LABEL_234;
                        }

                        v224 = (v224 + 1) & v225;
                      }

                      while (((*(v220 + 56 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) != 0);
                    }
                  }

                  v227 = (v171)(v226);
                  if (v227 == 38)
                  {
                    v229 = &unk_2864ADB50;
LABEL_227:
                    v228 = sub_2529FC004(v229);
                  }

                  else
                  {
                    v228 = MEMORY[0x277D84FA0];
                    if (v227 == 41)
                    {
                      v229 = &unk_2864ADB78;
                      goto LABEL_227;
                    }
                  }

                  if (*(v228 + 16))
                  {
                    v230 = *(v228 + 40);
                    sub_252E37EC4();
                    MEMORY[0x2530AE390](4);
                    v231 = sub_252E37F14();
                    v232 = -1 << *(v228 + 32);
                    v233 = v231 & ~v232;
                    if ((*(v228 + 56 + ((v233 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v233))
                    {
                      v234 = ~v232;
                      do
                      {
                        if (*(*(v228 + 48) + 8 * v233) == 4)
                        {
                          goto LABEL_234;
                        }

                        v233 = (v233 + 1) & v234;
                      }

                      while (((*(v228 + 56 + ((v233 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v233) & 1) != 0);
                    }
                  }

                  v167 = sub_252D4FE78(4);

                  v168 = v241;
                  if (v167)
                  {
LABEL_238:
                    v25 = v242;
                    goto LABEL_52;
                  }

                  goto LABEL_174;
                }
              }

              break;
            }

LABEL_186:

            v183 = (v171)(v182);
            if (v183 == 38)
            {
              v186 = &unk_2864ADAB0;
LABEL_190:
              v185 = sub_2529FC004(v186);
            }

            else
            {
              v184 = v183;
              v185 = MEMORY[0x277D84FA0];
              if (v184 == 41)
              {
                v186 = &unk_2864ADAD8;
                goto LABEL_190;
              }
            }

            if (*(v185 + 16))
            {
              v187 = *(v185 + 40);
              v188 = v171;
              v189 = v185;
              sub_252E37EC4();
              MEMORY[0x2530AE390](28);
              v190 = sub_252E37F14();
              v191 = v189;
              v192 = v189 + 56;
              v193 = -1 << *(v189 + 32);
              v194 = v190 & ~v193;
              if ((*(v189 + 56 + ((v194 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v194))
              {
                v171 = v188;
                v195 = ~v193;
                while (*(*(v191 + 48) + 8 * v194) != 28)
                {
                  v194 = (v194 + 1) & v195;
                  if (((*(v192 + ((v194 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v194) & 1) == 0)
                  {
                    goto LABEL_196;
                  }
                }

                goto LABEL_197;
              }
            }

LABEL_196:

            goto LABEL_215;
          }
        }

LABEL_81:

        v37 = v242;
        v76 = v242 & 0xC000000000000001;
        if (v75 == v241)
        {
          goto LABEL_51;
        }
      }

      v90 = &unk_2864ADA60;
      v4 = 0xD000000000000076;
      goto LABEL_95;
    }
  }

  v46 = 0;
  v47 = v242 & 0xC000000000000001;
  v237 = (v242 + 32);
  v238 = v242 & 0xC000000000000001;
  while (1)
  {
    if (v47)
    {
      v55 = MEMORY[0x2530ADF00](v46);
      v56 = __OFADD__(v46++, 1);
      if (!v56)
      {
        goto LABEL_57;
      }

LABEL_76:
      __break(1u);
LABEL_77:
      v21 = v37;
      goto LABEL_247;
    }

    if (v46 >= *(v240 + 16))
    {
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
      return;
    }

    v55 = *&v237[8 * v46];

    v56 = __OFADD__(v46++, 1);
    if (v56)
    {
      goto LABEL_76;
    }

LABEL_57:
    v57 = (*v55 + 256);
    v58 = *v57;
    v37 = v57;
    if ((*v57)() == 4)
    {

      goto LABEL_79;
    }

    v59 = (*(*v55 + 272))();
    v60 = v59;
    if (*(v59 + 16))
    {
      v61 = *(v59 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](4);
      v62 = sub_252E37F14();
      v63 = -1 << *(v60 + 32);
      v64 = v62 & ~v63;
      if ((*(v60 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
      {
        break;
      }
    }

LABEL_63:

    v67 = (v58)(v66);
    if (v67 == 38)
    {
      v69 = &unk_2864AD920;
      v4 = 0xD000000000000076;
    }

    else
    {
      v68 = MEMORY[0x277D84FA0];
      v4 = 0xD000000000000076;
      if (v67 != 41)
      {
        goto LABEL_68;
      }

      v69 = &unk_2864AD948;
    }

    v68 = sub_2529FC004(v69);
LABEL_68:
    if (*(v68 + 16))
    {
      v70 = *(v68 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](4);
      v71 = sub_252E37F14();
      v72 = -1 << *(v68 + 32);
      v73 = v71 & ~v72;
      if ((*(v68 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
      {
        v74 = ~v72;
        while (*(*(v68 + 48) + 8 * v73) != 4)
        {
          v73 = (v73 + 1) & v74;
          if (((*(v68 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_105;
      }
    }

LABEL_53:

    v47 = v242 & 0xC000000000000001;
    if (v46 == v241)
    {
      v25 = v242;
LABEL_52:
      v26 = 0;
LABEL_21:
      sub_252929F10(v25, v26);
      goto LABEL_22;
    }
  }

  v65 = ~v63;
  while (*(*(v60 + 48) + 8 * v64) != 4)
  {
    v64 = (v64 + 1) & v65;
    if (((*(v60 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_79:
  v4 = 0xD000000000000076;
LABEL_106:
  v96 = 0;
  v97 = v242;
  while (2)
  {
    if (v238)
    {
      v100 = MEMORY[0x2530ADF00](v96, v97);
    }

    else
    {
      if (v96 >= *(v240 + 16))
      {
        goto LABEL_261;
      }

      v100 = *&v237[8 * v96];
    }

    v56 = __OFADD__(v96++, 1);
    if (v56)
    {
      __break(1u);
      goto LABEL_259;
    }

    v101 = (*v100 + 256);
    v102 = *v101;
    v103 = (*v101)();
    if (v103 == 28)
    {
      goto LABEL_132;
    }

    v104 = (*(*v100 + 272))();
    if (!*(v104 + 16))
    {
      goto LABEL_120;
    }

    v105 = *(v104 + 40);
    v106 = v102;
    v107 = v104;
    sub_252E37EC4();
    MEMORY[0x2530AE390](28);
    v108 = sub_252E37F14();
    v109 = v107;
    v102 = v106;
    v110 = -1 << *(v109 + 32);
    v111 = v108 & ~v110;
    if (((*(v109 + 56 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) == 0)
    {
LABEL_120:

      v114 = (v102)(v113);
      if (v114 == 38)
      {
        v117 = &unk_2864AD970;
      }

      else
      {
        v115 = v114;
        v116 = MEMORY[0x277D84FA0];
        if (v115 != 41)
        {
          goto LABEL_125;
        }

        v117 = &unk_2864AD998;
      }

      v116 = sub_2529FC004(v117);
LABEL_125:
      if (*(v116 + 16))
      {
        v118 = *(v116 + 40);
        v119 = v102;
        v120 = v116;
        sub_252E37EC4();
        MEMORY[0x2530AE390](28);
        v121 = sub_252E37F14();
        v122 = v120;
        v102 = v119;
        v123 = -1 << *(v122 + 32);
        v124 = v121 & ~v123;
        if ((*(v122 + 56 + ((v124 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v124))
        {
          v125 = ~v123;
          while (*(*(v122 + 48) + 8 * v124) != 28)
          {
            v124 = (v124 + 1) & v125;
            if (((*(v122 + 56 + ((v124 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v124) & 1) == 0)
            {
              goto LABEL_130;
            }
          }

          goto LABEL_131;
        }
      }

LABEL_130:

      goto LABEL_149;
    }

    v112 = ~v110;
    while (*(*(v109 + 48) + 8 * v111) != 28)
    {
      v111 = (v111 + 1) & v112;
      if (((*(v109 + 56 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) == 0)
      {
        goto LABEL_120;
      }
    }

LABEL_131:

LABEL_132:
    v126 = (v102)(v103);
    if (v126 == 27)
    {
      break;
    }

    v127 = (*(*v100 + 272))();
    if (*(v127 + 16))
    {
      v128 = *(v127 + 40);
      v129 = v102;
      v130 = v127;
      sub_252E37EC4();
      MEMORY[0x2530AE390](27);
      v131 = sub_252E37F14();
      v132 = v130;
      v102 = v129;
      v133 = -1 << *(v132 + 32);
      v134 = v131 & ~v133;
      if ((*(v132 + 56 + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134))
      {
        v135 = ~v133;
        while (*(*(v132 + 48) + 8 * v134) != 27)
        {
          v134 = (v134 + 1) & v135;
          if (((*(v132 + 56 + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134) & 1) == 0)
          {
            goto LABEL_138;
          }
        }

LABEL_150:

        break;
      }
    }

LABEL_138:

    v137 = (v102)(v136);
    if (v137 == 38)
    {
      v140 = &unk_2864AD9C0;
LABEL_142:
      v139 = sub_2529FC004(v140);
    }

    else
    {
      v138 = v137;
      v139 = MEMORY[0x277D84FA0];
      if (v138 == 41)
      {
        v140 = &unk_2864AD9E8;
        goto LABEL_142;
      }
    }

    if (*(v139 + 16))
    {
      v141 = *(v139 + 40);
      v142 = v102;
      v143 = v139;
      sub_252E37EC4();
      MEMORY[0x2530AE390](27);
      v144 = sub_252E37F14();
      v145 = v143;
      v102 = v142;
      v146 = -1 << *(v145 + 32);
      v147 = v144 & ~v146;
      if ((*(v145 + 56 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147))
      {
        v148 = ~v146;
        while (*(*(v145 + 48) + 8 * v147) != 27)
        {
          v147 = (v147 + 1) & v148;
          if (((*(v145 + 56 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147) & 1) == 0)
          {
            goto LABEL_148;
          }
        }

        goto LABEL_150;
      }
    }

LABEL_148:

    v126 = sub_252D4FE78(27);
    if ((v126 & 1) == 0)
    {
LABEL_149:

      v99 = v241;
LABEL_108:
      v97 = v242;
      if (v96 == v99)
      {
        sub_252929F10(v242, 0);
        v27 = 1;
        goto LABEL_251;
      }

      continue;
    }

    break;
  }

  if ((v102)(v126) == 7)
  {
    goto LABEL_235;
  }

  v149 = (*(*v100 + 272))();
  v150 = v149;
  if (!*(v149 + 16) || (v151 = *(v149 + 40), sub_252E37EC4(), MEMORY[0x2530AE390](7), v152 = sub_252E37F14(), v153 = -1 << *(v150 + 32), v154 = v152 & ~v153, ((*(v150 + 56 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154) & 1) == 0))
  {
LABEL_157:

    v157 = (v102)(v156);
    if (v157 == 38)
    {
      v159 = &unk_2864ADA10;
    }

    else
    {
      v158 = MEMORY[0x277D84FA0];
      if (v157 != 41)
      {
        goto LABEL_162;
      }

      v159 = &unk_2864ADA38;
    }

    v158 = sub_2529FC004(v159);
LABEL_162:
    if (*(v158 + 16))
    {
      v160 = *(v158 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](7);
      v161 = sub_252E37F14();
      v162 = -1 << *(v158 + 32);
      v163 = v161 & ~v162;
      if ((*(v158 + 56 + ((v163 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v163))
      {
        v164 = ~v162;
        while (*(*(v158 + 48) + 8 * v163) != 7)
        {
          v163 = (v163 + 1) & v164;
          if (((*(v158 + 56 + ((v163 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v163) & 1) == 0)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_234;
      }
    }

LABEL_107:

    v98 = sub_252D4FE78(7);

    v99 = v241;
    if (v98)
    {
      goto LABEL_238;
    }

    goto LABEL_108;
  }

  v155 = ~v153;
  while (*(*(v150 + 48) + 8 * v154) != 7)
  {
    v154 = (v154 + 1) & v155;
    if (((*(v150 + 56 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154) & 1) == 0)
    {
      goto LABEL_157;
    }
  }

LABEL_234:
  sub_252929F10(v242, 0);

LABEL_22:
  v27 = 0;
LABEL_251:
  v243 = 0;
  v244 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](v4 - 60, 0x8000000252E83290);
  if (v27)
  {
    v235 = v6;
  }

  else
  {
    v235 = v5;
  }

  if (v27)
  {
    v236 = 0xE400000000000000;
  }

  else
  {
    v236 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v235, v236);

  MEMORY[0x2530AD570](0x6F4C20726F6F4420, 0xED0000203A736B63);
  MEMORY[0x2530AD570](v235, v236);

  sub_252CC3D90(v243, v244, 0xD000000000000076, 0x8000000252E828C0);
}

uint64_t sub_252B7D468(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_252B7D4B0(_BYTE *a1, void *a2)
{
  *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = *a1;
  v4 = *(v2 + 32);
  *(v2 + 32) = a2;
  v3 = a2;
}

uint64_t sub_252B7D500(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, *(a1 + 8));
}

unint64_t sub_252B7D544()
{
  result = qword_27F543810;
  if (!qword_27F543810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543810);
  }

  return result;
}

uint64_t sub_252B7D598(uint64_t a1)
{
  result = sub_252B7DA48(&qword_27F543818, type metadata accessor for ControlHomeFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ControlHomeFlow()
{
  result = qword_27F543838;
  if (!qword_27F543838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252B7D63C(uint64_t a1)
{
  result = sub_252B7DA48(&qword_27F543820, type metadata accessor for ControlHomeFlow);
  *(a1 + 8) = result;
  return result;
}

void sub_252B7D740()
{
  sub_252B7D9D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ControlHomeFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

void sub_252B7D9D8()
{
  if (!qword_27F543848)
  {
    sub_252E34104();
    v0 = sub_252E37734();
    if (!v1)
    {
      atomic_store(v0, &qword_27F543848);
    }
  }
}

uint64_t sub_252B7DA48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252B7DA9C(void *a1)
{
  v2 = v1;
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = 0;
  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = v4[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v5 != 2 && (v5 & 1) == 0 || (v6 = [a1 filters]) == 0)
  {

LABEL_11:
    v10 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v7 = v6;
  type metadata accessor for HomeFilter();
  v8 = sub_252E37264();

  v9 = [a1 userTask];
  v10 = HomeStore.services(matching:supporting:)(v8, v9);
  v12 = v11;

  if (v12)
  {
    v13 = v10;
    v14 = 1;
LABEL_10:
    sub_252929F10(v13, v14);
    goto LABEL_11;
  }

  if (v10 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    v13 = v10;
    v14 = 0;
    goto LABEL_10;
  }

LABEL_12:
  v15 = *(v2 + 16);
  *(v2 + 16) = v10;

  v16 = *(v2 + 24);
  *(v2 + 24) = a1;

  return v2;
}

uint64_t sub_252B7DC00()
{
  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
LABEL_84:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    v1 = v2 & 0xC000000000000001;
    do
    {
      if (v1)
      {
        v5 = MEMORY[0x2530ADF00](v4, v2);
        v6 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      v7 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v8 = [*(v5 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceSubtype];
      if (v8 || (v8 = [*(v5 + v7) associatedServiceType]) != 0)
      {
        v13 = v8;

        v3 = sub_252E36F34();
        v1 = v14;

        if (qword_27F53F8B8 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_100;
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v9 = v67;
  v10 = *(v67 + 16);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v65 = *(v67 + 16);
    }

    result = sub_252E378C4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {

    MEMORY[0x2530ADF00](0, v10);
    goto LABEL_23;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_103:
    swift_once();
LABEL_62:
    v39 = sub_252E36AD4();
    __swift_project_value_buffer(v39, qword_27F544D18);

    v40 = sub_252E36AC4();
    v41 = sub_252E374C4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v76 = v43;
      *v42 = 136315138;
      v44 = *(v67 + 16);
      if (v44 >> 62)
      {
        v45 = sub_252E378C4();
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v46 = MEMORY[0x277D84F90];
      if (v45)
      {
        v68 = v43;
        v70 = v42;
        v71 = v41;
        v72 = v40;
        v75 = MEMORY[0x277D84F90];

        result = sub_2529AA420(0, v45 & ~(v45 >> 63), 0);
        v74 = v45;
        if (v45 < 0)
        {
          __break(1u);
          return result;
        }

        v47 = 0;
        v46 = v75;
        v48 = v44;
        v49 = v44 & 0xC000000000000001;
        do
        {
          if (v49)
          {
            v50 = MEMORY[0x2530ADF00](v47, v48);
          }

          else
          {
            v50 = *(v48 + 8 * v47 + 32);
          }

          v51 = [*(v50 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v52 = sub_252E36F34();
          v54 = v53;

          if (v3[2] && (v55 = sub_252A44A10(v52, v54), (v56 & 1) != 0))
          {
            v57 = *(v3[7] + 8 * v55);
          }

          else
          {
            v57 = 0;
          }

          v59 = *(v75 + 16);
          v58 = *(v75 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_2529AA420((v58 > 1), v59 + 1, 1);
          }

          ++v47;
          *(v75 + 16) = v59 + 1;
          *(v75 + 8 * v59 + 32) = v57;
        }

        while (v74 != v47);

        v40 = v72;
        v41 = v71;
        v43 = v68;
        v42 = v70;
      }

      v60 = MEMORY[0x2530AD730](v46, &type metadata for HomeDeviceType);
      v62 = v61;

      v63 = sub_252BE2CE0(v60, v62, &v76);

      *(v42 + 4) = v63;
      _os_log_impl(&dword_252917000, v40, v41, "Contains non homogeneous services: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x2530AED00](v43, -1, -1);
      MEMORY[0x2530AED00](v42, -1, -1);
    }

    return 0;
  }

  v12 = *(v10 + 32);

  while (1)
  {

    v69 = sub_252CD94E0();
    v16 = v15;

    if (v16)
    {

      v69 = sub_252CD941C();
    }

    v17 = *(v9 + 16);
    if (v17 >> 62)
    {
      if (v17 < 0)
      {
        v64 = *(v9 + 16);
      }

      if (!sub_252E378C4())
      {
LABEL_88:

        return 1;
      }
    }

    else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_88;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v1 = *(v17 + 32);

      goto LABEL_31;
    }

    __break(1u);
LABEL_100:
    swift_once();
LABEL_21:
    v9 = v67;
    if (*(off_27F546230 + 2))
    {
      sub_252A44A10(v3, v1);
    }

LABEL_23:
  }

  v1 = MEMORY[0x2530ADF00](0, v17);

LABEL_31:
  v73 = sub_252CD941C();

  v18 = *(v9 + 16);
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v66 = *(v9 + 16);
    }

    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v19 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x2530ADF00](v19, v18);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v20 = *(v18 + 8 * v19 + 32);

        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }
      }

      v22 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v23 = [*(v20 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v24 = sub_252E36F34();
      v1 = v25;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v3 = off_27F546230;
      if (*(off_27F546230 + 2) && (v26 = sub_252A44A10(v24, v1), (v27 & 1) != 0))
      {
        v28 = *(v3[7] + 8 * v26);
      }

      else
      {
        v28 = 0;
      }

      if (v28 == v73)
      {
        goto LABEL_35;
      }

      v29 = [*(v20 + v22) serviceType];
      v30 = sub_252E36F34();
      v1 = v31;

      if (v3[2] && (v32 = sub_252A44A10(v30, v1), (v33 & 1) != 0))
      {
        v34 = *(v3[7] + 8 * v32);
      }

      else
      {
        v34 = 0;
      }

      if (v34 == v69 || (v35 = sub_252CD94E0(), (v36 & 1) == 0) && v35 == v73)
      {
LABEL_35:
      }

      else
      {
        v37 = sub_252CD94E0();
        v1 = v38;

        if ((v1 & 1) != 0 || v37 != v69)
        {

          if (qword_27F53F4D0 != -1)
          {
            goto LABEL_103;
          }

          goto LABEL_62;
        }
      }

      ++v19;
    }

    while (v21 != v2);
  }

  return 1;
}

uint64_t sub_252B7E404()
{
  v1 = sub_252E32E84();
  v64 = *(v1 - 8);
  v2 = *(v64 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v67 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v63 = (&v59 - v5);
  v6 = *(v0 + 16);
  v68 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_37:
    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v1;
  if (v7)
  {
    v8 = 0;
    v66 = MEMORY[0x277D84F90];
    do
    {
      v9 = v8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x2530ADF00](v9, v6);
          v8 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v10 = *(v6 + 8 * v9 + 32);

          v8 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        v11 = [*(v10 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (v11)
        {
          break;
        }

        ++v9;
        if (v8 == v7)
        {
          goto LABEL_20;
        }
      }

      v12 = v11;
      v13 = type metadata accessor for Accessory();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      sub_252D4CE7C(v12);

      MEMORY[0x2530AD700](v16);
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v66 = v68;
      v1 = v65;
    }

    while (v8 != v7);
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

LABEL_20:

  v18 = v66;

  v20 = sub_252C759D4(v19);

  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = sub_252E378C4();
  }

  else
  {
    v21 = *(v20 + 16);
  }

  if (v21 != 1)
  {
    goto LABEL_39;
  }

  if (v18 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_26;
    }

    goto LABEL_39;
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_39:
    if (qword_27F53F4D0 != -1)
    {
      goto LABEL_60;
    }

    while (1)
    {
      v37 = sub_252E36AD4();
      __swift_project_value_buffer(v37, qword_27F544D18);

      v38 = sub_252E36AC4();
      v39 = sub_252E374C4();

      v63 = v38;
      if (!os_log_type_enabled(v38, v39))
      {

        return 0;
      }

      v40 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v68 = v60;
      v61 = v40;
      *v40 = 136315138;
      if (v18 >> 62)
      {
        v41 = sub_252E378C4();
        v62 = v39;
        if (!v41)
        {
LABEL_62:
          v46 = MEMORY[0x277D84F90];
LABEL_63:

          v52 = MEMORY[0x2530AD730](v46, v1);
          v54 = v53;

          v55 = sub_252BE2CE0(v52, v54, &v68);

          v56 = v61;
          *(v61 + 1) = v55;
          v57 = v63;
          _os_log_impl(&dword_252917000, v63, v62, "Accessories matching services: %s", v56, 0xCu);
          v58 = v60;
          __swift_destroy_boxed_opaque_existential_1(v60);
          MEMORY[0x2530AED00](v58, -1, -1);
          MEMORY[0x2530AED00](v56, -1, -1);

          return 0;
        }
      }

      else
      {
        v41 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v62 = v39;
        if (!v41)
        {
          goto LABEL_62;
        }
      }

      v42 = 0;
      v43 = v18 & 0xC000000000000001;
      v44 = v18 & 0xFFFFFFFFFFFFFF8;
      v45 = (v64 + 16);
      v46 = MEMORY[0x277D84F90];
      while (v43)
      {
        v47 = MEMORY[0x2530ADF00](v42, v18);
        v18 = (v42 + 1);
        if (__OFADD__(v42, 1))
        {
          goto LABEL_58;
        }

LABEL_47:
        (*v45)(v67, v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_2529F8324(0, v46[2] + 1, 1, v46);
        }

        v49 = v46[2];
        v48 = v46[3];
        if (v49 >= v48 >> 1)
        {
          v46 = sub_2529F8324(v48 > 1, v49 + 1, 1, v46);
        }

        v46[2] = v49 + 1;
        v50 = v46 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v49;
        v1 = v65;
        (*(v64 + 32))(v50, v67, v65);
        ++v42;
        v51 = v18 == v41;
        v18 = v66;
        if (v51)
        {
          goto LABEL_63;
        }
      }

      if (v42 >= *(v44 + 16))
      {
        goto LABEL_59;
      }

      v47 = v18[v42 + 4];

      v18 = (v42 + 1);
      if (!__OFADD__(v42, 1))
      {
        goto LABEL_47;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      swift_once();
    }
  }

LABEL_26:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x2530ADF00](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v23 = v18[4];
  }

  v25 = v63;
  v24 = v64;
  (*(v64 + 16))(v63, v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v1);

  v26 = sub_252E32E24();
  v27 = v1;
  v28 = v26;
  v30 = v29;
  (*(v24 + 8))(v25, v27);
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v31 = sub_252E36AD4();
  __swift_project_value_buffer(v31, qword_27F544D18);

  v32 = sub_252E36AC4();
  v33 = sub_252E374C4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v68 = v35;
    *v34 = 136315138;
    v36 = sub_252BE2CE0(v28, v30, &v68);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_252917000, v32, v33, "Only one accessory found : %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x2530AED00](v35, -1, -1);
    MEMORY[0x2530AED00](v34, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_252B7EBB0()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v83 = (&v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v84 = &v76 - v5;
  v6 = sub_252B7F4E4();
  v7 = v6;
  v85 = MEMORY[0x277D84F90];
  v8 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_24:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v9 = sub_252E378C4();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_3:
  v10 = 0;
  v82 = (v1 + 4);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v10;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](v12, v7);
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v12 >= *(v8 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v7 + 8 * v12 + 32);

        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v14 = [*(v13 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
      if (v14)
      {
        break;
      }

      ++v12;
      if (v10 == v9)
      {
        goto LABEL_25;
      }
    }

    v80 = v1;
    v81 = v0;
    v15 = v14;
    v16 = type metadata accessor for Room();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v15;
    v20 = v15;
    v21 = [v20 uniqueIdentifier];
    sub_252E32E64();

    v22 = [v20 name];
    v23 = sub_252E36F34();
    v78 = v24;
    v79 = v23;

    v25 = [v20 assistantIdentifier];
    if (v25)
    {
      v26 = v25;
      v77 = sub_252E36F34();
      v28 = v27;

      v29 = v28;
      v30 = v77;
    }

    else
    {

      v30 = 0;
      v29 = 0;
    }

    v0 = v81;
    v31 = (*v82)(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v84, v81);
    v32 = (v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v33 = v78;
    *v32 = v79;
    v32[1] = v33;
    *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
    v34 = (v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v34 = v30;
    v34[1] = v29;
    MEMORY[0x2530AD700](v31);
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v11 = v85;
    v1 = v80;
  }

  while (v10 != v9);
LABEL_25:

  if (v11 >> 62)
  {
LABEL_74:
    v36 = sub_252E378C4();
    if (v36)
    {
LABEL_27:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x2530ADF00](0, v11);
        v84 = (v11 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v84 = (v11 & 0xFFFFFFFFFFFFFF8);
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_78:
          swift_once();
LABEL_44:
          v50 = sub_252E36AD4();
          __swift_project_value_buffer(v50, qword_27F544D18);

          v51 = sub_252E36AC4();
          v52 = sub_252E374C4();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v85 = v54;
            *v53 = 136315138;
            v55 = sub_252BE2CE0(v81, v0, &v85);

            *(v53 + 4) = v55;
            _os_log_impl(&dword_252917000, v51, v52, "All services in the same room : %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v54);
            MEMORY[0x2530AED00](v54, -1, -1);
            MEMORY[0x2530AED00](v53, -1, -1);
          }

          else
          {
          }

          return 1;
        }

        v37 = *(v11 + 32);
      }

      v38 = v83;
      (v1[2])(v83, v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v0);

      v81 = sub_252E32E24();
      v82 = v39;
      (v1[1])(v38, v0);
      v40 = 0;
      v1 = MEMORY[0x277D84F90];
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v40, v11);
          v0 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v40 >= *(v84 + 2))
          {
            goto LABEL_71;
          }

          v41 = *(v11 + 8 * v40 + 32);

          v0 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }
        }

        v42 = sub_252E32E24();
        v44 = v43;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_2529F7A80(0, v1[2] + 1, 1, v1);
        }

        v46 = v1[2];
        v45 = v1[3];
        if (v46 >= v45 >> 1)
        {
          v1 = sub_2529F7A80((v45 > 1), v46 + 1, 1, v1);
        }

        v1[2] = v46 + 1;
        v47 = &v1[2 * v46];
        v47[4] = v42;
        v47[5] = v44;
        ++v40;
      }

      while (v0 != v36);
      v48 = sub_252C75848(v1);

      v49 = *(v48 + 16);

      if (v49 != 1)
      {

        goto LABEL_47;
      }

      v0 = v82;
      if (qword_27F53F4D0 != -1)
      {
        goto LABEL_78;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v36 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_27;
    }
  }

LABEL_47:
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v56 = sub_252E36AD4();
  __swift_project_value_buffer(v56, qword_27F544D18);

  v57 = sub_252E36AC4();
  v58 = sub_252E374C4();

  v83 = v57;
  if (os_log_type_enabled(v57, v58))
  {
    LODWORD(v82) = v58;
    v59 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v85 = v80;
    v81 = v59;
    *v59 = 136315138;
    if (v36)
    {
      v60 = 0;
      v84 = (v11 & 0xC000000000000001);
      v1 = (v11 & 0xFFFFFFFFFFFFFF8);
      v61 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v84)
        {
          v62 = MEMORY[0x2530ADF00](v60, v11);
          v63 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v60 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v62 = *(v11 + 8 * v60 + 32);

          v63 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_72;
          }
        }

        v64 = *(v62 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v65 = *(v62 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_2529F7A80(0, *(v61 + 2) + 1, 1, v61);
        }

        v0 = *(v61 + 2);
        v66 = *(v61 + 3);
        if (v0 >= v66 >> 1)
        {
          v61 = sub_2529F7A80((v66 > 1), v0 + 1, 1, v61);
        }

        *(v61 + 2) = v0 + 1;
        v67 = &v61[16 * v0];
        *(v67 + 4) = v64;
        *(v67 + 5) = v65;
        ++v60;
        if (v63 == v36)
        {
          goto LABEL_68;
        }
      }
    }

    v61 = MEMORY[0x277D84F90];
LABEL_68:

    v69 = MEMORY[0x2530AD730](v61, MEMORY[0x277D837D0]);
    v71 = v70;

    v72 = sub_252BE2CE0(v69, v71, &v85);

    v73 = v81;
    *(v81 + 1) = v72;
    v74 = v83;
    _os_log_impl(&dword_252917000, v83, v82, "Found rooms: %s", v73, 0xCu);
    v75 = v80;
    __swift_destroy_boxed_opaque_existential_1(v80);
    MEMORY[0x2530AED00](v75, -1, -1);
    MEMORY[0x2530AED00](v73, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_252B7F4E4()
{
  v1 = *(v0 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_23:
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = v3;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v5, v1);
          v3 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v6 = *(v1 + 8 * v5 + 32);

          v3 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        v7 = [*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (v7)
        {
          break;
        }

        ++v5;
        if (v3 == v2)
        {
          goto LABEL_20;
        }
      }

      v8 = v7;
      v9 = type metadata accessor for Accessory();
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      swift_allocObject();
      sub_252D4CE7C(v8);

      MEMORY[0x2530AD700](v12);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v4 = v15;
    }

    while (v3 != v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_20:

  return v4;
}

uint64_t sub_252B7F6B0()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v3, v1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v1 + 8 * v3 + 32);

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v2 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v7 = sub_252E32E24();
      v9 = v8;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F7A80(0, *(v4 + 2) + 1, 1, v4);
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v4 = sub_2529F7A80((v10 > 1), v11 + 1, 1, v4);
      }

      *(v4 + 2) = v11 + 1;
      v12 = &v4[16 * v11];
      *(v12 + 4) = v7;
      *(v12 + 5) = v9;
      ++v3;
      if (v6 == v2)
      {
        goto LABEL_18;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_18:

  v13 = sub_252C75848(v4);

  return v13;
}

uint64_t sub_252B7F858(uint64_t a1)
{
  if ((sub_252B7DC00() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_4:
    if ((v3 & 0xC000000000000001) != 0)
    {

      MEMORY[0x2530ADF00](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      v5 = *(v3 + 32);
    }

    if (sub_252CD941C() != a1)
    {
      v7 = sub_252CD94E0();
      if ((v8 & 1) != 0 || v7 != a1)
      {

        return 0;
      }
    }

    if (qword_27F53F558 == -1)
    {
LABEL_9:
      v6 = sub_252E36AD4();
      __swift_project_value_buffer(v6, qword_27F544EB0);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E833D0);
      sub_252E37AE4();
      MEMORY[0x2530AD570](46, 0xE100000000000000);
      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000081, 0x8000000252E83340);

      return 1;
    }

LABEL_19:
    swift_once();
    goto LABEL_9;
  }

  result = sub_252E378C4();
  if (result)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_252B7FA40(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v21 = *(v1 + 16);
    }

    if (sub_252E378C4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v4 = *(v1 + 16);
    if (v4 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
    {

      if (!i)
      {
LABEL_25:

        return 1;
      }

      v6 = 0;
      v22 = i;
LABEL_7:
      if ((v4 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v4 + 32 + 8 * v6);

        v8 = __OFADD__(v6++, 1);
        if (!v8)
        {
          goto LABEL_10;
        }

LABEL_30:
        __break(1u);
      }

      __break(1u);
LABEL_32:
      ;
    }

    v7 = MEMORY[0x2530ADF00](v6, v4);
    v8 = __OFADD__(v6++, 1);
    if (!v8)
    {
LABEL_10:
      v9 = [*(v7 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v13 = off_27F546230;
      if (*(off_27F546230 + 2) && (v14 = sub_252A44A10(v10, v12), (v15 & 1) != 0))
      {
        v16 = *(v13[7] + 8 * v14);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(a1 + 16);
      v18 = (a1 + 32);
      do
      {
        if (!v17)
        {

          return 0;
        }

        v19 = *v18++;
        --v17;
      }

      while (v19 != v16);

      if (v6 != v22)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }

    goto LABEL_30;
  }

  return 2;
}

uint64_t sub_252B7FC4C(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 2;
  }

  if (v3 < 0)
  {
    v21 = *(v1 + 16);
  }

  if (!sub_252E378C4())
  {
    return 2;
  }

LABEL_3:
  v4 = *(v1 + 16);
  if (v4 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v5)
  {
    v6 = 0;
    v22 = v5;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v7 = *(v4 + 32 + 8 * v6);

        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v5 = sub_252E378C4();
          goto LABEL_5;
        }
      }

      v9 = [*(v7 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v13 = off_27F546230;
      if (*(off_27F546230 + 2) && (v14 = sub_252A44A10(v10, v12), (v15 & 1) != 0))
      {
        v16 = *(v13[7] + 8 * v14);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(a1 + 16);
      v18 = (a1 + 32);
      while (v17)
      {
        v19 = *v18++;
        --v17;
        if (v19 == v16)
        {

          return 1;
        }
      }
    }

    while (v6 != v22);
  }

  return 0;
}

uint64_t sub_252B7FE5C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544EB0);
  sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E83310, 0xD000000000000081, 0x8000000252E83340);
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 192), v25);

  v6 = v26;
  v7 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v8 = *(v1 + 16);
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if (v8 < 0)
  {
    v10 = *(v1 + 16);
  }

  if (!sub_252E378C4())
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x2530ADF00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v9 = *(v8 + 32);
  }

LABEL_12:
  (*(v7 + 8))(&v21, v9, v6, v7);

  v12 = *(v1 + 16);
  MEMORY[0x28223BE20](v11);
  v18[2] = v25;
  v18[3] = &v21;

  v13 = sub_252A00B58(sub_252B810D0, v18, v12);

  if ((v13 & 1) == 0)
  {
LABEL_23:
    v16 = v22;
    *a1 = v21;
    a1[1] = v16;
    v17 = v24;
    a1[2] = v23;
    a1[3] = v17;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v6 = v26;
  v7 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v2 = *(v2 + 16);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_15;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

LABEL_20:
  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_15:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v15 = MEMORY[0x2530ADF00](0, v2);

    goto LABEL_22;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v2 + 32);

LABEL_22:
    (*(v7 + 16))(v19, v15, v6, v7);

    v20[0] = v21;
    v20[1] = v22;
    v20[2] = v23;
    v20[3] = v24;
    sub_252B810F0(v20);
    v21 = v19[0];
    v22 = v19[1];
    v23 = v19[2];
    v24 = v19[3];
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_252B80174(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 8))(v14, v4, v5, v6);
  if (v14[1])
  {
    v8 = v14[2];
    v7 = v14[3];

    sub_252B810F0(v14);
    if (!a3[1])
    {
      if (!v7)
      {
        goto LABEL_15;
      }

LABEL_14:

      LOBYTE(v9) = 1;
      return v9 & 1;
    }

LABEL_7:
    v10 = a3[2];
    v11 = a3[3];

    if (v7)
    {
      if (v11)
      {
        if (v8 != v10 || v7 != v11)
        {
          v12 = sub_252E37DB4();

          LOBYTE(v9) = v12 ^ 1;
          return v9 & 1;
        }

        goto LABEL_15;
      }
    }

    else if (!v11)
    {
LABEL_15:
      LOBYTE(v9) = 0;
      return v9 & 1;
    }

    goto LABEL_14;
  }

  v9 = a3[1];
  if (v9)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  return v9 & 1;
}

uint64_t sub_252B802C0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 8))(v2, v3, v4);
}

BOOL sub_252B80338()
{
  v0 = sub_252B80A5C();
  v1 = sub_252B7F6B0();
  v2 = sub_252B80F10(v0, v1);

  v3 = v2[2];
  v4 = *(v1 + 16);

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D18);
  v6 = sub_252E36AC4();
  v7 = sub_252E374C4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v3 == v4;
    _os_log_impl(&dword_252917000, v6, v7, "All services warmed up : %{BOOL}d", v8, 8u);
    MEMORY[0x2530AED00](v8, -1, -1);
  }

  return v3 == v4;
}

unint64_t sub_252B8048C()
{
  v0 = sub_252B80A5C();
  v1 = sub_252B7F6B0();
  v2 = sub_252B80F10(v0, v1);

  v3 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  v4 = v2 + 8;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2[8];
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(v2[7] + ((v9 << 9) | (8 * v11)));
      v13 = [v12 taskResponses];
      if (!v13)
      {
        goto LABEL_6;
      }

      v14 = v13;
      v15 = v2;
      type metadata accessor for HomeUserTaskResponse();
      v16 = sub_252E37264();

      result = v16;
      if (!(v16 >> 62))
      {
        break;
      }

      v20 = sub_252E378C4();
      result = v16;
      v2 = v15;
      if (v20)
      {
LABEL_14:
        if ((result & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](0);
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v19 = *(result + 32);
        }

        MEMORY[0x2530AD700]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = v44;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
LABEL_5:

LABEL_6:

        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = v15;
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  while (1)
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = v4[v10];
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  if (qword_27F53F4D0 == -1)
  {
    goto LABEL_25;
  }

LABEL_45:
  swift_once();
LABEL_25:
  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D18);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44 = v39;
    buf = v25;
    *v25 = 136315138;
    v43 = MEMORY[0x277D84F90];
    log = v23;
    v41 = v24;
    if (v3 >> 62)
    {
      v26 = sub_252E378C4();
    }

    else
    {
      v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    while (v26 != v27)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x2530ADF00](v27, v3);
      }

      else
      {
        if (v27 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v29 = *(v3 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_43;
      }

      v32 = [v29 userTask];

      ++v27;
      if (v32)
      {
        MEMORY[0x2530AD700]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v28 = v43;
        v27 = v31;
      }
    }

    v34 = type metadata accessor for HomeUserTask();
    v35 = MEMORY[0x2530AD730](v28, v34);
    v37 = v36;

    v38 = sub_252BE2CE0(v35, v37, &v44);

    *(buf + 4) = v38;
    _os_log_impl(&dword_252917000, log, v41, "Warmed up task responses matching to services : %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x2530AED00](v39, -1, -1);
    MEMORY[0x2530AED00](buf, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_252B8095C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t *sub_252B809C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_252B80CF4(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_252B80A5C()
{
  v0 = *(sub_252B680FC() + 152);

  if (!(v0 >> 62))
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_29:
    v3 = MEMORY[0x277D84F98];
LABEL_30:

    return v3;
  }

LABEL_28:
  v1 = sub_252E378C4();
  if (!v1)
  {
    goto LABEL_29;
  }

LABEL_3:
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  while (2)
  {
    while (2)
    {
      v4 = v2;
      while (1)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2530ADF00](v4, v0);
        }

        else
        {
          if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v5 = *(v0 + 8 * v4 + 32);
        }

        v6 = v5;
        v2 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v7 = [v5 entity];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 entityIdentifier];

          if (v9)
          {
            break;
          }
        }

        ++v4;
        if (v2 == v1)
        {
          goto LABEL_30;
        }
      }

      v10 = sub_252E36F34();
      v12 = v11;

      v31 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_252A44A10(v10, v12);
      v16 = v3[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        __break(1u);
        goto LABEL_32;
      }

      v20 = v15;
      if (v3[3] >= v19)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = v14;
          sub_252E0375C();
          v14 = v26;
          v22 = v31;
          if (v20)
          {
LABEL_20:
            v23 = v14;

            v24 = v3[7];
            v25 = *(v24 + 8 * v23);
            *(v24 + 8 * v23) = v22;

            if (v2 != v1)
            {
              continue;
            }

            goto LABEL_30;
          }

          goto LABEL_23;
        }
      }

      else
      {
        sub_252DFF6E0(v19, isUniquelyReferenced_nonNull_native);
        v14 = sub_252A44A10(v10, v12);
        if ((v20 & 1) != (v21 & 1))
        {
          goto LABEL_33;
        }
      }

      break;
    }

    v22 = v31;
    if (v20)
    {
      goto LABEL_20;
    }

LABEL_23:
    v3[(v14 >> 6) + 8] |= 1 << v14;
    v27 = (v3[6] + 16 * v14);
    *v27 = v10;
    v27[1] = v12;
    *(v3[7] + 8 * v14) = v22;

    v28 = v3[2];
    v18 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v18)
    {
      v3[2] = v29;
      if (v2 != v1)
      {
        continue;
      }

      goto LABEL_30;
    }

    break;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

void sub_252B80CF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v33 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v15 = (*(a3 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v29 = v14;
      v18 = *(*(a3 + 56) + 8 * v14);
      v19 = *(a4 + 40);
      sub_252E37EC4();

      v32 = v18;
      sub_252E37044();
      v20 = sub_252E37F14();
      v21 = -1 << *(a4 + 32);
      v22 = v20 & ~v21;
      if ((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(a4 + 48) + 16 * v22);
          v25 = *v24 == v17 && v24[1] == v16;
          if (v25 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(a1 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_26:
          sub_252BBE78C(a1, a2, v30, a3);
          return;
        }
      }

      else
      {
LABEL_5:
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
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_252B80F10(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_252B809C0(v14, v7, a1, a2);
      MEMORY[0x2530AED00](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_252B80CF4((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_252B810F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B80, &unk_252E4E7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252B81158()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ReformationDetails(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_252B8126C(char a1)
{
  sub_252E379F4();

  strcpy(v5, "BOOLeanValue: ");
  HIBYTE(v5[1]) = -18;
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v2, v3);

  return v5[0];
}

uint64_t sub_252B8131C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[264] = v3;
  v4[263] = a3;
  v4[262] = a2;
  v4[261] = a1;
  v5 = sub_252E34014();
  v4[265] = v5;
  v6 = *(v5 - 8);
  v4[266] = v6;
  v7 = *(v6 + 64) + 15;
  v4[267] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B813E8, 0, 0);
}

uint64_t sub_252B813E8()
{
  v2 = v0[263];
  if (v2)
  {
    v3 = v0 + 259;
    v4 = MEMORY[0x277D84F90];
    v0[259] = MEMORY[0x277D84F90];
    v5 = v2;
    v6 = [v5 entityResponses];
    v52 = v5;
    if (!v6)
    {
      v20 = v4;
LABEL_23:
      v25 = v0[264];
      type metadata accessor for HomeAutomationEntityResponses.Builder();
      *(swift_allocObject() + 16) = v4;
      type metadata accessor for HomeAutomationClimateResponses();
      v26 = swift_allocObject();
      v0[268] = v26;
      *(v26 + 16) = 0;
      swift_setDeallocating();
      swift_deallocClassInstance();
      *(v26 + 24) = v20;
      memcpy(v0 + 65, (v25 + 112), 0x1F8uLL);
      memcpy(v0 + 2, (v25 + 112), 0x1F8uLL);
      if (sub_252956B94(v0 + 2) == 1)
      {
        v27 = 0;
      }

      else
      {
        v28 = v0[12];
        sub_252938414((v0 + 65), (v0 + 128), &qword_27F5404C8, &unk_252E3FD60);

        v27 = sub_2529A6F1C(61, v28);
        sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
      }

      v29 = v0[264];
      v30 = sub_252B82340();
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v31 = v30;
      v51 = v30 > 0xFFu;
      v50 = v0[264];
      v32 = sub_252E36AD4();
      __swift_project_value_buffer(v32, qword_27F544C70);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E83600);
      v33 = !v27;
      if (v27)
      {
        v34 = 1702195828;
      }

      else
      {
        v34 = 0x65736C6166;
      }

      if (v27)
      {
        v35 = 0xE400000000000000;
      }

      else
      {
        v35 = 0xE500000000000000;
      }

      if (v33)
      {
        v36 = 0;
      }

      else
      {
        v36 = 256;
      }

      v49 = v36;
      MEMORY[0x2530AD570](v34, v35);

      MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E83620);
      v48 = v30 & 1;
      if (v30)
      {
        v37 = 1702195828;
      }

      else
      {
        v37 = 0x65736C6166;
      }

      if (v30)
      {
        v38 = 0xE400000000000000;
      }

      else
      {
        v38 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v37, v38);

      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E83640);
      if (v31 >= 0x100)
      {
        v39 = 1702195828;
      }

      else
      {
        v39 = 0x65736C6166;
      }

      if (v31 >= 0x100)
      {
        v40 = 0xE400000000000000;
      }

      else
      {
        v40 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v39, v40);

      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000098, 0x8000000252E83560);

      v41 = *(v50 + 48);
      v42 = v52;

      v43 = v42;
      v44 = *__swift_project_boxed_opaque_existential_1((v50 + 24), v41);
      v45 = sub_252C07B4C(0, v26, v49 | v48 | (v51 << 16));
      v0[269] = v45;
      v46 = *(MEMORY[0x277D55BE8] + 4);
      v53 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

      v47 = swift_task_alloc();
      v0[270] = v47;
      *v47 = v0;
      v47[1] = sub_252B81A18;

      return v53(0xD000000000000020, 0x8000000252E83660, v45);
    }

    v7 = v6;
    type metadata accessor for HomeEntityResponse();
    v8 = sub_252E37264();

    if (v8 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_5;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_54;
        }

        v9 = *(v8 + 32);
      }

      v7 = v9;
      v10 = v0[264];
      v11 = v0[262];

      v1 = sub_252C6FEAC(v11, v7);
      sub_252DA49A4();
      v13 = v12;
      memcpy(v0 + 191, (v10 + 112), 0x1F8uLL);
      if (sub_252956B94(v0 + 191) == 1 || (v14 = v0[216], !*(v14 + 16)))
      {
        v15 = 4;
      }

      else
      {
        v15 = *(v14 + 32);
      }

      sub_252C3AC5C(v15);
      v22 = v21;

      v23 = sub_252DA124C(0);
      if (v23)
      {

        MEMORY[0x2530AD700](v24);
        if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_18:
          sub_252E372D4();

          v20 = *v3;
          goto LABEL_23;
        }

LABEL_54:
        sub_252E372A4();
        goto LABEL_18;
      }

LABEL_22:
      v20 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  sub_2529318DC();
  swift_allocError();
  *v16 = 6;
  swift_willThrow();
  v17 = v0[267];

  v18 = v0[1];

  return v18();
}

uint64_t sub_252B81A18(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2160);
  v6 = *v2;
  *(v4 + 2168) = a1;
  *(v4 + 2176) = v1;

  v7 = *(v3 + 2152);

  if (v1)
  {
    v8 = sub_252B81D10;
  }

  else
  {
    v8 = sub_252B81B58;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252B81B58()
{
  v1 = v0[268];
  v2 = v0[263];

  v3 = swift_task_alloc();
  v0[273] = v3;
  *v3 = v0;
  v3[1] = sub_252B81BF8;
  v4 = v0[264];

  return sub_252E174F4(v2);
}

uint64_t sub_252B81BF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2184);
  v7 = *v2;
  *(v3 + 2192) = a1;
  *(v3 + 2200) = v1;

  if (v1)
  {
    v5 = sub_252B81F04;
  }

  else
  {
    v5 = sub_252B81DA8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B81D10()
{
  v1 = v0[268];
  v2 = v0[264];
  v3 = v0[263];

  v4 = v0[272];
  v5 = v0[268];
  v6 = v0[263];

  v7 = v0[267];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252B81DA8()
{
  v1 = v0 + 260;
  v2 = v0[274];
  v3 = v0[271];
  v0[260] = v3;
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

  v8 = v0[267];
  v9 = v0[264];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[276] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[277] = v12;
  *v12 = v0;
  v12[1] = sub_252B81FAC;
  v13 = v0[267];

  return sub_252BDB88C((v0 + 254), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252B81F04()
{
  v1 = *(v0 + 2144);
  v2 = *(v0 + 2112);
  v3 = *(v0 + 2104);

  v4 = *(v0 + 2200);
  v5 = *(v0 + 2144);
  v6 = *(v0 + 2104);

  v7 = *(v0 + 2136);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252B81FAC()
{
  v2 = *v1;
  v3 = *(*v1 + 2216);
  v7 = *v1;
  *(*v1 + 2224) = v0;

  if (v0)
  {
    (*(v2[266] + 8))(v2[267], v2[265]);
    v4 = sub_252B82274;
  }

  else
  {
    v5 = v2[276];
    (*(v2[266] + 8))(v2[267], v2[265]);

    v4 = sub_252B82104;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B82104()
{
  v1 = *(v0 + 2112);
  v2 = *(v0 + 2096);
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

  v8 = *(v0 + 2192);
  v9 = *(v0 + 2168);
  v10 = *(v0 + 2144);
  v16 = *(v0 + 2136);
  v11 = *(v0 + 2112);
  v12 = *(v0 + 2104);
  v13 = *(v0 + 2088);
  (*(v4 + 112))(v7, v0 + 2032, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2032));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252B82274()
{
  v1 = *(v0 + 2208);
  v2 = *(v0 + 2192);
  v3 = *(v0 + 2144);
  v4 = *(v0 + 2112);
  v5 = *(v0 + 2104);

  v6 = *(v0 + 2224);
  v7 = *(v0 + 2144);
  v8 = *(v0 + 2104);

  v9 = *(v0 + 2136);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252B82340()
{
  v1 = sub_252E36324();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v143 = &v127[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v5 = *(*(v150 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v150);
  v8 = &v127[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v144 = &v127[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v127[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v127[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v142 = &v127[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v148 = &v127[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v151 = &v127[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v141 = &v127[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v146 = &v127[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v147 = &v127[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v127[-v31];
  MEMORY[0x28223BE20](v30);
  v34 = &v127[-v33];
  memcpy(v156, (v0 + 112), 0x1F8uLL);
  if (sub_252956B94(v156) == 1)
  {
    goto LABEL_126;
  }

  v149 = v2;
  v138 = v17;
  v139 = v14;
  v35 = v156[24];
  swift_beginAccess();

  v36 = sub_252D8D5C0(&unk_27F545D15, 4);
  swift_endAccess();
  if (!v36)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v37 = sub_252D8D5A8(&unk_27F545D14, 15);
  swift_endAccess();

  if (v37)
  {
    v38 = sub_252999524();

    if (!v38)
    {
LABEL_7:
      v140 = 0;
      v37 = 0;
      goto LABEL_10;
    }

    sub_252A657C0(v34);

    v39 = v149;
    if ((*(v149 + 48))(v34, 1, v1) == 1)
    {
      sub_25293847C(v34, &qword_27F540298, &unk_252E3C270);
      goto LABEL_7;
    }

    v140 = sub_252E36304();
    v40 = v39;
    v37 = v41;
    (*(v40 + 8))(v34, v1);
  }

  else
  {
    v140 = 0;
  }

LABEL_10:
  swift_beginAccess();
  v42 = sub_252D8D5C0(&unk_27F545D16, 5);
  swift_endAccess();
  v145 = v37;
  if (!v42)
  {
    v45 = 0;
    if (!v37)
    {
LABEL_125:

LABEL_126:
      v124 = 0;
      goto LABEL_127;
    }

    goto LABEL_17;
  }

  swift_beginAccess();
  v43 = sub_252D8D5A8(&unk_27F545D13, 14);
  swift_endAccess();

  if (!v43)
  {
    goto LABEL_15;
  }

  v42 = sub_252999524();

  if (v42)
  {
    sub_252A657C0(v32);

    v44 = v149;
    if ((*(v149 + 48))(v32, 1, v1) == 1)
    {
      sub_25293847C(v32, &qword_27F540298, &unk_252E3C270);
LABEL_15:
      v42 = 0;
      v45 = 0;
      goto LABEL_124;
    }

    v42 = sub_252E36304();
    v45 = v125;
    (*(v44 + 8))(v32, v1);
  }

  else
  {
    v45 = 0;
  }

LABEL_124:
  if (!(v145 | v45))
  {
    goto LABEL_125;
  }

LABEL_17:
  v137 = v45;
  v133 = v42;
  v152 = v1;
  v46 = 0;
  v47 = *(v35 + 16);
  v48 = 28271;
  v49 = 0xE200000000000000;
  while (1)
  {
    v51 = v46;
    if (v47 == v46)
    {
      goto LABEL_24;
    }

    if (v46 >= *(v35 + 16))
    {
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    LOBYTE(v154) = *(v35 + v46 + 32);
    if (StateSemantic.rawValue.getter() == 28271 && v52 == 0xE200000000000000)
    {
      break;
    }

    ++v46;
    v50 = sub_252E37DB4();

    if (v50)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  v153 = v47;
  v132 = v8;
  v49 = 0;
  v48 = 6710895;
  v46 = 0xE300000000000000;
  do
  {
    v47 = v49;
    LODWORD(v8) = v153 != v49;
    if (v153 == v49)
    {
      break;
    }

    if (v49 >= *(v35 + 16))
    {
      goto LABEL_130;
    }

    LOBYTE(v154) = *(v35 + v49 + 32);
    if (StateSemantic.rawValue.getter() == 6710895 && v54 == 0xE300000000000000)
    {

      break;
    }

    ++v49;
    v53 = sub_252E37DB4();
  }

  while ((v53 & 1) == 0);

  v55 = v149;
  v48 = v144;
  if (v137)
  {

    v56 = v147;
    sub_252E37024();

    v57 = 0;
  }

  else
  {
    v57 = 1;
    v56 = v147;
  }

  v49 = v55 + 56;
  v35 = *(v55 + 56);
  (v35)(v56, v57, 1, v152);
  v46 = v56;
  if (qword_27F53F2C8 != -1)
  {
LABEL_131:
    swift_once();
  }

  v58 = off_27F541CF8;
  v59 = *(off_27F541CF8 + 2);
  v60 = v146;
  v129 = off_27F541CF8;
  if (v59 && (v61 = sub_252A44A10(4605519, 0xE300000000000000), (v62 & 1) != 0))
  {
    v63 = (v58[7] + v61);
  }

  else
  {
    v63 = &v154;
    v64._countAndFlagsBits = 4605519;
    v64._object = 0xE300000000000000;
    StateSemantic.init(rawValue:)(v64);
  }

  v65 = *v63;
  v135 = v35;
  v136 = v49;
  v128 = v8;
  if (v65 == 77)
  {
    v66 = v60;
    v67 = 1;
  }

  else
  {
    LOBYTE(v154) = v65;
    StateSemantic.rawValue.getter();
    sub_252E37024();

    v66 = v60;
    v67 = 0;
  }

  (v35)(v66, v67, 1, v152);
  v68 = v60;
  v69 = *(v150 + 48);
  v70 = v48;
  sub_252938414(v46, v48, &qword_27F540298, &unk_252E3C270);
  v134 = v69;
  sub_252938414(v60, v48 + v69, &qword_27F540298, &unk_252E3C270);
  v71 = v149 + 48;
  v72 = *(v149 + 48);
  v73 = v72(v70, 1, v152);
  v130 = v72;
  v131 = v71;
  if (v73 == 1)
  {
    sub_25293847C(v68, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v46, &qword_27F540298, &unk_252E3C270);
    if (v72(v70 + v134, 1, v152) == 1)
    {
      sub_25293847C(v70, &qword_27F540298, &unk_252E3C270);
      LODWORD(v134) = 1;
      goto LABEL_50;
    }

LABEL_47:
    sub_25293847C(v70, &qword_27F540758, &unk_252E4D160);
    LODWORD(v134) = 0;
  }

  else
  {
    v74 = v141;
    sub_252938414(v70, v141, &qword_27F540298, &unk_252E3C270);
    v75 = v134;
    v76 = v70;
    if (v72(v70 + v134, 1, v152) == 1)
    {
      sub_25293847C(v146, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v147, &qword_27F540298, &unk_252E3C270);
      (*(v149 + 8))(v74, v152);
      goto LABEL_47;
    }

    v77 = v70 + v75;
    v78 = v149;
    v79 = v143;
    (*(v149 + 32))(v143, v77, v152);
    sub_252B3DE3C();
    LODWORD(v134) = sub_252E36EF4();
    v80 = v76;
    v81 = *(v78 + 8);
    v81(v79, v152);
    sub_25293847C(v146, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v147, &qword_27F540298, &unk_252E3C270);
    v81(v74, v152);
    sub_25293847C(v80, &qword_27F540298, &unk_252E3C270);
  }

LABEL_50:
  v82 = v151;
  v83 = v148;
  v84 = v135;
  v85 = v129;
  if (v145)
  {

    sub_252E37024();

    v86 = 0;
  }

  else
  {
    v86 = 1;
  }

  v84(v82, v86, 1, v152);
  if (v85[2] && (v87 = sub_252A44A10(0x4556495443414E49, 0xE800000000000000), (v88 & 1) != 0))
  {
    v89 = (v85[7] + v87);
  }

  else
  {
    v89 = &v154;
    v90._countAndFlagsBits = 0x4556495443414E49;
    v90._object = 0xE800000000000000;
    StateSemantic.init(rawValue:)(v90);
  }

  if (*v89 == 77)
  {
    v91 = v83;
    v92 = 1;
  }

  else
  {
    LOBYTE(v154) = *v89;
    StateSemantic.rawValue.getter();
    sub_252E37024();

    v91 = v83;
    v92 = 0;
  }

  v93 = v152;
  v84(v91, v92, 1, v152);
  v94 = v83;
  v95 = v151;
  v96 = *(v150 + 48);
  v97 = v132;
  sub_252938414(v151, v132, &qword_27F540298, &unk_252E3C270);
  sub_252938414(v94, v97 + v96, &qword_27F540298, &unk_252E3C270);
  v98 = v130;
  if (v130(v97, 1, v93) == 1)
  {
    sub_25293847C(v94, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v95, &qword_27F540298, &unk_252E3C270);
    if (v98(v97 + v96, 1, v93) == 1)
    {
      sub_25293847C(v97, &qword_27F540298, &unk_252E3C270);
      LODWORD(v150) = 1;
      goto LABEL_67;
    }

LABEL_65:
    sub_25293847C(v97, &qword_27F540758, &unk_252E4D160);
    LODWORD(v150) = 0;
  }

  else
  {
    v99 = v142;
    sub_252938414(v97, v142, &qword_27F540298, &unk_252E3C270);
    if (v98(v97 + v96, 1, v93) == 1)
    {
      sub_25293847C(v148, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v151, &qword_27F540298, &unk_252E3C270);
      (*(v149 + 8))(v99, v93);
      goto LABEL_65;
    }

    v100 = v149;
    v101 = v143;
    (*(v149 + 32))(v143, v97 + v96, v93);
    sub_252B3DE3C();
    LODWORD(v150) = sub_252E36EF4();
    v102 = *(v100 + 8);
    v102(v101, v152);
    sub_25293847C(v148, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v151, &qword_27F540298, &unk_252E3C270);
    v102(v99, v152);
    v93 = v152;
    sub_25293847C(v97, &qword_27F540298, &unk_252E3C270);
  }

LABEL_67:
  v104 = v138;
  v103 = v139;
  v105 = v135;
  if (v137)
  {
    sub_252E37024();

    v105(v104, 0, 1, v93);
    LODWORD(v152) = v134 ^ 1;
  }

  else
  {
    v135(v138, 1, 1, v93);
    LODWORD(v152) = 0;
  }

  sub_25293847C(v104, &qword_27F540298, &unk_252E3C270);
  if (v145)
  {
    sub_252E37024();

    v105(v103, 0, 1, v93);
    v106 = v150 ^ 1;
  }

  else
  {
    v105(v103, 1, 1, v93);
    v106 = 0;
  }

  LODWORD(v151) = v106;
  sub_25293847C(v103, &qword_27F540298, &unk_252E3C270);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v107 = sub_252E36AD4();
  v149 = __swift_project_value_buffer(v107, qword_27F544C70);
  v154 = 0;
  v155 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E834A0);
  v108 = v153;
  if (v153 == v51)
  {
    v109 = 0x65736C6166;
  }

  else
  {
    v109 = 1702195828;
  }

  if (v153 == v51)
  {
    v110 = 0xE500000000000000;
  }

  else
  {
    v110 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v109, v110);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E834C0);
  if (v108 == v47)
  {
    v111 = 0x65736C6166;
  }

  else
  {
    v111 = 1702195828;
  }

  if (v108 == v47)
  {
    v112 = 0xE500000000000000;
  }

  else
  {
    v112 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v111, v112);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E834E0);
  if (v134)
  {
    v113 = 1702195828;
  }

  else
  {
    v113 = 0x65736C6166;
  }

  if (v134)
  {
    v114 = 0xE400000000000000;
  }

  else
  {
    v114 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v113, v114);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E83500);
  if (v150)
  {
    v115 = 1702195828;
  }

  else
  {
    v115 = 0x65736C6166;
  }

  if (v150)
  {
    v116 = 0xE400000000000000;
  }

  else
  {
    v116 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v115, v116);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E83520);
  v117 = v152;
  if (v152)
  {
    v118 = 1702195828;
  }

  else
  {
    v118 = 0x65736C6166;
  }

  if (v152)
  {
    v119 = 0xE400000000000000;
  }

  else
  {
    v119 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v118, v119);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E83540);
  v120 = v151;
  if (v151)
  {
    v121 = 1702195828;
  }

  else
  {
    v121 = 0x65736C6166;
  }

  if (v151)
  {
    v122 = 0xE400000000000000;
  }

  else
  {
    v122 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v121, v122);

  sub_252CC3D90(v154, v155, 0xD000000000000098, 0x8000000252E83560);

  if (v153 != v51 && ((v117 | v120) & 1) != 0)
  {
LABEL_113:
    v123 = 256;
    goto LABEL_114;
  }

  if (v153 == v47)
  {
    if (v153 != v51)
    {
      v124 = 1;
LABEL_127:
      v123 = 0;
      return v123 | v124;
    }

LABEL_122:
    v124 = v128;
    goto LABEL_127;
  }

  if (v153 == v51 && ((v134 | v150) & 1) == 0)
  {
    goto LABEL_122;
  }

  if ((v134 | v150))
  {
    goto LABEL_113;
  }

  v123 = 0;
LABEL_114:
  v124 = 1;
  return v123 | v124;
}

uint64_t sub_252B834FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252B8131C(a1, a2, a3);
}

void *sub_252B835B0@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetThermostatModeResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B83614(void *a1, void *a2)
{
  v3 = a1;
  v4 = &off_279711000;
  v5 = [a1 userTask];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v3 userTask];
  v8 = &off_279711000;
  if (v7)
  {
    v9 = v7;
    v10 = [v7 attribute];

    if (v10 == 15)
    {
      v11 = 1;
      if (!a2)
      {
        goto LABEL_56;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v12 = [v3 userTask];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 attribute];

    v11 = v14 == 14;
    if (!a2)
    {
      goto LABEL_56;
    }
  }

  else
  {
    sub_252C515AC();
    v11 = 0;
    if (!a2)
    {
      goto LABEL_56;
    }
  }

LABEL_11:
  v15 = [a2 entityResponses];
  if (v15)
  {
    v16 = v15;
    type metadata accessor for HomeEntityResponse();
    v17 = sub_252E37264();

    if (v17 >> 62)
    {
      goto LABEL_54;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v19 = 0;
      v20 = v17 & 0xC000000000000001;
      v21 = v17 & 0xFFFFFFFFFFFFFF8;
      v22 = v17 + 32;
      v61 = v17 + 32;
      v23 = &off_279711000;
      v63 = v17 & 0xC000000000000001;
      v64 = i;
      v62 = v17 & 0xFFFFFFFFFFFFFF8;
      v65 = v17;
      v66 = v3;
      while (v20)
      {
        v24 = MEMORY[0x2530ADF00](v19, v17);
        v25 = __OFADD__(v19++, 1);
        if (v25)
        {
          goto LABEL_52;
        }

LABEL_18:
        v67 = v24;
        v26 = [v24 v23[221]];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 deviceTypes];
          if (!v28)
          {

            v32 = MEMORY[0x277D84F90];
            goto LABEL_35;
          }

          v29 = v28;
          v30 = sub_252E37264();

          v31 = *(v30 + 16);
          if (!v31)
          {

            v32 = MEMORY[0x277D84F90];
            v8 = &off_279711000;
            goto LABEL_33;
          }

          v59 = v11;
          v60 = v6;
          v68 = MEMORY[0x277D84F90];
          sub_2529AA420(0, v31, 0);
          v32 = v68;
          v33 = 32;
          do
          {
            v34 = sub_252E25FC4(*(v30 + v33));
            if (v35)
            {
              v36 = 0;
            }

            else
            {
              v36 = v34;
            }

            v38 = *(v68 + 16);
            v37 = *(v68 + 24);
            if (v38 >= v37 >> 1)
            {
              sub_2529AA420((v37 > 1), v38 + 1, 1);
            }

            *(v68 + 16) = v38 + 1;
            *(v68 + 8 * v38 + 32) = v36;
            v33 += 8;
            --v31;
          }

          while (v31);

          v6 = v60;
          v4 = &off_279711000;
          v11 = v59;
          v8 = &off_279711000;
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v39 = sub_252E36AD4();
          __swift_project_value_buffer(v39, qword_27F544D60);
          sub_252E379F4();

          v40 = [v67 description];
          v41 = sub_252E36F34();
          v43 = v42;

          MEMORY[0x2530AD570](v41, v43);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

          v32 = MEMORY[0x277D84F90];
        }

        v17 = v65;
LABEL_33:
        v23 = &off_279711000;
LABEL_35:
        v44 = *(v32 + 16);
        v3 = v66;
        if (v44)
        {
          v45 = 32;
          while (v44)
          {
            v46 = *(v32 + v45);
            v45 += 8;
            --v44;
            if (v46 == 3)
            {

              v51 = 1;
              goto LABEL_57;
            }
          }
        }

        v47 = sub_252DA10F8();
        v48 = *(v47 + 16);
        if (v48)
        {
          v49 = 32;
          while (v48)
          {
            v50 = *(v47 + v49);
            v49 += 8;
            --v48;
            if (v50 == 29)
            {

              v51 = 1;
              goto LABEL_57;
            }
          }
        }

        else
        {
        }

        v20 = v63;
        v22 = v61;
        v21 = v62;
        if (v19 == v64)
        {
          goto LABEL_55;
        }
      }

      if (v19 >= *(v21 + 16))
      {
        goto LABEL_53;
      }

      v24 = *(v22 + 8 * v19);
      v25 = __OFADD__(v19++, 1);
      if (!v25)
      {
        goto LABEL_18;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      ;
    }

LABEL_55:
  }

LABEL_56:
  v51 = 0;
LABEL_57:
  if ([v6 taskType] != 5)
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_63:
    v55 = [v3 v4[214]];
    if (v55)
    {
      v56 = v55;
      if ([v55 taskType] == 4)
      {

        return v11;
      }

      v57 = [v56 taskType];

      if (v57 == 5)
      {
        return v11;
      }
    }

    else
    {
      sub_252C515AC();
    }

    return 0;
  }

  v52 = [v3 v4[214]];
  if (!v52)
  {
    sub_252C515AC();
    if ((v51 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  v53 = v52;
  v54 = [v52 v8[203]];

  if ((v51 & 1) == 0)
  {
LABEL_67:

    return 0;
  }

  if (v54 != 6)
  {
    goto LABEL_63;
  }

  return 1;
}

uint64_t sub_252B83BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_252E34014();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B83CA4, 0, 0);
}

uint64_t sub_252B83CA4()
{
  v1 = *(v0 + 112);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v0 + 168) = v2;
  *(v2 + 16) = v3;
  v4 = (v2 + 16);
  v5 = [v1 userTask];
  if (v5)
  {
    if (*(v0 + 120))
    {
      v34 = v5;
      v6 = sub_252C2B064(v5);
      v7 = v6;
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 >> 62)
      {
LABEL_33:
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = 0;
      v35 = MEMORY[0x277D84F90];
      while (v9 != v10)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2530ADF00](v10, v7);
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_32;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v14 = sub_252DA124C(0);

        ++v10;
        if (v14)
        {
          MEMORY[0x2530AD700](v15);
          if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v35 = v3;
          v10 = v13;
        }
      }

      v4 = (v2 + 16);
      v17 = v35;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    *v4 = v17;
  }

  v18 = *(v0 + 120);
  if (v18)
  {
    v19 = sub_252C2AC20();
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v0 + 128);
  v21 = swift_allocObject();
  *(v0 + 176) = v21;
  *(v21 + 16) = v20;
  v22 = v19 & 1;
  *(v21 + 24) = v22;
  *(v21 + 32) = v2;
  swift_retain_n();

  if (v18)
  {
    v23 = *(v20 + 48);
    v24 = *(v0 + 120);
    v25 = *__swift_project_boxed_opaque_existential_1((v20 + 24), v23);
    v26 = swift_task_alloc();
    *(v0 + 184) = v26;
    *v26 = v0;
    v26[1] = sub_252B840FC;

    return sub_252C0BF64(0, v22, v25, v4);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 160);
    v29 = *(v0 + 128);
    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v31 = *(v29 + 96);
    __swift_project_boxed_opaque_existential_1((v29 + 72), v31);
    sub_252AD7CC4();
    v32 = swift_task_alloc();
    *(v0 + 232) = v32;
    *v32 = v0;
    v32[1] = sub_252A9A110;
    v33 = *(v0 + 160);

    return sub_252BDB88C(v0 + 16, &unk_252E4E938, v21, v33, 0, 0, 0, v31);
  }
}

uint64_t sub_252B840FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v7 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_252B842B0;
  }

  else
  {
    v5 = sub_252B84210;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B84210()
{
  v1 = v0[21];
  v2 = v0[15];

  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_252A99F6C;
  v4 = v0[16];

  return sub_252E174F4(v2);
}

uint64_t sub_252B842B0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[15];

  v4 = v0[25];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252B84348(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_252B8436C, 0, 0);
}

uint64_t sub_252B8436C()
{
  v1 = *(v0 + 24);
  v2 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_252A9A974;
  v4 = *(v0 + 40);

  return sub_252C0BF64(0, v4, v2, v1 + 16);
}

uint64_t sub_252B8445C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252B83BD4(a1, a2, a3);
}

void *sub_252B84510@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetBooleanStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252B84574(void *a1, _BOOL8 a2)
{
  v4 = [a1 userTask];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2)
  {
    v6 = sub_252C2B064(v4);
    if (v6 >> 62)
    {
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = v7 > 0;
  }

  v8 = [a1 userTask];
  if (!v8)
  {
    sub_252C515AC();

    return 0;
  }

  v9 = v8;
  if ([v8 taskType] != 4)
  {
    v10 = [v9 taskType];

    if (v10 == 5)
    {
      return a2;
    }

    return 0;
  }

  return a2;
}

uint64_t sub_252B84684()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252B84348(v2, v3, v4);
}

char *sub_252B84730(void *a1, unint64_t a2, uint64_t a3, NSObject *a4, char a5, uint64_t a6, char a7)
{
  v14 = [a1 userTask];
  if (!v14)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E80A90, 0xD000000000000080, 0x8000000252E83700, 0xD000000000000039, 0x8000000252E838B0, 50);
    v19 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v21 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v19[v21] = 5;
    [v19 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v15 = sub_252E37254();
    [v19 setEntityResponses_];
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [a1 filters];
  if (!v16)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001ELL, 0x8000000252E80AD0, 0xD000000000000080, 0x8000000252E83700, 0xD000000000000039, 0x8000000252E838B0, 54);
    v19 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v23 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v19[v23] = 5;
    [v19 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v24 = sub_252E37254();
    [v19 setEntityResponses_];

LABEL_10:
    return v19;
  }

  v17 = v16;
  type metadata accessor for HomeFilter();
  v18 = sub_252E37264();

  v19 = sub_252B84F08(v15, v18, a2, a3, a4, a5 & 1, a6, a7 & 1);

  return v19;
}

unint64_t sub_252B84A70(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = MEMORY[0x277D84F90];
    v30 = v3;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v4, v29);
        v6 = isUniquelyReferenced_nonNull_bridgeObject;
        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_43;
        }

        v6 = *(v31 + 8 * v4);

        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          goto LABEL_42;
        }
      }

      v8 = [*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
      sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
      sub_2529E6100();
      v9 = sub_252E373A4();

      v10 = sub_252B2E20C(v9);

      v11 = v10 >> 62;
      v12 = v10 >> 62 ? sub_252E378C4() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v5 >> 62;
      if (v5 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v12;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v13)
        {
          goto LABEL_20;
        }

        v15 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v13)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v15 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = *(v15 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v11)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v18 >> 1) - v17) < v36)
          {
            goto LABEL_45;
          }

          v34 = v2;
          v20 = v15 + 8 * v17 + 32;
          if (v11)
          {
            if (v19 < 1)
            {
              goto LABEL_47;
            }

            sub_2529E6488(&qword_27F5438B8, &qword_27F5438B0, &qword_252E4E958);
            for (i = 0; i != v19; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5438B0, &qword_252E4E958);
              v22 = sub_2529FBE00(v35, i, v10);
              v24 = *v23;

              (v22)(v35, 0);
              *(v20 + 8 * i) = v24;
            }
          }

          else
          {
            type metadata accessor for Action();
            swift_arrayInitWithCopy();
          }

          v2 = v34;
          if (v36 >= 1)
          {
            v25 = *(v15 + 16);
            v7 = __OFADD__(v25, v36);
            v26 = v25 + v36;
            if (v7)
            {
              goto LABEL_46;
            }

            *(v15 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
          goto LABEL_26;
        }
      }

      if (v36 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v4 == v30)
      {
        return v5;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
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
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return MEMORY[0x277D84F90];
}

void sub_252B84E48()
{
  v0 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v1 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v0[v1] = 4;
  v2 = v0;
  [v2 setUserActivity_];

  type metadata accessor for HomeEntityResponse();
  v3 = sub_252E37254();
  [v2 setEntityResponses_];

  qword_27F5758C8 = v2;
}

id sub_252B84F08(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, NSObject *a5, int a6, uint64_t a7, int a8)
{
  LODWORD(v103) = a8;
  LODWORD(v89) = a6;
  v102 = a5;
  v106 = a4;
  v96 = sub_252E36C84();
  v95 = *(v96 - 8);
  v12 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = (v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = sub_252E36D54();
  v93 = *(v94 - 8);
  v14 = *(v93 + 64);
  v15 = MEMORY[0x28223BE20](v94);
  v90 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v91 = v85 - v17;
  v101 = sub_252E36CA4();
  v18 = *(v101 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_252E36D04();
  v104 = *(v99 - 8);
  v21 = *(v104 + 64);
  MEMORY[0x28223BE20](v99);
  v98 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_252E36CB4();
  v88 = *(v97 - 8);
  v23 = *(v88 + 64);
  MEMORY[0x28223BE20](v97);
  v25 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

  v26 = *(sub_252B680FC() + 136);

  v105 = v18;
  if (v26 && (v27 = sub_252E33694(), v29 = v28, , v29))
  {
    v86 = v27;
  }

  else
  {
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F24();

    v86 = sub_252E33694();
    v29 = v30;
  }

  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v31 = sub_252E36814();
  v33 = v32;

  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v34 = ControlHomeIntent.Builder.init()();
  sub_252B4EEFC(a2);
  v35 = (*(*v34 + 208))();
  v87 = a2;
  v36 = v35;

  v37 = (*(*v36 + 184))(a1);

  v39 = (*(*v37 + 224))(v38);

  v40 = v103 & 1;
  sub_252B56B48(a3, v106, v39, a7, v103 & 1, v86, v29, v31, v33);

  v41 = dispatch_semaphore_create(0);
  sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
  v42 = v88;
  v43 = v97;
  (*(v88 + 104))(v25, *MEMORY[0x277D851C0], v97);
  v103 = sub_252E375A4();
  (*(v42 + 8))(v25, v43);
  v44 = swift_allocObject();
  if (qword_27F53F390 != -1)
  {
    swift_once();
  }

  v45 = qword_27F5758C8;
  *(v44 + 16) = qword_27F5758C8;
  v46 = swift_allocObject();
  v97 = a3;
  v47 = v106;
  *(v46 + 16) = a3;
  *(v46 + 24) = v47;
  *(v46 + 32) = v102;
  *(v46 + 40) = v89 & 1;
  *(v46 + 48) = a7;
  *(v46 + 56) = v40;
  *(v46 + 64) = v44;
  *(v46 + 72) = a1;
  *(v46 + 80) = v87;
  *(v46 + 88) = v41;
  v113 = sub_252B89D4C;
  v114 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v110 = 1107296256;
  v111 = sub_252AD686C;
  v112 = &block_descriptor_15;
  v48 = _Block_copy(&aBlock);
  v49 = v47;

  v50 = v45;
  v89 = v44;

  v51 = a1;

  v52 = v41;
  v53 = v98;
  sub_252E36CD4();
  v107 = MEMORY[0x277D84F90];
  v54 = sub_252B89DA4(qword_2814B0298, MEMORY[0x277D85198]);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  v56 = v100;
  v88 = v55;
  v57 = v101;
  v85[1] = v54;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v53, v56, v48);
  _Block_release(v48);
  v58 = v105 + 8;
  v87 = *(v105 + 8);
  v87(v56, v57);
  v59 = v104 + 8;
  v86 = *(v104 + 8);
  v86(v53, v99);

  v60 = v90;
  sub_252E36D14();
  v61 = v92;
  *v92 = v102;
  v62 = v95;
  v63 = v96;
  (*(v95 + 104))(v61, *MEMORY[0x277D85178], v96);
  v64 = v91;
  sub_252E36D24();
  (*(v62 + 8))(v61, v63);
  v65 = *(v93 + 8);
  v66 = v94;
  v65(v60, v94);
  v102 = v52;
  sub_252E375F4();
  v65(v64, v66);
  if (sub_252E36C94())
  {
    v104 = v59;
    v105 = v58;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v67 = sub_252E36AD4();
    __swift_project_value_buffer(v67, qword_2814B0A78);
    aBlock = 0;
    v110 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E838F0);
    v68 = v97;
    v69 = v106;
    MEMORY[0x2530AD570](v97, v106);
    MEMORY[0x2530AD570](0xD000000000000082, 0x8000000252E83960);
    sub_252CC3D90(aBlock, v110, 0xD000000000000080, 0x8000000252E83700);

    v70 = v89;
    if (qword_27F53F370 != -1)
    {
      swift_once();
    }

    v71 = swift_allocObject();
    *(v71 + 16) = v68;
    *(v71 + 24) = v69;
    *(v71 + 32) = 0;
    *(v71 + 40) = 1;
    *(v71 + 48) = 0;
    *(v71 + 56) = 1;
    v113 = sub_252B89DEC;
    v114 = v71;
    aBlock = MEMORY[0x277D85DD0];
    v110 = 1107296256;
    v111 = sub_252AD686C;
    v112 = &block_descriptor_9_0;
    v72 = _Block_copy(&aBlock);
    v73 = v98;
    sub_252E36CD4();
    v107 = MEMORY[0x277D84F90];
    v74 = v100;
    v75 = v101;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v73, v74, v72);
    _Block_release(v72);

    v87(v74, v75);
    v86(v73, v99);

    swift_beginAccess();
  }

  else
  {

    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v76 = sub_252E36AD4();
    __swift_project_value_buffer(v76, qword_2814B0A78);
    aBlock = 0;
    v110 = 0xE000000000000000;
    sub_252E379F4();
    v107 = aBlock;
    v108 = v110;
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E838F0);
    v77 = v97;
    MEMORY[0x2530AD570](v97, v49);
    MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E83910);
    v70 = v89;
    swift_beginAccess();
    v78 = *(v70 + 16);
    v79 = [v78 description];
    v80 = sub_252E36F34();
    v82 = v81;

    MEMORY[0x2530AD570](v80, v82);

    sub_252CC3D90(v107, v108, 0xD000000000000080, 0x8000000252E83700);

    sub_252B58FEC(v77, v49);
  }

  v83 = *(v70 + 16);

  return v83;
}

uint64_t sub_252B85C04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, void *a8, int64_t a9)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_2814B0A78);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E839F0);
  MEMORY[0x2530AD570](a1, a2);
  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E83A30);
  v16 = sub_252E37D94();
  MEMORY[0x2530AD570](v16);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E83A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  MEMORY[0x2530AD570](29549, 0xE200000000000000);
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E83700);

  v18 = sub_252B85E4C(a8, a9, a1, a2, a3, a4 & 1, a5, a6 & 1);
  swift_beginAccess();
  v19 = *(a7 + 16);
  *(a7 + 16) = v18;

  return sub_252E37614();
}

char *sub_252B85E4C(void *a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  LODWORD(v120) = a6;
  v110 = a5;
  v122 = a4;
  v123 = a3;
  v118 = a1;
  v119 = a2;
  v10 = sub_252E36CA4();
  v108 = *(v10 - 8);
  v109 = v10;
  v11 = *(v108 + 64);
  MEMORY[0x28223BE20](v10);
  v106 = &v100[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = sub_252E36D04();
  v105 = *(v107 - 8);
  v13 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v104 = &v100[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_252E36D54();
  v115 = *(v15 - 8);
  v116 = v15;
  v16 = *(v115 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v100[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_252E36AB4();
  v113 = *(v19 - 8);
  v114 = v19;
  v20 = *(v113 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v100[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v23 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  v111 = v23;
  v112 = v22;
  sub_252E36A84();
  v24 = sub_252B680FC();
  v25 = *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities);
  v26 = *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities + 8);

  v27 = *(sub_252B680FC() + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes);

  v28 = sub_252B680FC();
  v29 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer);
  v30 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer + 8);

  LOBYTE(v146) = v26;
  LOBYTE(v135) = 1;
  LOBYTE(v124) = 1;
  LOBYTE(v159[0]) = 1;
  *&v165 = v25;
  BYTE8(v165) = v26;
  *&v166 = v27;
  *(&v166 + 1) = v29;
  *(v167 + 8) = 0u;
  *(&v167[1] + 8) = 0u;
  *(&v167[2] + 8) = 0u;
  *&v167[0] = v30;
  *(&v167[3] + 1) = 0;
  LOBYTE(v168) = 1;
  *(&v168 + 1) = 0;
  v169 = 0uLL;
  LOWORD(v170) = 513;
  *(&v170 + 1) = 0;
  v171 = 0uLL;
  v172 = 1;
  sub_252D806C0();
  v117 = a7;
  if (a8)
  {
    v31 = 30;
  }

  else
  {
    v31 = a7 / 1000;
  }

  sub_252D7ED58(0x716552636E797361, 0xEC00000074736575, GEOLocationCoordinate2DMake, 0, v31);

  sub_252E36D14();
  v121 = v18;
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v103 = sub_252E36AD4();
  v32 = __swift_project_value_buffer(v103, qword_2814B0A78);
  *&v146 = 0;
  *(&v146 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E83A90);
  v33 = v118;
  v34 = [v118 description];
  v35 = sub_252E36F34();
  v37 = v36;

  MEMORY[0x2530AD570](v35, v37);

  sub_252CC7784(v146, *(&v146 + 1), 1, 0xD00000000000007ALL, 0x8000000252E73FB0);
  v38 = v33;

  v39 = [v33 taskType];
  v41 = v122;
  v40 = v123;
  if (v39 == 6)
  {
    v42 = sub_252A54788(v33, v119, v117, a8 & 1, v123, v122, v110, v120 & 1);
  }

  else
  {
    v43 = [v33 taskType];
    v44 = v117;
    if (v43 == 2 || [v38 taskType] == 3)
    {
      v42 = sub_252A55500(v38, v119, v44, a8 & 1, v40, v41, v110, v120 & 1);
    }

    else
    {
      v42 = sub_252A56278(v38, v119, v44, a8 & 1, v40, v41, v110, v120 & 1);
    }
  }

  v45 = v42;
  swift_bridgeObjectRetain_n();
  sub_252B59988(v40, v41, v157);
  v162 = v157[6];
  v163 = v157[7];
  v164 = v158;
  v159[2] = v157[2];
  v159[3] = v157[3];
  v160 = v157[4];
  v161 = v157[5];
  v159[0] = v157[0];
  v159[1] = v157[1];
  if (sub_252AFB7A0(v159) == 1)
  {
    goto LABEL_15;
  }

  if (v160 == __PAIR128__(0xE700000000000000, 0x676E696F476E6FLL))
  {
    sub_25293847C(v157, &qword_27F543160, &qword_252E4E950);
    goto LABEL_19;
  }

  v47 = sub_252E37DB4();
  sub_25293847C(v157, &qword_27F543160, &qword_252E4E950);
  if (v47)
  {
LABEL_19:
    *&v146 = 0;
    *(&v146 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v146 = 0xD00000000000002CLL;
    *(&v146 + 1) = 0x8000000252E83AD0;
    v48 = [v45 description];
    v49 = sub_252E36F34();
    v51 = v50;

    MEMORY[0x2530AD570](v49, v51);

    v110 = "ocation context.";
    sub_252CC3D90(v146, *(&v146 + 1), 0xD000000000000080, 0x8000000252E83700);

    if (qword_27F53F3F8 != -1)
    {
      swift_once();
    }

    v52 = qword_27F575A30;
    v53 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    v102 = v53;
    v54 = sub_252DB4F4C(*&v45[v53], v52);
    v55 = MEMORY[0x277D84F90];
    if (v54)
    {
      v101 = 0;
    }

    else
    {
      v56 = sub_252C285CC();
      if (v56 >> 62)
      {
        v57 = sub_252E378C4();
      }

      else
      {
        v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v55 = MEMORY[0x277D84F90];
      v101 = 0;
      if (!v57 && (v120 & 1) != 0 && (a8 & 1) == 0)
      {
        v143 = v170;
        v144 = v171;
        v145 = v172;
        v139 = v167[2];
        v140 = v167[3];
        v141 = v168;
        v142 = v169;
        v135 = v165;
        v136 = v166;
        v137 = v167[0];
        v138 = v167[1];
        GEOLocationCoordinate2DMake(&v135);
        v131 = v142;
        v132 = v143;
        v133 = v144;
        v134 = v145;
        v128 = v139;
        v129 = v140;
        v130 = v141;
        v124 = v135;
        v125 = v136;
        v126 = v137;
        v127 = v138;
        sub_252B8C948(&v165, &v146);
        v55 = sub_252B871E4(v118, v119, v117, v121, &v124);
        v101 = v58;
        v154 = v132;
        v155 = v133;
        v156 = v134;
        v150 = v128;
        v151 = v129;
        v152 = v130;
        v153 = v131;
        v146 = v124;
        v147 = v125;
        v148 = v126;
        v149 = v127;
        sub_25293847C(&v146, &qword_27F5407B0, &unk_252E42860);
        *&v124 = 0;
        *(&v124 + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&v124 = 0xD00000000000001CLL;
        *(&v124 + 1) = 0x8000000252E83C30;
        v59 = type metadata accessor for HomeEntityResponse();
        v60 = MEMORY[0x2530AD730](v55, v59);
        MEMORY[0x2530AD570](v60);

        sub_252CC3D90(v124, *(&v124 + 1), 0xD000000000000080, v110 | 0x8000000000000000);
      }
    }

    v61 = sub_252B8C2A0(v45, v55);
    v62 = sub_252DB4F4C(*&v45[v102], v52);
    v120 = v32;
    if (v62)
    {
      v63 = 1;
      v46 = v121;
    }

    else
    {
      v64 = sub_252C2B888();
      v46 = v121;
      v63 = v64 || (v55 >> 62 ? (v65 = sub_252E378C4()) : (v65 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10)), !((v65 == 0) | v101 & 1)) || sub_252C2DC30();
    }

    *&v146 = 0;
    *(&v146 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v146 = 0xD000000000000016;
    *(&v146 + 1) = 0x8000000252E83B00;
    v66 = v63;
    if (v63)
    {
      v67 = 1702195828;
    }

    else
    {
      v67 = 0x65736C6166;
    }

    if (v63)
    {
      v68 = 0xE400000000000000;
    }

    else
    {
      v68 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v67, v68);

    sub_252CC3D90(v146, *(&v146 + 1), 0xD000000000000080, v110 | 0x8000000000000000);

    if (v66)
    {
      if (v61 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_46;
        }
      }

      else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_46:
        sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E83B60, 0xD000000000000080, v110 | 0x8000000000000000);
        v69 = [v45 entityResponses];
        if (v69)
        {
          v70 = v69;
          type metadata accessor for HomeEntityResponse();
          v71 = sub_252E37264();
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v119 = __swift_project_value_buffer(v103, qword_27F544D60);
          *&v146 = 0;
          *(&v146 + 1) = 0xE000000000000000;
          sub_252E379F4();

          *&v146 = 0xD00000000000002FLL;
          *(&v146 + 1) = 0x8000000252E69700;
          v72 = v45;
          v73 = [v72 description];
          v74 = sub_252E36F34();
          v76 = v75;

          MEMORY[0x2530AD570](v74, v76);

          sub_252CC3D90(v146, *(&v146 + 1), 0xD000000000000098, 0x8000000252E69730);

          v71 = MEMORY[0x277D84F90];
          v41 = v122;
        }

        *&v146 = v55;
        sub_25297A894(v71);
        v77 = combineEntityResponses(entityResponses:)(v146);

        v119 = v45;
        v78 = *&v45[v102];
        if (qword_27F53F370 != -1)
        {
          swift_once();
        }

        v118 = qword_27F543668;
        v79 = swift_allocObject();
        *(v79 + 16) = v123;
        *(v79 + 24) = v41;
        *(v79 + 32) = v77;
        *(v79 + 40) = 2;
        *(v79 + 48) = v78;
        *(v79 + 56) = 0;
        *&v148 = sub_252B8DE78;
        *(&v148 + 1) = v79;
        *&v146 = MEMORY[0x277D85DD0];
        *(&v146 + 1) = 1107296256;
        *&v147 = sub_252AD686C;
        *(&v147 + 1) = &block_descriptor_16_1;
        v80 = _Block_copy(&v146);
        v81 = v104;
        sub_252E36CD4();
        *&v135 = MEMORY[0x277D84F90];
        sub_252B89DA4(qword_2814B0298, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
        v82 = v122;
        sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
        v83 = v106;
        v84 = v109;
        sub_252E37824();
        MEMORY[0x2530ADA30](0, v81, v83, v80);
        _Block_release(v80);
        (*(v108 + 8))(v83, v84);
        (*(v105 + 8))(v81, v107);

        v85 = sub_252B894AC(v123, v82);
        if (v86 >> 60 == 15)
        {

          sub_252CC4050(0xD000000000000020, 0x8000000252E836D0, 0xD000000000000080, v110 | 0x8000000000000000, 0xD000000000000020, 0x8000000252E83B80, 241);
          sub_252B88050(0);
          v46 = v121;
          v45 = v119;
        }

        else
        {
          v87 = v85;
          v88 = v86;
          v89 = objc_allocWithZone(MEMORY[0x277CEF3F0]);
          v90 = sub_252E32D14();
          v91 = [v89 initWithContext_];

          v92 = [objc_allocWithZone(MEMORY[0x277CEF3E8]) initWithRequestInfo_];
          v46 = v121;
          if (v92)
          {
            v93 = v92;
            sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E83C00, 0xD000000000000080, v110 | 0x8000000000000000);
            v94 = swift_allocObject();
            v95 = v122;
            v94[2] = v123;
            v94[3] = v95;
            v94[4] = sub_252B88050;
            v94[5] = 0;
            v94[6] = v91;
            *&v148 = sub_252B8C938;
            *(&v148 + 1) = v94;
            *&v146 = MEMORY[0x277D85DD0];
            *(&v146 + 1) = 1107296256;
            *&v147 = sub_252B884FC;
            *(&v147 + 1) = &block_descriptor_22;
            v96 = _Block_copy(&v146);
            v97 = v91;

            [v93 performRequestWithCompletion_];
            sub_252982EFC(v87, v88);

            _Block_release(v96);
          }

          else
          {

            sub_252CC4050(0xD000000000000045, 0x8000000252E83BB0, 0xD000000000000080, v110 | 0x8000000000000000, 0xD000000000000020, 0x8000000252E83B80, 263);
            sub_252982EFC(v87, v88);
          }

          v45 = v119;
        }

        goto LABEL_62;
      }
    }

    swift_bridgeObjectRelease_n();

    sub_252CC3D90(0xD00000000000003ALL, 0x8000000252E83B20, 0xD000000000000080, v110 | 0x8000000000000000);
    sub_252B58FEC(v123, v41);
LABEL_62:
    sub_252B8C574(v61);
    goto LABEL_63;
  }

LABEL_15:

  v46 = v121;
LABEL_63:

  v143 = v170;
  v144 = v171;
  v145 = v172;
  v139 = v167[2];
  v140 = v167[3];
  v141 = v168;
  v142 = v169;
  v135 = v165;
  v136 = v166;
  v137 = v167[0];
  v138 = v167[1];
  GEOLocationCoordinate2DMake(&v135);
  v131 = v142;
  v132 = v143;
  v133 = v144;
  v134 = v145;
  v128 = v139;
  v129 = v140;
  v130 = v141;
  v124 = v135;
  v125 = v136;
  v126 = v137;
  v127 = v138;
  v98 = v112;
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v111, v112, "SendAsyncCommand", 16, 2, &v124);
  v154 = v132;
  v155 = v133;
  v156 = v134;
  v150 = v128;
  v151 = v129;
  v152 = v130;
  v153 = v131;
  v146 = v124;
  v147 = v125;
  v148 = v126;
  v149 = v127;
  sub_25293847C(&v146, &qword_27F5407B0, &unk_252E42860);
  (*(v115 + 8))(v46, v116);
  (*(v113 + 8))(v98, v114);
  return v45;
}

unint64_t sub_252B871E4(void *a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v127 = a2;
  v128 = a4;
  v125 = a1;
  v126 = a3;
  v106 = sub_252E36CA4();
  v117 = *(v106 - 8);
  v6 = *(v117 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_252E37564();
  v116 = *(v104 - 8);
  isa = v116[8].isa;
  MEMORY[0x28223BE20](v104);
  v103 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_252E37534();
  v10 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_252E36D04();
  v115 = *(v100 - 8);
  v12 = *(v115 + 8);
  MEMORY[0x28223BE20](v100);
  v123 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_252E36C84();
  v14 = *(v114 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v114);
  v17 = (&v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = sub_252E36D54();
  v18 = *(v113 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v113);
  v99 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v83 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v112 = &v83 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v83 - v27;
  v29 = sub_252E36AB4();
  v86 = *(v29 - 8);
  v87 = v29;
  v30 = *(v86 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a5 + 144);
  v134[8] = *(a5 + 128);
  v134[9] = v33;
  v135 = *(a5 + 160);
  v34 = *(a5 + 80);
  v134[4] = *(a5 + 64);
  v134[5] = v34;
  v35 = *(a5 + 112);
  v134[6] = *(a5 + 96);
  v134[7] = v35;
  v36 = *(a5 + 16);
  v134[0] = *a5;
  v134[1] = v36;
  v37 = *(a5 + 48);
  v134[2] = *(a5 + 32);
  v134[3] = v37;
  if (qword_2814B0A18 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = qword_2814B0A20;
    sub_252E36A94();
    sub_252E375D4();
    v91 = v38;
    v92 = v32;
    sub_252E36A84();
    v39 = swift_allocObject();
    v110 = v39;
    *(v39 + 16) = MEMORY[0x277D84F90];
    v90 = (v39 + 16);
    v40 = swift_allocObject();
    v109 = v40;
    *(v40 + 16) = 0;
    v41 = (v40 + 16);
    v42 = swift_allocObject();
    v108 = v42;
    *(v42 + 16) = 0;
    v89 = (v42 + 16);
    v127 = sub_252B89DF0(v125, v127);
    v107 = v43;
    sub_252E36D14();
    *v17 = v126;
    v44 = v14[13];
    v122 = *MEMORY[0x277D85178];
    v45 = v114;
    v120 = v44;
    v121 = v14 + 13;
    v44(v17);
    MEMORY[0x2530AD270](v28, v17);
    v46 = v14[1];
    v46(v17, v45);
    sub_252E36D34();
    v47 = v112;
    MEMORY[0x2530AD270](v24, v17);
    v46(v17, v45);
    v48 = *(v18 + 8);
    v111 = v24;
    v125 = v48;
    v126 = (v18 + 8);
    (v48)(v24, v113);
    v24 = v47;
    v49 = v14 + 1;
    v50 = v17;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v51 = sub_252E36AD4();
    v52 = __swift_project_value_buffer(v51, qword_2814B0A78);
    v131 = 0;
    v132 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E83C70);
    v88 = v28;
    sub_252E36D34();
    v53 = v114;
    sub_252E37AE4();
    v119 = v46;
    v46(v17, v53);
    v84 = "ocation context.";
    v85 = v52;
    sub_252CC3D90(v131, v132, 0xD000000000000080, 0x8000000252E83700);

    v124 = dispatch_group_create();
    swift_beginAccess();
    v14 = v111;
    if ((*v41 & 1) == 0)
    {
      v97 = v133;
      v98 = v116 + 13;
      v96 = (v117 + 8);
      v95 = *MEMORY[0x277D85260];
      v94 = (v115 + 8);
      v118 = v49;
      v129 = v17;
      v93 = v41;
      while (1)
      {
        dispatch_group_enter(v124);
        sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
        sub_252E36CE4();
        v131 = MEMORY[0x277D84F90];
        sub_252B89DA4(&qword_2814B0220, MEMORY[0x277D85230]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540300, &qword_252E3C170);
        v117 = MEMORY[0x277D83970];
        sub_2529E6488(&qword_2814B0278, &qword_27F540300, &qword_252E3C170);
        sub_252E37824();
        (v98->isa)(v103, v95, v104);
        v128 = sub_252E37594();
        v24 = v99;
        sub_252E36D14();
        *v50 = 2000;
        v54 = v50;
        v55 = v114;
        v120(v54, v122, v114);
        MEMORY[0x2530AD270](v24, v129);
        v119(v129, v55);
        v56 = v113;
        (v125)(v24, v113);
        v57 = swift_allocObject();
        v59 = v107;
        v58 = v108;
        v57[2] = v127;
        v57[3] = v59;
        v60 = v109;
        v57[4] = v110;
        v57[5] = v60;
        v61 = v124;
        v57[6] = v58;
        v57[7] = v61;
        v133[2] = sub_252B8C9A4;
        v133[3] = v57;
        v131 = MEMORY[0x277D85DD0];
        v132 = 1107296256;
        v133[0] = sub_252AD686C;
        v133[1] = &block_descriptor_35;
        v115 = _Block_copy(&v131);

        v14 = v111;

        v116 = v61;
        v62 = v123;
        sub_252E36CD4();
        v130[1] = MEMORY[0x277D84F90];
        sub_252B89DA4(qword_2814B0298, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
        sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
        v63 = v55;
        v64 = v105;
        v65 = v106;
        sub_252E37824();
        v66 = v62;
        v67 = v62;
        v68 = v115;
        MEMORY[0x2530ADA00](v14, v67, v64, v115);
        _Block_release(v68);
        v69 = v65;
        v50 = v129;
        (*v96)(v64, v69);
        (*v94)(v66, v100);
        v70 = v125;
        (v125)(v14, v56);

        sub_252E36D14();
        *v50 = 12000;
        v120(v50, v122, v63);
        MEMORY[0x2530AD270](v24, v50);
        v119(v50, v63);
        v70(v24, v56);
        sub_252E37504();
        v70(v14, v56);
        sub_252E36D14();
        sub_252B89DA4(&qword_27F5438A8, MEMORY[0x277D851E0]);
        v71 = sub_252E36EB4();
        v70(v14, v56);
        if (v71)
        {
          break;
        }

        if (*v93 == 1)
        {
          goto LABEL_10;
        }
      }

      sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E83C90, 0xD000000000000080, v84 | 0x8000000000000000);

      *v93 = 1;
    }

LABEL_10:
    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v91, v92, "PollingAsyncCommand", 19, 2, v134);
    v72 = v90;
    swift_beginAccess();
    v32 = *v72;
    v28 = v89;
    swift_beginAccess();
    if (*v28)
    {

      goto LABEL_26;
    }

    v130[0] = MEMORY[0x277D84F90];
    v17 = v32 >> 62 ? sub_252E378C4() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v17)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x2530ADF00](v18, v32);
      }

      else
      {
        if (v18 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v74 = *(v32 + 8 * v18 + 32);
      }

      v24 = v74;
      v14 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (sub_252B8B61C(v127, v74))
      {
      }

      else
      {
        sub_252E37A94();
        v73 = *(v130[0] + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        v28 = v130;
        sub_252E37AA4();
      }

      ++v18;
      if (v14 == v17)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_25:

  v32 = v130[0];
LABEL_26:
  v76 = v112;
  v75 = v113;
  v78 = v86;
  v77 = v87;
  v79 = sub_252B8BEA0(v32);

  v80 = v125;
  (v125)(v76, v75);
  v80(v88, v75);
  (*(v78 + 8))(v92, v77);
  v81 = *(v108 + 16);

  return v79;
}

uint64_t sub_252B88050(void *a1)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_2814B0A78);
  sub_252E379F4();

  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5438C0, &unk_252E4E960);
  v4 = sub_252E36F94();
  MEMORY[0x2530AD570](v4);

  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E83F60, 0xD000000000000080, 0x8000000252E83700);
}

uint64_t sub_252B88168(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = sub_252E36AB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a4;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_2814B0A78);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E83EE0);
    MEMORY[0x2530AD570](a2, a3);
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E83F00);
    sub_252CC3D90(v21, v22, 0xD000000000000080, 0x8000000252E83700);

    if (qword_27F53F5D0 != -1)
    {
      swift_once();
    }

    sub_252E375E4();
    sub_252E36AA4();
    sub_252E36A74();
    (*(v12 + 8))(v15, v11);
    return v20(a6);
  }

  else
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_2814B0A78);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E83EA0);
    MEMORY[0x2530AD570](a2, a3);
    MEMORY[0x2530AD570](0x69737361206E6920, 0xED0000746E617473);
    sub_252CC4050(v21, v22, 0xD000000000000080, 0x8000000252E83700, 0xD000000000000020, 0x8000000252E83B80, 259);
  }
}

uint64_t sub_252B884FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_252B88550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v24 = a5;
  v25 = a6;
  v9 = sub_252E36D54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_2814B0A78);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E83D70);
  sub_252E36D14();
  sub_252E37AE4();
  (*(v10 + 8))(v13, v9);
  sub_252CC3D90(v26, v27, 0xD000000000000080, 0x8000000252E83700);

  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v15 = sub_2529FF6A8(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v16 = sub_252A565B8(a2, v15, 0, 1, 0, 0, 0, 0);

  v17 = [v16 entityResponses];
  if (v17)
  {
    v18 = v17;
    type metadata accessor for HomeEntityResponse();
    v19 = sub_252E37264();

    swift_beginAccess();

    sub_25297A894(v20);
    swift_endAccess();
    if (sub_252B8C9B4(a1, v19))
    {
      sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E83D90, 0xD000000000000080, 0x8000000252E83700);
      swift_beginAccess();
      *(a4 + 16) = 1;
      v21 = v24;
      swift_beginAccess();
      *(v21 + 16) = 1;
    }

    v22 = sub_252B8CC08(v19);

    if (v22)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
    }
  }

  dispatch_group_leave(v25);
}