uint64_t dispatch thunk of DIPKeystoreKeychain.__allocating_init(requireUserAuth:externalizedLAContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 96) + **(v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_225A206E8;

  return v10(a1, a2, a3);
}

uint64_t sub_225A206E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DIPKeystoreKeychain.generateIdentityKeyPair(label:algorithm:constraints:enableUAM:temporary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 120) + **(*v7 + 120));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_2259FE39C;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of IdentityKeyWithKeychain.authMethod()()
{
  v4 = (*(*v0 + 432) + **(*v0 + 432));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_225A01DDC;

  return v4();
}

uint64_t sub_225A20D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A20E98()
{
  result = sub_225A265CC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_225A20F38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DIPECIESSessionECV1();
  result = swift_allocObject();
  *a2 = result;
  return result;
}

uint64_t DIPECIESSessionECV3.ePublicKeyData.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

uint64_t DIPECIESSessionECV3.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  DIPECIESSessionECV3.init(_:)(a1);
  return v2;
}

uint64_t DIPECIESSessionECV3.init(_:)(void *a1)
{
  v3 = v1;
  v100 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = (&v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v87 - v11;
  v13 = sub_225CCD954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    *(v3 + 16) = a1;
    v18 = a1;
    v19 = SecKeyCopyPublicKey(v18);
    if (!v19)
    {
      v92 = v3;
      v90 = 0x8000000225D18060;
      v20 = MEMORY[0x277D84F90];
      v21 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v91 = swift_allocError();
      v23 = v22;
      v24 = sub_225CCE954();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v12, 1, 1, v24);
      LODWORD(v24) = (*(v25 + 48))(v12, 1, v24);
      sub_2259CB640(v12, &unk_27D73B050);
      if (v24)
      {
        v26 = 155;
      }

      else
      {
        v26 = 23;
      }

      v27 = sub_225B2C374(v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      error = v27;
      sub_225B2C4A0(v21, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &error);

      v29 = error;
      v30 = sub_225B29AA0(0, 1, 1, v20);
      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_225B29AA0((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[56 * v32];
      *(v33 + 4) = 0xD00000000000001BLL;
      *(v33 + 5) = 0x8000000225D180C0;
      v34 = v90;
      *(v33 + 6) = 0xD000000000000023;
      *(v33 + 7) = v34;
      *(v33 + 8) = 0x293A5F2874696E69;
      *(v33 + 9) = 0xE800000000000000;
      *(v33 + 10) = 126;
      *v23 = v26;
      *(v23 + 8) = v30;
      *(v23 + 16) = 0xD00000000000001BLL;
      *(v23 + 24) = 0x8000000225D180C0;
      *(v23 + 32) = v29;
      *(v23 + 40) = 0;
      swift_willThrow();

      v3 = v92;
      v35 = *(v92 + 16);
      goto LABEL_20;
    }
  }

  else
  {
    LOBYTE(v93[0]) = 0;
    v36 = sub_225A1CB38(v93, 0, 0);
    if (v2)
    {
      v89 = v9;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v38 = off_28105B918;
      v39 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v40 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v40));
      (*(v14 + 16))(v17, &v38[v39], v13);
      os_unfair_lock_unlock(&v38[v40]);
      v41 = v2;
      v42 = sub_225CCD934();
      v43 = sub_225CCED14();

      v44 = os_log_type_enabled(v42, v43);
      v92 = v3;
      if (v44)
      {
        v45 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        error = v91;
        *v45 = 136446210;
        swift_getErrorValue();
        v46 = sub_225CCFB24();
        v48 = sub_2259BE198(v46, v47, &error);

        *(v45 + 4) = v48;
        _os_log_impl(&dword_2259A7000, v42, v43, "failed to create key pair for ECIES. %{public}s", v45, 0xCu);
        v49 = v91;
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x22AA6F950](v49, -1, -1);
        MEMORY[0x22AA6F950](v45, -1, -1);
      }

      (*(v14 + 8))(v17, v13);
      v90 = " key pair for ECIES.";
      v50 = v2;
      v51 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v53 = v52;
      swift_getErrorValue();
      v54 = v93[7];
      v55 = v2;
      sub_225B21FAC(v54, &error);

      v56 = v95;
      v91 = 0x8000000225D18030;
      if (v95)
      {
        v89 = error;
        v88 = v96;
        v87 = v97;
        v57 = v98;
        v58 = v99;
      }

      else
      {
        error = v2;
        v65 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259D8718(0, &qword_281059A90);
        if (swift_dynamicCast())
        {
          v66 = v93[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v68 = [v66 code];
          v69 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v69;
          *(inited + 40) = v68;
          v57 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v70 = v2;
          v89 = 0;
          v88 = 0;
          v87 = 0;
          v56 = MEMORY[0x277D84F90];
        }

        else
        {
          error = v2;
          v71 = v2;
          v72 = sub_225CCE954();
          v73 = v89;
          v74 = swift_dynamicCast();
          v75 = *(v72 - 8);
          (*(v75 + 56))(v73, v74 ^ 1u, 1, v72);
          LODWORD(v75) = (*(v75 + 48))(v73, 1, v72);
          sub_2259CB640(v73, &unk_27D73B050);
          if (v75)
          {
            v76 = 0;
          }

          else
          {
            v76 = 23;
          }

          v89 = v76;
          v56 = MEMORY[0x277D84F90];
          v57 = sub_225B2C374(MEMORY[0x277D84F90]);
          v77 = v2;
          v88 = 0xD000000000000024;
          v87 = 0x8000000225D18030;
        }

        v58 = v2;
      }

      v78 = v90 | 0x8000000000000000;
      v79 = swift_isUniquelyReferenced_nonNull_native();
      error = v57;
      sub_225B2C4A0(v51, sub_225B2AC40, 0, v79, &error);

      v80 = error;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_225B29AA0(0, *(v56 + 2) + 1, 1, v56);
      }

      v82 = *(v56 + 2);
      v81 = *(v56 + 3);
      if (v82 >= v81 >> 1)
      {
        v56 = sub_225B29AA0((v81 > 1), v82 + 1, 1, v56);
      }

      *(v56 + 2) = v82 + 1;
      v83 = &v56[56 * v82];
      v84 = v91;
      *(v83 + 4) = 0xD000000000000024;
      *(v83 + 5) = v84;
      *(v83 + 6) = 0xD000000000000023;
      *(v83 + 7) = v78;
      *(v83 + 8) = 0x293A5F2874696E69;
      *(v83 + 9) = 0xE800000000000000;
      *(v83 + 10) = 136;
      *v53 = v89;
      v85 = v88;
      *(v53 + 8) = v56;
      *(v53 + 16) = v85;
      *(v53 + 24) = v87;
      *(v53 + 32) = v80;
      *(v53 + 40) = v58;
      swift_willThrow();

      v3 = v92;
      goto LABEL_33;
    }

    error = v36;
    v95 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1A8);
    swift_dynamicCast();
    v19 = v93[1];
    *(v3 + 16) = v93[0];
  }

  *(v3 + 24) = v19;
  v59 = v19;
  error = 0;
  v60 = SecKeyCopyExternalRepresentation(v59, &error);

  if (!v60)
  {
    LOWORD(v93[0]) = 155;
    errorFromCFError(_:_:_:)(error, 0xD000000000000021, 0x8000000225D18090, v93);
    swift_willThrow();

    v35 = *(v3 + 24);
LABEL_20:

LABEL_33:
    type metadata accessor for DIPECIESSessionECV3();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v61 = v60;
  v62 = sub_225CCCFA4();
  v64 = v63;

  *(v3 + 32) = v62;
  *(v3 + 40) = v64;
  return v3;
}

uint64_t sub_225A21B00(uint64_t a1, unint64_t a2, __SecCertificate *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v30 - v10;
  v12 = SecCertificateCopyKey(a3);
  if (v12)
  {
    v13 = v12;
    v14 = sub_225A21DF4(a1, a2, v12, a4);
  }

  else
  {
    v31 = 0x8000000225D18060;
    v15 = MEMORY[0x277D84F90];
    v16 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v14 = v17;
    v18 = sub_225CCE954();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v11, 1, 1, v18);
    LODWORD(v18) = (*(v19 + 48))(v11, 1, v18);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v18)
    {
      v20 = 155;
    }

    else
    {
      v20 = 23;
    }

    v21 = sub_225B2C374(v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v21;
    sub_225B2C4A0(v16, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v32);

    v23 = v32;
    v24 = sub_225B29AA0(0, 1, 1, v15);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_225B29AA0((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[56 * v26];
    *(v27 + 4) = 0xD000000000000040;
    *(v27 + 5) = 0x8000000225D180E0;
    v28 = v31;
    *(v27 + 6) = 0xD000000000000023;
    *(v27 + 7) = v28;
    *(v27 + 8) = 0x2874707972636E65;
    *(v27 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v27 + 10) = 160;
    *v14 = v20;
    *(v14 + 8) = v24;
    *(v14 + 16) = 0xD000000000000040;
    *(v14 + 24) = 0x8000000225D180E0;
    *(v14 + 32) = v23;
    *(v14 + 40) = 0;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_225A21DF4(uint64_t a1, unint64_t a2, int64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v83 - v14;
  if (!a4 || !*(a4 + 16) || (v16 = sub_2259F1D10(0), (v17 & 1) == 0) || !*(a4 + 16) || (v18 = (*(a4 + 56) + 16 * v16), v20 = *v18, v19 = v18[1], v21 = sub_2259F1D10(1), (v23 & 1) == 0))
  {
    v90 = 0x8000000225D18060;
    v28 = MEMORY[0x277D84F90];
    v29 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v31 = v30;
    v32 = sub_225CCE954();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v15, 1, 1, v32);
    LODWORD(v32) = (*(v33 + 48))(v15, 1, v32);
    sub_2259CB640(v15, &unk_27D73B050);
    if (v32)
    {
      v34 = 108;
    }

    else
    {
      v34 = 23;
    }

    v35 = sub_225B2C374(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v35;
    sub_225B2C4A0(v29, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v89);

    v37 = v89;
    v38 = sub_225B29AA0(0, 1, 1, v28);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    v41 = &v38[56 * v40];
    *(v41 + 4) = 0xD000000000000053;
    *(v41 + 5) = 0x8000000225D18130;
    *(v41 + 6) = 0xD000000000000023;
    *(v41 + 7) = v90;
    *(v41 + 8) = 0x2874707972636E65;
    *(v41 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v41 + 10) = 179;
    *v31 = v34;
    *(v31 + 8) = v38;
    *(v31 + 16) = 0xD000000000000053;
    *(v31 + 24) = 0x8000000225D18130;
    *(v31 + 32) = v37;
    *(v31 + 40) = 0;
    return swift_willThrow();
  }

  v24 = (*(a4 + 56) + 16 * v21);
  v26 = *v24;
  v25 = v24[1];
  v90 = v26;
  v87 = v19;
  v88 = v25;
  v27 = a2 >> 62;
  v86 = v5;
  if ((a2 >> 62) <= 1)
  {
    if (!v27)
    {
      a4 = BYTE6(a2);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v27 != 2)
  {
    a4 = 0;
    goto LABEL_22;
  }

  v44 = *(a1 + 16);
  v43 = *(a1 + 24);
  a4 = v43 - v44;
  if (__OFSUB__(v43, v44))
  {
    __break(1u);
LABEL_19:
    v45 = (HIDWORD(a1) - a1);
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_41:
      v22 = sub_225B29AA0((v45 > 1), a3, 1, v22);
LABEL_36:
      v71 = v85;
      *(v22 + 2) = a3;
      v79 = &v22[56 * a2];
      *(v79 + 4) = 0xD000000000000022;
      *(v79 + 5) = a1;
      *(v79 + 6) = 0xD000000000000023;
      *(v79 + 7) = v83;
      *(v79 + 8) = 0x2874707972636E65;
      *(v79 + 9) = 0xEF293A5F3A5F3A5FLL;
      *(v79 + 10) = 185;
      *a4 = v15;
      *(a4 + 8) = v22;
      *(a4 + 16) = 0xD000000000000022;
      *(a4 + 24) = a1;
      *(a4 + 32) = v6;
      *(a4 + 40) = 0;
      swift_willThrow();

LABEL_37:
      sub_2259BEF00(v90, v88);
      v56 = v71;
      return sub_2259BEF00(v56, v19);
    }

    a4 = v45;
  }

LABEL_22:
  v46 = objc_allocWithZone(MEMORY[0x277CBEB28]);
  v85 = v20;
  sub_2259CB710(v20, v87);
  sub_2259CB710(v90, v88);
  v47 = [v46 initWithLength_];
  if (!v47)
  {
    v84 = 0x8000000225D18060;
    v57 = MEMORY[0x277D84F90];
    v58 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v60 = v59;
    v61 = sub_225CCE954();
    v62 = *(v61 - 8);
    (*(v62 + 56))(v15, 1, 1, v61);
    LODWORD(v61) = (*(v62 + 48))(v15, 1, v61);
    sub_2259CB640(v15, &unk_27D73B050);
    if (v61)
    {
      v63 = 1154;
    }

    else
    {
      v63 = 23;
    }

    v64 = sub_225B2C374(v57);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v64;
    sub_225B2C4A0(v58, sub_225B2AC40, 0, v65, &v89);

    v66 = v89;
    v67 = sub_225B29AA0(0, 1, 1, v57);
    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    if (v69 >= v68 >> 1)
    {
      v67 = sub_225B29AA0((v68 > 1), v69 + 1, 1, v67);
    }

    v19 = v87;
    *(v67 + 2) = v69 + 1;
    v70 = &v67[56 * v69];
    *(v70 + 4) = 0xD000000000000029;
    *(v70 + 5) = 0x8000000225D18190;
    *(v70 + 6) = 0xD000000000000023;
    v71 = v85;
    *(v70 + 7) = v84;
    *(v70 + 8) = 0x2874707972636E65;
    *(v70 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v70 + 10) = 182;
    *v60 = v63;
    *(v60 + 8) = v67;
    *(v60 + 16) = 0xD000000000000029;
    *(v60 + 24) = 0x8000000225D18190;
    *(v60 + 32) = v66;
    *(v60 + 40) = 0;
    swift_willThrow();
    goto LABEL_37;
  }

  v84 = v47;
  v48 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength_];
  if (!v48)
  {
    a1 = 0x8000000225D181C0;
    v83 = 0x8000000225D18060;
    v72 = MEMORY[0x277D84F90];
    v73 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    a4 = v74;
    v75 = sub_225CCE954();
    v76 = *(v75 - 8);
    (*(v76 + 56))(v15, 1, 1, v75);
    LODWORD(v75) = (*(v76 + 48))(v15, 1, v75);
    sub_2259CB640(v15, &unk_27D73B050);
    if (v75)
    {
      LOWORD(v15) = 1154;
    }

    else
    {
      LOWORD(v15) = 23;
    }

    v77 = sub_225B2C374(v72);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v77;
    sub_225B2C4A0(v73, sub_225B2AC40, 0, v78, &v89);

    v6 = v89;
    v22 = sub_225B29AA0(0, 1, 1, v72);
    a2 = *(v22 + 2);
    v45 = *(v22 + 3);
    a3 = a2 + 1;
    v19 = v87;
    if (a2 < v45 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_41;
  }

  v49 = v48;
  LOBYTE(v89) = 0;
  v50 = a3;
  v52 = v85;
  v51 = v86;
  v19 = v87;
  v53 = v88;
  v54 = v90;
  v55 = (*(*v7 + 152))(&v89, v50, v85, v87, v90, v88);
  if (v51)
  {

    sub_2259BEF00(v54, v53);
    v56 = v52;
    return sub_2259BEF00(v56, v19);
  }

  v80 = v55;

  v81 = v84;
  v82 = v49;
  sub_225A26398(a1, a2, v80, v81, v82, &v89);
  sub_2259BEF00(v52, v19);
  sub_2259BEF00(v90, v53);

  return v89;
}

uint64_t sub_225A226B8@<X0>(uint64_t a1@<X2>, void *a2@<X3>, void *a3@<X4>, unint64_t *a4@<X8>)
{
  v46 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v45 - v10;
  v12 = *(a1 + 16);
  result = CFDataGetBytePtr(v12);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v11;
  v48 = v4;
  result = CFDataGetBytePtr(v12);
  if (!result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  [a2 mutableBytes];
  [a3 mutableBytes];
  v14 = CCCryptorGCMOneshotEncrypt();
  if (!v14)
  {
    [a2 appendData_];
    result = CFDataGetBytePtr(v12);
    if (result)
    {
      v38 = sub_225A6D14C((result + 16), 16);
      v40 = v39;
      v41 = v46;
      *v46 = v38;
      v41[1] = v39;
      sub_2259CB710(v38, v39);
      v42 = sub_225CCCFA4();
      v44 = v43;
      result = sub_2259BEF00(v38, v40);
      v41[2] = v42;
      v41[3] = v44;
      return result;
    }

    goto LABEL_14;
  }

  v15 = v14;
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_225CCF204();

  v49 = 0xD000000000000027;
  v50 = 0x8000000225D18800;
  v51 = v15;
  v16 = MEMORY[0x277D849A8];
  v17 = MEMORY[0x277D84A08];
  v18 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v18);

  MEMORY[0x22AA6CE70](46, 0xE100000000000000);
  v20 = v49;
  v19 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 20;
  v22 = inited + 32;
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  *(inited + 40) = v15;
  v23 = sub_225B2C374(inited);
  swift_setDeallocating();
  sub_2259CB640(v22, &qword_27D73B060);
  sub_2259CB5EC();
  swift_allocError();
  v25 = v24;
  v26 = sub_225CCE954();
  v27 = *(v26 - 8);
  v28 = v47;
  (*(v27 + 56))(v47, 1, 1, v26);
  LODWORD(v26) = (*(v27 + 48))(v28, 1, v26);
  sub_2259CB640(v28, &unk_27D73B050);
  if (v26)
  {
    v29 = 156;
  }

  else
  {
    v29 = 23;
  }

  v30 = MEMORY[0x277D84F90];
  v31 = sub_225B2C374(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v31;
  sub_225B2C4A0(v23, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v49);

  v33 = v49;
  v34 = sub_225B29AA0(0, 1, 1, v30);
  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_225B29AA0((v35 > 1), v36 + 1, 1, v34);
  }

  *(v34 + 2) = v36 + 1;
  v37 = &v34[56 * v36];
  *(v37 + 4) = v20;
  *(v37 + 5) = v19;
  *(v37 + 6) = 0xD000000000000023;
  *(v37 + 7) = 0x8000000225D18060;
  *(v37 + 8) = 0x2874707972636E65;
  *(v37 + 9) = 0xEF293A5F3A5F3A5FLL;
  *(v37 + 10) = 209;
  *v25 = v29;
  *(v25 + 8) = v34;
  *(v25 + 16) = v20;
  *(v25 + 24) = v19;
  *(v25 + 32) = v33;
  *(v25 + 40) = 0;
  return swift_willThrow();
}

uint64_t sub_225A22B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v51 - v10;
  if (!a1)
  {
    v19 = 0x8000000225D18790;
    v52 = 0x8000000225D18610;
    v53 = 0x8000000225D18060;
    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v25 = v42;
    v43 = sub_225CCE954();
    v44 = *(v43 - 8);
    (*(v44 + 56))(v11, 1, 1, v43);
    LODWORD(v43) = (*(v44 + 48))(v11, 1, v43);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v43)
    {
      v28 = 156;
    }

    else
    {
      v28 = 23;
    }

    v45 = sub_225B2C374(v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v45;
    sub_225B2C4A0(v41, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v54);

    v32 = v54;
    v33 = sub_225B29AA0(0, 1, 1, v40);
    v48 = *(v33 + 2);
    v47 = *(v33 + 3);
    if (v48 >= v47 >> 1)
    {
      v33 = sub_225B29AA0((v47 > 1), v48 + 1, 1, v33);
    }

    *(v33 + 2) = v48 + 1;
    v36 = &v33[56 * v48];
    v20 = 0xD00000000000003CLL;
    *(v36 + 4) = 0xD00000000000003CLL;
    *(v36 + 5) = 0x8000000225D18790;
    v49 = v53;
    *(v36 + 6) = 0xD000000000000023;
    *(v36 + 7) = v49;
    *(v36 + 8) = 0xD000000000000011;
    *(v36 + 9) = v52;
    v39 = 257;
    goto LABEL_17;
  }

  v12 = *(a2 + 16);
  result = CFDataGetBytePtr(v12);
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  result = CFDataGetBytePtr(v12);
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  [a3 length];
  [a3 mutableBytes];
  [a3 length];
  v14 = CCCryptorGCMOneshotDecrypt();
  if (v14)
  {
    v15 = v14;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_225CCF204();

    v54 = 0xD000000000000027;
    v55 = 0x8000000225D187D0;
    v56 = v15;
    v16 = MEMORY[0x277D849A8];
    v17 = MEMORY[0x277D84A08];
    v18 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v18);

    MEMORY[0x22AA6CE70](46, 0xE100000000000000);
    v20 = v54;
    v19 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v22 = inited + 32;
    *(inited + 64) = v16;
    *(inited + 72) = v17;
    *(inited + 40) = v15;
    v23 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v22, &qword_27D73B060);
    v52 = 0x8000000225D18610;
    v53 = 0x8000000225D18060;
    sub_2259CB5EC();
    swift_allocError();
    v25 = v24;
    v26 = sub_225CCE954();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v11, 1, 1, v26);
    LODWORD(v26) = (*(v27 + 48))(v11, 1, v26);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v26)
    {
      v28 = 156;
    }

    else
    {
      v28 = 23;
    }

    v29 = MEMORY[0x277D84F90];
    v30 = sub_225B2C374(MEMORY[0x277D84F90]);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v30;
    sub_225B2C4A0(v23, sub_225B2AC40, 0, v31, &v54);

    v32 = v54;
    v33 = sub_225B29AA0(0, 1, 1, v29);
    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_225B29AA0((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v36 = &v33[56 * v35];
    *(v36 + 4) = v20;
    *(v36 + 5) = v19;
    v37 = v53;
    *(v36 + 6) = 0xD000000000000023;
    *(v36 + 7) = v37;
    v38 = v52;
    *(v36 + 8) = 0xD000000000000011;
    *(v36 + 9) = v38;
    v39 = 268;
LABEL_17:
    *(v36 + 10) = v39;
    *v25 = v28;
    *(v25 + 8) = v33;
    *(v25 + 16) = v20;
    *(v25 + 24) = v19;
    *(v25 + 32) = v32;
    *(v25 + 40) = 0;
    return swift_willThrow();
  }

  result = sub_225CCCFA4();
  *a4 = result;
  a4[1] = v50;
  return result;
}

uint64_t sub_225A23168()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

unint64_t sub_225A231AC(unsigned __int8 *a1, __SecKey *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v101 = a6;
  v100 = a5;
  v99 = a2;
  v106 = *MEMORY[0x277D85DE8];
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v90 - v17;
  v19 = *a1;
  v20 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_14;
    }

    v22 = *(a3 + 16);
    v21 = *(a3 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (!v23)
    {
      if (v24 == 65)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    v16 = sub_225B29AA0((v24 > 1), v18, 1, v16);
LABEL_65:
    *(v16 + 2) = v18;
    v86 = &v16[56 * a3];
    *(v86 + 4) = v10;
    *(v86 + 5) = a4;
    v87 = v101;
    *(v86 + 6) = 0xD000000000000023;
    *(v86 + 7) = v87;
    v88 = v100;
    *(v86 + 8) = 0xD00000000000001CLL;
    *(v86 + 9) = v88;
    *(v86 + 10) = 286;
    LOWORD(v19->isa) = v13;
    v19->info = v16;
    v19->data = v10;
LABEL_66:
    v19->length = a4;
    v19[1].isa = v9;
    v19[1].info = 0;
    swift_willThrow();
    return a4;
  }

  if (v20)
  {
    v24 = (HIDWORD(a3) - a3);
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (v24 == 65)
      {
        goto LABEL_8;
      }

LABEL_14:
      v9 = 0xD00000000000001CLL;
      v19 = &v105;
      *&v105 = 0;
      *(&v105 + 1) = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD00000000000003ALL, 0x8000000225D18500);
      if (v20 <= 1)
      {
        if (!v20)
        {
          v25 = BYTE6(a4);
          goto LABEL_44;
        }

        LODWORD(v25) = HIDWORD(a3) - a3;
        if (!__OFSUB__(HIDWORD(a3), a3))
        {
          v25 = v25;
          goto LABEL_44;
        }

        __break(1u);
        goto LABEL_74;
      }

      v25 = 0;
      if (v20 != 2 || (v27 = *(a3 + 16), v26 = *(a3 + 24), v23 = __OFSUB__(v26, v27), v25 = (v26 - v27), !v23))
      {
LABEL_44:
        error = v25;
        v59 = sub_225CCF824();
        MEMORY[0x22AA6CE70](v59);

        a4 = *(&v105 + 1);
        v60 = v105;
        v101 = 0x8000000225D18060;
        v100 = 0x8000000225D18540;
        v61 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v19 = v62;
        v63 = sub_225CCE954();
        v64 = *(v63 - 8);
        (*(v64 + 56))(v18, 1, 1, v63);
        LODWORD(v63) = (*(v64 + 48))(v18, 1, v63);
        sub_2259CB640(v18, &unk_27D73B050);
        if (v63)
        {
          v65 = 108;
        }

        else
        {
          v65 = 23;
        }

        v66 = MEMORY[0x277D84F90];
        v67 = sub_225B2C374(MEMORY[0x277D84F90]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v105 = v67;
        sub_225B2C4A0(v61, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v105);

        v9 = v105;
        v69 = sub_225B29AA0(0, 1, 1, v66);
        v71 = *(v69 + 2);
        v70 = *(v69 + 3);
        if (v71 >= v70 >> 1)
        {
          v69 = sub_225B29AA0((v70 > 1), v71 + 1, 1, v69);
        }

        *(v69 + 2) = v71 + 1;
        v72 = &v69[56 * v71];
        *(v72 + 4) = v60;
        *(v72 + 5) = a4;
        v73 = v101;
        *(v72 + 6) = 0xD000000000000023;
        *(v72 + 7) = v73;
        v74 = v100;
        *(v72 + 8) = 0xD00000000000001CLL;
        *(v72 + 9) = v74;
        *(v72 + 10) = 283;
        LOWORD(v19->isa) = v65;
        v19->info = v69;
        v19->data = v60;
        goto LABEL_66;
      }

      __break(1u);
LABEL_21:
      if (v20 == 2)
      {
        v29 = *(v100 + 16);
        v28 = *(v100 + 24);
        v23 = __OFSUB__(v28, v29);
        v30 = v28 - v29;
        if (v23)
        {
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        if (v30 == 65)
        {
LABEL_24:
          error = 0;
          v31 = SecKeyCopyExternalRepresentation(v99, &error);
          if (!v31)
          {
            LOWORD(v105) = 155;
            a4 = errorFromCFError(_:_:_:)(error, 0xD000000000000029, 0x8000000225D184D0, &v105);
            swift_willThrow();
            return a4;
          }

          v95 = v10;
          v32 = v31;
          v33 = sub_225CCCFA4();
          v35 = v34;

          v36 = v98[4];
          v37 = v98[5];
          sub_2259CB710(v36, v37);
          v38 = v19 == 0;
          if (v19)
          {
            v39 = v36;
          }

          else
          {
            v39 = v33;
          }

          v96 = v39;
          if (v19)
          {
            v40 = v37;
          }

          else
          {
            v40 = v35;
          }

          v97 = v40;
          if (v19)
          {
            v41 = v33;
          }

          else
          {
            v41 = v36;
          }

          if (!v38)
          {
            v37 = v35;
          }

          v105 = xmmword_225CD4150;
          v93 = v33;
          v94 = v35;
          sub_2259CB710(v33, v35);
          v91 = v41;
          v92 = v37;
          sub_225CCCFC4();
          sub_225CCCFC4();
          sub_225CCCFC4();
          sub_225CCCFC4();
          a4 = v98[2];
          v19 = *MEMORY[0x277CDC298];
          v10 = *(&v105 + 1);
          a3 = v105;
          v103 = 0;
          if (qword_28105B910 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_76;
        }
      }

LABEL_52:
      *&v105 = 0;
      *(&v105 + 1) = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD00000000000003DLL, 0x8000000225D18560);
      if (v20 > 1)
      {
        v75 = 0;
        if (v20 != 2)
        {
          goto LABEL_61;
        }

        v77 = *(v100 + 16);
        v76 = *(v100 + 24);
        v23 = __OFSUB__(v76, v77);
        v75 = (v76 - v77);
        if (!v23)
        {
          goto LABEL_61;
        }

        __break(1u);
      }

      else if (!v20)
      {
        v75 = BYTE6(v101);
        goto LABEL_61;
      }

      LODWORD(v75) = HIDWORD(v100) - v100;
      if (__OFSUB__(HIDWORD(v100), v100))
      {
        __break(1u);
      }

      v75 = v75;
LABEL_61:
      error = v75;
      v78 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v78);

      a4 = *(&v105 + 1);
      v10 = v105;
      v101 = 0x8000000225D18060;
      v100 = 0x8000000225D18540;
      v79 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v19 = v80;
      v81 = sub_225CCE954();
      v82 = *(v81 - 8);
      (*(v82 + 56))(v18, 1, 1, v81);
      LODWORD(v81) = (*(v82 + 48))(v18, 1, v81);
      sub_2259CB640(v18, &unk_27D73B050);
      if (v81)
      {
        LOWORD(v13) = 108;
      }

      else
      {
        LOWORD(v13) = 23;
      }

      v83 = MEMORY[0x277D84F90];
      v84 = sub_225B2C374(MEMORY[0x277D84F90]);
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *&v105 = v84;
      sub_225B2C4A0(v79, sub_225B2AC40, 0, v85, &v105);

      v9 = v105;
      v16 = sub_225B29AA0(0, 1, 1, v83);
      a3 = *(v16 + 2);
      v24 = *(v16 + 3);
      v18 = (a3 + 1);
      if (a3 < v24 >> 1)
      {
        goto LABEL_65;
      }

      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (BYTE6(a4) != 65)
  {
    goto LABEL_14;
  }

LABEL_8:
  v20 = v101 >> 62;
  if ((v101 >> 62) > 1)
  {
    goto LABEL_21;
  }

  if (!v20)
  {
    if (BYTE6(v101) == 65)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

  if (!__OFSUB__(HIDWORD(v100), v100))
  {
    if (HIDWORD(v100) - v100 == 65)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  swift_once();
LABEL_37:
  v42 = off_28105B918;
  v43 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v44 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v44));
  (*(v95 + 16))(v13, &v42[v43], v9);
  os_unfair_lock_unlock(&v42[v44]);
  v45 = sub_225CCD934();
  v46 = sub_225CCED04();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2259A7000, v45, v46, "coreidvd: derive shared secret", v47, 2u);
    MEMORY[0x22AA6F950](v47, -1, -1);
  }

  (*(v95 + 8))(v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  v49 = *MEMORY[0x277CDC3F8];
  *(inited + 32) = *MEMORY[0x277CDC3F8];
  v50 = MEMORY[0x277D83B88];
  *(inited + 40) = 32;
  v51 = *MEMORY[0x277CDC400];
  *(inited + 64) = v50;
  *(inited + 72) = v51;
  *(inited + 104) = MEMORY[0x277CC9318];
  *(inited + 80) = a3;
  *(inited + 88) = v10;
  v52 = v49;
  v53 = v51;
  sub_2259CB710(a3, v10);
  sub_225B2CFE0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B070);
  swift_arrayDestroy();
  sub_2259D8718(0, &qword_281059A60);
  sub_225A1D788();
  v54 = sub_225CCE2B4();

  v55 = SecKeyCopyKeyExchangeResult(a4, v19, v99, v54, &v103);

  if (v55)
  {
    type metadata accessor for DIPSecureData();
    a4 = swift_allocObject();
    *(a4 + 16) = v55;
    v56 = v55;
    BytePtr = CFDataGetBytePtr(v56);
    Length = CFDataGetLength(v56);

    mlock(BytePtr, Length);
  }

  else
  {
    v102 = 254;
    a4 = errorFromCFError(_:_:_:)(v103, 0xD00000000000001DLL, 0x8000000225D175C0, &v102);
    swift_willThrow();
  }

  sub_2259BEF00(v91, v92);
  sub_2259BEF00(v96, v97);
  sub_2259BEF00(v93, v94);
  sub_2259BEF00(v105, *(&v105 + 1));
  return a4;
}

uint64_t sub_225A23E6C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_225A23F38()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  sub_2259CB710(v2, *(v1 + 40));
  return v2;
}

void *sub_225A23F80(unsigned __int8 *a1, __SecKey *a2)
{
  error[1] = *MEMORY[0x277D85DE8];
  v53 = sub_225CCD954();
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  error[0] = 0;
  v11 = SecKeyCopyExternalRepresentation(a2, error);
  if (v11)
  {
    v47 = a2;
    v44 = v3;
    v12 = v11;
    v13 = sub_225CCCFA4();
    v15 = v14;

    v16 = v2[4];
    v17 = v2[5];
    sub_2259CB710(v16, v17);
    v18 = v10 == 0;
    if (v10)
    {
      v19 = v16;
    }

    else
    {
      v19 = v13;
    }

    if (v18)
    {
      v20 = v15;
    }

    else
    {
      v20 = v17;
    }

    if (v18)
    {
      v21 = v16;
    }

    else
    {
      v21 = v13;
    }

    if (!v18)
    {
      v17 = v15;
    }

    v56 = xmmword_225CD4150;
    v51 = v13;
    v52 = v15;
    v22 = v15;
    v23 = v20;
    sub_2259CB710(v13, v22);
    v48 = v21;
    v49 = v17;
    sub_225CCCFC4();
    v50 = v19;
    sub_225CCCFC4();
    v46 = v2[2];
    v45 = *MEMORY[0x277CDC298];
    v24 = v56;
    v55 = 0;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v25 = off_28105B918;
    v26 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v27 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v27));
    v28 = v53;
    (*(v6 + 16))(v9, &v25[v26], v53);
    os_unfair_lock_unlock(&v25[v27]);
    v29 = sub_225CCD934();
    v30 = sub_225CCED04();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2259A7000, v29, v30, "coreidvd: derive shared secret", v31, 2u);
      MEMORY[0x22AA6F950](v31, -1, -1);
    }

    (*(v6 + 8))(v9, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD4890;
    v33 = *MEMORY[0x277CDC3F8];
    *(inited + 32) = *MEMORY[0x277CDC3F8];
    v2 = (inited + 32);
    v34 = MEMORY[0x277D83B88];
    *(inited + 40) = 32;
    v35 = *MEMORY[0x277CDC400];
    *(inited + 64) = v34;
    *(inited + 72) = v35;
    *(inited + 104) = MEMORY[0x277CC9318];
    *(inited + 80) = v24;
    v36 = v33;
    v37 = v35;
    sub_2259CB710(v24, *(&v24 + 1));
    sub_225B2CFE0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B070);
    swift_arrayDestroy();
    sub_2259D8718(0, &qword_281059A60);
    sub_225A1D788();
    v38 = sub_225CCE2B4();

    v39 = SecKeyCopyKeyExchangeResult(v46, v45, v47, v38, &v55);

    if (v39)
    {
      type metadata accessor for DIPSecureData();
      v2 = swift_allocObject();
      v2[2] = v39;
      v40 = v39;
      BytePtr = CFDataGetBytePtr(v40);
      Length = CFDataGetLength(v40);

      mlock(BytePtr, Length);
    }

    else
    {
      v54 = 254;
      errorFromCFError(_:_:_:)(v55, 0xD00000000000001DLL, 0x8000000225D175C0, &v54);
      swift_willThrow();
    }

    sub_2259BEF00(v48, v49);
    sub_2259BEF00(v50, v23);
    sub_2259BEF00(v51, v52);
    sub_2259BEF00(v56, *(&v56 + 1));
  }

  else
  {
    LOWORD(v56) = 155;
    errorFromCFError(_:_:_:)(error[0], 0xD000000000000029, 0x8000000225D184D0, &v56);
    swift_willThrow();
  }

  return v2;
}

uint64_t _s13CoreIDVShared19DIPECIESSessionECV3CfD_0()
{
  sub_2259BEF00(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_225A245D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_2259CB6FC(v2, v3);
  return sub_2259B97A8(v5, v6);
}

uint64_t sub_225A24644()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_2259CB6FC(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_225A24694(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_2259B97A8(v5, v6);
}

void sub_225A2473C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

void *sub_225A24794()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_225A247D8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t DIPECIESSessionV3SecKey.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  DIPECIESSessionV3SecKey.init(_:)(a1);
  return v2;
}

uint64_t DIPECIESSessionV3SecKey.init(_:)(void *a1)
{
  error[7] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v39 - v5;
  v41 = xmmword_225CD3100;
  *(v1 + 16) = xmmword_225CD3100;
  *(v1 + 32) = 0;
  v7 = (v1 + 32);
  swift_beginAccess();
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  *(v1 + 16) = v41;
  sub_2259B97A8(v8, v9);
  swift_beginAccess();
  v10 = *(v1 + 32);
  *(v1 + 32) = 0;

  if (a1)
  {
    v11 = *v7;
    *v7 = a1;
    v12 = a1;

    error[0] = 0;
    v13 = SecKeyCopyPublicKey(v12);
    if (v13)
    {
      v14 = v13;
      v15 = SecKeyCopyExternalRepresentation(v13, error);
      if (v15)
      {
        v16 = v15;
        v17 = sub_225CCCFA4();
        v19 = v18;

        v20 = *(v1 + 16);
        v21 = *(v1 + 24);
        *(v1 + 16) = v17;
        *(v1 + 24) = v19;
        sub_2259B97A8(v20, v21);
        return v1;
      }

      LOWORD(v42) = 249;
      errorFromCFError(_:_:_:)(error[0], 0xD00000000000003FLL, 0x8000000225D18230, &v42);
      swift_willThrow();
    }

    else
    {
      v40 = 0x8000000225D18060;
      *&v41 = 0x8000000225D181F0;
      v22 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v24 = v23;
      v25 = sub_225CCE954();
      v26 = *(v25 - 8);
      (*(v26 + 56))(v6, 1, 1, v25);
      LODWORD(v25) = (*(v26 + 48))(v6, 1, v25);
      sub_2259CB640(v6, &unk_27D73B050);
      if (v25)
      {
        v27 = 249;
      }

      else
      {
        v27 = 23;
      }

      v28 = MEMORY[0x277D84F90];
      v29 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v29;
      sub_225B2C4A0(v22, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v42);

      v31 = v42;
      v32 = sub_225B29AA0(0, 1, 1, v28);
      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_225B29AA0((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[56 * v34];
      v36 = v41;
      *(v35 + 4) = 0xD00000000000003BLL;
      *(v35 + 5) = v36;
      v37 = v40;
      *(v35 + 6) = 0xD000000000000023;
      *(v35 + 7) = v37;
      *(v35 + 8) = 0x293A5F2874696E69;
      *(v35 + 9) = 0xE800000000000000;
      *(v35 + 10) = 347;
      *v24 = v27;
      *(v24 + 8) = v32;
      *(v24 + 16) = 0xD00000000000003BLL;
      *(v24 + 24) = v36;
      *(v24 + 32) = v31;
      *(v24 + 40) = 0;
      swift_willThrow();
    }
  }

  return v1;
}

void sub_225A24CA8(unint64_t a1, int64_t a2, __SecKey *a3, uint64_t a4)
{
  v5 = v4;
  error[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v108 - v12;
  if (a4)
  {
    if (*(a4 + 16))
    {
      v14 = sub_2259F1D10(0);
      if (v15)
      {
        if (*(a4 + 16))
        {
          v16 = (*(a4 + 56) + 16 * v14);
          v17 = *v16;
          v18 = v16[1];
          v19 = sub_2259F1D10(1);
          if (v21)
          {
            v22 = (*(a4 + 56) + 16 * v19);
            v23 = *v22;
            v24 = v22[1];
            v115 = v24;
            v116 = v23;
            v25 = v18 >> 62;
            v114 = v17;
            if ((v18 >> 62) > 1)
            {
              if (v25 != 2)
              {
                goto LABEL_25;
              }

              v42 = *(v17 + 16);
              v41 = *(v17 + 24);
              v43 = __OFSUB__(v41, v42);
              v26 = v41 - v42;
              if (!v43)
              {
LABEL_21:
                if (v26 == 65)
                {
                  v25 = v24 >> 62;
                  if ((v24 >> 62) <= 1)
                  {
                    if (!v25)
                    {
                      v44 = BYTE6(v24);
                      goto LABEL_46;
                    }

                    v44 = (HIDWORD(v116) - v116);
                    if (!__OFSUB__(HIDWORD(v116), v116))
                    {
                      v44 = v44;
                      goto LABEL_46;
                    }

LABEL_94:
                    __break(1u);
                    goto LABEL_95;
                  }

                  goto LABEL_32;
                }

LABEL_25:
                a2 = 0xD000000000000023;
                v117 = 0;
                v118 = 0xE000000000000000;
                sub_2259CB710(v17, v18);
                sub_2259CB710(v116, v24);
                v24 = &v117;
                sub_225CCF204();

                v117 = 0xD00000000000002FLL;
                v118 = 0x8000000225D18270;
                if (v25 <= 1)
                {
                  if (!v25)
                  {
                    v44 = BYTE6(v18);
                    goto LABEL_38;
                  }

                  goto LABEL_36;
                }

                v44 = 0;
                if (v25 != 2)
                {
                  goto LABEL_38;
                }

                v46 = *(v17 + 16);
                v45 = *(v17 + 24);
                v43 = __OFSUB__(v45, v46);
                v44 = v45 - v46;
                if (!v43)
                {
                  goto LABEL_38;
                }

                __break(1u);
LABEL_32:
                if (v25 != 2)
                {
LABEL_52:
                  a1 = 0xD000000000000023;
                  v117 = 0;
                  v118 = 0xE000000000000000;
                  sub_2259CB710(v17, v18);
                  a2 = v116;
                  sub_2259CB710(v116, v24);
                  v24 = &v117;
                  sub_225CCF204();
                  MEMORY[0x22AA6CE70](0xD000000000000032, 0x8000000225D182A0);
                  if (v25 > 1)
                  {
                    v44 = 0;
                    if (v25 != 2)
                    {
                      goto LABEL_61;
                    }

                    v76 = *(a2 + 16);
                    v75 = *(a2 + 24);
                    v43 = __OFSUB__(v75, v76);
                    v44 = v75 - v76;
                    if (!v43)
                    {
                      goto LABEL_61;
                    }

                    __break(1u);
                  }

                  else if (!v25)
                  {
                    v44 = BYTE6(v115);
                    goto LABEL_61;
                  }

                  v44 = (HIDWORD(a2) - a2);
                  if (!__OFSUB__(HIDWORD(a2), a2))
                  {
                    v44 = v44;
LABEL_61:
                    v113 = v18;
                    *&v119 = v44;
                    v77 = sub_225CCF824();
                    MEMORY[0x22AA6CE70](v77);

                    v17 = v117;
                    v24 = v118;
                    v112 = 0x8000000225D18060;
                    v78 = MEMORY[0x277D84F90];
                    v79 = sub_225B2C248(MEMORY[0x277D84F90]);
                    sub_2259CB5EC();
                    swift_allocError();
                    a1 = v80;
                    v81 = sub_225CCE954();
                    v82 = *(v81 - 8);
                    (*(v82 + 56))(v13, 1, 1, v81);
                    LODWORD(v81) = (*(v82 + 48))(v13, 1, v81);
                    sub_2259CB640(v13, &unk_27D73B050);
                    if (v81)
                    {
                      LOWORD(v13) = 108;
                    }

                    else
                    {
                      LOWORD(v13) = 23;
                    }

                    v83 = sub_225B2C374(v78);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v117 = v83;
                    sub_225B2C4A0(v79, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v117);

                    v25 = v117;
                    v20 = sub_225B29AA0(0, 1, 1, v78);
                    v5 = *(v20 + 2);
                    v26 = *(v20 + 3);
                    v18 = v5 + 1;
                    if (v5 < v26 >> 1)
                    {
                      goto LABEL_65;
                    }

                    goto LABEL_92;
                  }

LABEL_95:
                  __break(1u);
LABEL_96:
                  v20 = sub_225B29AA0((v44 > 1), a2, 1, v20);
LABEL_85:
                  *(v20 + 2) = a2;
                  v105 = &v20[56 * v18];
                  *(v105 + 4) = 0xD000000000000032;
                  *(v105 + 5) = v17;
                  *(v105 + 6) = 0xD000000000000023;
                  *(v105 + 7) = v109;
                  *(v105 + 8) = 0x2874707972636E65;
                  *(v105 + 9) = 0xEF293A5F3A5F3A5FLL;
                  *(v105 + 10) = 384;
                  *a1 = v13;
                  *(a1 + 8) = v20;
                  *(a1 + 16) = 0xD000000000000032;
                  *(a1 + 24) = v17;
                  *(a1 + 32) = v25;
                  *(a1 + 40) = 0;
                  swift_willThrow();
                  sub_2259BEF00(v111, v112);
                  sub_2259BEF00(a3, v24);
                  sub_2259BEF00(v116, v115);
                  sub_2259BEF00(v114, v113);
                  sub_2259BEF00(v119, *(&v119 + 1));
                  return;
                }

                v48 = *(v116 + 16);
                v47 = *(v116 + 24);
                v43 = __OFSUB__(v47, v48);
                v44 = v47 - v48;
                if (!v43)
                {
LABEL_46:
                  if (v44 == 65)
                  {
                    error[0] = 0;
                    sub_2259CB710(v17, v18);
                    sub_2259CB710(v116, v24);
                    v61 = SecKeyCopyExternalRepresentation(a3, error);
                    if (v61)
                    {
                      v62 = v61;
                      v111 = sub_225CCCFA4();
                      v112 = v63;

                      v119 = xmmword_225CD4150;
                      sub_225CCCFC4();
                      sub_225CCCFC4();
                      sub_225CCCFC4();
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068);
                      inited = swift_initStackObject();
                      v65 = MEMORY[0x277CDC400];
                      *(inited + 16) = xmmword_225CD30F0;
                      v66 = *v65;
                      *(inited + 32) = v66;
                      v113 = inited + 32;
                      v67 = v119;
                      *(inited + 64) = MEMORY[0x277CC9318];
                      *(inited + 40) = v67;
                      v68 = v66;
                      sub_2259CB710(v67, *(&v67 + 1));
                      sub_225B2CFE0(inited);
                      swift_setDeallocating();
                      sub_2259CB640(v113, &qword_27D73B070);
                      v69 = sub_225CCCF74();
                      sub_2259D8718(0, &qword_281059A60);
                      sub_225A1D788();
                      v70 = sub_225CCE2B4();

                      EncryptedDataWithParameters = DIPSecKeyCreateEncryptedDataWithParameters();

                      if (EncryptedDataWithParameters)
                      {
                        a3 = sub_225CCCFA4();
                        v24 = v72;

                        v73 = v24 >> 62;
                        if ((v24 >> 62) > 1)
                        {
                          if (v73 != 2)
                          {
                            goto LABEL_81;
                          }

                          v88 = *(a3 + 2);
                          v87 = *(a3 + 3);
                          v43 = __OFSUB__(v87, v88);
                          v74 = v87 - v88;
                          if (!v43)
                          {
LABEL_76:
                            if (v74 >= 66)
                            {
                              v89 = sub_225CCCFD4();
                              v91 = v90;
                              swift_beginAccess();
                              v92 = *(v5 + 16);
                              v93 = *(v5 + 24);
                              *(v5 + 16) = v89;
                              *(v5 + 24) = v91;
                              sub_2259B97A8(v92, v93);
                              if (v73 == 2)
                              {
                                v107 = *(a3 + 2);
                                v106 = *(a3 + 3);
                                v97 = v106 - v107;
                                v94 = v114;
                                if (__OFSUB__(v106, v107))
                                {
LABEL_99:
                                  __break(1u);
LABEL_100:
                                  __break(1u);
                                  return;
                                }

                                v95 = v112;
                                v96 = v111;
                              }

                              else
                              {
                                v94 = v114;
                                if (v73 == 1)
                                {
                                  v95 = v112;
                                  v96 = v111;
                                  if (!__OFSUB__(HIDWORD(a3), a3))
                                  {
                                    v97 = HIDWORD(a3) - a3;
                                    goto LABEL_89;
                                  }

                                  goto LABEL_98;
                                }

                                v95 = v112;
                                v96 = v111;
                                v97 = BYTE6(v24);
                              }

LABEL_89:
                              if (v97 >= 65)
                              {
                                sub_225CCCFD4();
                                sub_2259BEF00(v96, v95);
                                sub_2259BEF00(a3, v24);
                                sub_2259BEF00(v116, v115);
                                sub_2259BEF00(v94, v18);
                                sub_2259BEF00(v119, *(&v119 + 1));
                                return;
                              }

                              goto LABEL_100;
                            }

LABEL_81:
                            v113 = v18;
                            v17 = 0x8000000225D18370;
                            v109 = 0x8000000225D18060;
                            v98 = MEMORY[0x277D84F90];
                            v99 = sub_225B2C248(MEMORY[0x277D84F90]);
                            sub_2259CB5EC();
                            v110 = swift_allocError();
                            a1 = v100;
                            v101 = sub_225CCE954();
                            v102 = *(v101 - 8);
                            (*(v102 + 56))(v13, 1, 1, v101);
                            LODWORD(v101) = (*(v102 + 48))(v13, 1, v101);
                            sub_2259CB640(v13, &unk_27D73B050);
                            if (v101)
                            {
                              LOWORD(v13) = 155;
                            }

                            else
                            {
                              LOWORD(v13) = 23;
                            }

                            v103 = sub_225B2C374(v98);
                            v104 = swift_isUniquelyReferenced_nonNull_native();
                            v117 = v103;
                            sub_225B2C4A0(v99, sub_225B2AC40, 0, v104, &v117);

                            v25 = v117;
                            v20 = sub_225B29AA0(0, 1, 1, v98);
                            v18 = *(v20 + 2);
                            v44 = *(v20 + 3);
                            a2 = v18 + 1;
                            if (v18 < v44 >> 1)
                            {
                              goto LABEL_85;
                            }

                            goto LABEL_96;
                          }

                          __break(1u);
                        }

                        else if (!v73)
                        {
                          v74 = BYTE6(v24);
                          goto LABEL_76;
                        }

                        LODWORD(v74) = HIDWORD(a3) - a3;
                        if (__OFSUB__(HIDWORD(a3), a3))
                        {
                          __break(1u);
LABEL_98:
                          __break(1u);
                          goto LABEL_99;
                        }

                        v74 = v74;
                        goto LABEL_76;
                      }

                      LOWORD(v117) = 155;
                      errorFromCFError(_:_:_:)(error[0], 0xD00000000000003DLL, 0x8000000225D18330, &v117);
                      swift_willThrow();
                      sub_2259BEF00(v111, v112);
                      sub_2259BEF00(v116, v115);
                      sub_2259BEF00(v114, v18);
                      v86 = *(&v119 + 1);
                      v85 = v119;
                    }

                    else
                    {
                      LOWORD(v117) = 249;
                      errorFromCFError(_:_:_:)(error[0], 0xD000000000000049, 0x8000000225D182E0, &v117);
                      swift_willThrow();
                      sub_2259BEF00(v17, v18);
                      v85 = v116;
                      v86 = v24;
                    }

                    sub_2259BEF00(v85, v86);
                    return;
                  }

                  goto LABEL_52;
                }

                __break(1u);
LABEL_36:
                v44 = (HIDWORD(v17) - v17);
                if (__OFSUB__(HIDWORD(v17), v17))
                {
                  __break(1u);
                  goto LABEL_94;
                }

                v44 = v44;
LABEL_38:
                v113 = v18;
                *&v119 = v44;
                v49 = sub_225CCF824();
                MEMORY[0x22AA6CE70](v49);

                v17 = v117;
                v24 = v118;
                v112 = 0x8000000225D18060;
                v50 = MEMORY[0x277D84F90];
                v51 = sub_225B2C248(MEMORY[0x277D84F90]);
                sub_2259CB5EC();
                swift_allocError();
                a1 = v52;
                v53 = sub_225CCE954();
                v54 = *(v53 - 8);
                (*(v54 + 56))(v13, 1, 1, v53);
                LODWORD(v53) = (*(v54 + 48))(v13, 1, v53);
                sub_2259CB640(v13, &unk_27D73B050);
                if (v53)
                {
                  LOWORD(v13) = 108;
                }

                else
                {
                  LOWORD(v13) = 23;
                }

                v55 = sub_225B2C374(v50);
                v56 = swift_isUniquelyReferenced_nonNull_native();
                v117 = v55;
                sub_225B2C4A0(v51, sub_225B2AC40, 0, v56, &v117);

                v25 = v117;
                v20 = sub_225B29AA0(0, 1, 1, v50);
                v58 = *(v20 + 2);
                v57 = *(v20 + 3);
                if (v58 >= v57 >> 1)
                {
                  v20 = sub_225B29AA0((v57 > 1), v58 + 1, 1, v20);
                }

                *(v20 + 2) = v58 + 1;
                v59 = &v20[56 * v58];
                *(v59 + 4) = v17;
                *(v59 + 5) = v24;
                *(v59 + 6) = 0xD000000000000023;
                *(v59 + 7) = v112;
                *(v59 + 8) = 0x2874707972636E65;
                *(v59 + 9) = 0xEF293A5F3A5F3A5FLL;
                v60 = 361;
                goto LABEL_66;
              }

              __break(1u);
            }

            else if (!v25)
            {
              v26 = BYTE6(v18);
              goto LABEL_21;
            }

            v26 = (HIDWORD(v17) - v17);
            if (__OFSUB__(HIDWORD(v17), v17))
            {
              __break(1u);
LABEL_92:
              v20 = sub_225B29AA0((v26 > 1), v18, 1, v20);
LABEL_65:
              *(v20 + 2) = v18;
              v59 = &v20[56 * v5];
              *(v59 + 4) = v17;
              *(v59 + 5) = v24;
              *(v59 + 6) = 0xD000000000000023;
              *(v59 + 7) = v112;
              *(v59 + 8) = 0x2874707972636E65;
              *(v59 + 9) = 0xEF293A5F3A5F3A5FLL;
              v60 = 364;
LABEL_66:
              *(v59 + 10) = v60;
              *a1 = v13;
              *(a1 + 8) = v20;
              *(a1 + 16) = v17;
              *(a1 + 24) = v24;
              *(a1 + 32) = v25;
              *(a1 + 40) = 0;
              swift_willThrow();
              sub_2259BEF00(v116, v115);
              sub_2259BEF00(v114, v113);
              return;
            }

            v26 = v26;
            goto LABEL_21;
          }
        }
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
  v28 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v30 = v29;
  v31 = sub_225CCE954();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v13, 1, 1, v31);
  LODWORD(v31) = (*(v32 + 48))(v13, 1, v31);
  sub_2259CB640(v13, &unk_27D73B050);
  if (v31)
  {
    v33 = 108;
  }

  else
  {
    v33 = 23;
  }

  v34 = sub_225B2C374(v27);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v117 = v34;
  sub_225B2C4A0(v28, sub_225B2AC40, 0, v35, &v117);

  v36 = v117;
  v37 = sub_225B29AA0(0, 1, 1, v27);
  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
  }

  *(v37 + 2) = v39 + 1;
  v40 = &v37[56 * v39];
  *(v40 + 4) = 0xD000000000000053;
  *(v40 + 5) = 0x8000000225D18130;
  *(v40 + 6) = 0xD000000000000023;
  *(v40 + 7) = 0x8000000225D18060;
  *(v40 + 8) = 0x2874707972636E65;
  *(v40 + 9) = 0xEF293A5F3A5F3A5FLL;
  *(v40 + 10) = 358;
  *v30 = v33;
  *(v30 + 8) = v37;
  *(v30 + 16) = 0xD000000000000053;
  *(v30 + 24) = 0x8000000225D18130;
  *(v30 + 32) = v36;
  *(v30 + 40) = 0;
  swift_willThrow();
}

uint64_t sub_225A25C4C(unint64_t a1, int64_t a2, __SecCertificate *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v31 - v10;
  v12 = SecCertificateCopyKey(a3);
  if (v12)
  {
    v13 = v12;
    sub_225A24CA8(a1, a2, v12, a4);
    v15 = v14;
  }

  else
  {
    v32 = 0x8000000225D18060;
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v15 = v18;
    v19 = sub_225CCE954();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v11, 1, 1, v19);
    LODWORD(v19) = (*(v20 + 48))(v11, 1, v19);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v19)
    {
      v21 = 155;
    }

    else
    {
      v21 = 23;
    }

    v22 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v22;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v33);

    v24 = v33;
    v25 = sub_225B29AA0(0, 1, 1, v16);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_225B29AA0((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[56 * v27];
    *(v28 + 4) = 0xD000000000000032;
    *(v28 + 5) = 0x8000000225D183B0;
    v29 = v32;
    *(v28 + 6) = 0xD000000000000023;
    *(v28 + 7) = v29;
    *(v28 + 8) = 0x2874707972636E65;
    *(v28 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v28 + 10) = 392;
    *v15 = v21;
    *(v15 + 8) = v25;
    *(v15 + 16) = 0xD000000000000032;
    *(v15 + 24) = 0x8000000225D183B0;
    *(v15 + 32) = v24;
    *(v15 + 40) = 0;
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_225A25F6C()
{
  result = sub_225A28E08();
  if (!v0)
  {
    v3 = result;
    sub_2259CB710(result, v2);
    return v3;
  }

  return result;
}

uint64_t DIPECIESSessionV3SecKey.deinit()
{
  sub_2259B97A8(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t DIPECIESSessionV3SecKey.__deallocating_deinit()
{
  sub_2259B97A8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_225A2601C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DIPECIESSessionV3SecKey();
  v5 = swift_allocObject();
  result = DIPECIESSessionV3SecKey.init(_:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_225A260CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  result = a7();
  if (v7)
  {
    return v9;
  }

  return result;
}

uint64_t sub_225A26140()
{
  result = sub_225A28E08();
  if (!v0)
  {
    v3 = result;
    sub_2259CB710(result, v2);
    return v3;
  }

  return result;
}

void sub_225A2618C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = a4;
  v7 = a3;
  v17[2] = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v17[0] = a1;
      LOWORD(v17[1]) = a2;
      BYTE2(v17[1]) = BYTE2(a2);
      BYTE3(v17[1]) = BYTE3(a2);
      BYTE4(v17[1]) = BYTE4(a2);
      BYTE5(v17[1]) = BYTE5(a2);
      v9 = v17;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v10 = a5;
    v11 = v5;
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    a1 = sub_225CCCA44();
    v14 = a1;
    if (a1)
    {
      a1 = sub_225CCCA74();
      a5 = (v12 - a1);
      if (__OFSUB__(v12, a1))
      {
        goto LABEL_21;
      }

      v14 += a5;
    }

    if (!__OFSUB__(v13, v12))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v15 = a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v11 = v5;
      v14 = sub_225CCCA44();
      if (!v14)
      {
LABEL_15:
        sub_225CCCA64();
        a5 = v10;
        v9 = v14;
        a3 = v7;
        a4 = v6;
        v5 = v11;
        goto LABEL_17;
      }

      v16 = sub_225CCCA74();
      if (!__OFSUB__(v15, v16))
      {
        v14 += v15 - v16;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memset(v17, 0, 14);
  v9 = v17;
LABEL_17:
  sub_225A22B68(v9, a3, a4, a5);
  if (v5)
  {
  }

  else
  {
  }
}

void sub_225A26398(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, unint64_t *a6@<X8>)
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_13;
    }

    v11 = a6;
    v15 = v6;
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    if (sub_225CCCA44() && __OFSUB__(v13, sub_225CCCA74()))
    {
      goto LABEL_18;
    }

    if (!__OFSUB__(v12, v13))
    {
LABEL_12:
      sub_225CCCA64();
      a6 = v11;
      a3 = v9;
      a4 = v8;
      a5 = v7;
      v6 = v15;
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10)
  {
    v14 = a1;
    if (a1 >> 32 >= a1)
    {
      v11 = a6;
      v15 = v6;
      if (!sub_225CCCA44() || !__OFSUB__(v14, sub_225CCCA74()))
      {
        goto LABEL_12;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_13:
  sub_225A226B8(a3, a4, a5, a6);
  if (v6)
  {
  }

  else
  {
  }
}

uint64_t sub_225A265CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v7 = v6;
  v8 = sub_225CCE954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3, 1, 1, v8);
  v10 = (*(v9 + 48))(v3, 1, v8);
  sub_2259CB640(v3, &unk_27D73B050);
  v11 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v11;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v21);

  v13 = v21;
  v14 = sub_225B29AA0(0, 1, 1, v4);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_225B29AA0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[56 * v16];
  *(v17 + 4) = 0xD00000000000003DLL;
  *(v17 + 5) = 0x8000000225D18900;
  *(v17 + 6) = 0xD000000000000023;
  *(v17 + 7) = 0x8000000225D18060;
  *(v17 + 8) = 0x2874707972636E65;
  *(v17 + 9) = 0xEF293A5F3A5F3A5FLL;
  *(v17 + 10) = 74;
  if (v10)
  {
    v18 = 109;
  }

  else
  {
    v18 = 23;
  }

  *v7 = v18;
  *(v7 + 8) = v14;
  *(v7 + 16) = 0xD00000000000003DLL;
  *(v7 + 24) = 0x8000000225D18900;
  *(v7 + 32) = v13;
  *(v7 + 40) = 0;
  return swift_willThrow();
}

void sub_225A2684C(uint64_t a1, uint64_t a2, void *a3)
{
  trust[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v56 - v6;
  v8 = sub_225CCE444();
  v9 = sub_225CCE444();
  v10 = sub_225CCE444();
  ApplePinned = DIPSecPolicyCreateApplePinned();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_225CD7D40;
  *(v12 + 32) = a3;
  trust[0] = 0;
  type metadata accessor for SecCertificate(0);
  v13 = a3;
  v14 = sub_225CCE7F4();
  v15 = SecTrustCreateWithCertificates(v14, ApplePinned, trust);

  if (v15 || !trust[0])
  {
    v58 = ApplePinned;

    v60 = 0;
    v61 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000036, 0x8000000225D18890);
    LODWORD(v59) = v15;
    v19 = MEMORY[0x277D849A8];
    v20 = MEMORY[0x277D84A08];
    v21 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v21);

    v22 = v60;
    v23 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v25 = inited + 32;
    *(inited + 64) = v19;
    *(inited + 72) = v20;
    *(inited + 40) = v15;
    v26 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v25, &qword_27D73B060);
    v57 = 0x8000000225D18060;
    sub_2259CB5EC();
    swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v7, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v7, 1, v29);
    sub_2259CB640(v7, &unk_27D73B050);
    if (v29)
    {
      v31 = 155;
    }

    else
    {
      v31 = 23;
    }

    v32 = MEMORY[0x277D84F90];
    v33 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v33;
    sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v60);

    v35 = v60;
    v36 = sub_225B29AA0(0, 1, 1, v32);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[56 * v38];
    *(v39 + 4) = v22;
    *(v39 + 5) = v23;
    v40 = v57;
    *(v39 + 6) = 0xD000000000000023;
    *(v39 + 7) = v40;
    *(v39 + 8) = 0x2874707972636E65;
    *(v39 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v39 + 10) = 85;
    *v28 = v31;
    *(v28 + 8) = v36;
    *(v28 + 16) = v22;
    *(v28 + 24) = v23;
    *(v28 + 32) = v35;
    *(v28 + 40) = 0;
  }

  else
  {
    v60 = 0;
    v16 = trust[0];

    v17 = sub_225CCCF74();
    v18 = DIPSecCopyEncryptedToServer();

    if (v18)
    {
      sub_225CCCFA4();

      return;
    }

    v58 = ApplePinned;
    v57 = 0x8000000225D18060;
    v41 = MEMORY[0x277D84F90];
    v42 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v44 = v43;
    v45 = sub_225CCE954();
    v46 = *(v45 - 8);
    (*(v46 + 56))(v7, 1, 1, v45);
    LODWORD(v45) = (*(v46 + 48))(v7, 1, v45);
    sub_2259CB640(v7, &unk_27D73B050);
    if (v45)
    {
      v47 = 155;
    }

    else
    {
      v47 = 23;
    }

    v48 = sub_225B2C374(v41);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v48;
    sub_225B2C4A0(v42, sub_225B2AC40, 0, v49, &v59);

    v50 = v59;
    v51 = sub_225B29AA0(0, 1, 1, v41);
    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_225B29AA0((v52 > 1), v53 + 1, 1, v51);
    }

    *(v51 + 2) = v53 + 1;
    v54 = &v51[56 * v53];
    *(v54 + 4) = 0xD000000000000028;
    *(v54 + 5) = 0x8000000225D188D0;
    v55 = v57;
    *(v54 + 6) = 0xD000000000000023;
    *(v54 + 7) = v55;
    *(v54 + 8) = 0x2874707972636E65;
    *(v54 + 9) = 0xEF293A5F3A5F3A5FLL;
    *(v54 + 10) = 91;
    *v44 = v47;
    *(v44 + 8) = v51;
    *(v44 + 16) = 0xD000000000000028;
    *(v44 + 24) = 0x8000000225D188D0;
    *(v44 + 32) = v50;
    *(v44 + 40) = 0;
  }

  swift_willThrow();
}

uint64_t sub_225A26F58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v7 = v6;
  v8 = sub_225CCE954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3, 1, 1, v8);
  v10 = (*(v9 + 48))(v3, 1, v8);
  sub_2259CB640(v3, &unk_27D73B050);
  v11 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v11;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v21);

  v13 = v21;
  v14 = sub_225B29AA0(0, 1, 1, v4);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_225B29AA0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[56 * v16];
  *(v17 + 4) = 0xD000000000000024;
  *(v17 + 5) = 0x8000000225D18860;
  *(v17 + 6) = 0xD000000000000023;
  *(v17 + 7) = 0x8000000225D18060;
  *(v17 + 8) = 0xD000000000000011;
  *(v17 + 9) = 0x8000000225D18610;
  *(v17 + 10) = 97;
  if (v10)
  {
    v18 = 109;
  }

  else
  {
    v18 = 23;
  }

  *v7 = v18;
  *(v7 + 8) = v14;
  *(v7 + 16) = 0xD000000000000024;
  *(v7 + 24) = 0x8000000225D18860;
  *(v7 + 32) = v13;
  *(v7 + 40) = 0;
  return swift_willThrow();
}

uint64_t sub_225A271CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v7 = v6;
  v8 = sub_225CCE954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3, 1, 1, v8);
  v10 = (*(v9 + 48))(v3, 1, v8);
  sub_2259CB640(v3, &unk_27D73B050);
  v11 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v11;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v21);

  v13 = v21;
  v14 = sub_225B29AA0(0, 1, 1, v4);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_225B29AA0((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[56 * v16];
  *(v17 + 4) = 0xD00000000000002FLL;
  *(v17 + 5) = 0x8000000225D18830;
  *(v17 + 6) = 0xD000000000000023;
  *(v17 + 7) = 0x8000000225D18060;
  *(v17 + 8) = 0xD000000000000013;
  *(v17 + 9) = 0x8000000225D185D0;
  *(v17 + 10) = 101;
  if (v10)
  {
    v18 = 109;
  }

  else
  {
    v18 = 23;
  }

  *v7 = v18;
  *(v7 + 8) = v14;
  *(v7 + 16) = 0xD00000000000002FLL;
  *(v7 + 24) = 0x8000000225D18830;
  *(v7 + 32) = v13;
  *(v7 + 40) = 0;
  return swift_willThrow();
}

unint64_t sub_225A27464(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v5;
  v8 = v4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v66 - v15;
  if (!a4 || !*(a4 + 16) || (v17 = sub_2259F1D10(0), (v18 & 1) == 0) || !*(a4 + 16) || (v19 = (*(a4 + 56) + 16 * v17), v20 = *v19, v73 = v19[1], result = sub_2259F1D10(1), (v23 & 1) == 0))
  {
    v73 = 0x8000000225D18060;
    v71 = 0x8000000225D18610;
    v28 = MEMORY[0x277D84F90];
    v29 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v31 = v30;
    v32 = sub_225CCE954();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v16, 1, 1, v32);
    LODWORD(v32) = (*(v33 + 48))(v16, 1, v32);
    sub_2259CB640(v16, &unk_27D73B050);
    if (v32)
    {
      v34 = 108;
    }

    else
    {
      v34 = 23;
    }

    v35 = sub_225B2C374(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v35;
    sub_225B2C4A0(v29, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v72);

    v37 = v72;
    v38 = sub_225B29AA0(0, 1, 1, v28);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    v41 = &v38[56 * v40];
    *(v41 + 4) = 0xD000000000000053;
    *(v41 + 5) = 0x8000000225D18130;
    *(v41 + 6) = 0xD000000000000023;
    *(v41 + 7) = v73;
    *(v41 + 8) = 0xD000000000000011;
    *(v41 + 9) = v71;
    *(v41 + 10) = 247;
    *v31 = v34;
    *(v31 + 8) = v38;
    *(v31 + 16) = 0xD000000000000053;
    *(v31 + 24) = 0x8000000225D18130;
    *(v31 + 32) = v37;
    *(v31 + 40) = 0;
    return swift_willThrow();
  }

  v24 = (*(a4 + 56) + 16 * result);
  v25 = *v24;
  v69 = v24[1];
  v26 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v26)
    {
      v27 = BYTE6(a2);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v26 != 2)
  {
    v27 = 0;
    goto LABEL_22;
  }

  v43 = *(a1 + 16);
  v42 = *(a1 + 24);
  v44 = __OFSUB__(v42, v43);
  v27 = v42 - v43;
  if (v44)
  {
    __break(1u);
LABEL_19:
    LODWORD(v27) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v27 = v27;
  }

LABEL_22:
  v71 = v25;
  v45 = v27 - 16;
  if (__OFSUB__(v27, 16))
  {
    __break(1u);
LABEL_34:
    v22 = sub_225B29AA0((v27 > 1), v7, 1, v22);
LABEL_30:
    v61 = v73;
    v62 = v69;
    *(v22 + 2) = v7;
    v63 = &v22[56 * a1];
    *(v63 + 4) = 0xD000000000000029;
    *(v63 + 5) = a2;
    *(v63 + 6) = 0xD000000000000023;
    *(v63 + 7) = v67;
    *(v63 + 8) = 0xD000000000000011;
    *(v63 + 9) = v66;
    *(v63 + 10) = 250;
    *v45 = v16;
    *(v45 + 8) = v22;
    *(v45 + 16) = 0xD000000000000029;
    *(v45 + 24) = a2;
    *(v45 + 32) = v6;
    *(v45 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v71, v62);
    v52 = v70;
    v53 = v61;
    return sub_2259BEF00(v52, v53);
  }

  v46 = objc_allocWithZone(MEMORY[0x277CBEB28]);
  v70 = v20;
  sub_2259CB710(v20, v73);
  v47 = v69;
  sub_2259CB710(v71, v69);
  v48 = [v46 initWithLength_];
  if (!v48)
  {
    a2 = 0x8000000225D18760;
    v66 = 0x8000000225D18610;
    v67 = 0x8000000225D18060;
    v54 = MEMORY[0x277D84F90];
    v55 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v68 = swift_allocError();
    v45 = v56;
    v57 = sub_225CCE954();
    v58 = *(v57 - 8);
    (*(v58 + 56))(v16, 1, 1, v57);
    LODWORD(v57) = (*(v58 + 48))(v16, 1, v57);
    sub_2259CB640(v16, &unk_27D73B050);
    if (v57)
    {
      LOWORD(v16) = 1154;
    }

    else
    {
      LOWORD(v16) = 23;
    }

    v59 = sub_225B2C374(v54);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v59;
    sub_225B2C4A0(v55, sub_225B2AC40, 0, v60, &v72);

    v6 = v72;
    v22 = sub_225B29AA0(0, 1, 1, v54);
    a1 = *(v22 + 2);
    v27 = *(v22 + 3);
    v7 = a1 + 1;
    if (a1 < v27 >> 1)
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  v49 = v48;
  LOBYTE(v72) = 1;
  v50 = v73;
  v51 = (*(*v8 + 152))(&v72, a3, v70, v73, v71, v47);
  if (v5)
  {

    sub_2259BEF00(v71, v47);
    v52 = v70;
    v53 = v50;
    return sub_2259BEF00(v52, v53);
  }

  v64 = v51;

  v65 = v49;
  sub_225A2618C(a1, a2, v64, v65, &v72);
  sub_2259BEF00(v70, v50);
  sub_2259BEF00(v71, v47);

  return v72;
}

unint64_t sub_225A27AE0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  error[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v53 - v12;
  v14 = sub_225CCCF04();
  if (v15 >> 60 == 15)
  {
    v57 = 0x8000000225D18060;
    v56 = 0x8000000225D18610;
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v19 = v18;
    v20 = sub_225CCE954();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v13, 1, 1, v20);
    LODWORD(v20) = (*(v21 + 48))(v13, 1, v20);
    sub_2259CB640(v13, &unk_27D73B050);
    if (v20)
    {
      v22 = 122;
    }

    else
    {
      v22 = 23;
    }

    v23 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    error[0] = v23;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, error);

    v25 = error[0];
    v26 = sub_225B29AA0(0, 1, 1, v16);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v26 = sub_225B29AA0((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v29;
    v30 = &v26[56 * v28];
    *(v30 + 4) = 0xD000000000000030;
    *(v30 + 5) = 0x8000000225D18630;
    v31 = v57;
    *(v30 + 6) = 0xD000000000000023;
    *(v30 + 7) = v31;
    v32 = v56;
    *(v30 + 8) = 0xD000000000000011;
    *(v30 + 9) = v32;
    *(v30 + 10) = 231;
    *v19 = v22;
    *(v19 + 8) = v26;
    *(v19 + 16) = 0xD000000000000030;
    *(v19 + 24) = 0x8000000225D18630;
    *(v19 + 32) = v25;
    *(v19 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    v33 = v14;
    v34 = v15;
    v53 = a1;
    v54 = a2;
    v55 = a5;
    v56 = v5;
    v57 = v6;
    error[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD73B0;
    v36 = *MEMORY[0x277CDC028];
    *(inited + 32) = *MEMORY[0x277CDC028];
    v37 = *MEMORY[0x277CDC040];
    type metadata accessor for CFString(0);
    v38 = MEMORY[0x277CDC018];
    *(inited + 40) = v37;
    v39 = *v38;
    *(inited + 64) = v40;
    *(inited + 72) = v39;
    v41 = MEMORY[0x277D83B88];
    *(inited + 80) = 256;
    v42 = *MEMORY[0x277CDBFE0];
    *(inited + 104) = v41;
    *(inited + 112) = v42;
    v43 = *MEMORY[0x277CDC000];
    *(inited + 144) = v40;
    *(inited + 120) = v43;
    v44 = v36;
    v45 = v37;
    v46 = v39;
    v47 = v42;
    v48 = v43;
    v29 = sub_225B2CFE0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B070);
    swift_arrayDestroy();
    v49 = sub_225CCCF74();
    sub_2259D8718(0, &qword_281059A60);
    sub_225A1D788();
    v50 = sub_225CCE2B4();

    v51 = SecKeyCreateWithData(v49, v50, error);

    if (v51)
    {
      v29 = sub_225A27464(v53, v54, v51, v55);
      sub_2259B97A8(v33, v34);
    }

    else
    {
      v58 = 155;
      errorFromCFError(_:_:_:)(error[0], 0xD000000000000040, 0x8000000225D18710, &v58);
      swift_willThrow();
      sub_2259B97A8(v33, v34);
    }
  }

  return v29;
}

void *sub_225A28020(__CFError *a1, __CFError *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v114 = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v101 - v11;
  swift_beginAccess();
  v13 = v5[4];
  if (v13)
  {
    v14 = v13;
    v15 = sub_225CCCF04();
    v109 = v14;
    if (v16 >> 60 == 15)
    {
      v17 = 0x8000000225D18630;
      v108 = 0x8000000225D18060;
      v107 = 0x8000000225D18610;
      v18 = MEMORY[0x277D84F90];
      v19 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v21 = v20;
      v22 = sub_225CCE954();
      v23 = *(v22 - 8);
      (*(v23 + 56))(v12, 1, 1, v22);
      LODWORD(v22) = (*(v23 + 48))(v12, 1, v22);
      sub_2259CB640(v12, &unk_27D73B050);
      if (v22)
      {
        v24 = 122;
      }

      else
      {
        v24 = 23;
      }

      v25 = sub_225B2C374(v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v25;
      sub_225B2C4A0(v19, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v110);

      v27 = v110[0];
      v28 = sub_225B29AA0(0, 1, 1, v18);
      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_225B29AA0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[56 * v30];
      *(v31 + 4) = 0xD000000000000030;
      *(v31 + 5) = 0x8000000225D18630;
      *(v31 + 6) = 0xD000000000000023;
      *(v31 + 7) = v108;
      *(v31 + 8) = 0xD000000000000011;
      *(v31 + 9) = v107;
      *(v31 + 10) = 402;
      *v21 = v24;
      *(v21 + 8) = v28;
      *(v21 + 16) = 0xD000000000000030;
      *(v21 + 24) = 0x8000000225D18630;
      *(v21 + 32) = v27;
      *(v21 + 40) = 0;
      swift_willThrow();
      goto LABEL_37;
    }

    v107 = v15;
    v108 = v16;
    swift_beginAccess();
    v46 = v5[3];
    if (v46 >> 60 == 15)
    {
      v17 = 0x8000000225D18670;
      v106 = 0x8000000225D18060;
      v105 = 0x8000000225D18610;
      v47 = MEMORY[0x277D84F90];
      v48 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v50 = v49;
      v51 = sub_225CCE954();
      v52 = *(v51 - 8);
      (*(v52 + 56))(v12, 1, 1, v51);
      LODWORD(v51) = (*(v52 + 48))(v12, 1, v51);
      sub_2259CB640(v12, &unk_27D73B050);
      if (v51)
      {
        v53 = 108;
      }

      else
      {
        v53 = 23;
      }

      v54 = sub_225B2C374(v47);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v54;
      sub_225B2C4A0(v48, sub_225B2AC40, 0, v55, v110);

      v56 = v110[0];
      v57 = sub_225B29AA0(0, 1, 1, v47);
      v59 = *(v57 + 2);
      v58 = *(v57 + 3);
      if (v59 >= v58 >> 1)
      {
        v57 = sub_225B29AA0((v58 > 1), v59 + 1, 1, v57);
      }

      *(v57 + 2) = v59 + 1;
      v60 = &v57[56 * v59];
      *(v60 + 4) = 0xD000000000000058;
      *(v60 + 5) = 0x8000000225D18670;
      *(v60 + 6) = 0xD000000000000023;
      *(v60 + 7) = v106;
      *(v60 + 8) = 0xD000000000000011;
      *(v60 + 9) = v105;
      *(v60 + 10) = 405;
      *v50 = v53;
      *(v50 + 8) = v57;
      *(v50 + 16) = 0xD000000000000058;
      *(v50 + 24) = 0x8000000225D18670;
      *(v50 + 32) = v56;
      *(v50 + 40) = 0;
      swift_willThrow();
LABEL_36:
      sub_2259B97A8(v107, v108);
LABEL_37:

      return v17;
    }

    v61 = v5[2];
    if (!a5 || !*(a5 + 16) || (v62 = sub_2259F1D10(0), (v63 & 1) == 0) || !*(a5 + 16) || (v64 = (*(a5 + 56) + 16 * v62), v66 = *v64, v65 = v64[1], v104 = v66, v105 = v65, v67 = sub_2259F1D10(1), (v68 & 1) == 0))
    {
      v17 = 0x8000000225D18130;
      v104 = 0x8000000225D18060;
      v103 = 0x8000000225D18610;
      v105 = v61;
      v106 = v46;
      sub_2259CB710(v61, v46);
      v86 = MEMORY[0x277D84F90];
      v87 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v89 = v88;
      v90 = sub_225CCE954();
      v91 = *(v90 - 8);
      (*(v91 + 56))(v12, 1, 1, v90);
      LODWORD(v90) = (*(v91 + 48))(v12, 1, v90);
      sub_2259CB640(v12, &unk_27D73B050);
      if (v90)
      {
        v92 = 108;
      }

      else
      {
        v92 = 23;
      }

      v93 = sub_225B2C374(v86);
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v93;
      sub_225B2C4A0(v87, sub_225B2AC40, 0, v94, v110);

      v95 = v110[0];
      v96 = sub_225B29AA0(0, 1, 1, v86);
      v98 = *(v96 + 2);
      v97 = *(v96 + 3);
      if (v98 >= v97 >> 1)
      {
        v96 = sub_225B29AA0((v97 > 1), v98 + 1, 1, v96);
      }

      *(v96 + 2) = v98 + 1;
      v99 = &v96[56 * v98];
      *(v99 + 4) = 0xD000000000000053;
      *(v99 + 5) = 0x8000000225D18130;
      *(v99 + 6) = 0xD000000000000023;
      *(v99 + 7) = v104;
      *(v99 + 8) = 0xD000000000000011;
      *(v99 + 9) = v103;
      *(v99 + 10) = 408;
      *v89 = v92;
      *(v89 + 8) = v96;
      *(v89 + 16) = 0xD000000000000053;
      *(v89 + 24) = 0x8000000225D18130;
      *(v89 + 32) = v95;
      *(v89 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v105, v106);
      goto LABEL_36;
    }

    v69 = (*(a5 + 56) + 16 * v67);
    v71 = *v69;
    v70 = v69[1];
    v103 = v71;
    v106 = v70;
    v113 = xmmword_225CD4150;
    sub_2259CB6FC(v61, v46);
    sub_2259CB710(v104, v105);
    sub_2259CB710(v71, v106);
    sub_225CCCFC4();
    sub_225CCCFC4();
    sub_225CCCFC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B068);
    inited = swift_initStackObject();
    v73 = MEMORY[0x277CDC400];
    *(inited + 16) = xmmword_225CD30F0;
    v74 = *v73;
    *(inited + 32) = v74;
    v102 = inited + 32;
    v75 = v113;
    *(inited + 64) = MEMORY[0x277CC9318];
    *(inited + 40) = v75;
    v76 = v74;
    sub_2259CB710(v75, *(&v75 + 1));
    v101[1] = sub_225B2CFE0(inited);
    swift_setDeallocating();
    sub_2259CB640(v102, &qword_27D73B070);
    v77 = v107;
    v78 = v108;
    v111 = v107;
    v112 = v108;
    v110[3] = MEMORY[0x277CC9318];
    v110[4] = MEMORY[0x277CC9300];
    v110[0] = a1;
    v110[1] = a2;
    v79 = __swift_project_boxed_opaque_existential_1(v110, MEMORY[0x277CC9318]);
    v80 = *v79;
    v102 = v79[1];
    sub_2259CB6FC(v77, v78);
    sub_2259CB710(a1, a2);
    sub_225C0EA34(v80, v102);
    __swift_destroy_boxed_opaque_existential_0(v110);
    v81 = v111;
    v82 = v112;
    v110[0] = 0;
    v83 = v14;
    v109 = v81;
    v102 = v82;
    v17 = sub_225CCCF74();
    sub_2259D8718(0, &qword_281059A60);
    sub_225A1D788();
    v84 = sub_225CCE2B4();

    DecryptedDataWithParameters = SecKeyCreateDecryptedDataWithParameters();

    if (DecryptedDataWithParameters)
    {
      v17 = sub_225CCCFA4();
      sub_2259BEF00(v104, v105);
      sub_2259BEF00(v109, v102);
      sub_2259BEF00(v103, v106);
      sub_2259B97A8(v61, v46);
    }

    else
    {
      LOWORD(v111) = 155;
      errorFromCFError(_:_:_:)(v110[0], 0xD00000000000003DLL, 0x8000000225D186D0, &v111);
      swift_willThrow();
      sub_2259BEF00(v104, v105);
      sub_2259BEF00(v109, v102);
      sub_2259BEF00(v103, v106);
      sub_2259B97A8(v61, v46);
    }

    sub_2259B97A8(v107, v108);
    sub_2259BEF00(v113, *(&v113 + 1));
  }

  else
  {
    v109 = 0x8000000225D18060;
    v108 = 0x8000000225D18610;
    v32 = MEMORY[0x277D84F90];
    v33 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v35 = v34;
    v36 = sub_225CCE954();
    v37 = *(v36 - 8);
    (*(v37 + 56))(v12, 1, 1, v36);
    LODWORD(v36) = (*(v37 + 48))(v12, 1, v36);
    sub_2259CB640(v12, &unk_27D73B050);
    if (v36)
    {
      v38 = 122;
    }

    else
    {
      v38 = 23;
    }

    v39 = sub_225B2C374(v32);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v110[0] = v39;
    sub_225B2C4A0(v33, sub_225B2AC40, 0, v40, v110);

    v41 = v110[0];
    v42 = sub_225B29AA0(0, 1, 1, v32);
    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    v17 = (v44 + 1);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_225B29AA0((v43 > 1), v44 + 1, 1, v42);
    }

    *(v42 + 2) = v17;
    v45 = &v42[56 * v44];
    *(v45 + 4) = 0xD000000000000017;
    *(v45 + 5) = 0x8000000225D185F0;
    *(v45 + 6) = 0xD000000000000023;
    *(v45 + 7) = v109;
    *(v45 + 8) = 0xD000000000000011;
    *(v45 + 9) = v108;
    *(v45 + 10) = 399;
    *v35 = v38;
    *(v35 + 8) = v42;
    *(v35 + 16) = 0xD000000000000017;
    *(v35 + 24) = 0x8000000225D185F0;
    *(v35 + 32) = v41;
    *(v35 + 40) = 0;
    swift_willThrow();
  }

  return v17;
}

uint64_t sub_225A28E08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v22 - v3;
  swift_beginAccess();
  if (*(v0 + 24) >> 60 != 15)
  {
    return *(v0 + 16);
  }

  v23 = 0x8000000225D185D0;
  v24 = 0x8000000225D18060;
  v5 = MEMORY[0x277D84F90];
  v6 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v8 = v7;
  v9 = sub_225CCE954();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v4, 1, 1, v9);
  LODWORD(v9) = (*(v10 + 48))(v4, 1, v9);
  sub_2259CB640(v4, &unk_27D73B050);
  if (v9)
  {
    v11 = 107;
  }

  else
  {
    v11 = 23;
  }

  v12 = sub_225B2C374(v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v12;
  sub_225B2C4A0(v6, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v25);

  v14 = v25;
  v15 = sub_225B29AA0(0, 1, 1, v5);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[56 * v17];
  *(v18 + 4) = 0xD000000000000020;
  *(v18 + 5) = 0x8000000225D185A0;
  v19 = v24;
  *(v18 + 6) = 0xD000000000000023;
  *(v18 + 7) = v19;
  v20 = v23;
  *(v18 + 8) = 0xD000000000000013;
  *(v18 + 9) = v20;
  *(v18 + 10) = 429;
  *v8 = v11;
  *(v8 + 8) = v15;
  *(v8 + 16) = 0xD000000000000020;
  *(v8 + 24) = 0x8000000225D185A0;
  *(v8 + 32) = v14;
  *(v8 + 40) = 0;
  return swift_willThrow();
}

unint64_t sub_225A290C0()
{
  result = qword_28105B6F0;
  if (!qword_28105B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B6F0);
  }

  return result;
}

unint64_t sub_225A29118()
{
  result = qword_27D73B1B0;
  if (!qword_27D73B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B1B0);
  }

  return result;
}

uint64_t dispatch thunk of DIPECIESSessionProtocol.encrypt(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 16))();
}

{
  return (*(a6 + 24))();
}

uint64_t dispatch thunk of DIPECIESSessionECV1.encrypt(_:_:_:)()
{
  return (*(*v0 + 88))();
}

{
  return (*(*v0 + 96))();
}

uint64_t dispatch thunk of DIPECIESSessionECV3.encrypt(_:_:_:)()
{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 120))();
}

uint64_t dispatch thunk of DIPECIESSessionV3SecKey.encrypt(_:_:_:)()
{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

CoreIDVShared::EncryptionParamsAlgorithmIdentifier_optional __swiftcall EncryptionParamsAlgorithmIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EncryptionParamsAlgorithmIdentifier.rawValue.getter()
{
  v1 = 0x33765F4345;
  if (*v0 != 1)
  {
    v1 = 0x48535F33765F4345;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x765F4343455F5645;
  }
}

uint64_t sub_225A29814(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x33765F4345;
  if (v2 != 1)
  {
    v4 = 0x48535F33765F4345;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x765F4343455F5645;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF312E4E53412D31;
  }

  v7 = 0xE500000000000000;
  v8 = 0x33765F4345;
  if (*a2 != 1)
  {
    v8 = 0x48535F33765F4345;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x765F4343455F5645;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEF312E4E53412D31;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225A29918()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225A299C4()
{
  sub_225CCE5B4();
}

uint64_t sub_225A29A5C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225A29B10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF312E4E53412D31;
  v4 = 0xE500000000000000;
  v5 = 0x33765F4345;
  if (v2 != 1)
  {
    v5 = 0x48535F33765F4345;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x765F4343455F5645;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

CoreIDVShared::EncryptedMessageEntity_optional __swiftcall EncryptedMessageEntity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EncryptedMessageEntity.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6576726573766469;
    v8 = 0x732D656369766564;
    v9 = 7302761;
    if (v1 != 3)
    {
      v9 = 28787;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x656369766564;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x73676E6975737369;
    v3 = 7566953;
    if (v1 != 9)
    {
      v3 = 0x7373656E6576696CLL;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x616E65687461;
    v5 = 0x726F737365737361;
    if (v1 != 6)
    {
      v5 = 0x726575737369;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_225A29DE4()
{
  sub_225CCFBD4();
  sub_225B70114();
  return sub_225CCFC24();
}

uint64_t sub_225A29E34()
{
  sub_225CCFBD4();
  sub_225B70114();
  return sub_225CCFC24();
}

uint64_t sub_225A29E84@<X0>(uint64_t *a1@<X8>)
{
  result = EncryptedMessageEntity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *RecipientEncryptionCertificate.signing.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t EncryptedMessage.message.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 88);
  v14 = *(v1 + 72);
  v3 = v14;
  v15 = v4;
  v16 = *(v1 + 104);
  v5 = v16;
  v6 = *(v1 + 24);
  v11[0] = *(v1 + 8);
  v11[1] = v6;
  v12 = *(v1 + 40);
  v7 = v12;
  v13 = v2;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;
  v8 = type metadata accessor for EncryptedDataContainer();
  return (*(*(v8 - 8) + 16))(&v10, v11, v8);
}

uint64_t EncryptedMessage.senderSigningKey.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

__n128 EncryptedMessage.init(sender:recipient:message:senderSigningKey:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a3 + 32);
  *(a6 + 56) = *(a3 + 48);
  v7 = *(a3 + 80);
  *(a6 + 72) = *(a3 + 64);
  *(a6 + 88) = v7;
  *(a6 + 104) = *(a3 + 96);
  result = *a3;
  v9 = *(a3 + 16);
  *(a6 + 8) = *a3;
  *(a6 + 24) = v9;
  v10 = *a2;
  *a6 = *a1;
  *(a6 + 1) = v10;
  *(a6 + 40) = v6;
  *(a6 + 120) = a4;
  *(a6 + 128) = a5;
  return result;
}

uint64_t static EncryptedMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  v48[4] = *(a1 + 72);
  v48[5] = v6;
  v48[6] = *(a1 + 104);
  v7 = *(a1 + 24);
  v48[0] = *(a1 + 8);
  v48[1] = v7;
  v48[2] = *(a1 + 40);
  v48[3] = v5;
  v8 = *(a1 + 128);
  v30 = *(a1 + 120);
  v9 = *a2;
  v10 = *(a1 + 1);
  v11 = *(a2 + 1);
  v12 = *(a2 + 56);
  v13 = *(a2 + 88);
  v49[4] = *(a2 + 72);
  v49[5] = v13;
  v49[6] = *(a2 + 104);
  v14 = *(a2 + 24);
  v49[0] = *(a2 + 8);
  v49[1] = v14;
  v49[2] = *(a2 + 40);
  v49[3] = v12;
  v16 = *(a2 + 120);
  v15 = *(a2 + 128);
  if ((sub_225A0FF10(v10, v11) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((sub_225A0FF10(v4, v9) & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = *(a1 + 56);
  v18 = *(a1 + 88);
  v43 = *(a1 + 72);
  v44 = v18;
  v45 = *(a1 + 104);
  v19 = *(a1 + 24);
  v39 = *(a1 + 8);
  v40 = v19;
  v41 = *(a1 + 40);
  v42 = v17;
  v20 = *(a2 + 56);
  v21 = *(a2 + 88);
  v36 = *(a2 + 72);
  v37 = v21;
  v38 = *(a2 + 104);
  v22 = *(a2 + 24);
  v32 = *(a2 + 8);
  v33 = v22;
  v34 = *(a2 + 40);
  v35 = v20;
  v23 = type metadata accessor for EncryptedDataContainer();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v25(v31, v48, v23);
  v25(v31, v49, v23);
  v26 = static EncryptedDataContainer.== infix(_:_:)(&v39, &v32);
  v46[4] = v36;
  v46[5] = v37;
  v46[6] = v38;
  v46[0] = v32;
  v46[1] = v33;
  v46[2] = v34;
  v46[3] = v35;
  v27 = *(v24 + 8);
  v27(v46, v23);
  v47[4] = v43;
  v47[5] = v44;
  v47[6] = v45;
  v47[0] = v39;
  v47[1] = v40;
  v47[2] = v41;
  v47[3] = v42;
  v27(v47, v23);
  if ((v26 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!v8)
  {
    if (!v15)
    {
LABEL_12:
      v28 = 1;
      return v28 & 1;
    }

LABEL_10:
    v28 = 0;
    return v28 & 1;
  }

  if (!v15)
  {
    goto LABEL_10;
  }

  if (v30 == v16 && v8 == v15)
  {
    goto LABEL_12;
  }

  v28 = sub_225CCF934();
  return v28 & 1;
}

uint64_t static EncryptedDataContainer.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v39[2] = *(a1 + 3);
  v39[3] = v4;
  v5 = *(a1 + 6);
  v39[4] = *(a1 + 5);
  v39[5] = v5;
  v6 = *(a1 + 2);
  v39[0] = *(a1 + 1);
  v39[1] = v6;
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 2);
  v40[0] = *(a2 + 1);
  v40[1] = v9;
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  v12 = *(a2 + 6);
  v40[4] = *(a2 + 5);
  v40[5] = v12;
  v40[2] = v10;
  v40[3] = v11;
  if (v3)
  {
    if (v8)
    {
      if (v2 == v7 && v3 == v8)
      {
        goto LABEL_6;
      }

      v13 = a1;
      v14 = a2;
      v15 = sub_225CCF934();
      a2 = v14;
      v16 = v15;
      a1 = v13;
      if (v16)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v23 = 0;
    return v23 & 1;
  }

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = *(a1 + 4);
  v33 = *(a1 + 3);
  v34 = v17;
  v18 = *(a1 + 6);
  v35 = *(a1 + 5);
  v36 = v18;
  v19 = *(a1 + 2);
  v31 = *(a1 + 1);
  v32 = v19;
  v20 = *(a2 + 4);
  v27 = *(a2 + 3);
  v28 = v20;
  v21 = *(a2 + 6);
  v29 = *(a2 + 5);
  v30 = v21;
  v22 = *(a2 + 2);
  v25 = *(a2 + 1);
  v26 = v22;
  sub_225A323C8(v39, v38);
  sub_225A323C8(v40, v38);
  v23 = _s13CoreIDVShared16EncryptionParamsV2eeoiySbAC_ACtFZ_0(&v31, &v25);
  v37[2] = v27;
  v37[3] = v28;
  v37[4] = v29;
  v37[5] = v30;
  v37[0] = v25;
  v37[1] = v26;
  sub_225A32400(v37);
  v38[2] = v33;
  v38[3] = v34;
  v38[4] = v35;
  v38[5] = v36;
  v38[0] = v31;
  v38[1] = v32;
  sub_225A32400(v38);
  return v23 & 1;
}

uint64_t sub_225A2A4B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xE900000000000074 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D18E20 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225A2A658(unsigned __int8 a1)
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](a1);
  return sub_225CCFC24();
}

unint64_t sub_225A2A6A0(unsigned __int8 a1)
{
  v1 = 0x7265646E6573;
  v2 = 0x6567617373656DLL;
  if (a1 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (a1)
  {
    v1 = 0x6E65697069636572;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_225A2A758()
{
  sub_225CCFBD4();
  sub_225A2A630(v2, *v0);
  return sub_225CCFC24();
}

uint64_t sub_225A2A7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A2A4B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A2A7E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225A336C8();
  *a1 = result;
  return result;
}

uint64_t sub_225A2A81C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A2A870(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t EncryptedMessage.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v21 = a2[3];
  v22 = v4;
  v19[3] = v5;
  type metadata accessor for EncryptedMessage.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_225CCF7F4();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v19 - v8;
  v23 = *v2;
  v20 = v2[1];
  v10 = *(v2 + 56);
  v11 = *(v2 + 88);
  v39 = *(v2 + 72);
  v40 = v11;
  v41 = *(v2 + 104);
  v12 = *(v2 + 24);
  v35 = *(v2 + 8);
  v36 = v12;
  v37 = *(v2 + 40);
  v38 = v10;
  v13 = *(v2 + 15);
  v19[1] = *(v2 + 16);
  v19[2] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCE4();
  LOBYTE(v28) = v23;
  LOBYTE(v26[0]) = 0;
  sub_225A32448();
  v14 = v24;
  sub_225CCF7E4();
  if (v14)
  {
    return (*(v42 + 8))(v9, v6);
  }

  LOBYTE(v28) = v20;
  LOBYTE(v26[0]) = 1;
  sub_225CCF7E4();
  v32 = v39;
  v33 = v40;
  v34 = v41;
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v31 = v38;
  v27 = 2;
  v16 = type metadata accessor for EncryptedDataContainer();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v26, &v35, v16);
  swift_getWitnessTable();
  sub_225CCF7E4();
  v18 = v42;
  v26[4] = v32;
  v26[5] = v33;
  v26[6] = v34;
  v26[0] = v28;
  v26[1] = v29;
  v26[2] = v30;
  v26[3] = v31;
  (*(v17 + 8))(v26, v16);
  v25 = 3;
  sub_225CCF734();
  return (*(v18 + 8))(v9, v6);
}

uint64_t EncryptedMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v25 = a3;
  v27 = a2;
  type metadata accessor for EncryptedMessage.CodingKeys();
  swift_getWitnessTable();
  v29 = sub_225CCF714();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v4);
  v6 = &v24 - v5;
  v7 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v28 = v6;
  v8 = v30;
  sub_225CCFCA4();
  if (v8)
  {
    return __swift_destroy_boxed_opaque_existential_0(v53);
  }

  v9 = v26;
  LOBYTE(v31[0]) = 0;
  sub_225A3249C();
  sub_225CCF6E4();
  v10 = v33[0];
  LOBYTE(v31[0]) = 1;
  sub_225CCF6E4();
  LODWORD(v30) = v10;
  v11 = v33[0];
  type metadata accessor for EncryptedDataContainer();
  v44 = 2;
  swift_getWitnessTable();
  sub_225CCF6E4();
  HIDWORD(v24) = v11;
  *(&v52[3] + 6) = v48;
  *(&v52[4] + 6) = v49;
  *(&v52[5] + 6) = v50;
  *(&v52[6] + 6) = v51;
  *(v52 + 6) = v45;
  *(&v52[1] + 6) = v46;
  *(&v52[2] + 6) = v47;
  v43 = 3;
  v12 = sub_225CCF624();
  v14 = v13;
  v15 = v12;
  (*(v9 + 8))(v28, v29);
  LOBYTE(v31[0]) = v30;
  BYTE1(v31[0]) = BYTE4(v24);
  *(&v31[4] + 2) = v52[4];
  *(&v31[5] + 2) = v52[5];
  *(&v31[6] + 2) = v52[6];
  *(v31 + 2) = v52[0];
  *(&v31[1] + 2) = v52[1];
  *(&v31[2] + 2) = v52[2];
  *(&v31[3] + 2) = v52[3];
  *&v31[7] = *(&v52[6] + 14);
  *(&v31[7] + 1) = v15;
  v32 = v14;
  v16 = v25;
  *(v25 + 128) = v14;
  v17 = v31[3];
  v16[2] = v31[2];
  v16[3] = v17;
  v18 = v31[1];
  *v16 = v31[0];
  v16[1] = v18;
  v19 = v31[7];
  v16[6] = v31[6];
  v16[7] = v19;
  v20 = v31[5];
  v16[4] = v31[4];
  v16[5] = v20;
  v21 = type metadata accessor for EncryptedMessage();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v33, v31, v21);
  __swift_destroy_boxed_opaque_existential_0(v53);
  v38 = v52[4];
  v39 = v52[5];
  *v40 = v52[6];
  v34 = v52[0];
  v35 = v52[1];
  v36 = v52[2];
  v33[0] = v30;
  v33[1] = BYTE4(v24);
  v37 = v52[3];
  *&v40[14] = *(&v52[6] + 14);
  v41 = v15;
  v42 = v14;
  return (*(v22 + 8))(v33, v21);
}

uint64_t KeyAgreementParams.sender.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t KeyAgreementParams.recipientFingerprint.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static KeyAgreementParams.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_225CCF934(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_225CCF934();
    }
  }

  return result;
}

uint64_t sub_225A2B2A0()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x7265646E6573;
  }
}

uint64_t sub_225A2B2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000225D18E40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225A2B3BC(uint64_t a1)
{
  v2 = sub_225A32508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A2B3F8(uint64_t a1)
{
  v2 = sub_225A32508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyAgreementParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A32508();
  sub_225CCFCE4();
  v13 = 0;
  v9 = v11[3];
  sub_225CCF784();
  if (!v9)
  {
    v12 = 1;
    sub_225CCF784();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t KeyAgreementParams.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A32508();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = 0;
  v10 = sub_225CCF684();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_225CCF684();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225A2B7C8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_225CCF934(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_225CCF934();
    }
  }

  return result;
}

uint64_t KDFParams.senderSigningKeyFingerprint.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t KDFParams.recipientSigningKeyFingerprint.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t KDFParams.conversationToken.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall KDFParams.init(senderSigningKeyFingerprint:recipientSigningKeyFingerprint:conversationToken:sharedIdentifierNames:)(CoreIDVShared::KDFParams *__return_ptr retstr, Swift::String senderSigningKeyFingerprint, Swift::String_optional recipientSigningKeyFingerprint, Swift::String_optional conversationToken, Swift::OpaquePointer_optional sharedIdentifierNames)
{
  retstr->senderSigningKeyFingerprint.value = senderSigningKeyFingerprint;
  retstr->recipientSigningKeyFingerprint = recipientSigningKeyFingerprint;
  retstr->conversationToken = conversationToken;
  retstr->sharedIdentifierNames.value._rawValue = sharedIdentifierNames.value._rawValue;
}

unint64_t sub_225A2B94C()
{
  v1 = 0xD000000000000015;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD00000000000001ELL;
  if (!*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_225A2B9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A336D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A2B9EC(uint64_t a1)
{
  v2 = sub_225A3255C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A2BA28(uint64_t a1)
{
  v2 = sub_225A3255C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDFParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - v6;
  v8 = v1[2];
  v17 = v1[3];
  v18 = v8;
  v9 = v1[4];
  v15 = v1[5];
  v16 = v9;
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A3255C();
  sub_225CCFCE4();
  v24 = 0;
  v10 = v19;
  sub_225CCF734();
  if (!v10)
  {
    v11 = v14;
    v23 = 1;
    sub_225CCF734();
    v22 = 2;
    sub_225CCF734();
    v20 = v11;
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    sub_225A325B0(&qword_281059B28);
    sub_225CCF774();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t KDFParams.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A3255C();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = 0;
  v10 = sub_225CCF624();
  v25 = v11;
  v29 = 1;
  v12 = sub_225CCF624();
  v24 = v13;
  v22 = v12;
  v28 = 2;
  v21 = sub_225CCF624();
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  v27 = 3;
  sub_225A325B0(&qword_281059B18);
  sub_225CCF674();
  (*(v6 + 8))(v9, v5);
  v17 = v25;
  v16 = v26;
  *a2 = v10;
  a2[1] = v17;
  v18 = v21;
  v20 = v23;
  v19 = v24;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v20;
  a2[6] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t EncryptionParams.keyAgreement.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t EncryptionParams.kdf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  *a1 = *(v1 + 40);
  v4 = *(v1 + 64);
  *(a1 + 8) = *(v1 + 48);
  *(a1 + 24) = v4;
  *(a1 + 40) = v3;
  *(a1 + 48) = v2;
}

void __swiftcall EncryptionParams.init(alg:sender:recipientFingerprint:kdfParams:)(CoreIDVShared::EncryptionParams *__return_ptr retstr, CoreIDVShared::EncryptionParamsAlgorithmIdentifier alg, Swift::String sender, Swift::String recipientFingerprint, CoreIDVShared::KDFParams *kdfParams)
{
  recipientSigningKeyFingerprint = kdfParams->recipientSigningKeyFingerprint;
  retstr->kdf.senderSigningKeyFingerprint = kdfParams->senderSigningKeyFingerprint;
  rawValue = kdfParams->sharedIdentifierNames.value._rawValue;
  retstr->algorithmIdentifier = *alg;
  retstr->keyAgreement.sender = sender;
  retstr->keyAgreement.recipientFingerprint = recipientFingerprint;
  retstr->kdf.recipientSigningKeyFingerprint = recipientSigningKeyFingerprint;
  retstr->kdf.conversationToken = kdfParams->conversationToken;
  retstr->kdf.sharedIdentifierNames.value._rawValue = rawValue;
}

unint64_t sub_225A2C124()
{
  v1 = 0x656572674179656BLL;
  if (*v0 != 1)
  {
    v1 = 6710379;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_225A2C184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225A33844(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225A2C1AC(uint64_t a1)
{
  v2 = sub_225A3261C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A2C1E8(uint64_t a1)
{
  v2 = sub_225A3261C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EncryptionParams.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v30 = *(v1 + 1);
  v31 = v10;
  v11 = *(v1 + 3);
  v32 = *(v1 + 4);
  v12 = *(v1 + 6);
  v28 = *(v1 + 5);
  v29 = v11;
  v13 = *(v1 + 8);
  v26 = *(v1 + 7);
  v27 = v12;
  v14 = *(v1 + 10);
  v22 = *(v1 + 9);
  v23 = v14;
  v24 = *(v1 + 11);
  v25 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A3261C();
  sub_225CCFCE4();
  LOBYTE(v33) = v9;
  v40 = 0;
  sub_225A32670();
  sub_225CCF7E4();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v17 = v26;
  v16 = v27;
  v18 = v25;
  v21 = v5;
  v33 = v30;
  v34 = v31;
  v19 = v28;
  v35 = v29;
  v36 = v32;
  v40 = 1;
  sub_225A326C4();

  sub_225CCF7E4();

  v33 = v19;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v40 = 2;
  sub_225A32718();

  sub_225CCF7E4();

  return (*(v21 + 8))(v8, v4);
}

uint64_t EncryptionParams.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B1F0);
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v6);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A3261C();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v5;
  LOBYTE(v32) = 0;
  sub_225A3276C();
  v10 = v31;
  sub_225CCF6E4();
  v11 = v38;
  LOBYTE(v32) = 1;
  sub_225A327C0();
  sub_225CCF6E4();
  v27 = v40;
  v28 = v38;
  v29 = v41;
  v30 = v39;
  v54 = 2;
  sub_225A32814();
  sub_225CCF6E4();
  (*(v9 + 8))(v8, v10);
  v31 = v50;
  v25 = *(&v51 + 1);
  v26 = v51;
  v23 = *(&v52 + 1);
  v24 = v52;
  v21 = *(&v53 + 1);
  v22 = v53;
  LOBYTE(v32) = v11;
  v13 = v27;
  v12 = v28;
  v14 = v29;
  v15 = v30;
  *(&v32 + 1) = v28;
  *&v33 = v30;
  *(&v33 + 1) = v27;
  *&v34 = v29;
  *(&v34 + 1) = v50;
  v35 = v51;
  v36 = v52;
  v37 = v53;
  v16 = v33;
  *a2 = v32;
  a2[1] = v16;
  v17 = v37;
  a2[4] = v36;
  a2[5] = v17;
  v18 = v35;
  a2[2] = v34;
  a2[3] = v18;
  sub_225A323C8(&v32, &v38);
  __swift_destroy_boxed_opaque_existential_0(a1);
  LOBYTE(v38) = v11;
  v39 = v12;
  v40 = v15;
  v41 = v13;
  v42 = v14;
  v43 = v31;
  v44 = v26;
  v45 = v25;
  v46 = v24;
  v47 = v23;
  v48 = v22;
  v49 = v21;
  return sub_225A32400(&v38);
}

uint64_t EncryptedDataContainerParamsOnly.params.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_225A323C8(v9, &v8);
}

__n128 EncryptedDataContainerParamsOnly.params.setter(uint64_t a1)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  sub_225A32868(v10);
  v6 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v6;
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  return result;
}

uint64_t sub_225A2C918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D61726170 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_225CCF934();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_225A2C99C(uint64_t a1)
{
  v2 = sub_225A32898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A2C9D8(uint64_t a1)
{
  v2 = sub_225A32898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EncryptedDataContainerParamsOnly.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B210);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A32898();
  sub_225CCFCA4();
  if (!v2)
  {
    sub_225A328EC();
    sub_225CCF6E4();
    (*(v6 + 8))(v9, v5);
    v10 = v14[3];
    a2[2] = v14[2];
    a2[3] = v10;
    v11 = v14[5];
    a2[4] = v14[4];
    a2[5] = v11;
    v12 = v14[1];
    *a2 = v14[0];
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225A2CB94()
{
  v0 = sub_225CCF5D4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225A2CC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A2CC74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225A2CCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A2CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225A2CDC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225A2CB94();
  *a1 = result;
  return result;
}

uint64_t sub_225A2CDFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2259AA55C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_225A2CE48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225A2CB94();
  *a1 = result;
  return result;
}

uint64_t sub_225A2CE7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225A3396C();
  *a1 = result;
  return result;
}

uint64_t sub_225A2CEB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225A2CF04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t EncryptedDataContainer.data.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EncryptedDataContainer.data.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EncryptedDataContainer.params.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v10 = v1[3];
  v11 = v2;
  v4 = v1[6];
  v12 = v1[5];
  v3 = v12;
  v13 = v4;
  v6 = v1[2];
  v9[0] = v1[1];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_225A323C8(v9, &v8);
}

__n128 EncryptedDataContainer.params.setter(uint64_t a1)
{
  v3 = v1[4];
  v10[2] = v1[3];
  v10[3] = v3;
  v4 = v1[6];
  v10[4] = v1[5];
  v10[5] = v4;
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  sub_225A32400(v10);
  v6 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v6;
  v7 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v9;
  return result;
}

__n128 EncryptedDataContainer.init(type:data:params:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v4 = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = v4;
  v5 = *(a3 + 80);
  *(a4 + 80) = *(a3 + 64);
  *(a4 + 96) = v5;
  result = *a3;
  v7 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v7;
  return result;
}

uint64_t EncryptedDataContainer.init(alg:encryptor:remoteCertificate:senderSigningKey:recipientSigningKey:data:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, __SecCertificate *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = a8;
  v60 = a7;
  v58 = a6;
  v61 = a5;
  v59 = a4;
  v16 = *(a10 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v50 - v21;
  v23 = *a1;
  v24 = SecCertificateCopyKey(a3);
  if (v24)
  {
    v25 = v24;
    v55 = a9;
    v64 = v23;
    sub_225A32940(a2, v62);
    v26 = v56;
    (*(v16 + 16))(v18, v56, a10);
    v27 = v57;
    EncryptedDataContainer.init(alg:encryptor:remotePublicKey:senderSigningKey:recipientSigningKey:data:)(&v64, v62, v25, v59, v61, v58, v60, v18, v63, a10, a11, a12);

    (*(v16 + 8))(v26, a10);
    result = __swift_destroy_boxed_opaque_existential_0(a2);
    if (!v27)
    {
      v29 = v63[5];
      v30 = v55;
      v55[4] = v63[4];
      v30[5] = v29;
      v30[6] = v63[6];
      v31 = v63[1];
      *v30 = v63[0];
      v30[1] = v31;
      v32 = v63[3];
      v30[2] = v63[2];
      v30[3] = v32;
    }
  }

  else
  {
    v53 = a3;
    v54 = v16;
    v33 = v56;
    v55 = a2;
    v52 = 0x8000000225D18940;
    v51 = 0x8000000225D18980;
    v50 = 0x8000000225D189B0;
    v34 = MEMORY[0x277D84F90];
    v35 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v37 = v36;
    v38 = sub_225CCE954();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v22, 1, 1, v38);
    LODWORD(v38) = (*(v39 + 48))(v22, 1, v38);
    sub_2259CB640(v22, &unk_27D73B050);
    if (v38)
    {
      v40 = 1155;
    }

    else
    {
      v40 = 23;
    }

    v41 = sub_225B2C374(v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = v41;
    sub_225B2C4A0(v35, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v62);

    v43 = v62[0];
    v44 = sub_225B29AA0(0, 1, 1, v34);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    if (v46 >= v45 >> 1)
    {
      v44 = sub_225B29AA0((v45 > 1), v46 + 1, 1, v44);
    }

    v47 = v54;
    *(v44 + 2) = v46 + 1;
    v48 = &v44[56 * v46];
    v49 = v52;
    *(v48 + 4) = 0xD00000000000003FLL;
    *(v48 + 5) = v49;
    *(v48 + 6) = 0xD00000000000002DLL;
    *(v48 + 7) = v51;
    *(v48 + 8) = 0xD000000000000050;
    *(v48 + 9) = v50;
    *(v48 + 10) = 142;
    *v37 = v40;
    *(v37 + 8) = v44;
    *(v37 + 16) = 0xD00000000000003FLL;
    *(v37 + 24) = v49;
    *(v37 + 32) = v43;
    *(v37 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v58, v60);
    sub_2259BEF00(v59, v61);

    (*(v47 + 8))(v33, a10);
    return __swift_destroy_boxed_opaque_existential_0(v55);
  }

  return result;
}

uint64_t EncryptedDataContainer.init(alg:encryptor:remotePublicKey:senderSigningKey:recipientSigningKey:data:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, __SecKey *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v221 = a2;
  v205 = a9;
  error[1] = *MEMORY[0x277D85DE8];
  v19 = sub_225CCD954();
  v20 = *(v19 - 8);
  v207 = v19;
  v208 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v206 = &v190 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v215 = &v190 - v25;
  LODWORD(v209) = *a1;
  error[0] = 0;
  v26 = SecKeyCopyExternalRepresentation(a3, error);
  if (!v26)
  {
    LOWORD(v231[0]) = 249;
    errorFromCFError(_:_:_:)(error[0], 0xD000000000000033, 0x8000000225D18A10, v231);
    swift_willThrow();

    sub_2259BEF00(a6, a7);
    sub_2259BEF00(a4, a5);
    (*(*(a10 - 8) + 8))(a8, a10);
    return __swift_destroy_boxed_opaque_existential_0(v221);
  }

  v216 = a6;
  v217 = a7;
  v212 = a3;
  v213 = a4;
  v214 = a5;
  v218 = a8;
  v219 = a10;
  v27 = v26;
  v28 = sub_225CCCFA4();
  v30 = v29;

  v31 = sub_225CCCF74();
  v32 = DigestSha256(v31);

  v210 = v28;
  v211 = v30;
  if (!v32)
  {
    v209 = 0x8000000225D18980;
    v207 = 0x8000000225D18A90;
    v44 = MEMORY[0x277D84F90];
    v45 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v208 = swift_allocError();
    v47 = v46;
    v48 = sub_225CCE954();
    v49 = *(v48 - 8);
    v50 = v215;
    (*(v49 + 56))(v215, 1, 1, v48);
    LODWORD(v48) = (*(v49 + 48))(v50, 1, v48);
    sub_2259CB640(v50, &unk_27D73B050);
    if (v48)
    {
      v51 = 1152;
    }

    else
    {
      v51 = 23;
    }

    v52 = sub_225B2C374(v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v231[0] = v52;
    sub_225B2C4A0(v45, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v231);

    v54 = v231[0];
    v55 = sub_225B29AA0(0, 1, 1, v44);
    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_225B29AA0((v56 > 1), v57 + 1, 1, v55);
    }

    v58 = v212;
    *(v55 + 2) = v57 + 1;
    v59 = &v55[56 * v57];
    *(v59 + 4) = 0xD000000000000030;
    *(v59 + 5) = 0x8000000225D18A50;
    v60 = v209;
    *(v59 + 6) = 0xD00000000000002DLL;
    *(v59 + 7) = v60;
    v61 = v207;
    *(v59 + 8) = 0xD00000000000004ELL;
    *(v59 + 9) = v61;
    *(v59 + 10) = 158;
    *v47 = v51;
    *(v47 + 8) = v55;
    *(v47 + 16) = 0xD000000000000030;
    *(v47 + 24) = 0x8000000225D18A50;
    *(v47 + 32) = v54;
    *(v47 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v210, v211);

    goto LABEL_49;
  }

  v33 = sub_225CCCFA4();
  v35 = v34;

  v36 = sub_225CCCF84();
  v38 = v37;
  sub_2259BEF00(v33, v35);
  sub_225CCC9E4();
  swift_allocObject();
  sub_225CCC9D4();
  v39 = v218;
  v40 = v219;
  v41 = v220;
  v42 = sub_225CCC9C4();
  if (v41)
  {
    (*(*(v40 - 8) + 8))(v39, v40);
    sub_2259BEF00(v216, v217);
    sub_2259BEF00(v213, v214);

LABEL_5:
    sub_2259BEF00(v210, v211);
    return __swift_destroy_boxed_opaque_existential_0(v221);
  }

  v62 = v42;
  v220 = v43;
  v200 = a12;
  v201 = v36;
  v203 = v38;

  v63 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  v204 = v62;
  v202 = 0;
  v64 = v208;
  if (byte_28105B9F8 != 1)
  {

    goto LABEL_22;
  }

  v65 = sub_225CCE444();
  v66 = [v63 BOOLForKey_];

  if ((v66 & 1) == 0)
  {
LABEL_22:
    if (v209)
    {
      goto LABEL_23;
    }

LABEL_41:

    v105 = 0x8000000225D18B60;
    v208 = 0x8000000225D18A90;
    v209 = 0x8000000225D18980;
    v146 = MEMORY[0x277D84F90];
    v147 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v109 = v148;
    v149 = sub_225CCE954();
    v150 = *(v149 - 8);
    v151 = v215;
    (*(v150 + 56))(v215, 1, 1, v149);
    LODWORD(v149) = (*(v150 + 48))(v151, 1, v149);
    sub_2259CB640(v151, &unk_27D73B050);
    if (v149)
    {
      v113 = 109;
    }

    else
    {
      v113 = 23;
    }

    v152 = sub_225B2C374(v146);
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v231[0] = v152;
    sub_225B2C4A0(v147, sub_225B2AC40, 0, v153, v231);

    v116 = v231[0];
    v117 = sub_225B29AA0(0, 1, 1, v146);
    v155 = *(v117 + 2);
    v154 = *(v117 + 3);
    if (v155 >= v154 >> 1)
    {
      v117 = sub_225B29AA0((v154 > 1), v155 + 1, 1, v117);
    }

    v156 = v209;
    v121 = v210;
    *(v117 + 2) = v155 + 1;
    v122 = &v117[56 * v155];
    v123 = 0xD00000000000003BLL;
    *(v122 + 4) = 0xD00000000000003BLL;
    *(v122 + 5) = 0x8000000225D18B60;
    *(v122 + 6) = 0xD00000000000002DLL;
    *(v122 + 7) = v156;
    v157 = v208;
    *(v122 + 8) = 0xD00000000000004ELL;
    *(v122 + 9) = v157;
    v125 = 169;
    goto LABEL_47;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v67 = off_28105B918;
  v68 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v69 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v69));
  v71 = v206;
  v70 = v207;
  (*(v64 + 16))(v206, &v67[v68], v207);
  os_unfair_lock_unlock(&v67[v69]);
  v72 = v204;
  v73 = v220;
  sub_2259CB710(v204, v220);
  v74 = sub_225CCD934();
  v75 = sub_225CCED04();
  sub_2259BEF00(v72, v73);
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v231[0] = v77;
    *v76 = 136315138;
    v78 = sub_225CCCF84();
    v80 = v75;
    v81 = sub_2259BE198(v78, v79, v231);

    *(v76 + 4) = v81;
    _os_log_impl(&dword_2259A7000, v74, v80, "EncryptedDataContainer contains %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x22AA6F950](v77, -1, -1);
    MEMORY[0x22AA6F950](v76, -1, -1);

    (*(v64 + 8))(v71, v207);
  }

  else
  {

    (*(v64 + 8))(v71, v70);
  }

  if (!v209)
  {
    goto LABEL_41;
  }

LABEL_23:
  v82 = sub_225CCCF74();
  v83 = DigestSha256(v82);

  if (!v83)
  {

    v105 = 0x8000000225D18AE0;
    v208 = 0x8000000225D18A90;
    v209 = 0x8000000225D18980;
    v106 = MEMORY[0x277D84F90];
    v107 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v109 = v108;
    v110 = sub_225CCE954();
    v111 = *(v110 - 8);
    v112 = v215;
    (*(v111 + 56))(v215, 1, 1, v110);
    LODWORD(v110) = (*(v111 + 48))(v112, 1, v110);
    sub_2259CB640(v112, &unk_27D73B050);
    if (v110)
    {
      v113 = 1156;
    }

    else
    {
      v113 = 23;
    }

    v114 = sub_225B2C374(v106);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v231[0] = v114;
    sub_225B2C4A0(v107, sub_225B2AC40, 0, v115, v231);

    v116 = v231[0];
    v117 = sub_225B29AA0(0, 1, 1, v106);
    v119 = *(v117 + 2);
    v118 = *(v117 + 3);
    if (v119 >= v118 >> 1)
    {
      v117 = sub_225B29AA0((v118 > 1), v119 + 1, 1, v117);
    }

    v120 = v209;
    v121 = v210;
    *(v117 + 2) = v119 + 1;
    v122 = &v117[56 * v119];
    v123 = 0xD000000000000033;
    *(v122 + 4) = 0xD000000000000033;
    *(v122 + 5) = 0x8000000225D18AE0;
    *(v122 + 6) = 0xD00000000000002DLL;
    *(v122 + 7) = v120;
    v124 = v208;
    *(v122 + 8) = 0xD00000000000004ELL;
    *(v122 + 9) = v124;
    v125 = 172;
LABEL_47:
    *(v122 + 10) = v125;
    *v109 = v113;
    *(v109 + 8) = v117;
    *(v109 + 16) = v123;
    *(v109 + 24) = v105;
    *(v109 + 32) = v116;
    *(v109 + 40) = 0;
    swift_willThrow();
    v144 = v121;
    v145 = v211;
LABEL_48:
    sub_2259BEF00(v144, v145);

    sub_2259BEF00(v204, v220);
LABEL_49:
    sub_2259BEF00(v216, v217);
    sub_2259BEF00(v213, v214);
    (*(*(v219 - 8) + 8))(v218, v219);
    return __swift_destroy_boxed_opaque_existential_0(v221);
  }

  v206 = sub_225CCCFA4();
  v207 = v84;

  v86 = v213;
  v85 = v214;
  v87 = sub_225CCCF74();
  v88 = DigestSha256(v87);

  if (!v88)
  {

    v208 = 0x8000000225D18A90;
    v209 = 0x8000000225D18980;
    v126 = MEMORY[0x277D84F90];
    v127 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v129 = v128;
    v130 = sub_225CCE954();
    v131 = *(v130 - 8);
    v132 = v215;
    (*(v131 + 56))(v215, 1, 1, v130);
    LODWORD(v130) = (*(v131 + 48))(v132, 1, v130);
    sub_2259CB640(v132, &unk_27D73B050);
    if (v130)
    {
      v133 = 1151;
    }

    else
    {
      v133 = 23;
    }

    v134 = sub_225B2C374(v126);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v231[0] = v134;
    sub_225B2C4A0(v127, sub_225B2AC40, 0, v135, v231);

    v136 = v231[0];
    v137 = sub_225B29AA0(0, 1, 1, v126);
    v139 = *(v137 + 2);
    v138 = *(v137 + 3);
    if (v139 >= v138 >> 1)
    {
      v137 = sub_225B29AA0((v138 > 1), v139 + 1, 1, v137);
    }

    v140 = v209;
    v141 = v210;
    *(v137 + 2) = v139 + 1;
    v142 = &v137[56 * v139];
    *(v142 + 4) = 0xD000000000000030;
    *(v142 + 5) = 0x8000000225D18B20;
    *(v142 + 6) = 0xD00000000000002DLL;
    *(v142 + 7) = v140;
    v143 = v208;
    *(v142 + 8) = 0xD00000000000004ELL;
    *(v142 + 9) = v143;
    *(v142 + 10) = 175;
    *v129 = v133;
    *(v129 + 8) = v137;
    *(v129 + 16) = 0xD000000000000030;
    *(v129 + 24) = 0x8000000225D18B20;
    *(v129 + 32) = v136;
    *(v129 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v141, v211);
    v144 = v206;
    v145 = v207;
    goto LABEL_48;
  }

  v215 = sub_225CCCFA4();
  v199 = v89;

  v90 = v221[4];
  v208 = v221[3];
  v198 = __swift_project_boxed_opaque_existential_1(v221, v208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0;
  *(inited + 40) = v86;
  *(inited + 48) = v85;
  *(inited + 56) = 1;
  v93 = v216;
  v92 = v217;
  *(inited + 64) = v216;
  *(inited + 72) = v92;
  v94 = sub_225B2D244(inited);
  swift_setDeallocating();
  sub_2259CB710(v86, v85);
  sub_2259CB710(v93, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B230);
  swift_arrayDestroy();
  v95 = v90;
  v96 = *(v90 + 16);
  v97 = v204;
  v98 = v220;
  v99 = v212;
  v100 = v202;
  v101 = v96(v204, v220, v212, v94, v208, v95);
  if (v100)
  {
    (*(*(v219 - 8) + 8))(v218);
    sub_2259BEF00(v93, v217);
    sub_2259BEF00(v86, v85);

    sub_2259BEF00(v215, v199);
    sub_2259BEF00(v206, v207);
    sub_2259BEF00(v97, v98);

    goto LABEL_5;
  }

  v159 = v103;
  v160 = v104;
  v161 = v215;
  v162 = v199;
  v163 = v101;
  v164 = v102;

  sub_2259BEF00(v163, v164);
  v165 = v221[3];
  v166 = v221[4];
  __swift_project_boxed_opaque_existential_1(v221, v165);
  v167 = (*(v166 + 40))(v165, v166);
  v195 = a11;
  v208 = 0;
  v168 = v167;
  v170 = v169;
  v202 = sub_225CCCF84();
  v196 = v171;
  sub_2259BEF00(v168, v170);
  v172 = v161;
  v197 = sub_225CCCF84();
  v198 = v173;
  v175 = v206;
  v174 = v207;
  v176 = sub_225CCCF84();
  v193 = v176;
  v194 = v177;
  v178 = sub_225CCCF84();
  v191 = v179;
  v192 = v178;
  sub_2259BEF00(v210, v211);
  sub_2259BEF00(v175, v174);
  sub_2259BEF00(v159, v160);
  sub_2259BEF00(v172, v162);

  sub_2259BEF00(v204, v220);
  sub_2259BEF00(v216, v217);
  sub_2259BEF00(v213, v214);
  (*(*(v219 - 8) + 8))(v218, v219);
  v180 = v191;
  *&v223 = v178;
  *(&v223 + 1) = v191;
  LOBYTE(v162) = v209;
  LOBYTE(v224) = v209;
  *(&v224 + 1) = *v222;
  DWORD1(v224) = *&v222[3];
  v181 = v201;
  *(&v224 + 1) = v202;
  *&v225 = v196;
  v182 = v203;
  *(&v225 + 1) = v201;
  *&v226 = v203;
  *(&v226 + 1) = v197;
  *&v227 = v198;
  v183 = v194;
  *(&v227 + 1) = v176;
  v228 = v194;
  v230 = 0uLL;
  v229 = 0;
  v184 = v194;
  v185 = v205;
  v205[4] = v227;
  v185[5] = v184;
  v185[6] = v230;
  v186 = v226;
  v185[2] = v225;
  v185[3] = v186;
  v187 = v224;
  *v185 = v223;
  v185[1] = v187;
  v188 = type metadata accessor for EncryptedDataContainer();
  v189 = *(v188 - 8);
  (*(v189 + 16))(v231, &v223, v188);
  __swift_destroy_boxed_opaque_existential_0(v221);
  v231[0] = v192;
  v231[1] = v180;
  v232 = v162;
  *v233 = *v222;
  *&v233[3] = *&v222[3];
  v234 = v202;
  v235 = v196;
  v236 = v181;
  v237 = v182;
  v238 = v197;
  v239 = v198;
  v240 = v193;
  v241 = v183;
  v242 = 0;
  v243 = 0;
  v244 = 0;
  return (*(v189 + 8))(v231, v188);
}

void EncryptedDataContainer.getUnencryptedData(alg:decryptor:senderSigningKey:recipientSigningKey:)(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, char *a8@<X8>)
{
  v167 = a5;
  v168 = a6;
  v165 = a3;
  v166 = a4;
  v164 = a8;
  v179 = sub_225CCD954();
  v169 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v13);
  v170 = a7;
  v171 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a7 + 16);
  v16 = sub_225CCEFC4();
  v160 = *(v16 - 8);
  v161 = v16;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v163 = &v151 - v19;
  v162 = *(v15 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  MEMORY[0x28223BE20](v25, v26);
  v29 = &v151 - v28;
  v30 = *a1;
  v31 = v8[5];
  v176 = v8[4];
  v177 = v31;
  v178 = v8[6];
  v32 = v8[1];
  v173 = *v8;
  v174 = v32;
  v33 = v8[3];
  *v175 = v8[2];
  *&v175[16] = v33;
  if (v30)
  {
    v159 = v27;
    v35 = a2[3];
    v34 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v35);
    v36 = (*(v34 + 40))(v35, v34);
    if (v9)
    {
      return;
    }

    v158 = 0;
    v38 = v36;
    v39 = v37;
    v40 = sub_225CCCF74();
    sub_2259BEF00(v38, v39);
    v41 = DigestSha256(v40);

    if (v41)
    {
      v42 = sub_225CCCFA4();
      v44 = v43;

      v156 = v42;
      v157 = v44;
      v45 = sub_225CCCF84();
      v46 = *(&v174 + 1);
      v47 = *v175;
      if (__PAIR128__(v48, v45) == *&v175[8])
      {
      }

      else
      {
        v81 = sub_225CCF934();

        if ((v81 & 1) == 0)
        {
          v100 = 0x8000000225D18C20;
          v179 = 0x8000000225D18980;
          v171 = 0x8000000225D18BD0;
          v120 = MEMORY[0x277D84F90];
          v121 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v104 = v122;
          v123 = sub_225CCE954();
          v124 = *(v123 - 8);
          (*(v124 + 56))(v29, 1, 1, v123);
          LODWORD(v123) = (*(v124 + 48))(v29, 1, v123);
          sub_2259CB640(v29, &unk_27D73B050);
          if (v123)
          {
            v107 = 138;
          }

          else
          {
            v107 = 23;
          }

          v125 = sub_225B2C374(v120);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v172[0] = v125;
          sub_225B2C4A0(v121, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v172);

          v110 = v172[0];
          v111 = sub_225B29AA0(0, 1, 1, v120);
          v128 = *(v111 + 2);
          v127 = *(v111 + 3);
          if (v128 >= v127 >> 1)
          {
            v111 = sub_225B29AA0((v127 > 1), v128 + 1, 1, v111);
          }

          v114 = v157;
          *(v111 + 2) = v128 + 1;
          v115 = &v111[56 * v128];
          v116 = 0xD00000000000004FLL;
          *(v115 + 4) = 0xD00000000000004FLL;
          *(v115 + 5) = 0x8000000225D18C20;
          v129 = v179;
          *(v115 + 6) = 0xD00000000000002DLL;
          *(v115 + 7) = v129;
          v130 = v171;
          *(v115 + 8) = 0xD000000000000047;
          *(v115 + 9) = v130;
          v119 = 192;
          goto LABEL_43;
        }
      }

      v155 = v47;
      v83 = *(&v173 + 1);
      v82 = v173;
      if (!*(&v173 + 1) || (, v84 = sub_225CCCF04(), v85 >> 60 == 15))
      {
        v168 = v82;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v86 = off_28105B918;
        v87 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v88 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v88));
        v89 = v169;
        v90 = v171;
        (*(v169 + 16))(v171, &v86[v87], v179);
        os_unfair_lock_unlock(&v86[v88]);
        v91 = v170;
        v92 = *(v170 - 8);
        (*(v92 + 16))(v172, &v173, v170);
        v93 = sub_225CCD934();
        v94 = sub_225CCED14();
        (*(v92 + 8))(&v173, v91);
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v172[0] = v96;
          *v95 = 136446210;
          if (v83)
          {
            v97 = v168;
          }

          else
          {
            v97 = 7104878;
          }

          if (!v83)
          {
            v83 = 0xE300000000000000;
          }

          v98 = v89;
          v99 = sub_2259BE198(v97, v83, v172);

          *(v95 + 4) = v99;
          _os_log_impl(&dword_2259A7000, v93, v94, "Failed to base64 decode the encrypted data: %{public}s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v96);
          MEMORY[0x22AA6F950](v96, -1, -1);
          MEMORY[0x22AA6F950](v95, -1, -1);

          (*(v98 + 8))(v171, v179);
        }

        else
        {

          (*(v89 + 8))(v90, v179);
        }

        v100 = 0x8000000225D18C70;
        v179 = 0x8000000225D18980;
        v171 = 0x8000000225D18BD0;
        v101 = MEMORY[0x277D84F90];
        v102 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v104 = v103;
        v105 = sub_225CCE954();
        v106 = *(v105 - 8);
        (*(v106 + 56))(v29, 1, 1, v105);
        LODWORD(v105) = (*(v106 + 48))(v29, 1, v105);
        sub_2259CB640(v29, &unk_27D73B050);
        if (v105)
        {
          v107 = 122;
        }

        else
        {
          v107 = 23;
        }

        v108 = sub_225B2C374(v101);
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v172[0] = v108;
        sub_225B2C4A0(v102, sub_225B2AC40, 0, v109, v172);

        v110 = v172[0];
        v111 = sub_225B29AA0(0, 1, 1, v101);
        v113 = *(v111 + 2);
        v112 = *(v111 + 3);
        if (v113 >= v112 >> 1)
        {
          v111 = sub_225B29AA0((v112 > 1), v113 + 1, 1, v111);
        }

        v114 = v157;
        *(v111 + 2) = v113 + 1;
        v115 = &v111[56 * v113];
        v116 = 0xD00000000000002BLL;
        *(v115 + 4) = 0xD00000000000002BLL;
        *(v115 + 5) = 0x8000000225D18C70;
        v117 = v179;
        *(v115 + 6) = 0xD00000000000002DLL;
        *(v115 + 7) = v117;
        v118 = v171;
        *(v115 + 8) = 0xD000000000000047;
        *(v115 + 9) = v118;
        v119 = 196;
LABEL_43:
        *(v115 + 10) = v119;
        *v104 = v107;
        *(v104 + 8) = v111;
        *(v104 + 16) = v116;
        *(v104 + 24) = v100;
        *(v104 + 32) = v110;
        *(v104 + 40) = 0;
        swift_willThrow();
        v131 = v156;
        v132 = v114;
LABEL_44:
        sub_2259BEF00(v131, v132);
        return;
      }

      v133 = v85;
      v171 = v84;

      v134 = a2[4];
      v179 = a2[3];
      v153 = v134;
      v154 = __swift_project_boxed_opaque_existential_1(a2, v179);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B228);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD4890;
      v169 = v133;
      *(inited + 32) = 0;
      v137 = v165;
      v136 = v166;
      *(inited + 40) = v165;
      *(inited + 48) = v136;
      *(inited + 56) = 1;
      v152 = v46;
      v138 = v167;
      v139 = v168;
      *(inited + 64) = v167;
      *(inited + 72) = v139;
      v151 = sub_225B2D244(inited);
      swift_setDeallocating();
      v140 = v137;
      v141 = v171;
      sub_2259CB710(v140, v136);
      sub_2259CB710(v138, v139);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B230);
      v142 = v169;
      swift_arrayDestroy();
      v143 = v158;
      v144 = (*(v153 + 32))(0, 0xF000000000000000, v141, v142, v152, v155, v151, v179, v153);
      v146 = v145;

      if (v143)
      {
        sub_2259B97A8(v141, v142);
        v131 = v156;
        v132 = v157;
        goto LABEL_44;
      }

      if (v15 == MEMORY[0x277CC9318])
      {
        v172[0] = v144;
        v172[1] = v146;
        sub_2259CB710(v144, v146);
        v147 = v163;
        if (swift_dynamicCast())
        {
          sub_2259BEF00(v144, v146);
          sub_2259B97A8(v171, v142);
          sub_2259BEF00(v156, v157);
          v148 = v162;
          v149 = MEMORY[0x277CC9318];
          (*(v162 + 56))(v147, 0, 1, MEMORY[0x277CC9318]);
          v150 = *(v148 + 32);
          v150(v22, v147, v149);
          v150(v164, v22, v149);
          return;
        }

        (*(v162 + 56))(v147, 1, 1, MEMORY[0x277CC9318]);
        (*(v160 + 8))(v147, v161);
      }

      sub_225CCC994();
      swift_allocObject();
      sub_225CCC984();
      sub_225CCC974();
      sub_2259BEF00(v144, v146);
      sub_2259B97A8(v171, v142);
      sub_2259BEF00(v156, v157);
    }

    else
    {
      v179 = 0x8000000225D18980;
      v171 = 0x8000000225D18BD0;
      v65 = MEMORY[0x277D84F90];
      v66 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v68 = v67;
      v69 = sub_225CCE954();
      v70 = *(v69 - 8);
      (*(v70 + 56))(v29, 1, 1, v69);
      LODWORD(v69) = (*(v70 + 48))(v29, 1, v69);
      sub_2259CB640(v29, &unk_27D73B050);
      if (v69)
      {
        v71 = 1152;
      }

      else
      {
        v71 = 23;
      }

      v72 = sub_225B2C374(v65);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v172[0] = v72;
      sub_225B2C4A0(v66, sub_225B2AC40, 0, v73, v172);

      v74 = v172[0];
      v75 = sub_225B29AA0(0, 1, 1, v65);
      v77 = *(v75 + 2);
      v76 = *(v75 + 3);
      if (v77 >= v76 >> 1)
      {
        v75 = sub_225B29AA0((v76 > 1), v77 + 1, 1, v75);
      }

      *(v75 + 2) = v77 + 1;
      v78 = &v75[56 * v77];
      *(v78 + 4) = 0xD000000000000029;
      *(v78 + 5) = 0x8000000225D18BA0;
      v79 = v179;
      *(v78 + 6) = 0xD00000000000002DLL;
      *(v78 + 7) = v79;
      v80 = v171;
      *(v78 + 8) = 0xD000000000000047;
      *(v78 + 9) = v80;
      *(v78 + 10) = 189;
      *v68 = v71;
      *(v68 + 8) = v75;
      *(v68 + 16) = 0xD000000000000029;
      *(v68 + 24) = 0x8000000225D18BA0;
      *(v68 + 32) = v74;
      *(v68 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v170 = 0x8000000225D18BD0;
    v171 = 0x8000000225D18980;
    v49 = MEMORY[0x277D84F90];
    v50 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v179 = swift_allocError();
    v52 = v51;
    v53 = sub_225CCE954();
    v54 = *(v53 - 8);
    (*(v54 + 56))(v29, 1, 1, v53);
    LODWORD(v53) = (*(v54 + 48))(v29, 1, v53);
    sub_2259CB640(v29, &unk_27D73B050);
    if (v53)
    {
      v55 = 109;
    }

    else
    {
      v55 = 23;
    }

    v56 = sub_225B2C374(v49);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v172[0] = v56;
    sub_225B2C4A0(v50, sub_225B2AC40, 0, v57, v172);

    v58 = v172[0];
    v59 = sub_225B29AA0(0, 1, 1, v49);
    v61 = *(v59 + 2);
    v60 = *(v59 + 3);
    if (v61 >= v60 >> 1)
    {
      v59 = sub_225B29AA0((v60 > 1), v61 + 1, 1, v59);
    }

    *(v59 + 2) = v61 + 1;
    v62 = &v59[56 * v61];
    *(v62 + 4) = 0xD000000000000020;
    *(v62 + 5) = 0x8000000225D18CD0;
    v63 = v171;
    *(v62 + 6) = 0xD00000000000002DLL;
    *(v62 + 7) = v63;
    v64 = v170;
    *(v62 + 8) = 0xD000000000000047;
    *(v62 + 9) = v64;
    *(v62 + 10) = 186;
    *v52 = v55;
    *(v52 + 8) = v59;
    *(v52 + 16) = 0xD000000000000020;
    *(v52 + 24) = 0x8000000225D18CD0;
    *(v52 + 32) = v58;
    *(v52 + 40) = 0;
    swift_willThrow();
  }
}

uint64_t EncryptedDataContainer.encode(to:)(void *a1)
{
  type metadata accessor for EncryptedDataContainer.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_225CCF7F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v6 = *v1;
  v16[1] = v1[1];
  v16[2] = v6;
  v7 = *(v1 + 4);
  v26 = *(v1 + 3);
  v27 = v7;
  v8 = *(v1 + 6);
  v28 = *(v1 + 5);
  v29 = v8;
  v9 = *(v1 + 2);
  v24 = *(v1 + 1);
  v25 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v16 - v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_225CCFCE4();
  LOBYTE(v18) = 0;
  v14 = v16[3];
  sub_225CCF734();
  if (!v14)
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v18 = v24;
    v19 = v25;
    v30 = 1;
    sub_225A323C8(&v24, v17);
    sub_225A329BC();
    sub_225CCF7E4();
    v17[2] = v20;
    v17[3] = v21;
    v17[4] = v22;
    v17[5] = v23;
    v17[0] = v18;
    v17[1] = v19;
    sub_225A32400(v17);
  }

  return (*(v4 + 8))(v13, v3);
}

uint64_t EncryptedDataContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v22[0] = a3;
  v22[1] = a2;
  type metadata accessor for EncryptedDataContainer.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_225CCF714();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = v22 - v6;
  v8 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = v25;
  sub_225CCFCA4();
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0(v53);
  }

  else
  {
    v10 = v23;
    LOBYTE(v33[0]) = 0;
    v11 = sub_225CCF624();
    v13 = v12;
    v40 = 1;
    sub_225A328EC();
    sub_225CCF6E4();
    v25 = v11;
    (*(v10 + 8))(v7, v24);
    v49 = v43;
    v50 = v44;
    v14 = v46;
    v51 = v45;
    v52 = v46;
    v15 = v42;
    v47 = v41;
    v48 = v42;
    *&v26 = v11;
    *(&v26 + 1) = v13;
    v28 = v42;
    v27 = v41;
    v30 = v44;
    v29 = v43;
    v31 = v45;
    v32 = v46;
    v16 = v22[0];
    *(v22[0] + 80) = v45;
    v16[6] = v14;
    v17 = v30;
    v16[3] = v29;
    v16[4] = v17;
    v18 = v27;
    *v16 = v26;
    v16[1] = v18;
    v16[2] = v15;
    v19 = type metadata accessor for EncryptedDataContainer();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v33, &v26, v19);
    __swift_destroy_boxed_opaque_existential_0(v53);
    v33[0] = v25;
    v33[1] = v13;
    v36 = v49;
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v34 = v47;
    v35 = v48;
    return (*(v20 + 8))(v33, v19);
  }
}

uint64_t encryptData<A>(with:to:senderSigningKey:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __SecCertificate *a7)
{
  v114 = a7;
  v113 = a4;
  v112 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v105 - v10;
  v12 = *(a2 + 8);
  type metadata accessor for DIPECIESSessionV3SecKey();
  inited = swift_initStackObject();
  v115 = xmmword_225CD3100;
  *(inited + 16) = xmmword_225CD3100;
  *(inited + 32) = 0;
  swift_beginAccess();
  v14 = *(inited + 16);
  v15 = inited;
  v16 = *(inited + 24);
  *(inited + 16) = v115;
  sub_2259B97A8(v14, v16);
  swift_beginAccess();
  *(inited + 32) = 0;
  v17.value = SecTrustRef.getLeafCertificate()().value;
  if (!v17.value)
  {
    *&v115 = 0x8000000225D18980;
    v114 = 0x8000000225D18D30;
    v41 = MEMORY[0x277D84F90];
    v42 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v30 = v43;
    v44 = sub_225CCE954();
    v45 = *(v44 - 8);
    (*(v45 + 56))(v11, 1, 1, v44);
    LODWORD(v44) = (*(v45 + 48))(v11, 1, v44);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v44)
    {
      v46 = 269;
    }

    else
    {
      v46 = 23;
    }

    v47 = sub_225B2C374(v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v47;
    sub_225B2C4A0(v42, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v117);

    v49 = v117;
    v50 = sub_225B29AA0(0, 1, 1, v41);
    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = sub_225B29AA0((v51 > 1), v52 + 1, 1, v50);
    }

    *(v50 + 2) = v52 + 1;
    v53 = &v50[56 * v52];
    *(v53 + 4) = 0xD00000000000002ALL;
    *(v53 + 5) = 0x8000000225D18D00;
    *(v53 + 6) = 0xD00000000000002DLL;
    *(v53 + 7) = v115;
    *(v53 + 8) = 0xD000000000000026;
    *(v53 + 9) = v114;
    *(v53 + 10) = 227;
    *v30 = v46;
    *(v30 + 8) = v50;
    *(v30 + 16) = 0xD00000000000002ALL;
    *(v30 + 24) = 0x8000000225D18D00;
    *(v30 + 32) = v49;
    *(v30 + 40) = 0;
    swift_willThrow();

    return v30;
  }

  value = v17.value;
  *&v115 = v17;
  if (!v12)
  {
LABEL_19:
    v114 = 0x8000000225D18980;
    v113 = 0x8000000225D18D30;
    v54 = MEMORY[0x277D84F90];
    v55 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v30 = v56;
    v57 = sub_225CCE954();
    v58 = *(v57 - 8);
    (*(v58 + 56))(v11, 1, 1, v57);
    LODWORD(v57) = (*(v58 + 48))(v11, 1, v57);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v57)
    {
      v59 = 269;
    }

    else
    {
      v59 = 23;
    }

    v60 = sub_225B2C374(v54);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v60;
    sub_225B2C4A0(v55, sub_225B2AC40, 0, v61, &v117);

    v62 = v117;
    v63 = sub_225B29AA0(0, 1, 1, v54);
    v65 = *(v63 + 2);
    v64 = *(v63 + 3);
    if (v65 >= v64 >> 1)
    {
      v63 = sub_225B29AA0((v64 > 1), v65 + 1, 1, v63);
    }

    v66 = v115;
    *(v63 + 2) = v65 + 1;
    v67 = &v63[56 * v65];
    *(v67 + 4) = 0xD000000000000027;
    *(v67 + 5) = 0x8000000225D18D60;
    *(v67 + 6) = 0xD00000000000002DLL;
    *(v67 + 7) = v114;
    *(v67 + 8) = 0xD000000000000026;
    *(v67 + 9) = v113;
    *(v67 + 10) = 230;
    *v30 = v59;
    *(v30 + 8) = v63;
    *(v30 + 16) = 0xD000000000000027;
    *(v30 + 24) = 0x8000000225D18D60;
    *(v30 + 32) = v62;
    *(v30 + 40) = 0;
    swift_willThrow();

    return v30;
  }

  v19 = v12;
  v20.value = SecTrustRef.getLeafCertificate()().value;
  if (!v20.value)
  {

    goto LABEL_19;
  }

  v21 = v20.value;
  v111 = v19;
  v22 = SecCertificateCopyKey(v20.value);
  if (v22 && (v23 = v22, v24 = copyPublicKeyDataFromSecKeyPublic(_:)(v22), v26 = v25, v23, v26 >> 60 != 15))
  {
    v109 = v24;
    v110 = v26;
    v69 = SecCertificateCopyKey(value);
    if (v69)
    {
      v70 = v69;
      sub_225CCC9E4();
      swift_allocObject();
      v30 = sub_225CCC9D4();
      v71 = v116;
      v72 = sub_225CCC9C4();
      if (!v71)
      {
        v87 = v72;
        v88 = v73;
        v114 = v21;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B228);
        v89 = swift_initStackObject();
        v108 = v87;
        v116 = v88;
        v107 = v70;
        *(v89 + 16) = xmmword_225CD4890;
        *(v89 + 32) = 0;
        v90 = v112;
        v91 = v113;
        *(v89 + 40) = v112;
        *(v89 + 48) = v91;
        *(v89 + 56) = 1;
        v92 = v109;
        v93 = v110;
        *(v89 + 64) = v109;
        *(v89 + 72) = v93;
        v106 = sub_225B2D244(v89);
        v94 = v108;
        swift_setDeallocating();
        v95 = v90;
        v96 = v106;
        sub_2259CB710(v95, v91);
        sub_2259CB6FC(v92, v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B230);
        swift_arrayDestroy();
        v97 = v94;
        v98 = v107;
        sub_225A24CA8(v94, v116, v107, v96);
        v30 = v99;
        v100 = v98;
        v102 = v101;
        v104 = v103;

        sub_2259BEF00(v97, v116);

        sub_2259B97A8(v109, v110);

        swift_setDeallocating();
        sub_2259B97A8(*(v15 + 16), *(v15 + 24));
        sub_2259BEF00(v102, v104);
        return v30;
      }

      sub_2259B97A8(v109, v110);
    }

    else
    {
      v114 = v21;
      v112 = 0x8000000225D18980;
      v108 = 0x8000000225D18D30;
      v74 = MEMORY[0x277D84F90];
      v75 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v113 = swift_allocError();
      v30 = v76;
      v77 = sub_225CCE954();
      v78 = *(v77 - 8);
      (*(v78 + 56))(v11, 1, 1, v77);
      LODWORD(v77) = (*(v78 + 48))(v11, 1, v77);
      sub_2259CB640(v11, &unk_27D73B050);
      if (v77)
      {
        v79 = 1155;
      }

      else
      {
        v79 = 23;
      }

      v80 = sub_225B2C374(v74);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v80;
      sub_225B2C4A0(v75, sub_225B2AC40, 0, v81, &v117);

      v82 = v117;
      v83 = sub_225B29AA0(0, 1, 1, v74);
      v85 = *(v83 + 2);
      v84 = *(v83 + 3);
      if (v85 >= v84 >> 1)
      {
        v83 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v83);
      }

      v21 = v114;
      *(v83 + 2) = v85 + 1;
      v86 = &v83[56 * v85];
      *(v86 + 4) = 0xD00000000000003FLL;
      *(v86 + 5) = 0x8000000225D18940;
      *(v86 + 6) = 0xD00000000000002DLL;
      *(v86 + 7) = v112;
      *(v86 + 8) = 0xD000000000000026;
      *(v86 + 9) = v108;
      *(v86 + 10) = 237;
      *v30 = v79;
      *(v30 + 8) = v83;
      *(v30 + 16) = 0xD00000000000003FLL;
      *(v30 + 24) = 0x8000000225D18940;
      *(v30 + 32) = v82;
      *(v30 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v109, v110);
    }
  }

  else
  {
    v114 = v21;
    v113 = 0x8000000225D18980;
    v112 = 0x8000000225D18D30;
    v27 = MEMORY[0x277D84F90];
    v28 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v30 = v29;
    v31 = sub_225CCE954();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v11, 1, 1, v31);
    LODWORD(v31) = (*(v32 + 48))(v11, 1, v31);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v31)
    {
      v33 = 249;
    }

    else
    {
      v33 = 23;
    }

    v34 = sub_225B2C374(v27);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v34;
    sub_225B2C4A0(v28, sub_225B2AC40, 0, v35, &v117);

    v36 = v117;
    v37 = sub_225B29AA0(0, 1, 1, v27);
    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[56 * v39];
    *(v40 + 4) = 0xD000000000000032;
    *(v40 + 5) = 0x8000000225D18D90;
    *(v40 + 6) = 0xD00000000000002DLL;
    *(v40 + 7) = v113;
    *(v40 + 8) = 0xD000000000000026;
    *(v40 + 9) = v112;
    *(v40 + 10) = 233;
    *v30 = v33;
    *(v30 + 8) = v37;
    *(v30 + 16) = 0xD000000000000032;
    *(v30 + 24) = 0x8000000225D18D90;
    *(v30 + 32) = v36;
    *(v30 + 40) = 0;
    swift_willThrow();
  }

  return v30;
}

void createEncryptedDataContainer<A>(with:to:senderSigningKey:encryptor:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, __SecCertificate *a9@<X8>)
{
  v97 = a7;
  v94 = a1;
  v95 = a8;
  v96 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v90 - v17;
  v92 = *(a6 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v93 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 8);
  sub_225A32A10(a5, v100);
  sub_225A32A10(v100, v98);
  v22 = v99;
  sub_2259CB640(v98, &qword_27D73B238);
  if (v22)
  {
    v23.value = SecTrustRef.getLeafCertificate()().value;
    if (v23.value)
    {
      goto LABEL_3;
    }

LABEL_14:
    v97 = 0x8000000225D18980;
    v58 = MEMORY[0x277D84F90];
    v59 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v61 = v60;
    v62 = sub_225CCE954();
    v63 = *(v62 - 8);
    (*(v63 + 56))(v18, 1, 1, v62);
    LODWORD(v62) = (*(v63 + 48))(v18, 1, v62);
    sub_2259CB640(v18, &unk_27D73B050);
    if (v62)
    {
      v64 = 269;
    }

    else
    {
      v64 = 23;
    }

    v65 = sub_225B2C374(v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98[0] = v65;
    sub_225B2C4A0(v59, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v98);

    v67 = v98[0];
    v68 = sub_225B29AA0(0, 1, 1, v58);
    v70 = *(v68 + 2);
    v69 = *(v68 + 3);
    if (v70 >= v69 >> 1)
    {
      v68 = sub_225B29AA0((v69 > 1), v70 + 1, 1, v68);
    }

    *(v68 + 2) = v70 + 1;
    v71 = &v68[56 * v70];
    *(v71 + 4) = 0xD00000000000002ALL;
    *(v71 + 5) = 0x8000000225D18D00;
    v72 = v97;
    *(v71 + 6) = 0xD00000000000002DLL;
    *(v71 + 7) = v72;
    *(v71 + 8) = 0xD000000000000041;
    *(v71 + 9) = 0x8000000225D18DD0;
    *(v71 + 10) = 253;
    *v61 = v64;
    *(v61 + 8) = v68;
    *(v61 + 16) = 0xD00000000000002ALL;
    *(v61 + 24) = 0x8000000225D18D00;
    *(v61 + 32) = v67;
    *(v61 + 40) = 0;
    swift_willThrow();
    goto LABEL_27;
  }

  v48 = type metadata accessor for DIPECIESSessionV3SecKey();
  v49 = swift_allocObject();
  v91 = a6;
  v50 = a3;
  v51 = a4;
  v52 = v49;
  v90 = xmmword_225CD3100;
  *(v49 + 16) = xmmword_225CD3100;
  v53 = (v49 + 16);
  *(v49 + 32) = 0;
  v54 = (v49 + 32);
  swift_beginAccess();
  v55 = *v53;
  v56 = *(v52 + 24);
  *v53 = v90;
  sub_2259B97A8(v55, v56);
  swift_beginAccess();
  v57 = *v54;
  *v54 = 0;

  sub_2259CB640(v100, &qword_27D73B238);
  v100[0] = v52;
  a4 = v51;
  a3 = v50;
  a6 = v91;
  v100[3] = v48;
  v100[4] = &protocol witness table for DIPECIESSessionV3SecKey;
  v23.value = SecTrustRef.getLeafCertificate()().value;
  if (!v23.value)
  {
    goto LABEL_14;
  }

LABEL_3:
  value = v23.value;
  if (!v21)
  {
LABEL_21:
    v96 = 0x8000000225D18DD0;
    v97 = 0x8000000225D18980;
    v73 = MEMORY[0x277D84F90];
    v74 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v76 = v75;
    v77 = sub_225CCE954();
    v78 = *(v77 - 8);
    (*(v78 + 56))(v18, 1, 1, v77);
    LODWORD(v77) = (*(v78 + 48))(v18, 1, v77);
    sub_2259CB640(v18, &unk_27D73B050);
    if (v77)
    {
      v79 = 269;
    }

    else
    {
      v79 = 23;
    }

    v80 = sub_225B2C374(v73);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v98[0] = v80;
    sub_225B2C4A0(v74, sub_225B2AC40, 0, v81, v98);

    v82 = v98[0];
    v83 = sub_225B29AA0(0, 1, 1, v73);
    v85 = *(v83 + 2);
    v84 = *(v83 + 3);
    if (v85 >= v84 >> 1)
    {
      v83 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v83);
    }

    *(v83 + 2) = v85 + 1;
    v86 = &v83[56 * v85];
    *(v86 + 4) = 0xD000000000000027;
    *(v86 + 5) = 0x8000000225D18D60;
    v87 = v97;
    *(v86 + 6) = 0xD00000000000002DLL;
    *(v86 + 7) = v87;
    v88 = v96;
    *(v86 + 8) = 0xD000000000000041;
    *(v86 + 9) = v88;
    *(v86 + 10) = 256;
    *v76 = v79;
    *(v76 + 8) = v83;
    *(v76 + 16) = 0xD000000000000027;
    *(v76 + 24) = 0x8000000225D18D60;
    *(v76 + 32) = v82;
    *(v76 + 40) = 0;
    swift_willThrow();

    goto LABEL_27;
  }

  v25 = v21;
  v26.value = SecTrustRef.getLeafCertificate()().value;
  if (!v26.value)
  {

    goto LABEL_21;
  }

  v27 = v26.value;
  v28 = SecCertificateCopyKey(v26.value);
  if (!v28 || (v29 = v28, v91 = copyPublicKeyDataFromSecKeyPublic(_:)(v28), v31 = v30, v29, v31 >> 60 == 15))
  {
    v96 = v27;
    v97 = v25;
    v94 = 0x8000000225D18DD0;
    v95 = 0x8000000225D18980;
    v32 = MEMORY[0x277D84F90];
    v33 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v35 = v34;
    v36 = sub_225CCE954();
    v37 = *(v36 - 8);
    (*(v37 + 56))(v18, 1, 1, v36);
    LODWORD(v36) = (*(v37 + 48))(v18, 1, v36);
    sub_2259CB640(v18, &unk_27D73B050);
    if (v36)
    {
      v38 = 249;
    }

    else
    {
      v38 = 23;
    }

    v39 = sub_225B2C374(v32);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v98[0] = v39;
    sub_225B2C4A0(v33, sub_225B2AC40, 0, v40, v98);

    v41 = v98[0];
    v42 = sub_225B29AA0(0, 1, 1, v32);
    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_225B29AA0((v43 > 1), v44 + 1, 1, v42);
    }

    *(v42 + 2) = v44 + 1;
    v45 = &v42[56 * v44];
    *(v45 + 4) = 0xD000000000000032;
    *(v45 + 5) = 0x8000000225D18D90;
    v46 = v95;
    *(v45 + 6) = 0xD00000000000002DLL;
    *(v45 + 7) = v46;
    v47 = v94;
    *(v45 + 8) = 0xD000000000000041;
    *(v45 + 9) = v47;
    *(v45 + 10) = 259;
    *v35 = v38;
    *(v35 + 8) = v42;
    *(v35 + 16) = 0xD000000000000032;
    *(v35 + 24) = 0x8000000225D18D90;
    *(v35 + 32) = v41;
    *(v35 + 40) = 0;
    swift_willThrow();

LABEL_27:
    sub_2259CB640(v100, &qword_27D73B238);
    return;
  }

  sub_225A32A10(v100, v98);
  if (v99)
  {
    v89 = v93;
    (*(v92 + 16))(v93, v94, a6);
    v101 = 1;
    sub_2259CB710(a3, a4);
    EncryptedDataContainer.init(alg:encryptor:remoteCertificate:senderSigningKey:recipientSigningKey:data:)(&v101, v98, value, a3, a4, v91, v31, v89, v96, a6, v97, v95);
    sub_2259CB640(v100, &qword_27D73B238);
  }

  else
  {
    __break(1u);
  }
}

uint64_t createSignedEncryptedMessage<A>(with:to:signingKey:encryptor:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1104) = v12;
  *(v8 + 1096) = v11;
  *(v8 + 1088) = a8;
  *(v8 + 1080) = a7;
  *(v8 + 1072) = a6;
  *(v8 + 1064) = a5;
  *(v8 + 1056) = a4;
  *(v8 + 1048) = a2;
  *(v8 + 1040) = a1;
  v9 = *(a3 + 8);
  *(v8 + 1112) = *a3;
  *(v8 + 1120) = v9;
  *(v8 + 1033) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_225A31A38, 0, 0);
}

uint64_t sub_225A31A38()
{
  v32 = v0;
  v1 = *(v0 + 1056);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  *(v0 + 1128) = v4;
  *(v0 + 1136) = v5;
  v6 = v4;
  v7 = *(v0 + 1033);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1104);
  v10 = *(v0 + 1096);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1048);
  *(v0 + 1016) = *(v0 + 1112);
  *(v0 + 1024) = v8;
  *(v0 + 1032) = v7;
  createEncryptedDataContainer<A>(with:to:senderSigningKey:encryptor:)(v13, v0 + 1016, v6, v5, v12, v11, v10, v9, v30);
  v14 = *(v0 + 1033);
  v15 = *(v0 + 1056);
  v16 = sub_225CCCF84();
  *(&v31[4] + 6) = v30[4];
  *(&v31[3] + 6) = v30[3];
  *(&v31[6] + 6) = v30[6];
  *(&v31[5] + 6) = v30[5];
  *(&v31[1] + 6) = v30[1];
  *(v31 + 6) = v30[0];
  *(&v31[2] + 6) = v30[2];
  v17 = v31[5];
  v18 = v31[6];
  v19 = v31[3];
  *(v0 + 946) = v31[4];
  *(v0 + 962) = v17;
  *(v0 + 978) = v18;
  v20 = v31[1];
  v21 = v31[2];
  *(v0 + 882) = v31[0];
  *(v0 + 898) = v20;
  *(v0 + 880) = 1;
  *(v0 + 881) = v14;
  *(v0 + 992) = *(&v31[6] + 14);
  *(v0 + 914) = v21;
  *(v0 + 930) = v19;
  *(v0 + 1000) = v16;
  *(v0 + 1008) = v22;
  v23 = type metadata accessor for EncryptedMessage();
  swift_getWitnessTable();
  swift_getWitnessTable();
  JWSSignedJSON.init(payload:)(v0 + 880, v23, v0 + 16);
  v24 = type metadata accessor for JWSSignedJSON();
  *(v0 + 1144) = v24;
  JWSSignedJSON.setKid(_:)(v15);
  v25 = *(v0 + 1080);
  if (v25)
  {
    v26 = *(v0 + 1072);
    JWSSignedJSON.setNonce(_:)(*(&v25 - 1));
  }

  v27 = swift_task_alloc();
  *(v0 + 1152) = v27;
  *v27 = v0;
  v27[1] = sub_225A31D60;
  v28 = *(v0 + 1056);

  return JWSSignedJSON.sign(_:)(v28, v24);
}

uint64_t sub_225A31D60()
{
  v2 = *v1;
  *(*v1 + 1160) = v0;

  if (v0)
  {
    v3 = v2[143];
    memcpy(v2 + 74, v2 + 2, 0x120uLL);
    (*(*(v3 - 8) + 8))(v2 + 74, v3);
    v4 = sub_225A31F34;
  }

  else
  {
    v4 = sub_225A31EB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225A31EB8()
{
  v1 = v0[130];
  sub_2259BEF00(v0[141], v0[142]);
  memcpy(v1, v0 + 2, 0x120uLL);
  v2 = v0[1];

  return v2();
}

uint64_t sub_225A31F34()
{
  sub_2259BEF00(v0[141], v0[142]);
  v1 = v0[1];

  return v1();
}

uint64_t _s13CoreIDVShared9KDFParamsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  v14 = a2[5];
  v13 = a2[6];
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_225CCF934() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v12 || (v4 != v10 || v6 != v12) && (sub_225CCF934() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (!v8)
  {
    if (!v14)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v14 || (v5 != v11 || v8 != v14) && (sub_225CCF934() & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  result = (v7 | v13) == 0;
  if (v7 && v13)
  {

    return sub_225AB7D28(v7, v13);
  }

  return result;
}

uint64_t _s13CoreIDVShared16EncryptionParamsV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v27 = *(a1 + 4);
  v22 = *(a1 + 5);
  v30 = *(a1 + 4);
  v31 = *(a1 + 3);
  v25 = *(a1 + 10);
  v26 = *(a1 + 11);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v21 = *(a2 + 40);
  v10 = 0xE500000000000000;
  v11 = 0x33765F4345;
  v28 = *(a2 + 64);
  v29 = *(a2 + 48);
  if (v2 != 1)
  {
    v11 = 0x48535F33765F4345;
    v10 = 0xE800000000000000;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x765F4343455F5645;
  }

  if (v2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xEF312E4E53412D31;
  }

  v23 = *(a2 + 80);
  v24 = *(a2 + 88);
  v14 = 0xE500000000000000;
  v15 = 0x33765F4345;
  if (*a2 != 1)
  {
    v15 = 0x48535F33765F4345;
    v14 = 0xE800000000000000;
  }

  if (*a2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x765F4343455F5645;
  }

  if (*a2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xEF312E4E53412D31;
  }

  if (v12 == v16 && v13 == v17)
  {
  }

  else
  {
    v18 = sub_225CCF934();

    if ((v18 & 1) == 0)
    {
LABEL_28:
      v19 = 0;
      return v19 & 1;
    }
  }

  if ((v3 != v6 || v4 != v7) && (sub_225CCF934() & 1) == 0 || (v5 != v8 || v27 != v9) && (sub_225CCF934() & 1) == 0)
  {
    goto LABEL_28;
  }

  v37 = v22;
  v38 = v31;
  v39 = v30;
  v40 = v25;
  v41 = v26;
  v32 = v21;
  v33 = v29;
  v34 = v28;
  v35 = v23;
  v36 = v24;
  v19 = _s13CoreIDVShared9KDFParamsV2eeoiySbAC_ACtFZ_0(&v37, &v32);

  return v19 & 1;
}

unint64_t sub_225A32448()
{
  result = qword_27D73B1B8;
  if (!qword_27D73B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B1B8);
  }

  return result;
}

unint64_t sub_225A3249C()
{
  result = qword_27D73B1C0;
  if (!qword_27D73B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B1C0);
  }

  return result;
}

unint64_t sub_225A32508()
{
  result = qword_28105A730;
  if (!qword_28105A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A730);
  }

  return result;
}

unint64_t sub_225A3255C()
{
  result = qword_281059B90;
  if (!qword_281059B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B90);
  }

  return result;
}

uint64_t sub_225A325B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73DCB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225A3261C()
{
  result = qword_28105A8A8[0];
  if (!qword_28105A8A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28105A8A8);
  }

  return result;
}

unint64_t sub_225A32670()
{
  result = qword_281059E60;
  if (!qword_281059E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059E60);
  }

  return result;
}

unint64_t sub_225A326C4()
{
  result = qword_28105A718;
  if (!qword_28105A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A718);
  }

  return result;
}

unint64_t sub_225A32718()
{
  result = qword_281059B78;
  if (!qword_281059B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B78);
  }

  return result;
}

unint64_t sub_225A3276C()
{
  result = qword_27D73B1F8;
  if (!qword_27D73B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B1F8);
  }

  return result;
}

unint64_t sub_225A327C0()
{
  result = qword_27D73B200;
  if (!qword_27D73B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B200);
  }

  return result;
}

unint64_t sub_225A32814()
{
  result = qword_27D73B208;
  if (!qword_27D73B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B208);
  }

  return result;
}

unint64_t sub_225A32898()
{
  result = qword_27D73B218;
  if (!qword_27D73B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B218);
  }

  return result;
}

unint64_t sub_225A328EC()
{
  result = qword_27D73B220;
  if (!qword_27D73B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B220);
  }

  return result;
}

uint64_t sub_225A32940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_225A329BC()
{
  result = qword_28105A890;
  if (!qword_28105A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A890);
  }

  return result;
}

uint64_t sub_225A32A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_225A32A84()
{
  result = qword_27D73B240;
  if (!qword_27D73B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B240);
  }

  return result;
}

unint64_t sub_225A32ADC()
{
  result = qword_27D73B248[0];
  if (!qword_27D73B248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D73B248);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EncryptedMessageEntity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EncryptedMessageEntity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_225A32CA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225A32CEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225A32D3C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_225A32DB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_225A32E00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225A32E60(uint64_t a1, int a2)
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

uint64_t sub_225A32EA8(uint64_t result, int a2, int a3)
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

uint64_t sub_225A32F14(uint64_t a1, unsigned int a2)
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

uint64_t sub_225A32F70(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_225A3300C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225A33054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225A330BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_225A3311C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_225A33164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_225A33220()
{
  result = qword_27D73B2D0;
  if (!qword_27D73B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2D0);
  }

  return result;
}

unint64_t sub_225A33278()
{
  result = qword_27D73B2D8;
  if (!qword_27D73B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2D8);
  }

  return result;
}

unint64_t sub_225A332D0()
{
  result = qword_27D73B2E0;
  if (!qword_27D73B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2E0);
  }

  return result;
}

unint64_t sub_225A33328()
{
  result = qword_27D73B2E8;
  if (!qword_27D73B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2E8);
  }

  return result;
}

unint64_t sub_225A333D4()
{
  result = qword_27D73B2F0;
  if (!qword_27D73B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2F0);
  }

  return result;
}

unint64_t sub_225A3342C()
{
  result = qword_27D73B2F8;
  if (!qword_27D73B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B2F8);
  }

  return result;
}

unint64_t sub_225A33484()
{
  result = qword_28105A898;
  if (!qword_28105A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A898);
  }

  return result;
}

unint64_t sub_225A334DC()
{
  result = qword_28105A8A0;
  if (!qword_28105A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A8A0);
  }

  return result;
}

unint64_t sub_225A33534()
{
  result = qword_281059B80;
  if (!qword_281059B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B80);
  }

  return result;
}

unint64_t sub_225A3358C()
{
  result = qword_281059B88;
  if (!qword_281059B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B88);
  }

  return result;
}

unint64_t sub_225A335E4()
{
  result = qword_28105A720;
  if (!qword_28105A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A720);
  }

  return result;
}

unint64_t sub_225A3363C()
{
  result = qword_28105A728;
  if (!qword_28105A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105A728);
  }

  return result;
}

uint64_t sub_225A336D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x8000000225D18E60 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000225D18E80 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000225D18EA0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000225D18EC0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_225CCF934();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_225A33844(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000225D18EE0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656572674179656BLL && a2 == 0xEC000000746E656DLL || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6710379 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_225CCF934();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_225A33974()
{
  result = qword_27D73B300;
  if (!qword_27D73B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B300);
  }

  return result;
}

unint64_t sub_225A339C8()
{
  result = qword_281059E58;
  if (!qword_281059E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059E58);
  }

  return result;
}

uint64_t DIPFileUploadCryptor.Options.init(eraseInputFileData:copyDataForInternalDiagnostics:uuid:key:nonce:publicKey:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  return result;
}

uint64_t DIPFileUploadCryptor.Result.encryptedFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_225CCCEA4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DIPFileUploadCryptor.Result.internalDiagnosticsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DIPFileUploadCryptor.Result() + 20);

  return sub_225A33B7C(v3, a1);
}

uint64_t type metadata accessor for DIPFileUploadCryptor.Result()
{
  result = qword_27D73B308;
  if (!qword_27D73B308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_225A33B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static DIPFileUploadCryptor.encryptFileHandle(_:withOptions:)(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v197 = a1;
  v174 = a3;
  v202[3] = *MEMORY[0x277D85DE8];
  v199 = sub_225CCD954();
  v179 = *(v199 - 8);
  v5 = MEMORY[0x28223BE20](v199, v4);
  v175 = v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v195 = v165 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v200 = v165 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v192 = v165 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v193 = v165 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v188 = v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v189 = v165 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v190 = v165 - v26;
  v196 = sub_225CCCEA4();
  v191 = *(v196 - 8);
  v28 = MEMORY[0x28223BE20](v196, v27);
  v30 = v165 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = v165 - v33;
  v36 = MEMORY[0x28223BE20](v32, v35);
  v38 = v165 - v37;
  MEMORY[0x28223BE20](v36, v39);
  v41 = v165 - v40;
  v194 = *a2;
  LODWORD(v180) = a2[1];
  v43 = *(a2 + 1);
  v42 = *(a2 + 2);
  v44 = *(a2 + 4);
  v177 = *(a2 + 3);
  *&v176 = v44;
  v45 = *(a2 + 6);
  v187 = *(a2 + 5);
  v47 = *(a2 + 7);
  v46 = *(a2 + 8);
  v48 = v198;
  sub_225A34EE0(v165 - v40);
  v198 = v48;
  if (v48)
  {
    return;
  }

  v181 = v38;
  v171 = v42;
  v172 = v43;
  v166 = v34;
  v170 = v30;
  v167 = v45;
  v168 = v46;
  v169 = v47;
  v178 = v41;
  v49 = v190;
  v50 = v191;
  v51 = v196;
  (*(v191 + 56))(v190, 1, 1, v196);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v52 = off_28105B918;
  v53 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v54 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v54));
  v55 = v179;
  v56 = *(v179 + 16);
  v184 = v53;
  v57 = v199;
  v183 = v179 + 16;
  v182 = v56;
  v56(v193, &v52[v53], v199);
  v186 = v52;
  v185 = v54;
  os_unfair_lock_unlock(&v52[v54]);
  v58 = v50[2];
  v59 = v181;
  v165[1] = v50 + 2;
  v165[0] = v58;
  v58(v181, v178, v51);
  v60 = sub_225CCD934();
  v61 = sub_225CCED04();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v202[0] = v63;
    *v62 = 136315138;
    v64 = sub_225CCCE54();
    v66 = v65;
    v173 = *(v191 + 8);
    (v173)(v59, v196);
    v67 = sub_2259BE198(v64, v66, v202);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_2259A7000, v60, v61, "Successfully created temporary file at %s. Encrypting data & copying from FileHandle", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v50 = v191;
    MEMORY[0x22AA6F950](v63, -1, -1);
    v68 = v62;
    v55 = v179;
    v49 = v190;
    MEMORY[0x22AA6F950](v68, -1, -1);
  }

  else
  {

    v173 = v50[1];
    (v173)(v59, v51);
  }

  v181 = *(v55 + 8);
  v181(v193, v57);
  v69 = v198;
  v70 = v189;
  v71 = v192;
  if (!v180)
  {
    goto LABEL_10;
  }

  v72 = v198;
  sub_225A36438(v172, v171, v189);
  if (v69)
  {
    v73 = v186;
    v74 = v185;
    os_unfair_lock_lock(&v186[v185]);
    v75 = v55;
    v76 = v175;
    v182(v175, &v73[v184], v57);
    os_unfair_lock_unlock(&v73[v74]);
    DIPLogError(_:message:log:)(v72, 0xD000000000000061, 0x8000000225D18F20);

    v77 = v76;
    v55 = v75;
    v50 = v191;
    v181(v77, v57);
    v69 = 0;
LABEL_10:
    v79 = v195;
    v78 = v196;
    goto LABEL_11;
  }

  sub_225A370C8(v70, v49);
  v127 = v186;
  v128 = v185;
  os_unfair_lock_lock(&v186[v185]);
  v182(v71, &v127[v184], v57);
  os_unfair_lock_unlock(&v127[v128]);
  v129 = sub_225CCD934();
  v130 = sub_225CCED04();
  if (os_log_type_enabled(v129, v130))
  {
    v198 = 0;
    v131 = v49;
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v202[0] = v133;
    *v132 = 136315138;
    swift_beginAccess();
    v134 = v50[6];
    v135 = v196;
    if (v134(v131, 1, v196))
    {
      v136 = 0;
      v137 = 0xE000000000000000;
    }

    else
    {
      v156 = v166;
      (v165[0])(v166, v131, v135);
      v193 = sub_225CCCE54();
      v137 = v157;
      (v173)(v156, v135);
      v136 = v193;
    }

    v79 = v195;
    v158 = sub_2259BE198(v136, v137, v202);

    *(v132 + 4) = v158;
    _os_log_impl(&dword_2259A7000, v129, v130, "Successfully created internal diagnostics URL at %s", v132, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v133);
    MEMORY[0x22AA6F950](v133, -1, -1);
    MEMORY[0x22AA6F950](v132, -1, -1);

    v181(v192, v199);
    v78 = v196;
    v49 = v190;
    v50 = v191;
    v69 = v198;
  }

  else
  {

    v181(v71, v57);
    v79 = v195;
    v78 = v196;
  }

LABEL_11:
  sub_225CCCE54();
  v80 = sub_225CCE444();

  v81 = objc_opt_self();
  v189 = [v81 fileHandleForWritingAtPath_];

  swift_beginAccess();
  v82 = v188;
  sub_225A33B7C(v49, v188);
  if ((v50[6])(v82, 1, v78) == 1)
  {
    v83 = v78;
    sub_2259CB640(v82, &unk_27D73E090);
    v188 = 0;
  }

  else
  {
    v84 = v50[4];
    v85 = v170;
    v84(v170, v82, v196);
    sub_225CCCE54();
    v86 = sub_225CCE444();

    v188 = [v81 fileHandleForWritingAtPath_];

    v83 = v196;
    v173(v85);
  }

  v87 = v194;
  v88 = v187;
  v89 = sub_225CCECE4();
  if (v69)
  {
    v198 = v69;
    (v173)(v178, v83);

LABEL_49:
    sub_2259CB640(v190, &unk_27D73E090);
    return;
  }

  v91 = v89;
  v92 = v90;
  v93 = objc_allocWithZone(DIPStreamingCryptor);
  v94 = sub_225CCCF74();
  v180 = [v93 initWithKey_];

  v97 = v167;
  if (v167 >> 60 != 15)
  {
    sub_2259CB710(v88, v167);
    v98 = sub_225CCCF74();
    [v180 addIVParameter_];

    v95 = sub_2259B97A8(v88, v97);
  }

  v99 = v168;
  v100 = v169;
  if (v168 >> 60 != 15)
  {
    sub_2259CB710(v169, v168);
    v101 = sub_225CCCF74();
    [v180 addAuthParameter_];

    v95 = sub_2259B97A8(v100, v99);
  }

  if (v92 >> 60 == 15)
  {
    v102 = v92;
    v103 = v91;
  }

  else
  {
    v177 = v55 + 8;
    *&v96 = 134217984;
    v176 = v96;
    do
    {
      v193 = MEMORY[0x22AA6EE60](v95);
      v138 = sub_225CCCF74();
      v139 = [v180 encryptBuffer_];

      v140 = sub_225CCCFA4();
      v142 = v141;

      v187 = [v197 offsetInFile];
      v143 = v189;
      if (v189)
      {
        v144 = sub_225CCCF74();
        [v143 writeData_];
      }

      v192 = v140;
      v145 = v188;
      if (v188)
      {
        v146 = sub_225CCCF74();
        [v145 writeData_];
      }

      v103 = sub_225CCECE4();
      v198 = v147;
      v148 = v186;
      v149 = v185;
      os_unfair_lock_lock(&v186[v185]);
      v150 = v199;
      v182(v200, &v148[v184], v199);
      os_unfair_lock_unlock(&v148[v149]);
      v151 = sub_225CCD934();
      v152 = sub_225CCED04();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        *v153 = v176;
        *(v153 + 4) = v187;
        _os_log_impl(&dword_2259A7000, v151, v152, "Encrypted 0.5 MB from FileHandle starting at offset: %llu", v153, 0xCu);
        v150 = v199;
        MEMORY[0x22AA6F950](v153, -1, -1);
      }

      sub_2259BEF00(v192, v142);

      v181(v200, v150);
      objc_autoreleasePoolPop(v193);
      v95 = sub_2259B97A8(v91, v92);
      v102 = v198;
      v91 = v103;
      v92 = v198;
      v79 = v195;
      v87 = v194;
    }

    while (v198 >> 60 != 15);
  }

  v104 = [v180 finish];
  v105 = sub_225CCCFA4();
  v107 = v106;

  if (v189)
  {
    v108 = v189;
    v109 = sub_225CCCF74();
    [v108 writeData_];
  }

  if (v87)
  {
    v201 = 0;
    v110 = [v197 truncateAtOffset:0 error:&v201];
    v111 = v201;
    if (!v110)
    {
LABEL_46:
      v154 = v111;
      v155 = sub_225CCCCC4();

      v198 = v155;
      swift_willThrow();

      sub_2259BEF00(v105, v107);
LABEL_47:

      goto LABEL_48;
    }

    v112 = v201;
  }

  v201 = 0;
  v113 = [v197 closeAndReturnError_];
  v111 = v201;
  if (!v113)
  {
    goto LABEL_46;
  }

  v114 = v189;
  if (v189)
  {
    v201 = 0;
    v115 = v111;
    v116 = [v114 closeAndReturnError_];
    v111 = v201;
    if (!v116)
    {
      v159 = v201;
      v160 = sub_225CCCCC4();

      v198 = v160;
      swift_willThrow();

      sub_2259BEF00(v105, v107);
      goto LABEL_47;
    }
  }

  v117 = v111;
  if (v188)
  {
    v200 = v103;
    v201 = 0;
    v118 = v188;
    if ([v188 closeAndReturnError_])
    {
      v119 = v201;
      v103 = v200;
      goto LABEL_33;
    }

    v163 = v201;
    v164 = sub_225CCCCC4();

    v198 = v164;
    swift_willThrow();

    sub_2259BEF00(v105, v107);
LABEL_48:
    (v173)(v178, v196);
    goto LABEL_49;
  }

LABEL_33:
  v120 = v186;
  v121 = v185;
  os_unfair_lock_lock(&v186[v185]);
  v182(v79, &v120[v184], v199);
  os_unfair_lock_unlock(&v120[v121]);
  v122 = sub_225CCD934();
  v123 = sub_225CCED04();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 0;
    _os_log_impl(&dword_2259A7000, v122, v123, "Finished encrypting data in original liveness FileHandle", v124, 2u);
    v125 = v199;
    MEMORY[0x22AA6F950](v124, -1, -1);

    sub_2259BEF00(v105, v107);
    sub_2259B97A8(v103, v102);
    v126 = v174;
  }

  else
  {

    sub_2259BEF00(v105, v107);
    v126 = v174;
    v125 = v199;
  }

  v181(v79, v125);
  (*(v191 + 32))(v126, v178, v196);
  v161 = v126 + *(type metadata accessor for DIPFileUploadCryptor.Result() + 20);
  v162 = v190;
  sub_225A33B7C(v190, v161);
  sub_2259CB640(v162, &unk_27D73E090);
}

void sub_225A34EE0(unint64_t a1@<X8>)
{
  v190 = *MEMORY[0x277D85DE8];
  v180 = sub_225CCD954();
  v179 = *(v180 - 1);
  v3 = MEMORY[0x28223BE20](v180, v2);
  v171 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v174 = &v166 - v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v175 = &v166 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v170 = &v166 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v167 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v173 = &v166 - v18;
  v19 = sub_225CCCEA4();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v172 = &v166 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v166 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v166 - v29;
  sub_225CCCDD4();
  sub_225CCCE04();
  v169 = v20;
  v31 = *(v20 + 8);
  v31(v27, v19);
  sub_225CCCE54();
  sub_225CCCDC4();

  v178 = a1;
  sub_225CCCE14();
  v177 = v19;
  v176 = v31;
  v31(v27, v19);
  LOBYTE(v183[0]) = 0;
  v32 = objc_opt_self();
  v33 = &off_278575000;
  v34 = [v32 defaultManager];
  v181 = v30;
  sub_225CCCE54();
  v35 = sub_225CCE444();

  v36 = [v34 fileExistsAtPath:v35 isDirectory:v183];

  if (v36)
  {
    if ((v183[0] & 1) == 0)
    {
      v184 = 0;
      v185 = 0xE000000000000000;
      sub_225CCF204();

      v184 = 0xD000000000000014;
      v185 = 0x8000000225D190A0;
      v96 = sub_225CCCE54();
      MEMORY[0x22AA6CE70](v96);

      MEMORY[0x22AA6CE70](0xD000000000000019, 0x8000000225D190C0);
      v97 = v185;
      v180 = v184;
      v179 = 0x8000000225D18FB0;
      v175 = 0x8000000225D19040;
      v98 = MEMORY[0x277D84F90];
      v99 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v95 = swift_allocError();
      v101 = v100;
      v102 = sub_225CCE954();
      v103 = *(v102 - 8);
      v104 = v173;
      (*(v103 + 56))(v173, 1, 1, v102);
      LODWORD(v102) = (*(v103 + 48))(v104, 1, v102);
      sub_2259CB640(v104, &unk_27D73B050);
      if (v102)
      {
        v105 = 229;
      }

      else
      {
        v105 = 23;
      }

      v106 = sub_225B2C374(v98);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v184 = v106;
      sub_225B2C4A0(v99, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v184);

      v108 = v184;
      v109 = sub_225B29AA0(0, 1, 1, v98);
      v111 = *(v109 + 2);
      v110 = *(v109 + 3);
      if (v111 >= v110 >> 1)
      {
        v109 = sub_225B29AA0((v110 > 1), v111 + 1, 1, v109);
      }

      *(v109 + 2) = v111 + 1;
      v112 = &v109[56 * v111];
      v113 = v180;
      *(v112 + 4) = v180;
      *(v112 + 5) = v97;
      v114 = v179;
      *(v112 + 6) = 0xD000000000000028;
      *(v112 + 7) = v114;
      v115 = v175;
      *(v112 + 8) = 0xD00000000000002DLL;
      *(v112 + 9) = v115;
      *(v112 + 10) = 131;
      *v101 = v105;
      *(v101 + 8) = v109;
      *(v101 + 16) = v113;
      *(v101 + 24) = v97;
      *(v101 + 32) = v108;
      *(v101 + 40) = 0;
LABEL_39:
      swift_willThrow();
      v180 = 0;
      v49 = v178;
      goto LABEL_40;
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v37 = off_28105B918;
    v38 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v39 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v39));
    v40 = v179;
    v41 = &v37[v38];
    v42 = v170;
    v43 = v180;
    v168 = v179[2];
    v168(v170, v41, v180);
    v44 = &v37[v39];
    v45 = v42;
    os_unfair_lock_unlock(v44);
    v46 = sub_225CCD934();
    v47 = sub_225CCED04();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2259A7000, v46, v47, "uploads path exists", v48, 2u);
      MEMORY[0x22AA6F950](v48, -1, -1);
    }

    v175 = v40[1];
    (v175)(v45, v43);
    v49 = v178;
    v33 = &off_278575000;
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v37 = off_28105B918;
    v50 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v51 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v51));
    v52 = v179;
    v168 = v179[2];
    v168(v175, &v37[v50], v180);
    os_unfair_lock_unlock(&v37[v51]);
    v53 = sub_225CCD934();
    v54 = sub_225CCED04();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2259A7000, v53, v54, "uploads path doesn't exist. Creating the directory...", v55, 2u);
      MEMORY[0x22AA6F950](v55, -1, -1);
    }

    v56 = v175;
    v175 = v52[1];
    (v175)(v56, v180);
    v57 = [v32 defaultManager];
    sub_225CCCE54();
    v58 = sub_225CCE444();

    v184 = 0;
    v59 = [v57 createDirectoryAtPath:v58 withIntermediateDirectories:1 attributes:0 error:&v184];

    v60 = v184;
    v49 = v178;
    if (!v59)
    {
      goto LABEL_26;
    }

    v61 = v184;
    v43 = v180;
  }

  v62 = [v32 v33[176]];
  sub_225CCCE54();
  v63 = sub_225CCE444();

  v64 = [v62 fileExistsAtPath_];

  if (!v64)
  {
LABEL_21:
    v74 = [v32 v33[176]];
    sub_225CCCE54();
    v75 = sub_225CCE444();

    v76 = [v74 createFileAtPath:v75 contents:0 attributes:0];

    v77 = v172;
    if (v76)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v78 = *(*v37 + *MEMORY[0x277D841D0] + 16);
      v79 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock(&v37[v79]);
      v80 = v171;
      v168(v171, &v37[v78], v43);
      os_unfair_lock_unlock(&v37[v79]);
      v81 = v177;
      (*(v169 + 16))(v77, v49, v177);
      v82 = sub_225CCD934();
      v83 = sub_225CCED04();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = v77;
        v86 = swift_slowAlloc();
        v184 = v86;
        *v84 = 136315138;
        v87 = sub_225CCCE54();
        v89 = v88;
        v90 = v85;
        v91 = v177;
        v92 = v176;
        v176(v90, v177);
        v93 = sub_2259BE198(v87, v89, &v184);

        *(v84 + 4) = v93;
        _os_log_impl(&dword_2259A7000, v82, v83, "Successfully created temporary file at %s. Will start encrypting data & copying from FileHandle", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v86);
        MEMORY[0x22AA6F950](v86, -1, -1);
        MEMORY[0x22AA6F950](v84, -1, -1);

        (v175)(v171, v180);
        v92(v181, v91);
      }

      else
      {

        v165 = v176;
        v176(v77, v81);
        (v175)(v80, v43);
        v165(v181, v81);
      }

      return;
    }

    v180 = 0x8000000225D18FB0;
    v179 = 0x8000000225D19040;
    v116 = MEMORY[0x277D84F90];
    v117 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v95 = swift_allocError();
    v119 = v118;
    v120 = sub_225CCE954();
    v121 = *(v120 - 8);
    v122 = v173;
    (*(v121 + 56))(v173, 1, 1, v120);
    LODWORD(v120) = (*(v121 + 48))(v122, 1, v120);
    sub_2259CB640(v122, &unk_27D73B050);
    if (v120)
    {
      v123 = 571;
    }

    else
    {
      v123 = 23;
    }

    v124 = sub_225B2C374(v116);
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v184 = v124;
    sub_225B2C4A0(v117, sub_225B2AC40, 0, v125, &v184);

    v126 = v184;
    v127 = sub_225B29AA0(0, 1, 1, v116);
    v129 = *(v127 + 2);
    v128 = *(v127 + 3);
    if (v129 >= v128 >> 1)
    {
      v127 = sub_225B29AA0((v128 > 1), v129 + 1, 1, v127);
    }

    *(v127 + 2) = v129 + 1;
    v130 = &v127[56 * v129];
    *(v130 + 4) = 0xD00000000000002BLL;
    *(v130 + 5) = 0x8000000225D19070;
    v131 = v180;
    *(v130 + 6) = 0xD000000000000028;
    *(v130 + 7) = v131;
    v132 = v179;
    *(v130 + 8) = 0xD00000000000002DLL;
    *(v130 + 9) = v132;
    *(v130 + 10) = 147;
    *v119 = v123;
    *(v119 + 8) = v127;
    *(v119 + 16) = 0xD00000000000002BLL;
    *(v119 + 24) = 0x8000000225D19070;
    *(v119 + 32) = v126;
    *(v119 + 40) = 0;
    goto LABEL_39;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v65 = *(*v37 + *MEMORY[0x277D841D0] + 16);
  v66 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v37[v66]);
  v168(v174, &v37[v65], v43);
  os_unfair_lock_unlock(&v37[v66]);
  v67 = sub_225CCD934();
  v68 = sub_225CCED04();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_2259A7000, v67, v68, "coreidvd temporary liveness video file exists. Deleting to copy new liveness video.", v69, 2u);
    MEMORY[0x22AA6F950](v69, -1, -1);
  }

  (v175)(v174, v43);
  v70 = [v32 v33[176]];
  v49 = v178;
  sub_225CCCE54();
  v71 = sub_225CCE444();

  v184 = 0;
  v72 = [v70 removeItemAtPath:v71 error:&v184];

  v60 = v184;
  if (v72)
  {
    v73 = v184;
    v43 = v180;
    goto LABEL_21;
  }

LABEL_26:
  v94 = v60;
  v95 = sub_225CCCCC4();

  swift_willThrow();
  v180 = 0;
LABEL_40:
  v133 = v49;
  v134 = v177;
  v135 = v176;
  v176(v133, v177);
  v135(v181, v134);
  v181 = " internal diagnostics file";
  v136 = v95;
  v137 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v182 = swift_allocError();
  v139 = v138;
  swift_getErrorValue();
  v140 = v183[2];
  v141 = v95;
  sub_225B21FAC(v140, &v184);

  v142 = v185;
  if (v185)
  {
    v179 = v184;
    v178 = v186;
    v177 = v187;
    v144 = v188;
    v143 = v189;
  }

  else
  {
    v184 = v95;
    v145 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v146 = v183[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v148 = [v146 code];
      v149 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v149;
      *(inited + 40) = v148;
      v144 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v150 = v95;
      v179 = 0;
      v178 = 0;
      v177 = 0;
      v142 = MEMORY[0x277D84F90];
    }

    else
    {
      v184 = v95;
      v151 = v95;
      v152 = sub_225CCE954();
      v153 = v167;
      v154 = swift_dynamicCast();
      v155 = *(v152 - 8);
      (*(v155 + 56))(v153, v154 ^ 1u, 1, v152);
      LODWORD(v155) = (*(v155 + 48))(v153, 1, v152);
      sub_2259CB640(v153, &unk_27D73B050);
      if (v155)
      {
        v156 = 0;
      }

      else
      {
        v156 = 23;
      }

      v179 = v156;
      v142 = MEMORY[0x277D84F90];
      v144 = sub_225B2C374(MEMORY[0x277D84F90]);
      v157 = v95;
      v178 = 0;
      v177 = 0;
    }

    v143 = v95;
  }

  v158 = v181 | 0x8000000000000000;
  v159 = swift_isUniquelyReferenced_nonNull_native();
  v184 = v144;
  sub_225B2C4A0(v137, sub_225B2AC40, 0, v159, &v184);

  v160 = v184;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v142 = sub_225B29AA0(0, *(v142 + 2) + 1, 1, v142);
  }

  v162 = *(v142 + 2);
  v161 = *(v142 + 3);
  if (v162 >= v161 >> 1)
  {
    v142 = sub_225B29AA0((v161 > 1), v162 + 1, 1, v142);
  }

  *(v142 + 2) = v162 + 1;
  v163 = &v142[56 * v162];
  *(v163 + 4) = 0;
  *(v163 + 5) = 0;
  *(v163 + 6) = 0xD000000000000028;
  *(v163 + 7) = 0x8000000225D18FB0;
  *(v163 + 8) = 0xD00000000000002DLL;
  *(v163 + 9) = v158;
  *(v163 + 10) = 153;
  *v139 = v179;
  v164 = v178;
  *(v139 + 8) = v142;
  *(v139 + 16) = v164;
  *(v139 + 24) = v177;
  *(v139 + 32) = v160;
  *(v139 + 40) = v143;
  swift_willThrow();
}

void sub_225A36438(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X8>)
{
  v110 = a2;
  v109 = a1;
  v120 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v103 - v11;
  v13 = sub_225CCCEA4();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v103 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v103 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v111 = &v103 - v28;
  if (!isInternalBuild()())
  {
    goto LABEL_10;
  }

  v106 = a3;
  v105 = v12;
  v108 = v18;
  v104 = v9;
  v29 = objc_opt_self();
  v30 = [v29 defaultManager];
  v31 = [v30 URLsForDirectory:13 inDomains:1];

  v32 = sub_225CCE814();
  if (!*(v32 + 16))
  {

    a3 = v106;
LABEL_10:
    (*(v14 + 56))(a3, 1, 1, v13);
    return;
  }

  v107 = v3;
  (*(v14 + 16))(v26, v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);

  v33 = v111;
  v103 = *(v14 + 32);
  v103(v111, v26, v13);
  sub_225CCCE14();
  v34 = [v29 defaultManager];
  v35 = sub_225CCCDF4();
  v114 = 0;
  v36 = [v34 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:&v114];

  if (v36)
  {
    v37 = v114;
    sub_225CCCE14();
    v38 = [v29 defaultManager];
    sub_225CCCE54();
    v39 = sub_225CCE444();

    v40 = [v38 fileExistsAtPath_];

    if (!v40)
    {
LABEL_7:
      v45 = [v29 defaultManager];
      v46 = v108;
      sub_225CCCE54();
      v47 = sub_225CCE444();

      v48 = [v45 createFileAtPath:v47 contents:0 attributes:0];

      if (v48)
      {
        v49 = v46;
        v50 = *(v14 + 8);
        v50(v22, v13);
        v50(v111, v13);
        v51 = v106;
        v103(v106, v49, v13);
        (*(v14 + 56))(v51, 0, 1, v13);
        return;
      }

      v110 = 0x8000000225D19010;
      v109 = 0x8000000225D18FB0;
      v106 = 0x8000000225D18FE0;
      v56 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v53 = swift_allocError();
      v58 = v57;
      v59 = sub_225CCE954();
      v60 = *(v59 - 8);
      v61 = v105;
      (*(v60 + 56))(v105, 1, 1, v59);
      LODWORD(v59) = (*(v60 + 48))(v61, 1, v59);
      sub_2259CB640(v61, &unk_27D73B050);
      if (v59)
      {
        v62 = 575;
      }

      else
      {
        v62 = 23;
      }

      LODWORD(v105) = v62;
      v63 = MEMORY[0x277D84F90];
      v64 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v64;
      sub_225B2C4A0(v56, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v114);

      v66 = v114;
      v67 = sub_225B29AA0(0, 1, 1, v63);
      v69 = *(v67 + 2);
      v68 = *(v67 + 3);
      if (v69 >= v68 >> 1)
      {
        v67 = sub_225B29AA0((v68 > 1), v69 + 1, 1, v67);
      }

      v70 = v111;
      *(v67 + 2) = v69 + 1;
      v71 = &v67[56 * v69];
      v72 = v110;
      *(v71 + 4) = 0xD00000000000002ALL;
      *(v71 + 5) = v72;
      *(v71 + 6) = 0xD000000000000028;
      *(v71 + 7) = v109;
      *(v71 + 8) = 0xD000000000000027;
      *(v71 + 9) = v106;
      *(v71 + 10) = 171;
      *v58 = v105;
      *(v58 + 8) = v67;
      *(v58 + 16) = 0xD00000000000002ALL;
      *(v58 + 24) = v72;
      *(v58 + 32) = v66;
      *(v58 + 40) = 0;
      swift_willThrow();
      v54 = *(v14 + 8);
      v54(v108, v13);
      v54(v22, v13);
      v55 = v70;
      goto LABEL_19;
    }

    v41 = [v29 defaultManager];
    v42 = sub_225CCCDF4();
    v114 = 0;
    v43 = [v41 removeItemAtURL:v42 error:&v114];

    if (v43)
    {
      v44 = v114;
      goto LABEL_7;
    }

    v73 = v114;
    v53 = sub_225CCCCC4();

    swift_willThrow();
    v54 = *(v14 + 8);
    v54(v108, v13);
    v54(v22, v13);
    v55 = v111;
  }

  else
  {
    v52 = v114;
    v53 = sub_225CCCCC4();

    swift_willThrow();
    v54 = *(v14 + 8);
    v54(v22, v13);
    v55 = v33;
  }

LABEL_19:
  v54(v55, v13);
  v110 = "PFileUploadCryptor.swift";
  v74 = v53;
  v111 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v75 = swift_allocError();
  v77 = v76;
  swift_getErrorValue();
  v78 = v113;
  v79 = v53;
  sub_225B21FAC(v78, &v114);

  v80 = v115;
  v107 = v75;
  if (v115)
  {
    v109 = v114;
    v108 = v116;
    v106 = v117;
    v81 = v118;
    v82 = v119;
  }

  else
  {
    v114 = v53;
    v83 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v84 = v112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v86 = [v84 code];
      v87 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v87;
      *(inited + 40) = v86;
      v81 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v88 = v53;
      v109 = 0;
      v108 = 0;
      v106 = 0;
      v80 = MEMORY[0x277D84F90];
    }

    else
    {
      v114 = v53;
      v89 = v53;
      v90 = sub_225CCE954();
      v91 = v104;
      v92 = swift_dynamicCast();
      v93 = *(v90 - 8);
      (*(v93 + 56))(v91, v92 ^ 1u, 1, v90);
      LODWORD(v93) = (*(v93 + 48))(v91, 1, v90);
      sub_2259CB640(v91, &unk_27D73B050);
      if (v93)
      {
        v94 = 0;
      }

      else
      {
        v94 = 23;
      }

      v109 = v94;
      v80 = MEMORY[0x277D84F90];
      v81 = sub_225B2C374(MEMORY[0x277D84F90]);
      v95 = v53;
      v108 = 0;
      v106 = 0;
    }

    v82 = v53;
  }

  v96 = v110 | 0x8000000000000000;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v81;
  sub_225B2C4A0(v111, sub_225B2AC40, 0, v97, &v114);

  v98 = v114;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v80 = sub_225B29AA0(0, *(v80 + 2) + 1, 1, v80);
  }

  v100 = *(v80 + 2);
  v99 = *(v80 + 3);
  if (v100 >= v99 >> 1)
  {
    v80 = sub_225B29AA0((v99 > 1), v100 + 1, 1, v80);
  }

  *(v80 + 2) = v100 + 1;
  v101 = &v80[56 * v100];
  *(v101 + 4) = 0;
  *(v101 + 5) = 0;
  *(v101 + 6) = 0xD000000000000028;
  *(v101 + 7) = 0x8000000225D18FB0;
  *(v101 + 8) = 0xD000000000000027;
  *(v101 + 9) = v96;
  *(v101 + 10) = 176;
  *v77 = v109;
  v102 = v108;
  *(v77 + 8) = v80;
  *(v77 + 16) = v102;
  *(v77 + 24) = v106;
  *(v77 + 32) = v98;
  *(v77 + 40) = v82;
  swift_willThrow();
}