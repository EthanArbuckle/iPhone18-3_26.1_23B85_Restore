uint64_t sub_225C73494(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v36 = MEMORY[0x277D84F90];
    result = sub_2259D5698(0, v8, 0);
    v11 = 0;
    v12 = v36;
    v34 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    *&v35 = v8;
    v13 = v3;
    while (v11 < *(v7 + 16))
    {
      sub_225C705F8(v34 + *(v13 + 72) * v11, v6);
      v14 = v6[3];
      v15 = v6[4];
      v16 = v6[5];

      result = sub_225C742C0(v6, type metadata accessor for ISO18013ReaderRequest.DocRequest);
      v36 = v12;
      v18 = v12[2];
      v17 = v12[3];
      v19 = v12;
      if (v18 >= v17 >> 1)
      {
        v33 = v13;
        result = sub_2259D5698((v17 > 1), v18 + 1, 1);
        v13 = v33;
        v19 = v36;
      }

      ++v11;
      v19[2] = v18 + 1;
      v20 = &v19[3 * v18];
      v20[4] = v14;
      v20[5] = v15;
      v20[6] = v16;
      v12 = v19;
      if (v35 == v11)
      {
        v9 = MEMORY[0x277D84F90];
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACA0);
    v21 = swift_allocObject();
    v35 = xmmword_225CD30F0;
    *(v21 + 16) = xmmword_225CD30F0;
    v22 = v12[2];
    if (v22)
    {
      v34 = v21;
      v36 = v9;
      sub_2259D5658(0, v22, 0);
      v23 = v36;
      v24 = v12 + 6;
      do
      {
        v26 = *(v24 - 2);
        v25 = *(v24 - 1);
        v27 = *v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC88);
        v28 = swift_allocObject();
        *(v28 + 16) = v35;
        *(v28 + 32) = v26;
        *(v28 + 40) = v25;
        *(v28 + 48) = v27;
        v36 = v23;
        v30 = v23[2];
        v29 = v23[3];

        if (v30 >= v29 >> 1)
        {
          sub_2259D5658((v29 > 1), v30 + 1, 1);
          v23 = v36;
        }

        v23[2] = v30 + 1;
        v23[v30 + 4] = v28;
        v24 += 3;
        --v22;
      }

      while (v22);

      result = v34;
    }

    else
    {
      v31 = v21;

      result = v31;
      v23 = MEMORY[0x277D84F90];
    }

    *(result + 32) = v23;
    *(result + 40) = 1;
  }

  return result;
}

uint64_t sub_225C737A4(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v89 - v8;
  v10 = sub_225CCD954();
  v102 = *(v10 - 8);
  v103 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v101 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v108 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v107 = (&v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 48);
  if (v16 >= 2)
  {
    v31 = *(v16 + 16);
    v28 = MEMORY[0x277D84F90];
    if (v31)
    {
      v95 = v1;
      v25 = *(a1 + 16);
      v112 = MEMORY[0x277D84F90];
      v20 = &v112;
      v92 = v31;
      v97 = v16;
      sub_2259D5638(0, v31, 0);
      v32 = v97;
      v33 = 0;
      result = v112;
      v34 = v97 + 32;
      v93 = v9;
      v89 = v97 + 32;
      while (1)
      {
        v27 = *(v32 + 16);
        if (v33 >= v27)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v35 = (v34 + 16 * v33);
        v36 = *v35;
        v37 = v35[8];
        v38 = *(*v35 + 16);
        if (v38)
        {
          break;
        }

        v63 = v28;
LABEL_29:
        v112 = result;
        v2 = *(result + 16);
        v60 = *(result + 24);
        if (v2 >= v60 >> 1)
        {
          v20 = &v112;
          v64 = v63;
          v3 = v33;
          v4 = v34;
          v91 = v37;
          sub_2259D5638((v60 > 1), v2 + 1, 1);
          LOBYTE(v37) = v91;
          v34 = v4;
          v33 = v3;
          v32 = v97;
          v63 = v64;
          v28 = MEMORY[0x277D84F90];
          result = v112;
        }

        ++v33;
        *(result + 16) = v2 + 1;
        v61 = result + 16 * v2;
        *(v61 + 32) = v63;
        *(v61 + 40) = v37;
        if (v33 == v92)
        {
          return result;
        }
      }

      v91 = v37;
      v90 = v33;
      v96 = result;
      v111[0] = v28;
      v100 = v38;
      v105 = v36;
      swift_bridgeObjectRetain_n();
      v20 = v111;
      sub_2259D5658(0, v100, 0);
      v39 = v100;
      v40 = v105;
      v41 = 0;
      v42 = v111[0];
      v43 = v105 + 32;
      v94 = v105 + 32;
      while (1)
      {
        v27 = *(v40 + 16);
        if (v41 >= v27)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v44 = *(v43 + 8 * v41);
        v45 = v44[2];
        if (v45)
        {
          break;
        }

        v55 = v28;
LABEL_24:
        v111[0] = v42;
        v57 = *(v42 + 16);
        v56 = *(v42 + 24);
        v2 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          v20 = v111;
          v58 = v55;
          v3 = v41;
          v59 = v43;
          sub_2259D5658((v56 > 1), v57 + 1, 1);
          v43 = v59;
          v41 = v3;
          v39 = v100;
          v55 = v58;
          v40 = v105;
          v42 = v111[0];
        }

        ++v41;
        *(v42 + 16) = v2;
        *(v42 + 8 * v57 + 32) = v55;
        v28 = MEMORY[0x277D84F90];
        if (v41 == v39)
        {
          v62 = v42;
          swift_bridgeObjectRelease_n();
          v63 = v62;
          result = v96;
          v32 = v97;
          v33 = v90;
          v34 = v89;
          v37 = v91;
          goto LABEL_29;
        }
      }

      v98 = v41;
      v99 = v42;
      v110 = v28;

      v104 = v44;
      sub_2259D5698(0, v45, 0);
      v20 = v104;
      v28 = 0;
      v46 = v110;
      v106 = *(v25 + 16);
      while (1)
      {
        v27 = v20[2];
        if (v28 >= v27)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v27 = v20[v28 + 4];
        if ((v27 & 0x8000000000000000) != 0 || v27 >= v106)
        {
          break;
        }

        if (v27 >= *(v25 + 16))
        {
          goto LABEL_45;
        }

        v47 = v46;
        v48 = v25;
        v49 = v25 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v27;
        v50 = v107;
        sub_225C705F8(v49, v107);
        v51 = v50[3];
        v2 = v50[4];
        v3 = v50[5];

        sub_225C742C0(v50, type metadata accessor for ISO18013ReaderRequest.DocRequest);
        v46 = v47;
        v110 = v47;
        v4 = *(v47 + 16);
        v52 = *(v46 + 24);
        if (v4 >= v52 >> 1)
        {
          sub_2259D5698((v52 > 1), v4 + 1, 1);
          v20 = v104;
          v46 = v110;
        }

        ++v28;
        *(v46 + 16) = v4 + 1;
        v53 = (v46 + 24 * v4);
        v53[4] = v51;
        v53[5] = v2;
        v53[6] = v3;
        v25 = v48;
        if (v45 == v28)
        {
          v54 = v46;

          v55 = v54;
          v40 = v105;
          v42 = v99;
          v39 = v100;
          v41 = v98;
          v43 = v94;
          goto LABEL_24;
        }
      }

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v65 = off_28105B918;
      v66 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v67 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v67));
      v69 = v101;
      v68 = v102;
      v70 = v103;
      (*(v102 + 16))(v101, &v65[v66], v103);
      os_unfair_lock_unlock(&v65[v67]);
      v71 = sub_225CCD934();
      v72 = sub_225CCED04();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_2259A7000, v71, v72, "Raw request validator received a document request index that does not refer to a document request.", v73, 2u);
        MEMORY[0x22AA6F950](v73, -1, -1);
      }

      (*(v68 + 8))(v69, v70);
      v107 = 0x8000000225D29C50;
      v108 = 0x8000000225D29B80;
      v74 = MEMORY[0x277D84F90];
      v75 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v77 = v76;
      v78 = sub_225CCE954();
      v79 = *(v78 - 8);
      v80 = v93;
      (*(v79 + 56))(v93, 1, 1, v78);
      LODWORD(v78) = (*(v79 + 48))(v80, 1, v78);
      sub_2259CB640(v80, &unk_27D73B050);
      if (v78)
      {
        v81 = 1045;
      }

      else
      {
        v81 = 23;
      }

      v82 = sub_225B2C374(v74);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v82;
      sub_225B2C4A0(v75, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v109);

      v84 = v109;
      v85 = sub_225B29AA0(0, 1, 1, v74);
      v87 = *(v85 + 2);
      v86 = *(v85 + 3);
      if (v87 >= v86 >> 1)
      {
        v85 = sub_225B29AA0((v86 > 1), v87 + 1, 1, v85);
      }

      *(v85 + 2) = v87 + 1;
      v88 = &v85[56 * v87];
      *(v88 + 4) = 0xD00000000000004ELL;
      *(v88 + 5) = 0x8000000225D29C70;
      *(v88 + 6) = 0xD000000000000036;
      *(v88 + 7) = v108;
      *(v88 + 8) = 0xD000000000000019;
      *(v88 + 9) = v107;
      *(v88 + 10) = 81;
      *v77 = v81;
      *(v77 + 8) = v85;
      *(v77 + 16) = 0xD00000000000004ELL;
      *(v77 + 24) = 0x8000000225D29C70;
      *(v77 + 32) = v84;
      *(v77 + 40) = 0;
      swift_willThrow();
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v3 = 0x8000000225D29C10;
    v107 = 0x8000000225D29C50;
    v108 = 0x8000000225D29B80;
    v17 = MEMORY[0x277D84F90];
    v18 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v9, 1, 1, v21);
    LODWORD(v21) = (*(v22 + 48))(v9, 1, v21);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v21)
    {
      LOWORD(v4) = 1080;
    }

    else
    {
      LOWORD(v4) = 23;
    }

    v23 = sub_225B2C374(v17);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v23;
    sub_225B2C4A0(v18, sub_225B2AC40, 0, v24, &v112);

    v25 = v112;
    v26 = sub_225B29AA0(0, 1, 1, v17);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    v2 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
LABEL_48:
      v26 = sub_225B29AA0((v27 > 1), v2, 1, v26);
    }

    *(v26 + 2) = v2;
    v29 = &v26[56 * v28];
    *(v29 + 4) = 0xD00000000000003ALL;
    *(v29 + 5) = v3;
    *(v29 + 6) = 0xD000000000000036;
    *(v29 + 7) = v108;
    *(v29 + 8) = 0xD000000000000019;
    *(v29 + 9) = v107;
    *(v29 + 10) = 70;
    *v20 = v4;
    v20[1] = v26;
    v20[2] = 0xD00000000000003ALL;
    v20[3] = v3;
    v20[4] = v25;
    v20[5] = 0;
    return swift_willThrow();
  }
}

unint64_t sub_225C74230()
{
  result = qword_27D742740;
  if (!qword_27D742740)
  {
    type metadata accessor for ISO18013RequestForwardingRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742740);
  }

  return result;
}

uint64_t sub_225C742C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WebPresentmentMobileDocumentSource.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t WebPresentmentDeviceSupportProvider.init(deviceInfoProvider:userDefaultaConfiguration:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2259A9C20(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

void *WebPresentmentDeviceSupportProvider.mobileDocumentSource.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1[5] + 24))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v9 = sub_225CCE444();
    v10 = [v8 initWithSuiteName_];

    if (v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = [objc_opt_self() standardUserDefaults];
LABEL_5:
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1 && (v11 = sub_225CCE444(), v12 = [v10 stringForKey_], v11, v12))
  {
    sub_225CCE474();

    v13 = sub_225CCF5D4();

    if (!v13)
    {
      LODWORD(v14) = 0;
LABEL_16:
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v18 = off_28105B918;
      v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v20));
      (*(v4 + 16))(v7, &v18[v19], v3);
      os_unfair_lock_unlock(&v18[v20]);
      v21 = sub_225CCD934();
      v22 = sub_225CCED04();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v23 = 136315138;
        if (v14)
        {
          v25 = 0x65746F6D6572;
        }

        else
        {
          v25 = 0x6C61636F6CLL;
        }

        v29 = a1;
        v26 = v14;
        if (v14)
        {
          v14 = 0xE600000000000000;
        }

        else
        {
          v14 = 0xE500000000000000;
        }

        v27 = sub_2259BE198(v25, v14, &v30);
        LOBYTE(v14) = v26;
        a1 = v29;

        *(v23 + 4) = v27;
        _os_log_impl(&dword_2259A7000, v21, v22, "WebPresentmentDeviceSupportProvider overriding default remote device browsing behavior: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x22AA6F950](v24, -1, -1);
        MEMORY[0x22AA6F950](v23, -1, -1);
      }

      result = (*(v4 + 8))(v7, v3);
      if ((v14 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_14:
      *a1 = 1;
      return result;
    }

    if (v13 == 1)
    {
      LODWORD(v14) = 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v15 = v1[3];
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v15);
  result = (*(v16 + 24))(&v31, v15, v16);
  if (v31)
  {
    goto LABEL_14;
  }

LABEL_27:
  *a1 = 0;
  return result;
}

unint64_t sub_225C74AF0()
{
  result = qword_27D742748;
  if (!qword_27D742748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742748);
  }

  return result;
}

uint64_t sub_225C74B68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_225C74BB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static WebPresentmentEntitlementChecker.checkEntitlement(connection:)(void *a1)
{
  if (!a1)
  {
    sub_225C74D50(&v8);
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v6;
      }

      return 0;
    }

    goto LABEL_11;
  }

  v1 = a1;
  v2 = sub_225CCE444();
  v3 = [v1 valueForEntitlement_];

  if (v3)
  {
    sub_225CCF0A4();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
LABEL_11:
    sub_225B5445C(&v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

void sub_225C74D50(_OWORD *a1@<X8>)
{
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    v4 = sub_225CCE444();
    v5 = SecTaskCopyValueForEntitlement(v3, v4, 0);

    if (v5)
    {
      ObjectType = swift_getObjectType();
      *&v7 = v5;
      sub_2259B9624(&v7, &v9);
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v6 = v10;
    *a1 = v9;
    a1[1] = v6;
  }

  else
  {
    *a1 = 0u;
    a1[1] = 0u;
  }
}

uint64_t static WebPresentmentEntitlementChecker.checkWebBrowserEntitlement(connection:)(void *a1)
{
  if (!a1)
  {
    sub_225C74D50(&v8);
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v6;
      }

      return 0;
    }

    goto LABEL_11;
  }

  v1 = a1;
  v2 = sub_225CCE444();
  v3 = [v1 valueForEntitlement_];

  if (v3)
  {
    sub_225CCF0A4();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
LABEL_11:
    sub_225B5445C(&v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

uint64_t sub_225C74F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C74FAC, 0, 0);
}

uint64_t sub_225C74FAC()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C922E0, v3, v8);
}

uint64_t sub_225C750E8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225C92B04;
  }

  else
  {

    v2 = sub_225C92B8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C75204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C75228, 0, 0);
}

uint64_t sub_225C75228()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C75360;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C92488, v3, &type metadata for WebPresentmentResponse);
}

uint64_t sub_225C75360()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225C754E0;
  }

  else
  {

    v2 = sub_225C7547C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C7547C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C754E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7554C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C75570, 0, 0);
}

uint64_t sub_225C75570()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C91E28, v3, v8);
}

uint64_t sub_225C756AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C756D0, 0, 0);
}

uint64_t sub_225C756D0()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C91FBC, v3, &type metadata for WebPresentmentResponse);
}

uint64_t sub_225C75808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7582C, 0, 0);
}

uint64_t sub_225C7582C()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8E460, v3, v8);
}

uint64_t sub_225C75968(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_225C7598C, 0, 0);
}

uint64_t sub_225C7598C()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F0);
  *v6 = v0;
  v6[1] = sub_225C75AD4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C91AF0, v3, v7);
}

uint64_t sub_225C75AD4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_225C75C5C;
  }

  else
  {

    v2 = sub_225C75BF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C75BF0()
{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[1];

  return v4(v1, v2, v3);
}

uint64_t sub_225C75C5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C75CC8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C75CEC, 0, 0);
}

uint64_t sub_225C75CEC()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityProofingDisplayInfo();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C91628, v3, v7);
}

uint64_t sub_225C75E28()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225C92B04;
  }

  else
  {

    v2 = sub_225C92AFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C75F44(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C75F68, 0, 0);
}

uint64_t sub_225C75F68()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityImageQuality();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C912F0, v3, v7);
}

uint64_t sub_225C760A4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C760C8, 0, 0);
}

uint64_t sub_225C760C8()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityProofingNFCConfig();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C90FB8, v3, v7);
}

uint64_t sub_225C76204(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76228, 0, 0);
}

uint64_t sub_225C76228()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for NFCPendingCommandsStatus();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C90C80, v3, v7);
}

uint64_t sub_225C76364(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76388, 0, 0);
}

uint64_t sub_225C76388()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for NFCPendingCommands();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C90948, v3, v7);
}

uint64_t sub_225C764C4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C764E8, 0, 0);
}

uint64_t sub_225C764E8()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityProofingStatus();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C90610, v3, v7);
}

uint64_t sub_225C76624(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76648, 0, 0);
}

uint64_t sub_225C76648()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityProofingConfiguration();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C902D8, v3, v7);
}

uint64_t sub_225C76784(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_225C767A8, 0, 0);
}

uint64_t sub_225C767A8()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_225C768E0;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8FFB4, v3, v7);
}

uint64_t sub_225C768E0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225C92B0C;
  }

  else
  {

    v2 = sub_225C92B00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C769FC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76A20, 0, 0);
}

uint64_t sub_225C76A20()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C75E28;
  v7 = MEMORY[0x277D83B88];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8FC7C, v3, v7);
}

uint64_t sub_225C76B58(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76B7C, 0, 0);
}

uint64_t sub_225C76B7C()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DCA0);
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8F944, v3, v7);
}

uint64_t sub_225C76CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C76CE8, 0, 0);
}

uint64_t sub_225C76CE8()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0E0);
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8F60C, v3, v7);
}

uint64_t sub_225C76E30(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C76E54, 0, 0);
}

uint64_t sub_225C76E54()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityBindingDetails();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8F2D4, v3, v7);
}

uint64_t sub_225C76F90(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_225C76FB4, 0, 0);
}

uint64_t sub_225C76FB4()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_225C770EC;
  v7 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8EF9C, v3, v7);
}

uint64_t sub_225C770EC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_225C92B08;
  }

  else
  {

    v2 = sub_225C92B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C77208(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C7722C, 0, 0);
}

uint64_t sub_225C7722C()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for IdentityLivenessConfig();
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8EC64, v3, v7);
}

uint64_t sub_225C77368(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C7738C, 0, 0);
}

uint64_t sub_225C7738C()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742780);
  *v6 = v0;
  v6[1] = sub_225C75E28;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8E92C, v3, v7);
}

uint64_t sub_225C774D4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_225C774F8, 0, 0);
}

uint64_t sub_225C774F8()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E130);
  *v6 = v0;
  v6[1] = sub_225C77640;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8E5F4, v3, v7);
}

uint64_t sub_225C77640()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_225C777C4;
  }

  else
  {

    v2 = sub_225C7775C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C7775C()
{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_225C777C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C77830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C77854, 0, 0);
}

uint64_t sub_225C77854()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C750E8;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8DACC, v3, v8);
}

uint64_t sub_225C77990(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C779B4, 0, 0);
}

uint64_t sub_225C779B4()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_225C77AEC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8E128, v3, &type metadata for IdentityProofingDataSharingUserConsent);
}

uint64_t sub_225C77AEC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225C754E0;
  }

  else
  {

    v2 = sub_225C77C08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C77C08()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_225C77C70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_225C77C94, 0, 0);
}

uint64_t sub_225C77C94()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_225C77DCC;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225C8DC60, v3, v7);
}

uint64_t sub_225C77DCC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225C77F50;
  }

  else
  {

    v2 = sub_225C77EE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C77EE8()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_225C77F50()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t WebPresentmentRemoteAlertController.__allocating_init()()
{
  v0 = swift_allocObject();
  WebPresentmentRemoteAlertController.init()();
  return v0;
}

uint64_t WebPresentmentRemoteAlertController.init()()
{
  swift_defaultActor_initialize();
  sub_225C74D50(&aBlock);
  if (*(&v22 + 1))
  {
    if (swift_dynamicCast())
    {
      v1 = v27[0];
      goto LABEL_6;
    }
  }

  else
  {
    sub_2259CB640(&aBlock, &qword_27D73DD90);
  }

  v1 = 0;
LABEL_6:
  *(v0 + 120) = v1;
  v2 = [objc_opt_self() interfaceWithProtocol_];
  aBlock = 0u;
  v22 = 0u;
  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_225CCE444();
  v5 = [v3 initWithMachServiceName:v4 options:4096];

  sub_225C7B258(&aBlock, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742750);
  v6 = swift_allocObject();
  [v5 setRemoteObjectInterface_];
  [v5 setInvalidationHandler_];
  v7 = &off_278575000;
  [v5 setInterruptionHandler_];
  [v5 setExportedInterface_];
  sub_225C7B258(v27, v25);
  v8 = v26;
  if (v26)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v25, v26);
    v10 = *(v8 - 8);
    MEMORY[0x28223BE20](v9, v9);
    v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_225CCF924();
    (*(v10 + 8))(v12, v8);
    v7 = &off_278575000;
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    v13 = 0;
  }

  [v5 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v5;
  v6[2] = v14;
  v6[3] = sub_225C784DC;
  v6[4] = 0;
  [v5 activate];

  sub_2259CB640(v27, &qword_27D73DD90);
  sub_2259CB640(&aBlock, &qword_27D73DD90);
  *(v0 + 112) = v6;

  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  v23 = sub_225C78740;
  v24 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_225A1A000;
  *(&v22 + 1) = &block_descriptor_13;
  v16 = _Block_copy(&aBlock);

  [v15 v7[455]];
  _Block_release(v16);
  os_unfair_lock_unlock((v14 + 24));

  v17 = *(*(v0 + 112) + 16);

  os_unfair_lock_lock((v17 + 24));
  v18 = *(v17 + 16);
  v23 = sub_225C7874C;
  v24 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_225A1A000;
  *(&v22 + 1) = &block_descriptor_3_0;
  v19 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler_];
  _Block_release(v19);
  os_unfair_lock_unlock((v17 + 24));

  return v0;
}

uint64_t sub_225C784DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v21 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v6 = swift_allocError();
  v8 = v7;
  v9 = sub_225CCE954();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  v11 = (*(v10 + 48))(v3, 1, v9);
  sub_2259CB640(v3, &unk_27D73B050);
  v12 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v12;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v22);

  v14 = v22;
  v15 = sub_225B29AA0(0, 1, 1, v4);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[56 * v17];
  *(v18 + 4) = 0xD000000000000020;
  *(v18 + 5) = 0x8000000225D2A7C0;
  *(v18 + 6) = 0xD000000000000037;
  *(v18 + 7) = 0x8000000225D2A4E0;
  *(v18 + 8) = 0x292874696E69;
  *(v18 + 9) = 0xE600000000000000;
  *(v18 + 10) = 37;
  if (v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = 23;
  }

  *v8 = v19;
  *(v8 + 8) = v15;
  *(v8 + 16) = 0xD000000000000020;
  *(v8 + 24) = 0x8000000225D2A7C0;
  *(v8 + 32) = v14;
  *(v8 + 40) = 0;
  return v6;
}

uint64_t sub_225C78758(const char *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, a1, v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t WebPresentmentRemoteAlertController.handleScannableCode(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v2[4] = swift_task_alloc();
  v3 = sub_225CCCEA4();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_225CCD954();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C78AA0, v1, 0);
}

uint64_t sub_225C78AA0()
{
  v52 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  v7 = *(v3 + 16);
  v7(v1, &v4[v5], v2);
  os_unfair_lock_unlock(&v4[v6]);
  v8 = sub_225CCD934();
  v9 = sub_225CCED04();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[10];
  v49 = v0[9];
  v50 = v0[12];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v48 = v7;
    v13 = swift_slowAlloc();
    v51[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2259BE198(0xD000000000000017, 0x8000000225D2A520, v51);
    _os_log_impl(&dword_2259A7000, v8, v9, "WebPresentmentRemoteAlertController %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v14 = v13;
    v7 = v48;
    MEMORY[0x22AA6F950](v14, -1, -1);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v15 = *(v11 + 8);
  v15(v50, v49);
  v16 = v0[3];
  if (*(v16 + 120) == 1)
  {
    v17 = v0[8];
    v18 = v0[5];
    v19 = v0[6];
    v20 = v0[2];
    v0[13] = *(v16 + 112);
    (*(v19 + 16))(v17, v20, v18);
    v21 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v22 = swift_allocObject();
    v0[14] = v22;
    (*(v19 + 32))(v22 + v21, v17, v18);

    return MEMORY[0x2822009F8](sub_225C79030, 0, 0);
  }

  else
  {
    v23 = v0[11];
    v24 = v0[9];
    os_unfair_lock_lock(&v4[v6]);
    v7(v23, &v4[v5], v24);
    os_unfair_lock_unlock(&v4[v6]);
    v25 = sub_225CCD934();
    v26 = sub_225CCECF4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2259A7000, v25, v26, "IdentityCredentialWebPresentmentRemoteAlertController calling application is not entitled to use the API", v27, 2u);
      MEMORY[0x22AA6F950](v27, -1, -1);
    }

    v28 = v0[11];
    v29 = v0[9];
    v30 = v0[4];

    v15(v28, v29);
    v31 = MEMORY[0x277D84F90];
    v32 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v34 = v33;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v30, 1, 1, v35);
    v37 = (*(v36 + 48))(v30, 1, v35);
    sub_2259CB640(v30, &unk_27D73B050);
    v38 = sub_225B2C374(v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v38;
    sub_225B2C4A0(v32, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v51);

    v40 = v51[0];
    v41 = sub_225B29AA0(0, 1, 1, v31);
    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_225B29AA0((v42 > 1), v43 + 1, 1, v41);
    }

    *(v41 + 2) = v43 + 1;
    v44 = &v41[56 * v43];
    *(v44 + 4) = 0;
    *(v44 + 5) = 0;
    *(v44 + 6) = 0xD000000000000037;
    *(v44 + 7) = 0x8000000225D2A4E0;
    if (v37)
    {
      v45 = 3;
    }

    else
    {
      v45 = 23;
    }

    *(v44 + 8) = 0xD000000000000017;
    *(v44 + 9) = 0x8000000225D2A520;
    *(v44 + 10) = 57;
    *v34 = v45;
    *(v34 + 8) = v41;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = v40;
    *(v34 + 40) = 0;
    swift_willThrow();

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_225C79030()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = swift_task_alloc();
  v0[15] = v3;
  v3[2] = v2;
  v3[3] = &unk_225D00DD8;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v4[2] = &unk_225D00DE0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_225C79160;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v5, &unk_225D00DF0, v3, sub_225C8D5EC, v4, 0, 0, v6);
}

uint64_t sub_225C79160()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_225C79330;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 24);

    v3 = sub_225C792A4;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_225C792A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C79330()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_225C793B8, v1, 0);
}

uint64_t sub_225C793B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C79444(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[18] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[21] = v6;
  v3[22] = v7;

  return MEMORY[0x2822009F8](sub_225C79518, 0, 0);
}

uint64_t sub_225C79518()
{
  v1 = v0[21];
  v7 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_225CCCDF4();
  v0[23] = v4;
  v0[2] = v0;
  v0[3] = sub_225C796DC;
  swift_continuation_init();
  v0[17] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_225BED200;
  v0[13] = &block_descriptor_627;
  [v7 handleScannableCode:v4 completionHandler:v0 + 10];
  (*(v3 + 8))(boxed_opaque_existential_1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_225C796DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_225C7985C;
  }

  else
  {
    v2 = sub_225C797EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C797EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7985C()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225C798D8()
{
  v1 = sub_225CCD954();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C79994, 0, 0);
}

uint64_t sub_225C79994()
{
  v18 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2259BE198(0xD000000000000017, 0x8000000225D2A520, &v17);
    _os_log_impl(&dword_2259A7000, v7, v8, "WebPresentmentRemoteAlertController %s cancelling", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA6F950](v14, -1, -1);
    MEMORY[0x22AA6F950](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);

  v15 = v0[1];

  return v15();
}

uint64_t WebPresentmentRemoteAlertController.performRemoteRequest(_:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v3[14] = swift_task_alloc();
  v4 = *(type metadata accessor for WebPresentmentRequest(0) - 8);
  v3[15] = v4;
  v3[16] = *(v4 + 64);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C79CCC, v2, 0);
}

uint64_t sub_225C79CCC()
{
  v35 = v0;
  v1 = v0[12];
  if (*(v1 + 120) == 1)
  {
    v2 = v0[13];
    v3 = *(v1 + 112);
    v0[18] = v3;
    v0[5] = v2;
    v0[2] = v1;
    v4 = *(v3 + 16);

    os_unfair_lock_lock((v4 + 24));
    v5 = *(v4 + 16);
    sub_225C7B258((v0 + 2), (v0 + 6));
    v6 = v0[9];
    if (v6)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
      v8 = *(v6 - 8);
      v9 = swift_task_alloc();
      (*(v8 + 16))(v9, v7, v6);
      v10 = sub_225CCF924();
      (*(v8 + 8))(v9, v6);

      __swift_destroy_boxed_opaque_existential_0((v0 + 6));
    }

    else
    {
      v10 = 0;
    }

    v29 = v0[17];
    v30 = v0[15];
    v31 = v0[11];
    [v5 setExportedObject_];
    swift_unknownObjectRelease();
    os_unfair_lock_unlock((v4 + 24));
    sub_2259CB640((v0 + 2), &qword_27D73DD90);
    sub_225C8D63C(v31, v29);
    v32 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v33 = swift_allocObject();
    v0[19] = v33;
    sub_225C8D6A0(v29, v33 + v32);

    return MEMORY[0x2822009F8](sub_225C7A108, 0, 0);
  }

  else
  {
    v11 = v0[14];
    v12 = MEMORY[0x277D84F90];
    v13 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v15 = v14;
    v16 = sub_225CCE954();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v11, 1, 1, v16);
    v18 = (*(v17 + 48))(v11, 1, v16);
    sub_2259CB640(v11, &unk_27D73B050);
    v19 = sub_225B2C374(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v19;
    sub_225B2C4A0(v13, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v34);

    v21 = v34;
    v22 = sub_225B29AA0(0, 1, 1, v12);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_225B29AA0((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[56 * v24];
    *(v25 + 4) = 0xD000000000000031;
    *(v25 + 5) = 0x8000000225D2A540;
    *(v25 + 6) = 0xD000000000000037;
    *(v25 + 7) = 0x8000000225D2A4E0;
    *(v25 + 8) = 0xD000000000000018;
    *(v25 + 9) = 0x8000000225D2A580;
    *(v25 + 10) = 70;
    if (v18)
    {
      v26 = 3;
    }

    else
    {
      v26 = 23;
    }

    *v15 = v26;
    *(v15 + 8) = v22;
    *(v15 + 16) = 0xD000000000000031;
    *(v15 + 24) = 0x8000000225D2A540;
    *(v15 + 32) = v21;
    *(v15 + 40) = 0;
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_225C7A108()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v2;
  v3[3] = &unk_225D00E08;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  v4[2] = &unk_225D00E10;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_225C7A23C;
  v6 = v0[10];

  return MEMORY[0x282200830](v6, &unk_225D00E20, v3, sub_225C8D89C, v4, 0, 0, &type metadata for WebPresentmentResponse);
}

uint64_t sub_225C7A23C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_225C7A3FC;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 96);

    v3 = sub_225C7A380;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_225C7A380()
{
  sub_225C7A4FC(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7A3FC()
{
  v1 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_225C7A484, v1, 0);
}

uint64_t sub_225C7A484()
{
  sub_225C7A4FC(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7A4FC(uint64_t a1)
{
  v1 = *(a1 + 112);
  memset(v13, 0, sizeof(v13));
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  sub_225C7B258(v13, v11);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5, v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_225CCF924();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  [v3 setExportedObject_];
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v2 + 24));
  return sub_2259CB640(v13, &qword_27D73DD90);
}

uint64_t sub_225C7A67C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[21] = a1;
  v3[22] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742818);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  type metadata accessor for WebPresentmentRequest(0);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[26] = v6;
  v3[27] = v7;

  return MEMORY[0x2822009F8](sub_225C7A77C, 0, 0);
}

uint64_t sub_225C7A77C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 20;
  v4 = v0[26];
  v13 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  sub_225C8D63C(v1[22], v4);
  v8 = type metadata accessor for XPCWebPresentmentRequest(0);
  v9 = objc_allocWithZone(v8);
  sub_225C8D63C(v4, v9 + OBJC_IVAR____TtC13CoreIDVShared24XPCWebPresentmentRequest_value);
  v1[18] = v9;
  v1[19] = v8;
  v10 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[28] = v10;
  sub_225C9282C(v4);
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_225C7A99C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for XPCWebPresentmentResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v5 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225C95F80;
  v1[13] = &block_descriptor_610;
  [v13 performRemoteRequest:v10 completionHandler:?];
  (*(v5 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_225C7A99C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_225C7AB68;
  }

  else
  {
    v2 = sub_225C7AAAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C7AAAC()
{
  v1 = v0[28];
  v3 = v0[20];
  v2 = v0[21];
  v4 = *&v3[OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value];
  v5 = *&v3[OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value + 8];
  sub_2259CB710(v4, v5);

  *v2 = v4;
  v2[1] = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_225C7AB68()
{
  v1 = *(v0 + 224);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225C7ABF4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00);
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = sub_225CCD954();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v1[23] = v5;
  v1[24] = v6;

  return MEMORY[0x2822009F8](sub_225C7AD20, 0, 0);
}

uint64_t sub_225C7AD20()
{
  v22 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[21];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2259BE198(0xD000000000000018, 0x8000000225D2A580, &v21);
    _os_log_impl(&dword_2259A7000, v7, v8, "WebPresentmentRemoteAlertController %s cancelling", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA6F950](v14, -1, -1);
    MEMORY[0x22AA6F950](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v15 = v0[24];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  v0[2] = v0;
  v0[3] = sub_225C7B054;
  swift_continuation_init();
  v0[17] = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_225CCE914();
  (*(v17 + 32))(boxed_opaque_existential_1, v16, v18);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_225C7B1A4;
  v0[13] = &block_descriptor_607;
  [v15 cancelRemoteRequestWithCompletionHandler_];
  (*(v17 + 8))(boxed_opaque_existential_1, v18);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_225C7B054()
{

  return MEMORY[0x2822009F8](sub_225C7B134, 0, 0);
}

uint64_t sub_225C7B134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7B1A4(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00);
  return sub_225CCE934();
}

uint64_t WebPresentmentRemoteAlertController.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t WebPresentmentRemoteAlertController.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_225C7B258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225C7B2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7B304, 0, 0);
}

uint64_t sub_225C7B304()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B3DC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return (sub_225C74F88)(v6, v4, v5);
}

uint64_t sub_225C7B3DC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C92B88, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C7B518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7B53C, 0, 0);
}

uint64_t sub_225C7B53C()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B614;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_225C75204(v6, v4, v5);
}

uint64_t sub_225C7B614()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C7B750, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225C7B750()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7B7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7B7D8, 0, 0);
}

uint64_t sub_225C7B7D8()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B3DC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_225C756AC(v6, v4, v5);
}

uint64_t sub_225C7B8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7B8D4, 0, 0);
}

uint64_t sub_225C7B8D4()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B3DC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_225C75808(v6, v4, v5);
}

uint64_t sub_225C7B9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7B9D0, 0, 0);
}

uint64_t sub_225C7B9D0()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B3DC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_225C76CC4(v6, v4, v5);
}

uint64_t sub_225C7BAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C7BACC, 0, 0);
}

uint64_t sub_225C7BACC()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C7B3DC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_225C77830(v6, v4, v5);
}

uint64_t sub_225C7C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v29 - v18;
  if (a1)
  {
    v20 = sub_225CCE994();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a3;
    v21[5] = a1;
    v21[6] = a2;
    a5(a1, a2);

    sub_225AFBC30(0, 0, v19, a6, v21);
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v23 = off_28105B918;
    v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v25));
    (*(v12 + 16))(v15, &v23[v24], v11);
    os_unfair_lock_unlock(&v23[v25]);
    v26 = sub_225CCD934();
    v27 = sub_225CCED04();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2259A7000, v26, v27, "SendableXPCConnection onCancel is nil", v28, 2u);
      MEMORY[0x22AA6F950](v28, -1, -1);
    }

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_225C7C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7C3D4, 0, 0);
}

uint64_t sub_225C7C3D4()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C74F88(sub_225C74F88, &unk_225D01520, v22);
}

uint64_t sub_225C7C654()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_225C92A60;
  }

  else
  {
    v4 = *(v2 + 112);

    v3 = sub_225C92AF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225C7C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7C844, 0, 0);
}

uint64_t sub_225C7C844()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7CAC4;

  return sub_225C74F88(sub_225C74F88, &unk_225D014B8, v22);
}

uint64_t sub_225C7CAC4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_225C7CC4C;
  }

  else
  {
    v4 = *(v2 + 112);

    v3 = sub_225C7CBE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225C7CBE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C7CC4C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 144);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);

  v9 = (v4 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v9));
  v3(v7, v6 + v5, v8);
  os_unfair_lock_unlock((v6 + v9));
  v10 = v1;
  v11 = sub_225CCD934();
  v12 = sub_225CCED14();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 136);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v14;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_2259A7000, v11, v12, "SendableXPCConnection error occurred when cancelling the task: %@", v15, 0xCu);
    sub_2259CB640(v16, &unk_27D73FC90);
    MEMORY[0x22AA6F950](v16, -1, -1);
    MEMORY[0x22AA6F950](v15, -1, -1);
  }

  else
  {
  }

  (*(v0 + 104))(*(v0 + 56), *(v0 + 40));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_225C7CE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7CEFC, 0, 0);
}

uint64_t sub_225C7CEFC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C7554C(sub_225C7554C, &unk_225D01450, v22);
}

uint64_t sub_225C7D17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7D24C, 0, 0);
}

uint64_t sub_225C7D24C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01400, v22);
}

uint64_t sub_225C7D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7D59C, 0, 0);
}

uint64_t sub_225C7D59C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D013D8, v22);
}

uint64_t sub_225C7D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7D8EC, 0, 0);
}

uint64_t sub_225C7D8EC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01398, v22);
}

uint64_t sub_225C7DB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7DC3C, 0, 0);
}

uint64_t sub_225C7DC3C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01358, v22);
}

uint64_t sub_225C7DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7DF8C, 0, 0);
}

uint64_t sub_225C7DF8C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01318, v22);
}

uint64_t sub_225C7E20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7E2DC, 0, 0);
}

uint64_t sub_225C7E2DC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D012D8, v22);
}

uint64_t sub_225C7E55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7E62C, 0, 0);
}

uint64_t sub_225C7E62C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01298, v22);
}

uint64_t sub_225C7E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7E97C, 0, 0);
}

uint64_t sub_225C7E97C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01258, v22);
}

uint64_t sub_225C7EBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7ECCC, 0, 0);
}

uint64_t sub_225C7ECCC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01218, v22);
}

uint64_t sub_225C7EF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7F01C, 0, 0);
}

uint64_t sub_225C7F01C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D011E0, v22);
}

uint64_t sub_225C7F29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7F36C, 0, 0);
}

uint64_t sub_225C7F36C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D011A0, v22);
}

uint64_t sub_225C7F5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7F6BC, 0, 0);
}

uint64_t sub_225C7F6BC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01158, v22);
}

uint64_t sub_225C7F93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7FA0C, 0, 0);
}

uint64_t sub_225C7FA0C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01118, v22);
}

uint64_t sub_225C7FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C7FD5C, 0, 0);
}

uint64_t sub_225C7FD5C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D010D8, v22);
}

uint64_t sub_225C7FFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C800AC, 0, 0);
}

uint64_t sub_225C800AC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01098, v22);
}

uint64_t sub_225C8032C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C803FC, 0, 0);
}

uint64_t sub_225C803FC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01058, v22);
}

uint64_t sub_225C8067C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8074C, 0, 0);
}

uint64_t sub_225C8074C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D01010, v22);
}

uint64_t sub_225C809CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C80A9C, 0, 0);
}

uint64_t sub_225C80A9C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C75808(sub_225C75808, &unk_225D00FA8, v22);
}

uint64_t sub_225C80D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C80DEC, 0, 0);
}

uint64_t sub_225C80DEC()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C77830(sub_225C77830, &unk_225D00F60, v22);
}

uint64_t sub_225C8106C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8113C, 0, 0);
}

uint64_t sub_225C8113C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C77830(sub_225C77830, &unk_225D00F38, v22);
}

uint64_t sub_225C813BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_225CCD954();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8148C, 0, 0);
}

uint64_t sub_225C8148C()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = off_28105B918;
  *(v0 + 72) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 80) = v6;
  v7 = *(v5 + 48);
  *(v0 + 144) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);

  v19 = *(v15 + 8);
  *(v0 + 104) = v19;
  v19(v13, v14);
  v20 = *(v18 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  *(v0 + 112) = v21;
  v21;
  os_unfair_lock_unlock((v20 + 24));
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16;

  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_225C7C654;

  return sub_225C77830(sub_225C77830, &unk_225D00ED0, v22);
}

uint64_t sub_225C8170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v27 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v27 - v20;
  v22 = sub_225CCE994();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v13 + 16))(v17, a1, v12);
  v23 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a2;
  (*(v13 + 32))(&v24[v23], v17, v12);
  v25 = &v24[(v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v25 = a3;
  *(v25 + 1) = a4;

  sub_225AFBC30(0, 0, v21, v28, v24);
}

uint64_t sub_225C81914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C81A24, 0, 0);
}

uint64_t sub_225C81A24()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92474;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_586;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742810);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C81F90;

    return v33();
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD000000000000022, 0x8000000225D2A740);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C81F90()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_225C82130;
  }

  else
  {
    v2 = sub_225C820A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C820A4()
{
  sub_225CCE934();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C82130()
{
  v1 = v0[31];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 8));
  v0[19] = v1;
  sub_225CCE924();

  v2 = v0[1];

  return v2();
}

uint64_t sub_225C821D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742808);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C822E0, 0, 0);
}

uint64_t sub_225C822E0()
{
  v35 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92780;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_603;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742810);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[31] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_225C82854;

    return (v33)(v0 + 16, v0 + 18);
  }

  else
  {
    v15 = v0[26];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD000000000000022, 0x8000000225D2A740);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[20] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C82854()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_225C829F8;
  }

  else
  {
    v2 = sub_225C82968;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C82968()
{
  sub_225CCE934();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C829F8()
{
  v1 = v0[33];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 8));
  v0[21] = v1;
  sub_225CCE924();

  v2 = v0[1];

  return v2();
}

uint64_t sub_225C82A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C82BA8, 0, 0);
}

uint64_t sub_225C82BA8()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92B78;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_547;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742800);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C83114;

    return v33();
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D2A720);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C83114()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_225C92AF4;
  }

  else
  {
    v2 = sub_225C92B84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C83228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742808);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C83338, 0, 0);
}

uint64_t sub_225C83338()
{
  v35 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92B80;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_564;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742800);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[31] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_225C838AC;

    return (v33)(v0 + 16, v0 + 18);
  }

  else
  {
    v15 = v0[26];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D2A720);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[20] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C838AC()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_225C92AEC;
  }

  else
  {
    v2 = sub_225C92ADC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C839C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C83AD0, 0, 0);
}

uint64_t sub_225C83AD0()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92B78;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_111;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C83114;

    return v33();
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8403C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[27] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F8);
  v7[28] = v8;
  v9 = *(v8 - 8);
  v7[29] = v9;
  v7[30] = *(v9 + 64);
  v7[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8414C, 0, 0);
}

uint64_t sub_225C8414C()
{
  v35 = v0;
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v5 = v0[23];
  v4 = v0[24];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C91C84;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_525;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[20], (v0[32] = v11) != 0))
  {
    v12 = v0[25];
    v0[19] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[33] = v13;
    *v13 = v0;
    v13[1] = sub_225C846C0;

    return (v33)(v0 + 16, v0 + 19);
  }

  else
  {
    v15 = v0[27];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[21] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C846C0()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_225C84864;
  }

  else
  {
    v2 = sub_225C847D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C847D4()
{
  sub_225CCE934();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C84864()
{
  v1 = v0[34];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 8));
  v0[22] = v1;
  sub_225CCE924();

  v2 = v0[1];

  return v2();
}

uint64_t sub_225C84904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E8);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C84A14, 0, 0);
}

uint64_t sub_225C84A14()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C917BC;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_488;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C84F88()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_225C92AF0;
  }

  else
  {
    v2 = sub_225C92AE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C8509C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C851AC, 0, 0);
}

uint64_t sub_225C851AC()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C91484;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_464;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C85720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427D8);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C85830, 0, 0);
}

uint64_t sub_225C85830()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C9114C;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_440;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C85DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427D0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C85EB4, 0, 0);
}

uint64_t sub_225C85EB4()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C90E14;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_416;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C86428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427C8);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C86538, 0, 0);
}

uint64_t sub_225C86538()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C90ADC;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_392;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C86AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427C0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C86BBC, 0, 0);
}

uint64_t sub_225C86BBC()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C907A4;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_368;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C87130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B8);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C87240, 0, 0);
}

uint64_t sub_225C87240()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C9046C;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_344;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C877B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C878C4, 0, 0);
}

uint64_t sub_225C878C4()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92B7C;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_320;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C87E38;

    return (v33)(v0 + 32, v0 + 16);
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C87E38()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_225C92AF4;
  }

  else
  {
    v2 = sub_225C92AE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C87F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8805C, 0, 0);
}

uint64_t sub_225C8805C()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8FE10;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_296;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C885D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A8);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C886E0, 0, 0);
}

uint64_t sub_225C886E0()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8FAD8;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_272;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C88C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B0D8);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C88D64, 0, 0);
}

uint64_t sub_225C88D64()
{
  v35 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8F7A0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_248;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[31] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_225C838AC;

    return (v33)(v0 + 16, v0 + 18);
  }

  else
  {
    v15 = v0[26];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[20] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C892D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C893E8, 0, 0);
}

uint64_t sub_225C893E8()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8F468;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_222;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742798);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C89A6C, 0, 0);
}

uint64_t sub_225C89A6C()
{
  v35 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8F130;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_198;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[31] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_225C838AC;

    return (v33)(v0 + 16, v0 + 18);
  }

  else
  {
    v15 = v0[26];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[20] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C89FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742790);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8A0F0, 0, 0);
}

uint64_t sub_225C8A0F0()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8EDF8;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_174;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8A664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742788);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8A774, 0, 0);
}

uint64_t sub_225C8A774()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8EAC0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_150;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C84F88;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8ACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742778);
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v7[29] = *(v9 + 64);
  v7[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8ADF8, 0, 0);
}

uint64_t sub_225C8ADF8()
{
  v35 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8E788;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_126;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742770);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[31] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[32] = v13;
    *v13 = v0;
    v13[1] = sub_225C838AC;

    return (v33)(v0 + 16, v0 + 18);
  }

  else
  {
    v15 = v0[26];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D2A700);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[20] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8B47C, 0, 0);
}

uint64_t sub_225C8B47C()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C92B78;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_37;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742760);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C83114;

    return v33();
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D2A690);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8B9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742768);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8BAF8, 0, 0);
}

uint64_t sub_225C8BAF8()
{
  v35 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8E2BC;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_89;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742760);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[30] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_225C8C06C;

    return (v33)(v0 + 19, v0 + 16);
  }

  else
  {
    v15 = v0[25];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D2A690);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8C06C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_225C8C210;
  }

  else
  {
    v2 = sub_225C8C180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C8C180()
{
  sub_225CCE934();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C8C210()
{
  v1 = v0[32];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 8));
  v0[20] = v1;
  sub_225CCE924();

  v2 = v0[1];

  return v2();
}

uint64_t sub_225C8C2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C8C3C0, 0, 0);
}

uint64_t sub_225C8C3C0()
{
  v35 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_225C8DDF4;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_225CBFB0C;
  v0[5] = &block_descriptor_52;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_225CCF0A4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_2259CB810((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742760);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v33 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_225C8C934;

    return (v33)(v0 + 32, v0 + 16);
  }

  else
  {
    v15 = v0[24];
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D2A690);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v15, 1, 1, v21);
    v23 = (*(v22 + 48))(v15, 1, v21);
    sub_2259CB640(v15, &unk_27D73B050);

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v34);

    v26 = v34[0];
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    if (v23)
    {
      v30 = 107;
    }

    else
    {
      v30 = 23;
    }

    *(v27 + 2) = v29 + 1;
    v31 = &v27[56 * v29];
    *(v31 + 4) = 0;
    *(v31 + 5) = 0xE000000000000000;
    *(v31 + 6) = 0xD000000000000029;
    *(v31 + 7) = 0x8000000225D2A6B0;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = 0x8000000225D2A620;
    *(v31 + 10) = 220;
    *v20 = v30;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0xE000000000000000;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v0[18] = v18;
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 8));

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_225C8C934()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_225C82130;
  }

  else
  {
    v2 = sub_225C8CA48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C8CA48()
{
  sub_225CCE934();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C8CAD8(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v53 = a4;
  v52 = a3;
  v54 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v50 = &v50 - v7;
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v9 + 16))(v12, &v13[v14], v8);
  os_unfair_lock_unlock(&v13[v15]);
  v16 = a1;
  v17 = sub_225CCD934();
  v18 = sub_225CCED14();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v56 = v20;
    *v19 = 136315138;
    swift_getErrorValue();
    v21 = sub_225CCFB24();
    v23 = sub_2259BE198(v21, v22, &v56);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2259A7000, v17, v18, "XPC connection error: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA6F950](v20, -1, -1);
    MEMORY[0x22AA6F950](v19, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v24 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v51 = swift_allocError();
  v26 = v25;
  swift_getErrorValue();
  sub_225B21FAC(v62, &v56);
  v27 = v57;
  if (v57)
  {
    v28 = v56;
    v29 = v58;
    v30 = v59;
    v31 = v60;
    a1 = v61;
  }

  else
  {
    v56 = a1;
    v32 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v33 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v35 = [v33 code];
      v36 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v36;
      *(inited + 40) = v35;
      v31 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v37 = a1;
      v30 = 0;
      v29 = 0;
      v27 = MEMORY[0x277D84F90];
      v28 = 528;
    }

    else
    {
      v56 = a1;
      v38 = a1;
      v39 = sub_225CCE954();
      v40 = v50;
      v41 = swift_dynamicCast();
      v42 = *(v39 - 8);
      (*(v42 + 56))(v40, v41 ^ 1u, 1, v39);
      LODWORD(v42) = (*(v42 + 48))(v40, 1, v39);
      sub_2259CB640(v40, &unk_27D73B050);
      if (v42)
      {
        v28 = 528;
      }

      else
      {
        v28 = 23;
      }

      v27 = MEMORY[0x277D84F90];
      v31 = sub_225B2C374(MEMORY[0x277D84F90]);
      v43 = a1;
      v30 = 0x8000000225D2A6E0;
      v29 = 0xD000000000000014;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v31;
  sub_225B2C4A0(v24, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v56);

  v45 = v56;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_225B29AA0(0, *(v27 + 2) + 1, 1, v27);
  }

  v47 = *(v27 + 2);
  v46 = *(v27 + 3);
  if (v47 >= v46 >> 1)
  {
    v27 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v27);
  }

  *(v27 + 2) = v47 + 1;
  v48 = &v27[56 * v47];
  *(v48 + 4) = 0xD000000000000014;
  *(v48 + 5) = 0x8000000225D2A6E0;
  *(v48 + 6) = 0xD000000000000029;
  *(v48 + 7) = 0x8000000225D2A6B0;
  *(v48 + 8) = 0xD000000000000023;
  *(v48 + 9) = 0x8000000225D2A620;
  *(v48 + 10) = 216;
  *v26 = v28;
  *(v26 + 8) = v27;
  *(v26 + 16) = v29;
  *(v26 + 24) = v30;
  *(v26 + 32) = v45;
  *(v26 + 40) = a1;
  v56 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(v52);
  return sub_225CCE924();
}

uint64_t sub_225C8D168(uint64_t a1, void *a2, int *a3)
{
  *(v3 + 16) = *a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_225C92AE8;

  return v6(v3 + 16);
}

uint64_t sub_225C8D264(uint64_t a1, void *a2, int *a3)
{
  *(v3 + 16) = *a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_225C8D360;

  return v6(v3 + 16);
}

uint64_t sub_225C8D360()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_225C8D454(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_225CCCEA4() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225C79444(a1, a2, v2 + v7);
}

uint64_t sub_225C8D538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225C7B2E0(a1, v4, v5, v6);
}

uint64_t sub_225C8D63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225C8D6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225C8D704(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for WebPresentmentRequest(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225C7A67C(a1, a2, v2 + v7);
}

uint64_t sub_225C8D7E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2259FE39C;

  return sub_225C7B518(a1, v4, v5, v6);
}

uint64_t sub_225C8D93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C813BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8DA04(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8DB18(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8B36C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8DCAC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8C2B0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8DE08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C8106C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8DED0(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8DF98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C80D1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8E060(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8E174(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742768) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8B9E8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8E2D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C809CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8E398(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8E4AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C839C0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8E640(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742778) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8ACE8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8E79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C8067C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8E864(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8E978(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742788) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8A664(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8EAD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C8032C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8EB9C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8ECB0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742790) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C89FE0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8EE0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7FFDC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8EED4(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8EFE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742798) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8995C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8F144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7FC8C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8F20C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8F320(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C892D8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8F47C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7F93C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8F544(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8F658(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B0D8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C88C54(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8F7B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7F5EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8F87C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8F990(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C885D0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8FAEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7F29C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8FBB4(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C8FCC8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C87F4C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C8FE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7EF4C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C8FEEC(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C90000(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C877B4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C90148(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7EBFC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C90210(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C90324(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C87130(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C90480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7E8AC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C90548(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C9065C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427C0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C86AAC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C907B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7E55C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C90880(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C90994(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427C8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C86428(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C90AF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7E20C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C90BB8(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C90CCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427D0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C85DA4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C90E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7DEBC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C90EF0(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C91004(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427D8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C85720(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C91160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7DB6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C91228(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C9133C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8509C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C91498(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7D81C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C91560(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C91674(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C84904(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C917D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7D4CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C91898(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C91960(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7D17C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C91A28(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t sub_225C91B3C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C8403C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C91C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7CE2C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C91D60(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D264(a1, a2, v6);
}

uint64_t sub_225C91E74(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C82A98(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C92008(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742808) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C83228(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_225C92150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2259FE39C;

  return sub_225C7C774(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C92218(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}