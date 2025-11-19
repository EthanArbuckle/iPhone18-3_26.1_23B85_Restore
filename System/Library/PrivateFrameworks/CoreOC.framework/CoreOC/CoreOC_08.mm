uint64_t sub_246033DC0()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_246033F04(&selRef_isWhiteBalanceModeSupported_, 0, &selRef_setWhiteBalanceMode_);
}

uint64_t sub_246033E2C()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_246033F04(&selRef_isWhiteBalanceModeSupported_, 1, &selRef_setWhiteBalanceMode_);
}

uint64_t sub_246033E98()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_246033F04(&selRef_isWhiteBalanceModeSupported_, 2, &selRef_setWhiteBalanceMode_);
}

uint64_t sub_246033F04(SEL *a1, uint64_t a2, SEL *a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v3 + 96))(v10) & 1) == 0)
  {
LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  v13 = v3[2];
  v29[0] = 0;
  if (![v13 lockForConfiguration_])
  {
    v16 = v29[0];
    v17 = sub_2460915D4();

    swift_willThrow();
    v18 = sub_245FA3174();
    (*(v8 + 16))(v12, v18, v7);
    v19 = v17;
    v20 = sub_2460918D4();
    v21 = sub_246091FB4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29[0] = v23;
      *v22 = 136446210;
      swift_getErrorValue();
      v24 = sub_246092484();
      v26 = sub_245F8D3C0(v24, v25, v29);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_245F8A000, v20, v21, "Camera Control: Camera failed to lock with error = %{public}s", v22, 0xCu);
      sub_245F8E6F4(v23);
      MEMORY[0x24C1989D0](v23, -1, -1);
      MEMORY[0x24C1989D0](v22, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v12, v7);
    goto LABEL_10;
  }

  v14 = v29[0];
  if ([v13 *a1])
  {
    [v13 *a3];
  }

  [v13 unlockForConfiguration];
  result = 1;
LABEL_11:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2460341E8()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v0 + 96))(v4) & 1) == 0)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v7 = v0[2];
  v23[0] = 0;
  if (![v7 lockForConfiguration_])
  {
    v10 = v23[0];
    v11 = sub_2460915D4();

    swift_willThrow();
    v12 = sub_245FA3174();
    (*(v2 + 16))(v6, v12, v1);
    v13 = v11;
    v14 = sub_2460918D4();
    v15 = sub_246091FB4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = sub_246092484();
      v20 = sub_245F8D3C0(v18, v19, v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_245F8A000, v14, v15, "Camera Control: Camera failed to lock with error = %{public}s", v16, 0xCu);
      sub_245F8E6F4(v17);
      MEMORY[0x24C1989D0](v17, -1, -1);
      MEMORY[0x24C1989D0](v16, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v6, v1);
    goto LABEL_12;
  }

  v8 = v23[0];
  if ([v7 isFocusModeSupported_])
  {
    [v7 setFocusMode_];
  }

  if ([v7 isExposureModeSupported_])
  {
    [v7 setExposureMode_];
  }

  [v7 unlockForConfiguration];
  result = 1;
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2460344F4()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (((*(*v0 + 96))(v4) & 1) == 0)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v7 = v0[2];
  v23[0] = 0;
  if (![v7 lockForConfiguration_])
  {
    v10 = v23[0];
    v11 = sub_2460915D4();

    swift_willThrow();
    v12 = sub_245FA3174();
    (*(v2 + 16))(v6, v12, v1);
    v13 = v11;
    v14 = sub_2460918D4();
    v15 = sub_246091FB4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = sub_246092484();
      v20 = sub_245F8D3C0(v18, v19, v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_245F8A000, v14, v15, "Camera Control: Camera failed to lock with error = %{public}s", v16, 0xCu);
      sub_245F8E6F4(v17);
      MEMORY[0x24C1989D0](v17, -1, -1);
      MEMORY[0x24C1989D0](v16, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v6, v1);
    goto LABEL_8;
  }

  v8 = v23[0];
  [v7 setAutomaticallyAdjustsFaceDrivenAutoFocusEnabled_];
  [v7 setAutomaticallyAdjustsFaceDrivenAutoExposureEnabled_];
  [v7 setFaceDrivenAutoFocusEnabled_];
  [v7 setFaceDrivenAutoExposureEnabled_];
  [v7 unlockForConfiguration];
  result = 1;
LABEL_9:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2460347F8()
{
  sub_246092284();
  MEMORY[0x24C196640](0xD000000000000055, 0x80000002460A1FB0);
  v1 = *(v0 + 16);
  [v1 minimumFocusDistance];
  v2 = sub_2460923D4();
  MEMORY[0x24C196640](v2);

  MEMORY[0x24C196640](0x6F4D7375636F660ALL, 0xEC000000203A6564);
  [v1 focusMode];
  v3 = sub_2460923D4();
  MEMORY[0x24C196640](v3);

  MEMORY[0x24C196640](0xD000000000000020, 0x80000002460A2010);
  v4 = [v1 isFocusModeSupported_];
  v5 = v4 == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v6, v7);

  MEMORY[0x24C196640](0xD000000000000023, 0x80000002460A2040);
  v8 = [v1 isFocusModeSupported_];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v10, v11);

  MEMORY[0x24C196640](0xD00000000000002DLL, 0x80000002460A2070);
  v12 = [v1 isFocusModeSupported_];
  v13 = v12 == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v14, v15);

  MEMORY[0x24C196640](0xD000000000000017, 0x80000002460A20A0);
  [v1 focusPointOfInterest];
  type metadata accessor for CGPoint();
  sub_246092334();
  MEMORY[0x24C196640](0xD000000000000022, 0x80000002460A20C0);
  v16 = [v1 isFocusPointOfInterestSupported];
  v17 = v16 == 0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v18, v19);

  MEMORY[0x24C196640](0xD000000000000013, 0x80000002460A20F0);
  v20 = [v1 isAdjustingFocus];
  v21 = v20 == 0;
  if (v20)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v22, v23);

  MEMORY[0x24C196640](0xD00000000000001BLL, 0x80000002460A2110);
  v24 = [v1 isSmoothAutoFocusEnabled];
  v25 = v24 == 0;
  if (v24)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v26, v27);

  MEMORY[0x24C196640](0xD00000000000001DLL, 0x80000002460A2130);
  v28 = [v1 isSmoothAutoFocusSupported];
  v29 = v28 == 0;
  if (v28)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v29)
  {
    v31 = 0xE500000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v30, v31);

  MEMORY[0x24C196640](0xD00000000000001CLL, 0x80000002460A2150);
  [v1 autoFocusRangeRestriction];
  v32 = sub_2460923D4();
  MEMORY[0x24C196640](v32);

  MEMORY[0x24C196640](0xD000000000000027, 0x80000002460A2170);
  v33 = [v1 isAutoFocusRangeRestrictionSupported];
  v34 = v33 == 0;
  if (v33)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v34)
  {
    v36 = 0xE500000000000000;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v35, v36);

  MEMORY[0x24C196640](0x7275736F7078650ALL, 0xEF203A65646F4D65);
  [v1 exposureMode];
  v37 = sub_2460923D4();
  MEMORY[0x24C196640](v37);

  MEMORY[0x24C196640](0xD000000000000023, 0x80000002460A21A0);
  v38 = [v1 isExposureModeSupported_];
  v39 = v38 == 0;
  if (v38)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v39)
  {
    v41 = 0xE500000000000000;
  }

  else
  {
    v41 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v40, v41);

  MEMORY[0x24C196640](0xD000000000000026, 0x80000002460A21D0);
  v42 = [v1 isExposureModeSupported_];
  v43 = v42 == 0;
  if (v42)
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if (v43)
  {
    v45 = 0xE500000000000000;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v44, v45);

  MEMORY[0x24C196640](0xD000000000000030, 0x80000002460A2200);
  v46 = [v1 isExposureModeSupported_];
  v47 = v46 == 0;
  if (v46)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v47)
  {
    v49 = 0xE500000000000000;
  }

  else
  {
    v49 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v48, v49);

  MEMORY[0x24C196640](0xD00000000000001ALL, 0x80000002460A2240);
  [v1 exposurePointOfInterest];
  sub_246092334();
  MEMORY[0x24C196640](0xD000000000000025, 0x80000002460A2260);
  v50 = [v1 isExposurePointOfInterestSupported];
  v51 = v50 == 0;
  if (v50)
  {
    v52 = 1702195828;
  }

  else
  {
    v52 = 0x65736C6166;
  }

  if (v51)
  {
    v53 = 0xE500000000000000;
  }

  else
  {
    v53 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v52, v53);

  MEMORY[0x24C196640](0xD000000000000016, 0x80000002460A2290);
  v54 = [v1 isAdjustingExposure];
  v55 = v54 == 0;
  if (v54)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if (v55)
  {
    v57 = 0xE500000000000000;
  }

  else
  {
    v57 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v56, v57);

  MEMORY[0x24C196640](0xD000000000000013, 0x80000002460A22B0);
  [v1 whiteBalanceMode];
  v58 = sub_2460923D4();
  MEMORY[0x24C196640](v58);

  MEMORY[0x24C196640](0xD000000000000027, 0x80000002460A22D0);
  v59 = [v1 isWhiteBalanceModeSupported_];
  v60 = v59 == 0;
  if (v59)
  {
    v61 = 1702195828;
  }

  else
  {
    v61 = 0x65736C6166;
  }

  if (v60)
  {
    v62 = 0xE500000000000000;
  }

  else
  {
    v62 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v61, v62);

  MEMORY[0x24C196640](0xD000000000000031, 0x80000002460A2300);
  v63 = [v1 isWhiteBalanceModeSupported_];
  v64 = v63 == 0;
  if (v63)
  {
    v65 = 1702195828;
  }

  else
  {
    v65 = 0x65736C6166;
  }

  if (v64)
  {
    v66 = 0xE500000000000000;
  }

  else
  {
    v66 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v65, v66);

  MEMORY[0x24C196640](0xD00000000000003BLL, 0x80000002460A2340);
  v67 = [v1 isWhiteBalanceModeSupported_];
  v68 = v67 == 0;
  if (v67)
  {
    v69 = 1702195828;
  }

  else
  {
    v69 = 0x65736C6166;
  }

  if (v68)
  {
    v70 = 0xE500000000000000;
  }

  else
  {
    v70 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v69, v70);

  MEMORY[0x24C196640](0xD00000000000001ALL, 0x80000002460A2380);
  v71 = [v1 isAdjustingWhiteBalance];
  v72 = v71 == 0;
  if (v71)
  {
    v73 = 1702195828;
  }

  else
  {
    v73 = 0x65736C6166;
  }

  if (v72)
  {
    v74 = 0xE500000000000000;
  }

  else
  {
    v74 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v73, v74);

  MEMORY[0x24C196640](0xD00000000000001DLL, 0x80000002460A23A0);
  v75 = [v1 isGlobalToneMappingEnabled];
  v76 = v75 == 0;
  if (v75)
  {
    v77 = 1702195828;
  }

  else
  {
    v77 = 0x65736C6166;
  }

  if (v76)
  {
    v78 = 0xE500000000000000;
  }

  else
  {
    v78 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v77, v78);

  MEMORY[0x24C196640](0xD00000000000001BLL, 0x80000002460A23C0);
  v79 = [v1 isLowLightBoostSupported];
  v80 = v79 == 0;
  if (v79)
  {
    v81 = 1702195828;
  }

  else
  {
    v81 = 0x65736C6166;
  }

  if (v80)
  {
    v82 = 0xE500000000000000;
  }

  else
  {
    v82 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v81, v82);

  MEMORY[0x24C196640](0xD000000000000019, 0x80000002460A23E0);
  v83 = [v1 isLowLightBoostEnabled];
  v84 = v83 == 0;
  if (v83)
  {
    v85 = 1702195828;
  }

  else
  {
    v85 = 0x65736C6166;
  }

  if (v84)
  {
    v86 = 0xE500000000000000;
  }

  else
  {
    v86 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v85, v86);

  MEMORY[0x24C196640](0xD000000000000031, 0x80000002460A2400);
  v87 = [v1 automaticallyEnablesLowLightBoostWhenAvailable];
  v88 = v87 == 0;
  if (v87)
  {
    v89 = 1702195828;
  }

  else
  {
    v89 = 0x65736C6166;
  }

  if (v88)
  {
    v90 = 0xE500000000000000;
  }

  else
  {
    v90 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v89, v90);

  MEMORY[0x24C196640](0x736F50736E656C0ALL, 0xEF203A6E6F697469);
  [v1 lensPosition];
  sub_246091F14();
  MEMORY[0x24C196640](0x203A6F73690ALL, 0xE600000000000000);
  [v1 ISO];
  sub_246091F14();
  MEMORY[0x24C196640](0xD000000000000026, 0x80000002460A2440);
  v91 = [v1 automaticallyAdjustsVideoHDREnabled];
  v92 = v91 == 0;
  if (v91)
  {
    v93 = 1702195828;
  }

  else
  {
    v93 = 0x65736C6166;
  }

  if (v92)
  {
    v94 = 0xE500000000000000;
  }

  else
  {
    v94 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v93, v94);

  MEMORY[0x24C196640](0xD000000000000014, 0x80000002460A2470);
  v95 = [v1 isVideoHDREnabled];
  v96 = v95 == 0;
  if (v95)
  {
    v97 = 1702195828;
  }

  else
  {
    v97 = 0x65736C6166;
  }

  if (v96)
  {
    v98 = 0xE500000000000000;
  }

  else
  {
    v98 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v97, v98);

  return 0;
}

uint64_t sub_2460352A8()
{

  return swift_deallocClassInstance();
}

double sub_246035304()
{
  result = 0.0;
  xmmword_27EE3DBD0 = xmmword_246099B50;
  return result;
}

double sub_246035318()
{
  result = 32768.0079;
  xmmword_27EE3DBF0 = xmmword_246099B60;
  return result;
}

double sub_24603532C@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, float a3@<S1>, float a4@<S2>)
{
  v38 = a2;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  *&v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = sub_245FA3280();
  v35 = v8[2];
  v36 = v14;
  v35(v13);
  v15 = sub_2460918D4();
  v16 = sub_246091FC4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = v8;
    v19 = v18;
    v39 = v18;
    *v17 = 136380931;
    *(v17 + 4) = sub_245F8D3C0(0xD000000000000053, 0x80000002460A40B0, &v39);
    *(v17 + 12) = 2050;
    *(v17 + 14) = a3;
    _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: Voxel dimension scene mode = %{public}fm", v17, 0x16u);
    sub_245F8E6F4(v19);
    v20 = v19;
    v8 = v34;
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v17, -1, -1);
  }

  v21 = v8[1];
  v21(v13, v7);
  v22 = v37;
  (v35)(v37, v36, v7);
  v23 = v22;
  v24 = sub_2460918D4();
  v25 = sub_246091FC4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v39 = v27;
    *v26 = 136380931;
    *(v26 + 4) = sub_245F8D3C0(0xD000000000000053, 0x80000002460A40B0, &v39);
    *(v26 + 12) = 2050;
    *(v26 + 14) = a4;
    _os_log_impl(&dword_245F8A000, v24, v25, "ObjectCaptureSession.%{private}s: Depth confidence threshold scene mode = %{public}f", v26, 0x16u);
    sub_245F8E6F4(v27);
    MEMORY[0x24C1989D0](v27, -1, -1);
    MEMORY[0x24C1989D0](v26, -1, -1);
  }

  v21(v23, v7);
  if (qword_27EE3DBE0 != -1)
  {
    swift_once();
  }

  v37 = xmmword_27EE3DBF0;
  v28 = *sub_245F92808();
  v29 = *sub_24601EF58();
  v30 = *sub_24601EF64();
  *a1 = 1;
  *(a1 + 4) = 1;
  *(a1 + 16) = 4;
  *(a1 + 24) = a4;
  *(a1 + 28) = 30000;
  *(a1 + 32) = 0;
  *(a1 + 36) = a3;
  *(a1 + 40) = 33;
  *(a1 + 44) = 0x3D4CCCCD3F83D70ALL;
  *(a1 + 52) = 1084227584;
  v31 = v38;
  *(a1 + 64) = v37;
  *(a1 + 80) = v31;
  *&result = 644245094900000;
  *(a1 + 96) = 644245094900000;
  *(a1 + 104) = v28;
  *(a1 + 108) = 0;
  *(a1 + 112) = 1;
  *(a1 + 116) = v29;
  *(a1 + 120) = v30;
  *(a1 + 124) = 0;
  *(a1 + 128) = 1048576000;
  return result;
}

void sub_246035724(__CVBuffer *a1, uint64_t a2)
{
  v4 = sub_246091BD4();
  v5 = CVBufferCopyAttachment(a1, v4, 0);

  if (v5)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v33 = *(a2 + 32);
    v6 = *(a2 + 20);
    v7 = *a2 / v6;
    sub_245F8E624(&qword_27EE3ADC0, &qword_24609AD58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_246096460;
    *(inited + 32) = 0x73726F736E6553;
    *(inited + 40) = 0xE700000000000000;
    sub_245F8E624(&qword_27EE3ADC8, &qword_24609AD60);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_246096460;
    *(v8 + 32) = 0x69736E6972746E49;
    v35 = v8;
    v36 = v8 + 32;
    *(v8 + 40) = 0xEA00000000007363;
    sub_245F8E624(&unk_27EE3ADD0, &unk_24609AD68);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_246096460;
    *(v32 + 32) = 4343634;
    *(v32 + 40) = 0xE300000000000000;
    sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_246096EF0;
    *(v9 + 32) = 0x656C6F686E6950;
    *(v9 + 40) = 0xE700000000000000;
    sub_245F8E624(&qword_27EE3ADE0, &qword_24609AD78);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_246098BF0;
    strcpy((v10 + 32), "Aspect Ratio");
    *(v10 + 45) = 0;
    *(v10 + 46) = -5120;
    sub_245F8E624(&qword_27EE3ADE8, &qword_24609AD80);
    pixelBuffer = a1;
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_246096460;
    *(v11 + 32) = 1635017028;
    *(v11 + 40) = 0xE400000000000000;
    sub_245F8E624(&qword_27EE3AD20, &qword_24609ACE0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_246096460;
    *(v12 + 56) = MEMORY[0x277D83A90];
    *(v12 + 32) = v7;
    *(v11 + 48) = v12;
    v13 = sub_246076F68(v11, &qword_27EE3AE68, &unk_24609AE00);
    swift_setDeallocating();
    sub_245F8E744(v11 + 32, &qword_27EE3ADF0, &qword_24609AD88);
    *(v10 + 48) = v13;
    strcpy((v10 + 56), "Focal Length");
    *(v10 + 69) = 0;
    *(v10 + 70) = -5120;
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_246096460;
    *(v14 + 32) = 1635017028;
    *(v14 + 40) = 0xE400000000000000;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_246096460;
    *(v15 + 56) = MEMORY[0x277D83A90];
    *(v15 + 32) = v6;
    *(v14 + 48) = v15;
    v16 = sub_246076F68(v14, &qword_27EE3AE68, &unk_24609AE00);
    swift_setDeallocating();
    sub_245F8E744(v14 + 32, &qword_27EE3ADF0, &qword_24609AD88);
    *(v10 + 72) = v16;
    *(v10 + 80) = 0x617069636E697250;
    *(v10 + 88) = 0xEF746E696F50206CLL;
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_246096460;
    *(v17 + 32) = 1635017028;
    *(v17 + 40) = 0xE400000000000000;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_246096EF0;
    v19 = MEMORY[0x277D83A90];
    *(v18 + 56) = MEMORY[0x277D83A90];
    *(v18 + 32) = v33;
    *(v18 + 88) = v19;
    *(v18 + 64) = DWORD1(v33);
    *(v17 + 48) = v18;
    v20 = sub_246076F68(v17, &qword_27EE3AE68, &unk_24609AE00);
    swift_setDeallocating();
    sub_245F8E744(v17 + 32, &qword_27EE3ADF0, &qword_24609AD88);
    *(v10 + 96) = v20;
    *(v10 + 104) = 2003135315;
    *(v10 + 112) = 0xE400000000000000;
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_246096460;
    *(v21 + 32) = 1635017028;
    *(v21 + 40) = 0xE400000000000000;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_246096460;
    *(v22 + 56) = MEMORY[0x277D83B88];
    *(v22 + 32) = 0;
    *(v21 + 48) = v22;
    v23 = sub_246076F68(v21, &qword_27EE3AE68, &unk_24609AE00);
    swift_setDeallocating();
    sub_245F8E744(v21 + 32, &qword_27EE3ADF0, &qword_24609AD88);
    *(v10 + 120) = v23;
    v24 = sub_246076F68(v10, &qword_27EE3AE60, &qword_24609ADF8);
    swift_setDeallocating();
    sub_245F8E624(&qword_27EE3ADF8, &qword_24609AD90);
    swift_arrayDestroy();
    v25 = sub_245F8E624(&unk_27EE3AE00, &qword_24609AD98);
    *(v9 + 48) = v24;
    *(v9 + 72) = v25;
    *(v9 + 80) = 0x6974756C6F736552;
    *(v9 + 88) = 0xEA00000000006E6FLL;
    sub_245F8E624(&qword_27EE3A0E8, &qword_24609ADA0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_246096EF0;
    *(v26 + 32) = CVPixelBufferGetWidth(pixelBuffer);
    *(v26 + 40) = CVPixelBufferGetHeight(pixelBuffer);
    *(v9 + 120) = sub_245F8E624(&unk_27EE3AE10, &unk_24609ADA8);
    *(v9 + 96) = v26;
    v27 = sub_245F8E498(v9);
    swift_setDeallocating();
    sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
    swift_arrayDestroy();
    *(v32 + 48) = v27;
    v28 = sub_246076F68(v32, &unk_27EE3AE50, &unk_24609ADE8);
    swift_setDeallocating();
    sub_245F8E744(v32 + 32, &qword_27EE3AE20, &qword_24609ADB8);
    *(v35 + 48) = v28;
    v29 = sub_246076F68(v35, &qword_27EE3AE48, &qword_24609ADE0);
    swift_setDeallocating();
    sub_245F8E744(v36, &qword_27EE3AE28, &qword_24609ADC0);
    *(inited + 48) = v29;
    sub_246076F68(inited, &qword_27EE3AE40, &qword_24609ADD8);
    swift_setDeallocating();
    sub_245F8E744(inited + 32, &qword_27EE3AE30, &qword_24609ADC8);
    v30 = sub_246091BD4();
    sub_245F8E624(&qword_27EE3AE38, &qword_24609ADD0);
    v31 = sub_246091B34();

    CVBufferSetAttachment(pixelBuffer, v30, v31, kCVAttachmentMode_ShouldPropagate);
  }
}

uint64_t static ObjectCaptureSession.hardwareSpecs.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EE3DC00 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_27EE3DC08;
  return result;
}

__n128 ObjectCaptureSession.Frame.Camera.intrinsics.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

__n128 ObjectCaptureSession.Frame.Camera.transform.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  v4 = *(v0 + 96);
  return result;
}

__n128 ObjectCaptureSession.Frame.Object.boundingBox.getter()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return result;
}

__n128 ObjectCaptureSession.Frame.Object.transform.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 80);
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  return result;
}

__n128 ObjectCaptureSession.Frame.PointCloud.transform.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  v4 = *(v0 + 80);
  return result;
}

void *ObjectCaptureSession.Frame.depthData.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ObjectCaptureSession.Frame.confidenceData.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t ObjectCaptureSession.Frame.camera.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0x118uLL);
  memcpy(a1, (v1 + 32), 0x118uLL);
  return sub_24601E8F4(__dst, &v4);
}

uint64_t ObjectCaptureSession.Frame.object.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[25];
  v3 = v1[27];
  v20 = v1[26];
  v21 = v3;
  v4 = v1[27];
  v22 = v1[28];
  v5 = v1[21];
  v6 = v1[23];
  v16 = v1[22];
  v7 = v16;
  v17 = v6;
  v8 = v1[23];
  v9 = v1[25];
  v18 = v1[24];
  v10 = v18;
  v19 = v9;
  v11 = v1[21];
  v15[0] = v1[20];
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[28];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return sub_245F8E7A4(v15, &v14, &qword_27EE3A970, &qword_246099C00);
}

uint64_t ObjectCaptureSession.Frame.pointCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[33];
  v10 = v1[32];
  v11 = v2;
  v4 = v1[35];
  v12 = v1[34];
  v3 = v12;
  v13 = v4;
  v6 = v1[31];
  v9[0] = v1[30];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_245F8E7A4(v9, &v8, &qword_27EE3A978, &qword_246099C08);
}

uint64_t ObjectCaptureSession.Frame.spi.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 576), 0x2B0uLL);
  memcpy(a1, (v1 + 576), 0x2B0uLL);
  return sub_245F8E7A4(__dst, &v4, &unk_27EE3A980, &unk_246099C10);
}

uint64_t ObjectCaptureSession.Mesh.Anchor.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_246091834();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id ObjectCaptureSession.Mesh.Anchor.vertices.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) + 20));

  return v1;
}

id ObjectCaptureSession.Mesh.Anchor.colors.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) + 24));

  return v1;
}

id ObjectCaptureSession.Mesh.Anchor.normals.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) + 28));

  return v1;
}

void *ObjectCaptureSession.Mesh.Anchor.faces.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) + 32));
  v2 = v1;
  return v1;
}

__n128 ObjectCaptureSession.Mesh.Anchor.transform.getter()
{
  v1 = v0 + *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) + 36);
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  return result;
}

__n128 sub_2460364E0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, __n128 a8@<Q0>, __n128 a9@<Q1>, __n128 a10@<Q2>, __n128 a11@<Q3>, double a12@<D4>, __n128 a13@<Q5>, __n128 a14@<Q6>)
{
  v22 = sub_246091834();
  (*(*(v22 - 8) + 32))(a7, a1, v22);
  v23 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  *(a7 + v23[5]) = a2;
  *(a7 + v23[6]) = a3;
  *(a7 + v23[7]) = a4;
  *(a7 + v23[8]) = a5;
  v24 = (a7 + v23[9]);
  *v24 = a8;
  v24[1] = a9;
  v24[2] = a10;
  v24[3] = a11;
  *(a7 + v23[10]) = a12;
  result = a14;
  *(a7 + v23[11]) = a13;
  *(a7 + v23[12]) = a14;
  *(a7 + v23[13]) = a6;
  return result;
}

void *ObjectCaptureSession.Shot.depthData.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ObjectCaptureSession.Shot.confidenceData.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *ObjectCaptureSession.Shot.pointCloudData.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_246036680@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = a6;
  *(a5 + 8) = result;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t ObjectCaptureSession.Metadata.Session.Provenance.version.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ObjectCaptureSession.Metadata.Session.Provenance.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ObjectCaptureSession.Metadata.Session.provenance.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 ObjectCaptureSession.Metadata.Shot.Camera.intrinsics.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

__n128 ObjectCaptureSession.Metadata.Shot.Camera.transform.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  v4 = *(v0 + 96);
  return result;
}

void *ObjectCaptureSession.Metadata.Shot.Camera.calibrationData.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

__n128 sub_24603679C@<Q0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, uint64_t a14)
{
  v14 = *a2;
  v15 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v15;
  *(a9 + 32) = a1[2];
  *(a9 + 48) = a10;
  *(a9 + 64) = a11;
  *(a9 + 80) = a12;
  *(a9 + 96) = a13;
  *(a9 + 112) = v14;
  *(a9 + 120) = a3;
  *(a9 + 128) = a4;
  v16 = *a5;
  v17 = a5[1];
  v18 = a5[2];
  v19 = a5[3];
  *(a9 + 208) = *(a5 + 64);
  *(a9 + 176) = v18;
  *(a9 + 192) = v19;
  *(a9 + 144) = v16;
  *(a9 + 160) = v17;
  v20 = *(a6 + 48);
  *(a9 + 256) = *(a6 + 32);
  *(a9 + 272) = v20;
  *(a9 + 288) = *(a6 + 64);
  v21 = *(a6 + 16);
  *(a9 + 224) = *a6;
  *(a9 + 240) = v21;
  result = *a7;
  v23 = *(a7 + 16);
  v24 = *(a7 + 32);
  v25 = *(a7 + 48);
  *(a9 + 368) = *(a7 + 64);
  *(a9 + 336) = v24;
  *(a9 + 352) = v25;
  *(a9 + 304) = result;
  *(a9 + 320) = v23;
  *(a9 + 376) = a8;
  *(a9 + 384) = a14;
  return result;
}

CoreOC::ObjectCaptureSession::Metadata::Shot::CaptureMode_optional __swiftcall ObjectCaptureSession.Metadata.Shot.CaptureMode.init(rawValue:)(Swift::Int rawValue)
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

__n128 ObjectCaptureSession.Metadata.Shot.Object.boundingBox.getter()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return result;
}

__n128 ObjectCaptureSession.Metadata.Shot.Object.transform.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 80);
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  return result;
}

void *ObjectCaptureSession.Metadata.Shot.Object.mask.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t ObjectCaptureSession.Metadata.Shot.Object.staticSegmentID.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

unint64_t sub_246036888@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>, __n128 a8@<Q3>, __n128 a9@<Q4>, __n128 a10@<Q5>, __n128 a11@<Q6>, __n128 a12@<Q7>)
{
  *a4 = a5;
  a4[1] = a6;
  a4[2] = a7;
  a4[3] = a8;
  a4[4] = a9;
  a4[5] = a10;
  a4[6] = a11;
  a4[7] = a12;
  a4[8].n128_u64[0] = result;
  a4[8].n128_u64[1] = a2;
  a4[9].n128_u8[0] = a3 & 1;
  return result;
}

__n128 ObjectCaptureSession.Metadata.Shot.Scene.boundingBox.getter()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return result;
}

uint64_t ObjectCaptureSession.Metadata.Shot.Scene.segmentID.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

unint64_t sub_2460368C0@<X0>(unint64_t result@<X0>, char a2@<W1>, __n128 *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>)
{
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  a3[3] = a7;
  a3[4].n128_u64[0] = result;
  a3[4].n128_u8[8] = a2 & 1;
  return result;
}

uint64_t ObjectCaptureSession.Metadata.Shot.camera.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x188uLL);
  memcpy(a1, (v1 + 16), 0x188uLL);
  return sub_24601E2C0(__dst, &v4);
}

uint64_t ObjectCaptureSession.Metadata.Shot.object.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) + 28);
  v4 = *(v3 + 112);
  v5 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v4;
  v6 = *(v3 + 112);
  v24 = *(v3 + 128);
  v7 = *(v3 + 48);
  v9 = *(v3 + 16);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v10 = *(v3 + 48);
  v11 = *(v3 + 80);
  v20 = *(v3 + 64);
  v12 = v20;
  v21 = v11;
  v13 = *(v3 + 16);
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  *(a1 + 96) = v22;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 32) = v8;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  *(a1 + 80) = v5;
  v25 = *(v3 + 144);
  *(a1 + 144) = *(v3 + 144);
  *a1 = v14;
  *(a1 + 16) = v9;
  return sub_245F8E7A4(v17, &v16, &qword_27EE3A990, &qword_246099C20);
}

__n128 ObjectCaptureSession.Metadata.Shot.scene.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) + 32);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 58) = *(v3 + 58);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t ObjectCaptureSession.Metadata.Shot.captureMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t ObjectCaptureSession.Metadata.Shot.gravity.getter()
{
  v1 = (v0 + *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) + 40));
  result = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  return result;
}

void *ObjectCaptureSession.Metadata.Shot.rawFeaturePoints.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) + 44));
  v2 = v1;
  return v1;
}

uint64_t ObjectCaptureSession.Metadata.Shot.feedback.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

__n128 sub_246036B50@<Q0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, char a11, uint64_t a12, uint64_t *a13, uint64_t a14)
{
  v18 = *a5;
  v19 = *a13;
  v20 = *(a13 + 8);
  *a9 = a10;
  memcpy(a9 + 2, __src, 0x188uLL);
  v21 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  sub_245FC5914(a2, a9 + v21[6], &qword_27EE3A350, &unk_2460969A0);
  v22 = a9 + v21[7];
  v23 = *(a3 + 16);
  *v22 = *a3;
  *(v22 + 1) = v23;
  v24 = *(a3 + 80);
  *(v22 + 4) = *(a3 + 64);
  *(v22 + 5) = v24;
  v25 = *(a3 + 48);
  *(v22 + 2) = *(a3 + 32);
  *(v22 + 3) = v25;
  v22[144] = *(a3 + 144);
  v26 = *(a3 + 128);
  *(v22 + 7) = *(a3 + 112);
  *(v22 + 8) = v26;
  *(v22 + 6) = *(a3 + 96);
  v27 = a9 + v21[8];
  v28 = *(a4 + 48);
  *(v27 + 2) = *(a4 + 32);
  *(v27 + 3) = v28;
  *(v27 + 58) = *(a4 + 58);
  result = *(a4 + 16);
  *v27 = *a4;
  *(v27 + 1) = result;
  *(a9 + v21[9]) = v18;
  v30 = a9 + v21[10];
  *v30 = a6;
  *(v30 + 1) = a7;
  *(v30 + 2) = a8;
  v30[24] = a11 & 1;
  *(a9 + v21[11]) = a12;
  v31 = a9 + v21[12];
  *v31 = v19;
  v31[8] = v20;
  *(a9 + v21[13]) = a14;
  return result;
}

void *sub_246036CC0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x410))(&v4);
  *a2 = v4;
  return result;
}

void sub_246036D34(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_2460818E4(v3);
  sub_246037228(&v3);
}

void sub_246036D70(void **a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x410);
  v10(&v32, v6);
  v31 = v9;
  LOBYTE(a1) = _s6CoreOC20ObjectCaptureSessionC5StateO2eeoiySbAE_AEtFZ_0(&v32, &v31);
  sub_246077B30(v32);
  if ((a1 & 1) == 0)
  {
    v11 = sub_245FA3174();
    (*(v4 + 16))(v8, v11, v3);
    sub_2460818E4(v9);
    v12 = v1;
    v13 = sub_2460918D4();
    v14 = sub_246091FC4();
    sub_246077B30(v9);

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v15 = 136381187;
      *(v15 + 4) = sub_245F8D3C0(0x6574617473, 0xE500000000000000, &v32);
      *(v15 + 12) = 2082;
      v31 = v9;
      sub_2460818E4(v9);
      v16 = sub_246091C54();
      HIDWORD(v29) = v14;
      v18 = v12;
      v19 = sub_245F8D3C0(v16, v17, &v32);

      *(v15 + 14) = v19;
      v12 = v18;
      *(v15 + 22) = 2082;
      v10(&v31, v20);
      v21 = sub_246091C54();
      v23 = sub_245F8D3C0(v21, v22, &v32);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_245F8A000, v13, BYTE4(v29), "ObjectCaptureSession.%{private}s: Session state has changed from %{public}s to %{public}s", v15, 0x20u);
      v24 = v30;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    v25 = (*(v4 + 8))(v8, v3);
    v10(&v32, v25);
    if ((v32 - 7) >= 0xA)
    {
      if (v32 == 17)
      {
        v26 = *(v12 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers);
        sub_24606BFC0();
        v31 = 7;
        sub_246091914();

        sub_24606C1B4();
        v31 = 7;
        sub_246091914();

        sub_24606C3B0();
        v31 = 7;
        sub_246091914();
      }

      else
      {
        v27 = *(v12 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers);
        v28 = v32;
        sub_24606BFC0();
        v31 = v28;
        sub_2460818E4(v28);
        sub_2460818E4(v28);
        sub_24601EC48(v28);
        sub_246091914();

        sub_2460824C4(v31);
        sub_24606C1B4();
        v31 = v28;
        sub_246091914();

        sub_2460824C4(v31);
        sub_24606C3B0();
        v31 = v28;
        sub_246091914();

        sub_246077B30(v28);
        sub_2460824C4(v31);
      }
    }

    else
    {
      sub_246077B30(v32);
    }
  }
}

uint64_t sub_2460371B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_246091984();
}

void sub_246037228(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_246091984();

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v1;
  sub_246091994();
  sub_246036D70(&v5);
  sub_246077B30(v3);
}

uint64_t sub_246037358(uint64_t a1, uint64_t *a2)
{
  v4 = sub_245F8E624(&unk_27EE3A9A8, &unk_246099C78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_245F8E624(&qword_27EE3A9A0, &qword_246099C70);
  sub_246091974();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2460374F8(uint64_t a1)
{
  v2 = sub_245F8E624(&unk_27EE3A9A8, &unk_246099C78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_245F8E624(&qword_27EE3A9A0, &qword_246099C70);
  sub_246091974();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

double sub_246037630()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  return result;
}

double ObjectCaptureSessionWritingPublishers.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  return result;
}

uint64_t sub_2460376C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x440))();
  *a2 = result;
  return result;
}

uint64_t sub_246037724(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_spi;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_24603778C()
{
  v1 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_spi;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2460377D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_spi;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24603782C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x458))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_246037898(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return sub_2460378FC();
}

uint64_t sub_2460378FC()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime;
  result = swift_beginAccess();
  if ((*(v6 + 8) & 1) == 0)
  {
    v8 = *v6;
    v9 = sub_245FA3174();
    (*(v2 + 16))(v5, v9, v1);
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136380931;
      *(v12 + 4) = sub_245F8D3C0(0xD00000000000001BLL, 0x80000002460A2C60, &v19);
      *(v12 + 12) = 2082;
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_246096460;
      v15 = MEMORY[0x277D83A80];
      *(v14 + 56) = MEMORY[0x277D839F8];
      *(v14 + 64) = v15;
      *(v14 + 32) = v8 / 60.0;
      v16 = sub_246091C24();
      v18 = sub_245F8D3C0(v16, v17, &v19);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: Estimated reconstruction time for this capturing session is %{public}s minutes", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v13, -1, -1);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_246037B8C()
{
  v1 = (v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_246037BD8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return sub_2460378FC();
}

uint64_t sub_246037C3C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x470))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_246037CA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_246037CFC();
}

uint64_t sub_246037CFC()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_245FA3174();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = sub_2460918D4();
  v9 = sub_246091FC4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136380931;
    *(v10 + 4) = sub_245F8D3C0(0x6C467463656A626FLL, 0xEF656C6261707069, &v15);
    *(v10 + 12) = 1026;
    v12 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable;
    swift_beginAccess();
    *(v10 + 14) = v7[v12];

    _os_log_impl(&dword_245F8A000, v8, v9, "ObjectCaptureSession.%{private}s: Object flippable state set to %{BOOL,public}d", v10, 0x12u);
    sub_245F8E6F4(v11);
    MEMORY[0x24C1989D0](v11, -1, -1);
    MEMORY[0x24C1989D0](v10, -1, -1);
  }

  else
  {
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_246037F08()
{
  v1 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_246037F4C(char a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_246037CFC();
}

uint64_t sub_246037FA0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x488))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_246038014()
{
  v1 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isOverCaptureEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_246038064()
{
  v1 = sub_2460919F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_246091A64();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_246077BD4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E0C98;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_246091A14();
  v16 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_246038334@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x4A8))();
  *a2 = result & 1;
  return result;
}

_BYTE *sub_2460383A8(_BYTE *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*result == 1)
  {
    v5 = *a2;
    v6 = *a5;
    result = swift_beginAccess();
    *(v5 + v6) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246038408()
{
  v1 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isFreeformModeEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_246038458(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = *a2;
    result = swift_beginAccess();
    *(v2 + v3) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2460384AC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x4C0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_246038514(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  sub_246091994();
  return sub_246038590();
}

uint64_t sub_246038590()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245FA3174();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = sub_2460918D4();
  v9 = sub_246091FC4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136380931;
    *(v10 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A4AE0, &v14);
    *(v10 + 12) = 1026;
    *(v10 + 14) = (*((*MEMORY[0x277D85000] & *v7) + 0x4C0))() & 1;

    _os_log_impl(&dword_245F8A000, v8, v9, "ObjectCaptureSession.%{private}s: Set can take manual shot = %{BOOL,public}d", v10, 0x12u);
    sub_245F8E6F4(v11);
    MEMORY[0x24C1989D0](v11, -1, -1);
    MEMORY[0x24C1989D0](v10, -1, -1);
  }

  else
  {
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2460387C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_246091984();

  return v1;
}

uint64_t sub_246038838()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_246091994();
  return sub_246038590();
}

uint64_t sub_246038908(uint64_t a1, uint64_t *a2)
{
  v4 = sub_245F8E624(&unk_27EE3A9C0, &qword_246099CD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  sub_245F8E624(&qword_27EE3A9B8, &qword_246099CD0);
  sub_246091974();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_246038AA8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_245F8E624(a2, a3);
  sub_246091964();
  return swift_endAccess();
}

uint64_t sub_246038B20(uint64_t a1)
{
  v2 = sub_245F8E624(&unk_27EE3A9C0, &qword_246099CD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_245F8E624(&qword_27EE3A9B8, &qword_246099CD0);
  sub_246091974();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

id ObjectCaptureSession.init(arSession:mtlDevice:motionManager:snapshotURL:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v115 = a4;
  v116 = a3;
  v117 = a2;
  v113 = a1;
  v126 = sub_2460918F4();
  v112 = *(v126 - 8);
  v5 = *(v112 + 64);
  MEMORY[0x28223BE20](v126);
  v118 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2460919F4();
  v7 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v106 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v111 = sub_246092034();
  *&v110 = *(v111 - 8);
  v9 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  *&v109 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v108 = sub_246092004();
  v11 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v105 = v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_246091A64();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_245F8E624(&qword_27EE3A9B8, &qword_246099CD0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v103 - v18;
  v20 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers;
  type metadata accessor for ObjectCaptureSessionObservingPublishers();
  v21 = swift_allocObject();
  v21[1] = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[5] = 0u;
  v21[6] = 0u;
  v21[7] = 0u;
  v21[8] = 0u;
  *&v4[v20] = v21;
  v22 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers;
  type metadata accessor for ObjectCaptureSessionWritingPublishers();
  v23 = swift_allocObject();
  *&v4[v22] = v23;
  *&v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_spi] = 0;
  v24 = &v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime];
  *v24 = 0;
  v24[8] = 1;
  v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable] = 1;
  v23[1] = 0u;
  v23[2] = 0u;
  v23[3] = 0u;
  v23[4] = 0u;
  v23[5] = 0u;
  v23[6] = 0u;
  v23[7] = 0u;
  v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isOverCaptureEnabled] = 0;
  v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isFreeformModeEnabled] = 0;
  v25 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__canTakeManualShot;
  LOBYTE(v121[0]) = 0;
  v26 = v4;
  sub_246091954();
  (*(v16 + 32))(&v4[v25], v19, v15);
  v104 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue;
  sub_245FA30EC(0, &qword_27EE3A220, 0x277D85C78);
  sub_246091A34();
  v121[0] = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A9D0, MEMORY[0x277D85230]);
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v103[1] = MEMORY[0x277D83970];
  sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  (*(v110 + 104))(v109, *MEMORY[0x277D85260], v111);
  *&v104[v26] = sub_246092074();
  sub_246091824();
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause] = 10;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing] = 18;
  v27 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
  sub_246077C88(v122);
  memcpy(&v26[v27], v122, 0x4F0uLL);
  v28 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  v29 = MEMORY[0x277D84F90];
  *&v26[v28] = sub_246077280(MEMORY[0x277D84F90], &qword_27EE3AEC8, &qword_24609AE58, &unk_27EE3ADB0, &qword_24609AD50);
  v30 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform];
  v31 = *MEMORY[0x277D860B8];
  v110 = *(MEMORY[0x277D860B8] + 16);
  v32 = v110;
  v111 = v31;
  v33 = *(MEMORY[0x277D860B8] + 32);
  v108 = *(MEMORY[0x277D860B8] + 48);
  v34 = v108;
  v109 = v33;
  v122[1264] = 0;
  *v30 = v31;
  *(v30 + 1) = v32;
  *(v30 + 2) = v33;
  *(v30 + 3) = v34;
  v30[64] = 0;
  v35 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;
  *&v26[v35] = sub_246077064(v29);
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex] = 0;
  v36 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp];
  *v36 = 0;
  v36[8] = 1;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_needToStopMotionManager] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isHighQualityMacroModeSupported] = 2;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot] = 0;
  v37 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_snapshotURL;
  v38 = sub_246091704();
  v39 = *(v38 - 8);
  v104 = *(v39 + 56);
  v105 = (v39 + 56);
  (v104)(&v26[v37], 1, 1, v38);
  v40 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMUserDefaultValue;
  v26[v40] = sub_245F92434();
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isClosed] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectInFOVRatio] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_centerOfObjectInFOV] = _Q0;
  v46 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
  *&v26[v46] = sub_246077280(v29, &qword_27EE3AEB8, &qword_24609AE48, &qword_27EE3AD78, &qword_24609AD28);
  v47 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotUUIDToIDMap;
  *&v26[v47] = sub_246077460(v29);
  v48 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotIDToUUIDMap;
  *&v26[v48] = sub_246077648(v29);
  v49 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotFlippableMap;
  *&v26[v49] = sub_246077824(v29);
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_numInitialShotsBeforeFlippableDecision] = 10;
  v50 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions];
  *v50 = 0;
  v50[8] = 1;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_numPoseUpdatesToCheckForConsistency] = 2;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMPoseUpdateRotationDiffThreshold] = 1065353216;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMPoseUpdateTranslationDiffThreshold] = 1000593162;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_waitTimeThresholdForPoseCorrectionInSec] = 0x4024000000000000;
  v51 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem;
  v121[4] = nullsub_1;
  v121[5] = 0;
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 1107296256;
  v121[2] = sub_245F913A4;
  v121[3] = &unk_2858E0CC0;
  _Block_copy(v121);
  v120 = v29;
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  v52 = sub_246091AE4();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  *&v26[v51] = sub_246091AC4();
  v55 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToMobileSfMTransform];
  *v55 = 0u;
  *(v55 + 1) = 0u;
  *(v55 + 2) = 0u;
  *(v55 + 3) = 0u;
  v55[64] = 1;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_consecutiveObjectFlippabilityCount] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_minConsecutiveObjectFlippabilityCount] = 5;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_minShotFlippableMapSize] = 5;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions] = xmmword_246099B70;
  v56 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition];
  *v56 = 0u;
  *(v56 + 1) = 0u;
  v56[32] = 0;
  v56[33] = 1;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_prevPlane] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_yDistanceThresholdBetweenPrevAndCurrPlanes] = 1008981770;
  v57 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform];
  *(v57 + 2) = 0u;
  *(v57 + 3) = 0u;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  v57[64] = 1;
  v58 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox];
  *(v58 + 2) = 0u;
  *(v58 + 3) = 0u;
  *v58 = 0u;
  *(v58 + 1) = 0u;
  v58[64] = 1;
  v59 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud];
  v59[3] = 0u;
  v59[4] = 0u;
  v59[1] = 0u;
  v59[2] = 0u;
  *v59 = 0u;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_coverage] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID] = -1;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment] = MEMORY[0x277D84F90];
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudUpdateInterval] = 0x3FA10CB295E9E1B1;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCacheInterval] = 0x4008000000000000;
  v60 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox];
  *(v60 + 2) = 0u;
  *(v60 + 3) = 0u;
  *v60 = 0u;
  *(v60 + 1) = 0u;
  v60[64] = 1;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldCreateFreeformMeshBuffersFromHeap] = 1;
  v123 = 1;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshHeapVertexCapacity] = 400000;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementInitialVoxelSize] = 1000593162;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementVoxelSizeIncrement] = 1000593162;
  v124 = 1;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementVoxelSizeScanExtentThreshold] = 1014350479;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformCanAutoCaptureStart] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface] = 0;
  v61 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceObjectOrigin];
  *v61 = 0;
  v61[1] = 0;
  v62 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig];
  sub_246077C90(v125);
  *v62 = v125[0];
  v63 = v125[1];
  v64 = v125[2];
  v65 = v125[4];
  v62[3] = v125[3];
  v62[4] = v65;
  v62[1] = v63;
  v62[2] = v64;
  v66 = v125[5];
  v67 = v125[6];
  v68 = v125[8];
  v62[7] = v125[7];
  v62[8] = v68;
  v62[5] = v66;
  v62[6] = v67;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceDebugVoxelCloud] = 0;
  v69 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud];
  v69[4] = 0u;
  v69[5] = 0u;
  v69[2] = 0u;
  v69[3] = 0u;
  *v69 = 0u;
  v69[1] = 0u;
  v70 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_intrinsicsFromLastFrame];
  *(v70 + 1) = 0u;
  *(v70 + 2) = 0u;
  *v70 = 0u;
  v70[48] = 1;
  v71 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageHeightFromLastFrame];
  *v71 = 0;
  v71[8] = 1;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldRestartVoxelIntegration] = 0;
  v72 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelHashingRestartTime];
  *v72 = 0;
  v72[8] = 1;
  v73 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToObjectTransformFromMobileSfM];
  *v73 = 0u;
  *(v73 + 1) = 0u;
  *(v73 + 2) = 0u;
  *(v73 + 3) = 0u;
  v74 = v123;
  v73[64] = v123;
  v75 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialWorldToMobileSfMTransform];
  *(v75 + 2) = 0u;
  *(v75 + 3) = 0u;
  *v75 = 0u;
  *(v75 + 1) = 0u;
  v75[64] = v74;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPgManagerTornDown] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager] = 0;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_traceDebugId] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTapPosition] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugPlaneDetection] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugMaskingVoxel] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugCameraControl] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugDebugVoxels] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTsdfDepth] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugSurfaceGeometryData] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugCoverageGuideVoxels] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugExplicitFeedbackEnabled] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAutoCaptureEnabled] = 0;
  v76 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown];
  *v76 = 0;
  v76[8] = 1;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugWriteAllFramesData] = 0;
  v77 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugOCBundleWriteDisabled;
  v26[v77] = *sub_245F926DC();
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__voxelIntegrationEnabled] = 1;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__explicitFeedbackEnabled] = 1;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__autoCaptureEnabled] = 1;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMEnabled] = 1;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMiPhoneOverride] = 0;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__captureRateControlEnabled] = 1;
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer] = 0;
  v78 = &v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform];
  v79 = v110;
  *v78 = v111;
  v78[1] = v79;
  v80 = v108;
  v78[2] = v109;
  v78[3] = v80;
  v81 = v104;
  (v104)(&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__replayVideoURL], 1, 1, v38);
  v81(&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__recordVideoURL], 1, 1, v38);
  *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__skippedFramesTimeStamps] = MEMORY[0x277D84FA0];
  v82 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_configuration;
  v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_configuration] = 0;
  v83 = sub_245FA3174();
  v84 = v112;
  (*(v112 + 16))(v118, v83, v126);
  v85 = v26;
  v86 = sub_2460918D4();
  v87 = sub_246091FC4();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v121[0] = v89;
    *v88 = 136380931;
    *(v88 + 4) = sub_245F8D3C0(0xD000000000000034, 0x80000002460A2510, v121);
    *(v88 + 12) = 2082;
    LOBYTE(v120) = v26[v82];
    v90 = sub_246091C54();
    v92 = v91;

    v93 = sub_245F8D3C0(v90, v92, v121);

    *(v88 + 14) = v93;
    _os_log_impl(&dword_245F8A000, v86, v87, "ObjectCaptureSession.%{private}s: Initialize with configuration: %{public}s.", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v89, -1, -1);
    MEMORY[0x24C1989D0](v88, -1, -1);
  }

  else
  {
  }

  (*(v84 + 8))(v118, v126);
  v94 = v116;
  v95 = v113;
  if (v113)
  {
    v96 = v113;
  }

  else
  {
    v96 = [objc_allocWithZone(MEMORY[0x277CE5370]) init];
  }

  *&v85[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession] = v96;
  swift_beginAccess();
  v120 = 10;
  v97 = v95;
  sub_246091954();
  swift_endAccess();
  v98 = type metadata accessor for ObjectCaptureSession(0);
  v119.receiver = v85;
  v119.super_class = v98;
  v99 = objc_msgSendSuper2(&v119, sel_init);
  v100 = v114;
  v101 = v115;
  sub_246078034(v117, v94, v115);
  sub_245F8E744(v101, &qword_27EE3A498, &unk_246097EB8);
  if (v100)
  {
  }

  swift_unknownObjectRelease();
  return v99;
}

id ObjectCaptureSession.init(arSession:mtlDevice:motionManager:snapshotURL:configuration:)(void *a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 *a5)
{
  v118 = a4;
  v119 = a3;
  v120 = a2;
  v116 = a1;
  v129 = sub_2460918F4();
  v115 = *(v129 - 8);
  v7 = *(v115 + 64);
  MEMORY[0x28223BE20](v129);
  v121 = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_2460919F4();
  v9 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v108 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v113 = sub_246092034();
  *&v112 = *(v113 - 8);
  v11 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  *&v111 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v110 = sub_246092004();
  v13 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v107 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_246091A64();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_245F8E624(&qword_27EE3A9B8, &qword_246099CD0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v105 - v20;
  v114 = *a5;
  v22 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers;
  type metadata accessor for ObjectCaptureSessionObservingPublishers();
  v23 = swift_allocObject();
  v23[1] = 0u;
  v23[2] = 0u;
  v23[3] = 0u;
  v23[4] = 0u;
  v23[5] = 0u;
  v23[6] = 0u;
  v23[7] = 0u;
  v23[8] = 0u;
  *&v5[v22] = v23;
  v24 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers;
  type metadata accessor for ObjectCaptureSessionWritingPublishers();
  v25 = swift_allocObject();
  *&v5[v24] = v25;
  *&v5[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_spi] = 0;
  v26 = &v5[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime];
  *v26 = 0;
  v26[8] = 1;
  v5[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable] = 1;
  v25[1] = 0u;
  v25[2] = 0u;
  v25[3] = 0u;
  v25[4] = 0u;
  v25[5] = 0u;
  v25[6] = 0u;
  v25[7] = 0u;
  v5[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isOverCaptureEnabled] = 0;
  v5[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isFreeformModeEnabled] = 0;
  v27 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__canTakeManualShot;
  LOBYTE(v124[0]) = 0;
  v28 = v5;
  sub_246091954();
  (*(v18 + 32))(&v5[v27], v21, v17);
  v106 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue;
  sub_245FA30EC(0, &qword_27EE3A220, 0x277D85C78);
  sub_246091A34();
  v124[0] = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A9D0, MEMORY[0x277D85230]);
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v105[1] = MEMORY[0x277D83970];
  sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  (*(v112 + 104))(v111, *MEMORY[0x277D85260], v113);
  *&v106[v28] = sub_246092074();
  sub_246091824();
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause] = 10;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing] = 18;
  v29 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
  sub_246077C88(v125);
  memcpy(&v28[v29], v125, 0x4F0uLL);
  v30 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  v31 = MEMORY[0x277D84F90];
  *&v28[v30] = sub_246077280(MEMORY[0x277D84F90], &qword_27EE3AEC8, &qword_24609AE58, &unk_27EE3ADB0, &qword_24609AD50);
  v32 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform];
  v33 = *MEMORY[0x277D860B8];
  v112 = *(MEMORY[0x277D860B8] + 16);
  v34 = v112;
  v113 = v33;
  v35 = *(MEMORY[0x277D860B8] + 32);
  v110 = *(MEMORY[0x277D860B8] + 48);
  v36 = v110;
  v111 = v35;
  v125[1264] = 0;
  *v32 = v33;
  *(v32 + 1) = v34;
  *(v32 + 2) = v35;
  *(v32 + 3) = v36;
  v32[64] = 0;
  v37 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;
  *&v28[v37] = sub_246077064(v31);
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex] = 0;
  v38 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp];
  *v38 = 0;
  v38[8] = 1;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_needToStopMotionManager] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isHighQualityMacroModeSupported] = 2;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot] = 0;
  v39 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_snapshotURL;
  v40 = sub_246091704();
  v41 = *(v40 - 8);
  v106 = *(v41 + 56);
  v107 = (v41 + 56);
  (v106)(&v28[v39], 1, 1, v40);
  v42 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMUserDefaultValue;
  v28[v42] = sub_245F92434();
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isClosed] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectInFOVRatio] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_centerOfObjectInFOV] = _Q0;
  v48 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
  *&v28[v48] = sub_246077280(v31, &qword_27EE3AEB8, &qword_24609AE48, &qword_27EE3AD78, &qword_24609AD28);
  v49 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotUUIDToIDMap;
  *&v28[v49] = sub_246077460(v31);
  v50 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotIDToUUIDMap;
  *&v28[v50] = sub_246077648(v31);
  v51 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotFlippableMap;
  *&v28[v51] = sub_246077824(v31);
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_numInitialShotsBeforeFlippableDecision] = 10;
  v52 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions];
  *v52 = 0;
  v52[8] = 1;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_numPoseUpdatesToCheckForConsistency] = 2;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMPoseUpdateRotationDiffThreshold] = 1065353216;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMPoseUpdateTranslationDiffThreshold] = 1000593162;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_waitTimeThresholdForPoseCorrectionInSec] = 0x4024000000000000;
  v53 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem;
  v124[4] = nullsub_1;
  v124[5] = 0;
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 1107296256;
  v124[2] = sub_245F913A4;
  v124[3] = &unk_2858E0CE8;
  _Block_copy(v124);
  v123 = v31;
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  v54 = sub_246091AE4();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  *&v28[v53] = sub_246091AC4();
  v57 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToMobileSfMTransform];
  *v57 = 0u;
  *(v57 + 1) = 0u;
  *(v57 + 2) = 0u;
  *(v57 + 3) = 0u;
  v57[64] = 1;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_consecutiveObjectFlippabilityCount] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_minConsecutiveObjectFlippabilityCount] = 5;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_minShotFlippableMapSize] = 5;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions] = xmmword_246099B70;
  v58 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition];
  *v58 = 0u;
  *(v58 + 1) = 0u;
  v58[32] = 0;
  v58[33] = 1;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_prevPlane] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_yDistanceThresholdBetweenPrevAndCurrPlanes] = 1008981770;
  v59 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform];
  *(v59 + 2) = 0u;
  *(v59 + 3) = 0u;
  *v59 = 0u;
  *(v59 + 1) = 0u;
  v59[64] = 1;
  v60 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox];
  *(v60 + 2) = 0u;
  *(v60 + 3) = 0u;
  *v60 = 0u;
  *(v60 + 1) = 0u;
  v60[64] = 1;
  v61 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud];
  v61[3] = 0u;
  v61[4] = 0u;
  v61[1] = 0u;
  v61[2] = 0u;
  *v61 = 0u;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_coverage] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID] = -1;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment] = MEMORY[0x277D84F90];
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudUpdateInterval] = 0x3FA10CB295E9E1B1;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCacheInterval] = 0x4008000000000000;
  v62 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox];
  *(v62 + 2) = 0u;
  *(v62 + 3) = 0u;
  *v62 = 0u;
  *(v62 + 1) = 0u;
  v62[64] = 1;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldCreateFreeformMeshBuffersFromHeap] = 1;
  v126 = 1;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshHeapVertexCapacity] = 400000;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementInitialVoxelSize] = 1000593162;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementVoxelSizeIncrement] = 1000593162;
  v127 = 1;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementVoxelSizeScanExtentThreshold] = 1014350479;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformCanAutoCaptureStart] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface] = 0;
  v63 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceObjectOrigin];
  *v63 = 0;
  v63[1] = 0;
  v64 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig];
  sub_246077C90(v128);
  *v64 = v128[0];
  v65 = v128[1];
  v66 = v128[2];
  v67 = v128[4];
  v64[3] = v128[3];
  v64[4] = v67;
  v64[1] = v65;
  v64[2] = v66;
  v68 = v128[5];
  v69 = v128[6];
  v70 = v128[8];
  v64[7] = v128[7];
  v64[8] = v70;
  v64[5] = v68;
  v64[6] = v69;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceDebugVoxelCloud] = 0;
  v71 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud];
  v71[4] = 0u;
  v71[5] = 0u;
  v71[2] = 0u;
  v71[3] = 0u;
  *v71 = 0u;
  v71[1] = 0u;
  v72 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_intrinsicsFromLastFrame];
  *(v72 + 1) = 0u;
  *(v72 + 2) = 0u;
  *v72 = 0u;
  v72[48] = 1;
  v73 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageHeightFromLastFrame];
  *v73 = 0;
  v73[8] = 1;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldRestartVoxelIntegration] = 0;
  v74 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelHashingRestartTime];
  *v74 = 0;
  v74[8] = 1;
  v75 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToObjectTransformFromMobileSfM];
  *v75 = 0u;
  *(v75 + 1) = 0u;
  *(v75 + 2) = 0u;
  *(v75 + 3) = 0u;
  v76 = v126;
  v75[64] = v126;
  v77 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialWorldToMobileSfMTransform];
  *(v77 + 2) = 0u;
  *(v77 + 3) = 0u;
  *v77 = 0u;
  *(v77 + 1) = 0u;
  v77[64] = v76;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPgManagerTornDown] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager] = 0;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_traceDebugId] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTapPosition] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugPlaneDetection] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugMaskingVoxel] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugCameraControl] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugDebugVoxels] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTsdfDepth] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugSurfaceGeometryData] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugCoverageGuideVoxels] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugExplicitFeedbackEnabled] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAutoCaptureEnabled] = 0;
  v78 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown];
  *v78 = 0;
  v78[8] = 1;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugWriteAllFramesData] = 0;
  v79 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugOCBundleWriteDisabled;
  v28[v79] = *sub_245F926DC();
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__voxelIntegrationEnabled] = 1;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__explicitFeedbackEnabled] = 1;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__autoCaptureEnabled] = 1;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMEnabled] = 1;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMiPhoneOverride] = 0;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__captureRateControlEnabled] = 1;
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer] = 0;
  v80 = &v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform];
  v81 = v112;
  *v80 = v113;
  v80[1] = v81;
  v82 = v110;
  v80[2] = v111;
  v80[3] = v82;
  v83 = v106;
  (v106)(&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__replayVideoURL], 1, 1, v40);
  v83(&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__recordVideoURL], 1, 1, v40);
  *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__skippedFramesTimeStamps] = MEMORY[0x277D84FA0];
  v84 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_configuration;
  v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_configuration] = v114;
  v85 = sub_245FA3174();
  v86 = v115;
  (*(v115 + 16))(v121, v85, v129);
  v87 = v28;
  v88 = sub_2460918D4();
  v89 = sub_246091FC4();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v124[0] = v91;
    *v90 = 136380931;
    *(v90 + 4) = sub_245F8D3C0(0xD000000000000042, 0x80000002460A2550, v124);
    *(v90 + 12) = 2082;
    LOBYTE(v123) = v28[v84];
    v92 = sub_246091C54();
    v94 = v93;

    v95 = sub_245F8D3C0(v92, v94, v124);

    *(v90 + 14) = v95;
    _os_log_impl(&dword_245F8A000, v88, v89, "ObjectCaptureSession.%{private}s: Initialize with configuration: %{public}s.", v90, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v91, -1, -1);
    MEMORY[0x24C1989D0](v90, -1, -1);
  }

  else
  {
  }

  (*(v86 + 8))(v121, v129);
  v96 = v119;
  v97 = v116;
  if (v116)
  {
    v98 = v116;
  }

  else
  {
    v98 = [objc_allocWithZone(MEMORY[0x277CE5370]) init];
  }

  *&v87[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession] = v98;
  swift_beginAccess();
  v123 = 10;
  v99 = v97;
  sub_246091954();
  swift_endAccess();
  v100 = type metadata accessor for ObjectCaptureSession(0);
  v122.receiver = v87;
  v122.super_class = v100;
  v101 = objc_msgSendSuper2(&v122, sel_init);
  v102 = v117;
  v103 = v118;
  sub_246078034(v120, v96, v118);
  sub_245F8E744(v103, &qword_27EE3A498, &unk_246097EB8);
  if (v102)
  {
  }

  swift_unknownObjectRelease();
  return v101;
}

id ObjectCaptureSession.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460917D4();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v27 = *(type metadata accessor for MemoryLogger() + 88);
  v27(0xD00000000000002CLL, 0x80000002460A25A0);
  sub_246057778();
  v11 = *&v0[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager];
  if (v11)
  {
    v12 = v2;
    v13 = *(*v11 + 704);
    v14 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager];

    v13(v15);
    v2 = v12;
  }

  v16 = [objc_opt_self() defaultCenter];
  [v16 removeObserver:v1 name:*MEMORY[0x277CCA600] object:0];

  v17 = sub_245FA3174();
  (*(v3 + 16))(v6, v17, v2);
  v18 = sub_2460918D4();
  v19 = sub_246091FC4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v2;
    v22 = v21;
    v30 = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_245F8D3C0(0x74696E696564, 0xE600000000000000, &v30);
    _os_log_impl(&dword_245F8A000, v18, v19, "ObjectCaptureSession.%{private}s: Session was destroyed.", v20, 0xCu);
    sub_245F8E6F4(v22);
    MEMORY[0x24C1989D0](v22, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);

    (*(v3 + 8))(v6, v26);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v27(0xD00000000000002FLL, 0x80000002460A25D0);
  sub_246040A34(v10, 0x74696E696564, 0xE600000000000000, "ObjectCaptureSession.%{private}s takes time = %{public}s ms");
  (*(v28 + 8))(v10, v29);
  v23 = type metadata accessor for ObjectCaptureSession(0);
  v31.receiver = v1;
  v31.super_class = v23;
  return objc_msgSendSuper2(&v31, sel_dealloc);
}

uint64_t sub_24603B598()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460917D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x4A8))(v10);
  if ((result & 1) != 0 && (*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID) & 0x8000000000000000) == 0)
  {
    __break(1u);
  }

  else
  {
    sub_2460917A4();
    v14 = sub_245FA3174();
    (*(v3 + 16))(v6, v14, v2);
    v15 = sub_2460918D4();
    v16 = sub_246091FC4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = v7;
      v18 = v17;
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136380675;
      *(v18 + 4) = sub_245F8D3C0(0x29286E7572, 0xE500000000000000, &v26);
      _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: Called run().", v18, 0xCu);
      sub_245F8E6F4(v19);
      MEMORY[0x24C1989D0](v19, -1, -1);
      v20 = v18;
      v7 = v25;
      MEMORY[0x24C1989D0](v20, -1, -1);
    }

    v21 = (*(v3 + 8))(v6, v2);
    v22 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
    MEMORY[0x28223BE20](v21);
    *(&v24 - 2) = v12;
    *(&v24 - 1) = v1;
    sub_246092044();
    v23 = v26;
    (*(v8 + 8))(v12, v7);
    return v23;
  }

  return result;
}

uint64_t sub_24603B8BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  v15 = *((*MEMORY[0x277D85000] & *a2) + 0x410);
  v15(&v50, v12);
  if (v50 == 10)
  {
    sub_246077B30(0xA);
    v16 = 10;
LABEL_5:
    sub_246077B30(v16);
    (v15)(&v50);
    v17 = a3;
    if (v50 == 13)
    {
      sub_246077B30(0xD);
      sub_246077B30(0xD);
      sub_246059B88();
    }

    else
    {
      sub_246077B30(v50);
      sub_246077B30(0xD);
    }

    sub_246053240();
    v19 = v18;
    v20 = sub_2460544A0(v18);
    if (v20)
    {
      v21 = v20;
      [*(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) runWithConfiguration:v20 options:0];
      v22 = sub_246059D18();
      if (v22)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_246091984();

        v23 = v50;
        swift_getKeyPath();
        swift_getKeyPath();
        v50 = 11;
        v24 = a2;
        sub_246091994();
        v50 = v23;
        sub_246036D70(&v50);

        sub_246077B30(v23);
      }

      else
      {
      }

      v25 = v22 & 1;
    }

    else
    {
      v26 = sub_245FA3174();
      (*(v7 + 16))(v11, v26, v6);
      v27 = sub_2460918D4();
      v28 = sub_246091FB4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v48 = a1;
        v31 = v30;
        v50 = v30;
        *v29 = 136380675;
        *(v29 + 4) = sub_245F8D3C0(0x29286E7572, 0xE500000000000000, &v50);
        _os_log_impl(&dword_245F8A000, v27, v28, "ObjectCaptureSession.%{private}s: Failed to configure AR session!", v29, 0xCu);
        sub_245F8E6F4(v31);
        v32 = v31;
        a1 = v48;
        MEMORY[0x24C1989D0](v32, -1, -1);
        MEMORY[0x24C1989D0](v29, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v11, v6);
      v25 = 0;
    }

    a3 = v17;
    goto LABEL_21;
  }

  sub_246077B30(v50);
  sub_246077B30(0xA);
  (v15)(&v50);
  if (v50 == 13)
  {
    sub_246077B30(0xD);
    v16 = 13;
    goto LABEL_5;
  }

  v48 = a1;
  sub_246077B30(v50);
  sub_246077B30(0xD);
  v33 = sub_245FA3174();
  (*(v7 + 16))(v14, v33, v6);
  v34 = a2;
  v35 = sub_2460918D4();
  v36 = sub_246091FB4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v47 = a3;
    v38 = v37;
    v46 = swift_slowAlloc();
    v50 = v46;
    *v38 = 136380931;
    *(v38 + 4) = sub_245F8D3C0(0x29286E7572, 0xE500000000000000, &v50);
    *(v38 + 12) = 2082;
    (v15)(&v49);
    v39 = sub_246091C54();
    v41 = sub_245F8D3C0(v39, v40, &v50);

    *(v38 + 14) = v41;
    _os_log_impl(&dword_245F8A000, v35, v36, "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v38, 0x16u);
    v42 = v46;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v42, -1, -1);
    v43 = v38;
    a3 = v47;
    MEMORY[0x24C1989D0](v43, -1, -1);
  }

  (*(v7 + 8))(v14, v6);
  v25 = 0;
  a1 = v48;
LABEL_21:
  *a3 = v25;
  return sub_246040A34(a1, 0x29286E7572, 0xE500000000000000, "ObjectCaptureSession.%{private}s: run() takes time = %{public}s ms");
}

uint64_t sub_24603BF00(char a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2460917D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v14 = sub_245FA3174();
  (*(v5 + 16))(v8, v14, v4);
  v15 = sub_2460918D4();
  v16 = sub_246091FC4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v2;
    v18 = a1;
    v19 = v17;
    v20 = swift_slowAlloc();
    v28 = v9;
    v21 = v20;
    v30 = v20;
    *v19 = 136380931;
    *(v19 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, &v30);
    *(v19 + 12) = 1026;
    *(v19 + 14) = v18 & 1;
    _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: Called pause(fastResuming: %{BOOL,public}d!", v19, 0x12u);
    sub_245F8E6F4(v21);
    v22 = v21;
    v9 = v28;
    MEMORY[0x24C1989D0](v22, -1, -1);
    v23 = v19;
    a1 = v18;
    v2 = v29;
    MEMORY[0x24C1989D0](v23, -1, -1);
  }

  v24 = (*(v5 + 8))(v8, v4);
  v25 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
  MEMORY[0x28223BE20](v24);
  *(&v28 - 4) = v13;
  *(&v28 - 24) = a1 & 1;
  *(&v28 - 2) = v2;
  sub_246092044();
  v26 = v30;
  (*(v10 + 8))(v13, v9);
  return v26;
}

uint64_t sub_24603C1F8@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, char *a4@<X8>)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v93 = &v92 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v92 = &v92 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v94 = &v92 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v92 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v92 - v23;
  if (a2)
  {
    v25 = sub_2460444F4();
    if ((v25 & 1) == 0)
    {
LABEL_18:
      v59 = sub_245FA3174();
      (*(v9 + 2))(v13, v59, v8);
      v60 = a3;
      v61 = sub_2460918D4();
      v62 = v8;
      v63 = sub_246091FB4();

      if (os_log_type_enabled(v61, v63))
      {
        v64 = swift_slowAlloc();
        v96 = a4;
        v65 = v64;
        v66 = swift_slowAlloc();
        v94 = v9;
        v67 = v66;
        v100[0] = v66;
        *v65 = 136380931;
        *(v65 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, v100);
        *(v65 + 12) = 2082;
        v68 = *((*MEMORY[0x277D85000] & *v60) + 0x410);
        v95 = v62;
        v68(v99);
        v69 = sub_246091C54();
        v71 = sub_245F8D3C0(v69, v70, v100);

        *(v65 + 14) = v71;
        _os_log_impl(&dword_245F8A000, v61, v63, "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v67, -1, -1);
        v72 = v65;
        a4 = v96;
        MEMORY[0x24C1989D0](v72, -1, -1);

        (*(v94 + 1))(v13, v95);
      }

      else
      {

        (*(v9 + 1))(v13, v62);
      }

      v39 = 0;
LABEL_34:
      *a4 = v39;
      return sub_24603CDE4();
    }
  }

  else
  {
    v95 = v8;
    v96 = a4;
    v97 = a1;
    v26 = *(a3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession);
    v27 = [v26 configuration];
    if (v27)
    {
      v28 = v27;
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();

      if (v29)
      {
        goto LABEL_8;
      }
    }

    v30 = [v26 configuration];
    if (v30)
    {
      v31 = v30;
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();

      if (v32)
      {
LABEL_8:
        v33 = sub_245FA3174();
        v34 = v95;
        (*(v9 + 2))(v24, v33, v95);
        v35 = sub_2460918D4();
        v36 = sub_246091FB4();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v100[0] = v38;
          *v37 = 136380675;
          *(v37 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, v100);
          _os_log_impl(&dword_245F8A000, v35, v36, "ObjectCaptureSession.%{private}s: Pause is not supported in ARRecordingConfiguration or ARReplayConfiguration!", v37, 0xCu);
          sub_245F8E6F4(v38);
          MEMORY[0x24C1989D0](v38, -1, -1);
          MEMORY[0x24C1989D0](v37, -1, -1);
        }

        (*(v9 + 1))(v24, v34);
        v39 = 0;
        a4 = v96;
        goto LABEL_34;
      }
    }

    v40 = sub_2460444F4();
    a4 = v96;
    a1 = v97;
    v8 = v95;
    if ((v40 & 1) == 0)
    {
      goto LABEL_18;
    }

    v41 = sub_245FA3174();
    (*(v9 + 2))(v22, v41, v8);
    v42 = sub_2460918D4();
    v43 = sub_246091FC4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v100[0] = v45;
      *v44 = 136380675;
      *(v44 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, v100);
      _os_log_impl(&dword_245F8A000, v42, v43, "ObjectCaptureSession.%{private}s: ARSession is paused.", v44, 0xCu);
      sub_245F8E6F4(v45);
      v46 = v45;
      a4 = v96;
      MEMORY[0x24C1989D0](v46, -1, -1);
      v47 = v44;
      a1 = v97;
      MEMORY[0x24C1989D0](v47, -1, -1);
    }

    (*(v9 + 1))(v22, v8);
    v25 = [*(a3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) pause];
  }

  v97 = a1;
  (*((*MEMORY[0x277D85000] & *a3) + 0x410))(v100, v25);
  v48 = *(a3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause);
  *(a3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause) = v100[0];
  sub_246077B30(v48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_246091984();

  v49 = v100[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v100[0] = 13;
  v50 = a3;
  sub_246091994();
  v100[0] = v49;
  sub_246036D70(v100);
  sub_246077B30(v49);
  if (*(v50 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled) != 1)
  {
    v73 = sub_245FA3174();
    v74 = v93;
    (*(v9 + 2))(v93, v73, v8);
    v75 = sub_2460918D4();
    v76 = sub_246091FC4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v100[0] = v78;
      *v77 = 136380675;
      *(v77 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, v100);
      _os_log_impl(&dword_245F8A000, v75, v76, "ObjectCaptureSession.%{private}s: Couldn't set shouldWaitForPoseCorrectionUsingMobileSfM because mobileSfM based pose correction is not enabled!", v77, 0xCu);
      sub_245F8E6F4(v78);
      MEMORY[0x24C1989D0](v78, -1, -1);
      MEMORY[0x24C1989D0](v77, -1, -1);
    }

    (*(v9 + 1))(v74, v8);
    v39 = 1;
    goto LABEL_34;
  }

  v96 = a4;
  sub_24603D144();
  *(v50 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM) = 1;
  v51 = sub_245FA3174();
  v52 = v94;
  v95 = *(v9 + 2);
  (v95)(v94, v51, v8);
  v53 = sub_2460918D4();
  v54 = sub_246091FC4();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v100[0] = v56;
    *v55 = 136380675;
    *(v55 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, v100);
    _os_log_impl(&dword_245F8A000, v53, v54, "ObjectCaptureSession.%{private}s: Set shouldWaitForPoseCorrectionUsingMobileSfM.", v55, 0xCu);
    sub_245F8E6F4(v56);
    MEMORY[0x24C1989D0](v56, -1, -1);
    MEMORY[0x24C1989D0](v55, -1, -1);

    v57 = *(v9 + 1);
    v58 = v8;
    v57(v94, v8);
  }

  else
  {

    v79 = v52;
    v57 = *(v9 + 1);
    v58 = v8;
    v57(v79, v8);
  }

  v80 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
  swift_beginAccess();
  memcpy(v100, v50 + v80, 0x4F0uLL);
  result = sub_246081984(v100);
  if (result != 1)
  {
    v82 = *v100 * 1000.0;
    if (COERCE__INT64(fabs(*v100 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      v94 = v9;
      if (v82 < 9.22337204e18)
      {
        v83 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection;
        *(v50 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection) = v82;
        v84 = v92;
        (v95)(v92, v51, v58);
        v85 = v84;
        v86 = v50;
        v87 = sub_2460918D4();
        v88 = sub_246091FC4();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v95 = v57;
          v91 = v90;
          v98 = v90;
          *v89 = 136380931;
          *(v89 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, &v98);
          *(v89 + 12) = 2050;
          *(v89 + 14) = *(v50 + v83);

          _os_log_impl(&dword_245F8A000, v87, v88, "ObjectCaptureSession.%{private}s: Set pauseTimeForPoseCorrection = %{public}ld", v89, 0x16u);
          sub_245F8E6F4(v91);
          MEMORY[0x24C1989D0](v91, -1, -1);
          MEMORY[0x24C1989D0](v89, -1, -1);

          v95(v85, v58);
        }

        else
        {

          v57(v85, v58);
        }

        a4 = v96;
        v39 = 1;
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24603CDE4()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2460917D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_246096460;
  sub_2460917B4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12 * 1000.0;
  v13 = sub_246091C24();
  v15 = v14;
  v16 = sub_245FA3174();
  (*(v1 + 16))(v4, v16, v0);

  v17 = sub_2460918D4();
  v18 = sub_246091FC4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v0;
    v20 = v19;
    v21 = swift_slowAlloc();
    v26 = v5;
    v22 = v21;
    v28 = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, &v28);
    *(v20 + 12) = 2082;
    v23 = sub_245F8D3C0(v13, v15, &v28);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: pause() takes time = %{public}s ms", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v22, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);

    (*(v1 + 8))(v4, v27);
    return (*(v6 + 8))(v9, v26);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_24603D144()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem;
  v8 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem);

  v9 = sub_246091AB4();

  if ((v9 & 1) == 0)
  {
    v11 = *(v1 + v7);

    sub_246091AD4();

    v12 = sub_245FA3174();
    (*(v3 + 16))(v6, v12, v2);
    v13 = sub_2460918D4();
    v14 = sub_246091FC4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136380675;
      *(v15 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A4500, &v18);
      _os_log_impl(&dword_245F8A000, v13, v14, "ObjectCaptureSession.%{private}s: Cancelled existing pose correction timer.", v15, 0xCu);
      sub_245F8E6F4(v16);
      MEMORY[0x24C1989D0](v16, -1, -1);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_24603D340()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460917D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v12 = sub_245FA3174();
  (*(v3 + 16))(v6, v12, v2);
  v13 = sub_2460918D4();
  v14 = sub_246091FC4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136380675;
    *(v16 + 4) = sub_245F8D3C0(0x2928656D75736572, 0xE800000000000000, &v25);
    _os_log_impl(&dword_245F8A000, v13, v14, "ObjectCaptureSession.%{private}s: Called resume().", v16, 0xCu);
    sub_245F8E6F4(v17);
    MEMORY[0x24C1989D0](v17, -1, -1);
    v18 = v16;
    v1 = v24;
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  v19 = (*(v3 + 8))(v6, v2);
  v20 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
  MEMORY[0x28223BE20](v19);
  *(&v23 - 2) = v11;
  *(&v23 - 1) = v1;
  sub_246092044();
  v21 = v25;
  (*(v8 + 8))(v11, v7);
  return v21;
}

uint64_t sub_24603D604@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v56 = a3;
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v53 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v53 - v15;
  v17 = *((*MEMORY[0x277D85000] & *a2) + 0x410);
  v17(&v58, v14);
  if (v58 != 13)
  {
    sub_246077B30(v58);
    sub_246077B30(0xD);
    v34 = sub_245FA3174();
    (*(v6 + 16))(v16, v34, v5);
    v35 = a2;
    v55 = v5;
    v36 = v35;
    v37 = sub_2460918D4();
    v38 = sub_246091FB4();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v54 = a1;
      v41 = v40;
      v58 = v40;
      *v39 = 136380931;
      *(v39 + 4) = sub_245F8D3C0(0x2928656D75736572, 0xE800000000000000, &v58);
      *(v39 + 12) = 2082;
      (v17)(&v57);
      v42 = sub_246091C54();
      v44 = sub_245F8D3C0(v42, v43, &v58);

      *(v39 + 14) = v44;
      _os_log_impl(&dword_245F8A000, v37, v38, "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      v45 = v41;
      a1 = v54;
      MEMORY[0x24C1989D0](v45, -1, -1);
      MEMORY[0x24C1989D0](v39, -1, -1);
    }

    (*(v6 + 8))(v16, v55);
    goto LABEL_15;
  }

  sub_246077B30(0xD);
  sub_246077B30(0xD);
  sub_246053240();
  v19 = v18;
  v20 = sub_2460544A0(v18);
  if (!v20)
  {
    v46 = sub_245FA3174();
    (*(v6 + 16))(v10, v46, v5);
    v47 = sub_2460918D4();
    v48 = v5;
    v49 = sub_246091FB4();
    if (os_log_type_enabled(v47, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v58 = v51;
      *v50 = 136380675;
      *(v50 + 4) = sub_245F8D3C0(0x2928656D75736572, 0xE800000000000000, &v58);
      _os_log_impl(&dword_245F8A000, v47, v49, "ObjectCaptureSession.%{private}s: Failed to configure AR session!", v50, 0xCu);
      sub_245F8E6F4(v51);
      MEMORY[0x24C1989D0](v51, -1, -1);
      MEMORY[0x24C1989D0](v50, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v10, v48);
LABEL_15:
    v33 = 0;
    goto LABEL_17;
  }

  v21 = v20;
  v54 = a1;
  v55 = v5;
  [*(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) runWithConfiguration:v20 options:0];
  v22 = *(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2460818E4(v22);
  sub_246091984();

  v23 = v58;
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v22;
  v24 = a2;
  sub_246091994();
  v58 = v23;
  sub_246036D70(&v58);
  sub_246077B30(v23);
  if (*(v24 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled) == 1)
  {
    sub_24603DCBC();
    v25 = sub_245FA3174();
    v26 = v55;
    (*(v6 + 16))(v13, v25, v55);
    v27 = v24;
    v28 = sub_2460918D4();
    v29 = sub_246091FC4();

    v30 = os_log_type_enabled(v28, v29);
    a1 = v54;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v58 = v32;
      *v31 = 136380931;
      *(v31 + 4) = sub_245F8D3C0(0x2928656D75736572, 0xE800000000000000, &v58);
      *(v31 + 12) = 2050;
      *(v31 + 14) = 0x4024000000000000;
      _os_log_impl(&dword_245F8A000, v28, v29, "ObjectCaptureSession.%{private}s: Set set wait for pose correction timer to %{public}f seconds", v31, 0x16u);
      sub_245F8E6F4(v32);
      MEMORY[0x24C1989D0](v32, -1, -1);
      MEMORY[0x24C1989D0](v31, -1, -1);

      (*(v6 + 8))(v13, v55);
    }

    else
    {

      (*(v6 + 8))(v13, v26);
    }

    v33 = 1;
  }

  else
  {

    v33 = 1;
    a1 = v54;
  }

LABEL_17:
  *v56 = v33;
  return sub_246040A34(a1, 0x2928656D75736572, 0xE800000000000000, "ObjectCaptureSession.%{private}s: resume() takes time = %{public}s ms");
}

uint64_t sub_24603DCBC()
{
  v1 = sub_246091AA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_24603D144();
  v9 = sub_246043938();
  v10 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem;
  v11 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem);
  *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem) = v9;

  v12 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
  sub_246091A84();
  sub_246091B14();
  v13 = *(v2 + 8);
  v13(v6, v1);
  v14 = *(v0 + v10);

  sub_246092014();

  return (v13)(v8, v1);
}

uint64_t sub_24603DE20(double a1, double a2)
{
  v3 = v2;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2460917D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v16 = sub_245FA3174();
  (*(v7 + 16))(v10, v16, v6);
  v17 = sub_2460918D4();
  v18 = sub_246091FC4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136381187;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A2620, &v30);
    *(v20 + 12) = 2050;
    *(v20 + 14) = a1;
    *(v20 + 22) = 2050;
    *(v20 + 24) = a2;
    _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: Called detectObject() with imagePoint = (%{public}f, %{public}f)", v20, 0x20u);
    sub_245F8E6F4(v21);
    MEMORY[0x24C1989D0](v21, -1, -1);
    v22 = v20;
    v3 = v29;
    MEMORY[0x24C1989D0](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v23 = *sub_24608FC94();
  OCSignPostsAriadneDbgCode();
  v24 = kdebug_trace();
  v25 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
  MEMORY[0x28223BE20](v24);
  *(&v28 - 4) = v15;
  *(&v28 - 3) = v3;
  *(&v28 - 2) = a1;
  *(&v28 - 1) = a2;
  sub_246092044();
  v26 = v30;
  (*(v12 + 8))(v15, v11);
  return v26;
}

uint64_t sub_24603E130(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v45 = v5;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41[-v13];
  v15 = *((*MEMORY[0x277D85000] & *v3) + 0x410);
  v15(v50, v12);
  if (v50[0] == 12)
  {
    v44 = v4;
    sub_246077B30(0xC);
    v16 = 12;
    goto LABEL_5;
  }

  sub_246077B30(v50[0]);
  sub_246077B30(0xC);
  (v15)(v50);
  if (v50[0] == 14)
  {
    v44 = v4;
    sub_246077B30(0xE);
    v16 = 14;
LABEL_5:
    sub_246077B30(v16);
    v17 = *sub_24608FCA0();
    OCSignPostsAriadneDbgCode();
    kdebug_trace();
    v48 = 1;
    memset(v47, 0, 64);
    LOBYTE(v47[8]) = 1;
    sub_246044B58(v47);
    v18 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
    swift_beginAccess();
    v19 = *(v3 + v18);
    v20 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
    swift_beginAccess();
    memcpy(v49, v3 + v20, sizeof(v49));
    memcpy(v47, v3 + v20, 0x4F0uLL);

    sub_245F8E7A4(v49, &v46, &qword_27EE3A9F0, &qword_246099CE0);
    sub_24603EAAC(v19);
    v22 = v21;

    memcpy(v50, v47, 0x4F0uLL);
    sub_245F8E744(v50, &qword_27EE3A9F0, &qword_246099CE0);
    if (v22)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_246091984();

      v23 = v47[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v47[0] = 14;
      v24 = v3;
      sub_246091994();
      v47[0] = v23;
      sub_246036D70(v47);
      sub_246077B30(v23);
      *v45 = 1;
    }

    else
    {
      v25 = sub_245FA3174();
      (*(v7 + 16))(v11, v25, v6);
      v26 = sub_2460918D4();
      v27 = sub_246091FB4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v47[0] = v29;
        *v28 = 136380675;
        *(v28 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A2620, v47);
        _os_log_impl(&dword_245F8A000, v26, v27, "ObjectCaptureSession.%{private}s: Precheck failed!", v28, 0xCu);
        sub_245F8E6F4(v29);
        MEMORY[0x24C1989D0](v29, -1, -1);
        MEMORY[0x24C1989D0](v28, -1, -1);
      }

      (*(v7 + 8))(v11, v6);
      *v45 = 0;
    }

    return sub_24603E74C();
  }

  sub_246077B30(v50[0]);
  sub_246077B30(0xE);
  v30 = sub_245FA3174();
  (*(v7 + 16))(v14, v30, v6);
  v31 = v3;
  v32 = sub_2460918D4();
  v33 = sub_246091FB4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v44 = v4;
    v35 = v34;
    v43 = swift_slowAlloc();
    v50[0] = v43;
    *v35 = 136380931;
    *(v35 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A2620, v50);
    *(v35 + 12) = 2082;
    v42 = v33;
    (v15)(v49);
    v36 = sub_246091C54();
    v38 = sub_245F8D3C0(v36, v37, v50);

    *(v35 + 14) = v38;
    _os_log_impl(&dword_245F8A000, v32, v42, "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v35, 0x16u);
    v39 = v43;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v39, -1, -1);
    MEMORY[0x24C1989D0](v35, -1, -1);
  }

  (*(v7 + 8))(v14, v6);
  *v45 = 0;
  return sub_24603E74C();
}

uint64_t sub_24603E74C()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2460917D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_246096460;
  sub_2460917B4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12 * 1000.0;
  v13 = sub_246091C24();
  v15 = v14;
  v16 = sub_245FA3174();
  (*(v1 + 16))(v4, v16, v0);

  v17 = sub_2460918D4();
  v18 = sub_246091FA4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v0;
    v20 = v19;
    v21 = swift_slowAlloc();
    v26 = v5;
    v22 = v21;
    v28 = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A2620, &v28);
    *(v20 + 12) = 2082;
    v23 = sub_245F8D3C0(v13, v15, &v28);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: detectObject() takes time = %{public}s ms", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v22, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);

    (*(v1 + 8))(v4, v27);
    return (*(v6 + 8))(v9, v26);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }
}

void sub_24603EAAC(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v5 = v4;
  v6 = v2;
  v8 = v7;
  v10 = v9;
  v11 = sub_2460918F4();
  v127 = *(v11 - 8);
  v128 = v11;
  v12 = *(v127 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v112 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v112 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v112 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v112 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v125 = &v112 - v29;
  MEMORY[0x28223BE20](v28);
  v126 = &v112 - v30;
  memcpy(v148, v5, sizeof(v148));
  memcpy(v149, v5, 0x4F0uLL);
  if (sub_246081984(v149) != 1 && (v31 = *&v149[1]) != 0 && (v32 = *(&v149[1] + 1)) != 0)
  {
    LOBYTE(v139[0]) = v149[9];
    LOBYTE(v131[0]) = 5;
    sub_245F8E7A4(v148, v143, &qword_27EE3A9F0, &qword_246099CE0);
    v124 = v31;
    v33 = v32;
    if (static CameraTrackingState.== infix(_:_:)(v139, v131))
    {
      v34 = v128;
      if (*(v6 + 16))
      {
        *&v123 = v3;
        v147[0] = v149[2];
        v147[1] = v149[3];
        v147[2] = v149[4];
        v121 = v149[6];
        v122 = v149[5];
        v119 = v149[8];
        v120 = v149[7];
        v35 = *(&v149[0] + 1);
        sub_245F98A6C(&v140, v10, v8);
        if (!sub_245F98A80(v35, v124, v33, v147, v122, v121, v120, v119) || (v142 & 1) != 0)
        {
          v36 = sub_245FA3174();
          v37 = v127;
          (*(v127 + 16))(v24, v36, v34);
          v38 = sub_2460918D4();
          v39 = sub_246091FB4();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = v35;
            v42 = v33;
            v43 = swift_slowAlloc();
            *&v143[0] = v43;
            *v40 = 136380675;
            *(v40 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v143);
            _os_log_impl(&dword_245F8A000, v38, v39, "ObjectCaptureSession.%{private}s: Failed to compute tap position in world, resetting the old tap position!", v40, 0xCu);
            sub_245F8E6F4(v43);
            MEMORY[0x24C1989D0](v43, -1, -1);
            MEMORY[0x24C1989D0](v40, -1, -1);

            sub_245F8E744(v148, &qword_27EE3A9F0, &qword_246099CE0);
            (*(v37 + 8))(v24, v128);
          }

          else
          {
            sub_245F8E744(v148, &qword_27EE3A9F0, &qword_246099CE0);

            (*(v37 + 8))(v24, v34);
          }

LABEL_20:
          v65 = v123;
          v66 = v123 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition;
          *(v66 + 32) = 0;
          *v66 = 0u;
          *(v66 + 16) = 0u;
          *(v66 + 33) = 1;
          LOBYTE(v143[0]) = 1;
          v67 = v65 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform;
          *v67 = 0u;
          *(v67 + 16) = 0u;
          *(v67 + 32) = 0u;
          *(v67 + 48) = 0u;
          *(v67 + 64) = 1;
          return;
        }

        v68 = v141;
        v69 = v141;
        if (*(v123 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTapPosition) == 1)
        {
          v70 = *(v123 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers);
          v122 = v141;
          sub_24606B9B0();
          v143[0] = v68;
          sub_246091924();

          v69 = v122;
        }

        sub_246079E60(v6, v69);
        v118 = v33;
        if (!v71)
        {
          v84 = sub_245FA3174();
          v85 = v127;
          (*(v127 + 16))(v27, v84, v34);
          v86 = sub_2460918D4();
          v87 = sub_246091FB4();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            *&v143[0] = v89;
            *v88 = 136380675;
            *(v88 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v143);
            _os_log_impl(&dword_245F8A000, v86, v87, "ObjectCaptureSession.%{private}s: Failed to compute nearest plane below tap position, resetting the old tap position!", v88, 0xCu);
            sub_245F8E6F4(v89);
            MEMORY[0x24C1989D0](v89, -1, -1);
            MEMORY[0x24C1989D0](v88, -1, -1);

            sub_245F8E744(v148, &qword_27EE3A9F0, &qword_246099CE0);
          }

          else
          {
            sub_245F8E744(v148, &qword_27EE3A9F0, &qword_246099CE0);
          }

          (*(v85 + 8))(v27, v34);
          goto LABEL_20;
        }

        v113 = v35;

        v145[0] = v140;
        v145[1] = v68;
        v146 = 0;
        sub_246044A5C(v145);
        v72 = v123;
        v73 = (v123 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
        swift_beginAccess();
        memcpy(v139, v73, sizeof(v139));
        v74 = v73[3];
        v136 = v73[2];
        v137 = v74;
        v138 = v73[4];
        v75 = *v73;
        v135 = v73[1];
        v134 = v75;
        v121 = v139[6];
        v122 = v139[5];
        v119 = v139[8];
        v120 = v139[7];
        memcpy(v133, v73 + 9, sizeof(v133));
        v76 = v73[3];
        v143[2] = v73[2];
        v143[3] = v76;
        v143[4] = v73[4];
        v77 = *v73;
        v143[1] = v73[1];
        v143[0] = v77;
        memcpy(v144, v73 + 9, sizeof(v144));
        v143[5] = v139[5];
        v143[6] = v139[6];
        v143[7] = v139[7];
        v143[8] = v139[8];
        if (sub_246081984(v143) == 1)
        {
          v78 = 1;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v79 = v127;
          v80 = v119;
          v81 = v120;
          v83 = v121;
          v82 = v122;
        }

        else
        {
          v78 = 0;
          v83 = v121;
          v82 = v122;
          v116 = v121;
          v117 = v122;
          v80 = v119;
          v81 = v120;
          v114 = v119;
          v115 = v120;
          v79 = v127;
        }

        v131[2] = v136;
        v131[3] = v137;
        v131[1] = v135;
        v131[0] = v134;
        v131[4] = v138;
        v131[5] = v82;
        v131[6] = v83;
        v131[7] = v81;
        v131[8] = v80;
        memcpy(v132, v133, sizeof(v132));
        sub_245F8E7A4(v139, v130, &qword_27EE3A9F0, &qword_246099CE0);
        sub_245F8E744(v131, &qword_27EE3A9F0, &qword_246099CE0);
        v90 = &v72[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform];
        v91 = v116;
        *v90 = v117;
        v90[1] = v91;
        v92 = v114;
        v90[2] = v115;
        v90[3] = v92;
        v90[4].i8[0] = v78;
        v93 = sub_245FA3174();
        v94 = v126;
        v122.i64[0] = *(v79 + 16);
        (v122.i64[0])(v126, v93, v34);
        v95 = v72;
        v96 = sub_2460918D4();
        v97 = sub_246091FC4();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v129 = v99;
          *v98 = 136380931;
          *(v98 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, &v129);
          *(v98 + 12) = 2082;
          v123 = *&v95[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition];
          v100 = v95[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33];

          if (v100)
          {
            __break(1u);
            return;
          }

          v130[0] = v123;
          type metadata accessor for CGPoint();
          v101 = sub_246091C54();
          v103 = sub_245F8D3C0(v101, v102, &v129);

          *(v98 + 14) = v103;
          _os_log_impl(&dword_245F8A000, v96, v97, "ObjectCaptureSession.%{private}s: Set tap position with image point %{public}s.", v98, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v99, -1, -1);
          MEMORY[0x24C1989D0](v98, -1, -1);

          v104 = *(v127 + 8);
          v34 = v128;
          v104(v126, v128);
        }

        else
        {

          v104 = *(v79 + 8);
          v104(v94, v34);
        }

        v105 = v125;
        (v122.i64[0])(v125, v93, v34);
        v106 = sub_2460918D4();
        v107 = sub_246091FC4();
        v108 = os_log_type_enabled(v106, v107);
        v109 = v113;
        if (v108)
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          *&v130[0] = v111;
          *v110 = 136380675;
          *(v110 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v130);
          _os_log_impl(&dword_245F8A000, v106, v107, "ObjectCaptureSession.%{private}s: Set initial camera transform.", v110, 0xCu);
          sub_245F8E6F4(v111);
          MEMORY[0x24C1989D0](v111, -1, -1);
          MEMORY[0x24C1989D0](v110, -1, -1);

          sub_245F8E744(v148, &qword_27EE3A9F0, &qword_246099CE0);
        }

        else
        {
          sub_245F8E744(v148, &qword_27EE3A9F0, &qword_246099CE0);
        }

        v104(v105, v34);
      }

      else
      {
        v59 = sub_245FA3174();
        v60 = v127;
        (*(v127 + 16))(v21, v59, v34);
        v61 = sub_2460918D4();
        v62 = sub_246091FB4();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *&v143[0] = v64;
          *v63 = 136380675;
          *(v63 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v143);
          _os_log_impl(&dword_245F8A000, v61, v62, "ObjectCaptureSession.%{private}s: No planes available!", v63, 0xCu);
          sub_245F8E6F4(v64);
          MEMORY[0x24C1989D0](v64, -1, -1);
          MEMORY[0x24C1989D0](v63, -1, -1);

          sub_245F8E744(v148, &qword_27EE3A9F0, &qword_246099CE0);
        }

        else
        {
          sub_245F8E744(v148, &qword_27EE3A9F0, &qword_246099CE0);
        }

        (*(v60 + 8))(v21, v34);
      }
    }

    else
    {
      v51 = sub_245FA3174();
      v53 = v127;
      v52 = v128;
      (*(v127 + 16))(v18, v51, v128);
      v54 = sub_2460918D4();
      v55 = sub_246091FB4();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = v33;
        v58 = swift_slowAlloc();
        *&v143[0] = v58;
        *v56 = 136380675;
        *(v56 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v143);
        _os_log_impl(&dword_245F8A000, v54, v55, "ObjectCaptureSession.%{private}s: Camera tracking state is not normal, not setting tap point!", v56, 0xCu);
        sub_245F8E6F4(v58);
        MEMORY[0x24C1989D0](v58, -1, -1);
        MEMORY[0x24C1989D0](v56, -1, -1);

        sub_245F8E744(v148, &qword_27EE3A9F0, &qword_246099CE0);
      }

      else
      {
        sub_245F8E744(v148, &qword_27EE3A9F0, &qword_246099CE0);
      }

      (*(v53 + 8))(v18, v52);
    }
  }

  else
  {
    v44 = sub_245FA3174();
    v46 = v127;
    v45 = v128;
    (*(v127 + 16))(v15, v44, v128);
    v47 = sub_2460918D4();
    v48 = sub_246091FB4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v143[0] = v50;
      *v49 = 136380675;
      *(v49 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v143);
      _os_log_impl(&dword_245F8A000, v47, v48, "ObjectCaptureSession.%{private}s: Invalid inputs!", v49, 0xCu);
      sub_245F8E6F4(v50);
      MEMORY[0x24C1989D0](v50, -1, -1);
      MEMORY[0x24C1989D0](v49, -1, -1);
    }

    (*(v46 + 8))(v15, v45);
  }
}

uint64_t sub_24603FA28(uint64_t a1)
{
  v16 = 0;
  v3 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v16;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_246079BC4;
  *(v5 + 24) = v4;
  v14 = sub_245FC4C80;
  v15 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_245FB4BFC;
  v13 = &unk_2858E0D60;
  v6 = _Block_copy(&aBlock);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    LOWORD(aBlock) = v16;
    v11 = 100;
    v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x530))(a1, &aBlock);

    return v9 & 1;
  }

  return result;
}

CoreOC::ObjectCaptureSession::CaptureOptions __swiftcall ObjectCaptureSession.CaptureOptions.init()()
{
  *v0 = 0;
  *(v0 + 8) = 100;
  return result;
}

uint64_t sub_24603FC94(__n128 *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 8);
  if (a1[4].n128_u8[0])
  {
    v6 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isFreeformModeEnabled;
    swift_beginAccess();
    *(v2 + v6) = 1;
    v13[0] = v3;
    v13[1] = v4;
    v14 = v5;
    v7 = sub_24604D390(v13);
  }

  else
  {
    v8 = a1[2];
    v9 = a1[3];
    v10 = *a1;
    v11 = a1[1];
    v15[0] = *a2;
    v15[1] = v4;
    v16 = v5;
    v7 = sub_24604FEAC(v15, v10, v11, v8, v9);
  }

  return v7 & 1;
}

uint64_t sub_24603FD38()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460917D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v12 = sub_245FA3174();
  (*(v3 + 16))(v6, v12, v2);
  v13 = sub_2460918D4();
  v14 = sub_246091FC4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v7;
    v16 = v1;
    v17 = v15;
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136380675;
    *(v17 + 4) = sub_245F8D3C0(0x29286873696E6966, 0xE800000000000000, &v28);
    _os_log_impl(&dword_245F8A000, v13, v14, "ObjectCaptureSession.%{private}s: Called finish().", v17, 0xCu);
    sub_245F8E6F4(v18);
    MEMORY[0x24C1989D0](v18, -1, -1);
    v19 = v17;
    v1 = v16;
    v7 = v27;
    MEMORY[0x24C1989D0](v19, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v20 = *sub_24608FCC4();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v21 = *sub_24608FC34();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v22 = sub_24607A0F0();
  v23 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
  MEMORY[0x28223BE20](v22);
  *(&v26 - 2) = v11;
  *(&v26 - 1) = v1;
  sub_246092044();
  v24 = v28;
  (*(v8 + 8))(v11, v7);
  return v24;
}

uint64_t sub_246040048@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2460444F4())
  {
    goto LABEL_4;
  }

  v11 = *((*MEMORY[0x277D85000] & *a2) + 0x410);
  v11(&v28);
  if (v28 == 13)
  {
    sub_246077B30(0xD);
    sub_246077B30(0xD);
LABEL_4:
    v28 = 17;
    sub_246057DD0(&v28);
    v12 = 1;
    goto LABEL_8;
  }

  v26 = a1;
  sub_246077B30(v28);
  sub_246077B30(0xD);
  v13 = sub_245FA3174();
  (*(v7 + 16))(v10, v13, v6);
  v14 = a2;
  v15 = sub_2460918D4();
  v16 = sub_246091FB4();

  v25 = v16;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136380931;
    *(v17 + 4) = sub_245F8D3C0(0x29286873696E6966, 0xE800000000000000, &v28);
    *(v17 + 12) = 2082;
    v24 = v15;
    v11(&v27);
    v19 = sub_246091C54();
    v21 = sub_245F8D3C0(v19, v20, &v28);

    *(v17 + 14) = v21;
    v15 = v24;
    _os_log_impl(&dword_245F8A000, v24, v25, "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v18, -1, -1);
    MEMORY[0x24C1989D0](v17, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v12 = 0;
  a1 = v26;
LABEL_8:
  *a3 = v12;
  return sub_246040A34(a1, 0x29286873696E6966, 0xE800000000000000, "ObjectCaptureSession.%{private}s: finish() takes time = %{public}s ms");
}

uint64_t sub_246040350()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2460917D4();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v28 - v11;
  sub_2460917A4();
  v12 = sub_245FA3174();
  (*(v3 + 16))(v6, v12, v2);
  v13 = sub_2460918D4();
  v14 = sub_246091FC4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136380675;
    *(v16 + 4) = sub_245F8D3C0(0x29286C65636E6163, 0xE800000000000000, aBlock);
    _os_log_impl(&dword_245F8A000, v13, v14, "ObjectCaptureSession.%{private}s: Called cancel()", v16, 0xCu);
    sub_245F8E6F4(v17);
    MEMORY[0x24C1989D0](v17, -1, -1);
    v18 = v16;
    v1 = v29;
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v19 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v21 = v30;
  v20 = v31;
  (*(v7 + 16))(v9, v30, v31);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v22, v9, v20);
  *(v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_24607A470;
  *(v24 + 24) = v23;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E0DD8;
  v25 = _Block_copy(aBlock);
  v26 = v1;

  dispatch_sync(v19, v25);
  _Block_release(v25);
  (*(v7 + 8))(v21, v20);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246040748(uint64_t a1, void *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2460444F4())
  {
    goto LABEL_4;
  }

  v9 = *((*MEMORY[0x277D85000] & *a2) + 0x410);
  v9(&v23);
  if (v23 == 13)
  {
    sub_246077B30(0xD);
    sub_246077B30(0xD);
LABEL_4:
    v23 = 4;
    sub_246057DD0(&v23);
    return sub_246040A34(a1, 0x29286C65636E6163, 0xE800000000000000, "ObjectCaptureSession.%{private}s: cancel() takes time = %{public}s ms");
  }

  sub_246077B30(v23);
  sub_246077B30(0xD);
  v10 = sub_245FA3174();
  (*(v5 + 16))(v8, v10, v4);
  v11 = a2;
  v12 = sub_2460918D4();
  v13 = sub_246091FB4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v14 = 136380931;
    *(v14 + 4) = sub_245F8D3C0(0x29286C65636E6163, 0xE800000000000000, &v23);
    *(v14 + 12) = 2082;
    HIDWORD(v20) = v13;
    v9(&v22);
    v15 = sub_246091C54();
    v17 = sub_245F8D3C0(v15, v16, &v23);

    *(v14 + 14) = v17;
    _os_log_impl(&dword_245F8A000, v12, BYTE4(v20), "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v14, 0x16u);
    v18 = v21;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v18, -1, -1);
    MEMORY[0x24C1989D0](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return sub_246040A34(a1, 0x29286C65636E6163, 0xE800000000000000, "ObjectCaptureSession.%{private}s: cancel() takes time = %{public}s ms");
}

uint64_t sub_246040A34(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2460917D4();
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_246096460;
  sub_2460917B4();
  v14 = MEMORY[0x277D83A80];
  *(v13 + 56) = MEMORY[0x277D839F8];
  *(v13 + 64) = v14;
  *(v13 + 32) = v15 * 1000.0;
  v16 = sub_246091C24();
  v18 = v17;
  v19 = sub_245FA3174();
  (*(v5 + 16))(v8, v19, v4);

  v20 = sub_2460918D4();
  v21 = sub_246091FA4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v4;
    v24 = v23;
    v32 = v23;
    *v22 = 136380931;
    *(v22 + 4) = sub_245F8D3C0(v28, v29, &v32);
    *(v22 + 12) = 2082;
    v25 = sub_245F8D3C0(v16, v18, &v32);

    *(v22 + 14) = v25;
    _os_log_impl(&dword_245F8A000, v20, v21, v30, v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v24, -1, -1);
    MEMORY[0x24C1989D0](v22, -1, -1);

    (*(v5 + 8))(v8, v27);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return (*(v9 + 8))(v12, v31);
}

uint64_t sub_246040D68()
{
  v1 = v0;
  v2 = sub_2460919F4();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_246091A64();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2460917D4();
  v13 = *(v35 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v35);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v42 = &v34 - v17;
  sub_2460917A4();
  v18 = sub_245FA3174();
  (*(v9 + 16))(v12, v18, v8);
  v19 = sub_2460918D4();
  v20 = sub_246091FC4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v1;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136380675;
    *(v21 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, aBlock);
    _os_log_impl(&dword_245F8A000, v19, v20, "ObjectCaptureSession.%{private}s: Called takeManualShot()", v21, 0xCu);
    sub_245F8E6F4(v23);
    v24 = v23;
    v1 = v34;
    MEMORY[0x24C1989D0](v24, -1, -1);
    MEMORY[0x24C1989D0](v21, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v34 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v25 = v35;
  (*(v13 + 16))(v15, v42, v35);
  v26 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v27 = swift_allocObject();
  (*(v13 + 32))(v27 + v26, v15, v25);
  *(v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  aBlock[4] = sub_24607A524;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E0E28;
  v28 = _Block_copy(aBlock);
  v29 = v1;
  v30 = v36;
  sub_246091A14();
  v43 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  v31 = v39;
  v32 = v41;
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v30, v31, v28);
  _Block_release(v28);
  (*(v40 + 8))(v31, v32);
  (*(v37 + 8))(v30, v38);
  (*(v13 + 8))(v42, v25);

  return 1;
}

uint64_t sub_2460412E8(uint64_t a1, void *a2)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v58 - v9;
  MEMORY[0x28223BE20](v10);
  v61 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v60 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v59 = &v58 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  v19 = sub_245FA3174();
  v20 = v4[2];
  v64 = v19;
  v20(v18);
  v21 = sub_2460918D4();
  v22 = sub_246091FA4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v63 = v4;
    v58 = v3;
    v24 = v23;
    v25 = v20;
    v26 = v7;
    v27 = swift_slowAlloc();
    v65 = v27;
    *v24 = 136380675;
    *(v24 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v65);
    _os_log_impl(&dword_245F8A000, v21, v22, "ObjectCaptureSession.%{private}s: Enter scheduled takeManualShot() block.", v24, 0xCu);
    sub_245F8E6F4(v27);
    v28 = v27;
    v7 = v26;
    v20 = v25;
    MEMORY[0x24C1989D0](v28, -1, -1);
    v3 = v58;
    v4 = v63;
    MEMORY[0x24C1989D0](v24, -1, -1);
  }

  v29 = v4[1];
  v30 = v29(v18, v3);
  (*((*MEMORY[0x277D85000] & *a2) + 0x410))(&v65, v30);
  if (v65 == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    if ((sub_246044638() & 1) == 0)
    {
      v36 = v62;
      (v20)(v62, v64, v3);
      v48 = sub_2460918D4();
      v49 = sub_246091FB4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v65 = v51;
        *v50 = 136380675;
        *(v50 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v65);
        _os_log_impl(&dword_245F8A000, v48, v49, "ObjectCaptureSession.%{private}s: Manual shot is not allowed. Could be either not in scanning mode, or max number of images reached on device and no over capture enabled, or no mesh anchor has been received in area mode!", v50, 0xCu);
        sub_245F8E6F4(v51);
        MEMORY[0x24C1989D0](v51, -1, -1);
        MEMORY[0x24C1989D0](v50, -1, -1);
      }

      goto LABEL_22;
    }

    v63 = v4;
    v31 = *(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
    if (v31)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = a2;

      v33 = a2;
      v34 = sub_245FCCC80();
      v35 = (*(*v31 + 488))(v34 & 1, sub_246082E24, v32);

      if (v35)
      {
        v36 = v59;
        (v20)(v59, v64, v3);
        v37 = sub_2460918D4();
        v38 = sub_246091FC4();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v65 = v40;
          *v39 = 136380675;
          *(v39 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v65);
          v41 = "ObjectCaptureSession.%{private}s: Manual capture succeeded.";
LABEL_20:
          _os_log_impl(&dword_245F8A000, v37, v38, v41, v39, 0xCu);
          sub_245F8E6F4(v40);
          MEMORY[0x24C1989D0](v40, -1, -1);
          MEMORY[0x24C1989D0](v39, -1, -1);
        }
      }

      else
      {
        v36 = v60;
        (v20)(v60, v64, v3);
        v37 = sub_2460918D4();
        v38 = sub_246091FB4();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v65 = v40;
          *v39 = 136380675;
          *(v39 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v65);
          v41 = "ObjectCaptureSession.%{private}s: Manual capture failed!";
          goto LABEL_20;
        }
      }

LABEL_22:
      v47 = v36;
      goto LABEL_23;
    }

    v52 = v61;
    (v20)(v61, v64, v3);
    v53 = sub_2460918D4();
    v54 = sub_246091FB4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v65 = v56;
      *v55 = 136380675;
      *(v55 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v65);
      _os_log_impl(&dword_245F8A000, v53, v54, "ObjectCaptureSession.%{private}s: Failed to take manual shot, capture manager has not been initialized!", v55, 0xCu);
      sub_245F8E6F4(v56);
      MEMORY[0x24C1989D0](v56, -1, -1);
      MEMORY[0x24C1989D0](v55, -1, -1);
    }

    v47 = v52;
  }

  else
  {
    sub_246077B30(v65);
    sub_246077B30(0xF);
    (v20)(v7, v64, v3);
    v42 = sub_2460918D4();
    v43 = sub_246091FB4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v7;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65 = v46;
      *v45 = 136380675;
      *(v45 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v65);
      _os_log_impl(&dword_245F8A000, v42, v43, "ObjectCaptureSession.%{private}s: Received manual shot request outside of capturing mode, ignoring the request!", v45, 0xCu);
      sub_245F8E6F4(v46);
      MEMORY[0x24C1989D0](v46, -1, -1);
      MEMORY[0x24C1989D0](v45, -1, -1);

      v47 = v44;
    }

    else
    {

      v47 = v7;
    }
  }

LABEL_23:
  v29(v47, v3);
  return sub_246041B40();
}

uint64_t sub_246041B40()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2460917D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_246096460;
  sub_2460917B4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12 * 1000.0;
  v13 = sub_246091C24();
  v15 = v14;
  v16 = sub_245FA3174();
  (*(v1 + 16))(v4, v16, v0);

  v17 = sub_2460918D4();
  v18 = sub_246091FA4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v0;
    v20 = v19;
    v21 = swift_slowAlloc();
    v26 = v5;
    v22 = v21;
    v28 = v21;
    *v20 = 136446210;
    v23 = sub_245F8D3C0(v13, v15, &v28);

    *(v20 + 4) = v23;
    _os_log_impl(&dword_245F8A000, v17, v18, "=== ObjectCaptureSession takeManualShot() takes time = %{public}s ms", v20, 0xCu);
    sub_245F8E6F4(v22);
    MEMORY[0x24C1989D0](v22, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);

    (*(v1 + 8))(v4, v27);
    return (*(v6 + 8))(v9, v26);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_246041E64()
{
  v1 = v0;
  v2 = sub_2460919F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091A64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2460918F4();
  v12 = *(v33 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v33);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x4A8))(v14);
  if (result)
  {
    __break(1u);
  }

  else
  {
    v29 = v11;
    v30 = v8;
    v31 = v6;
    v32 = v7;
    v18 = sub_245FA3174();
    (*(v12 + 16))(v16, v18, v33);
    v19 = sub_2460918D4();
    v20 = sub_246091FC4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136380931;
      *(v21 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2660, aBlock);
      *(v21 + 12) = 2081;
      *(v21 + 14) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2660, aBlock);
      _os_log_impl(&dword_245F8A000, v19, v20, "ObjectCaptureSession.%{private}s: Called %{private}s.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    (*(v12 + 8))(v16, v33);
    v23 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    aBlock[4] = sub_24607A5DC;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E0E78;
    v25 = _Block_copy(aBlock);
    v26 = v1;
    v27 = v29;
    sub_246091A14();
    v34 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    v28 = v31;
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v27, v28, v25);
    _Block_release(v25);
    (*(v3 + 8))(v28, v2);
    (*(v30 + 8))(v27, v32);
  }

  return result;
}

uint64_t sub_246042354(char *a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = (&v46 - v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = sub_245FA3174();
  v13 = v3[2];
  v13(v11, v12, v2);
  v14 = sub_2460918D4();
  v15 = sub_246091FA4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v47 = v2;
    v49 = v3;
    v17 = v16;
    v18 = v6;
    v19 = swift_slowAlloc();
    v51 = v19;
    *v17 = 136380675;
    *(v17 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2660, &v51);
    _os_log_impl(&dword_245F8A000, v14, v15, "ObjectCaptureSession.%{private}s: Enter scheduled resetCapturePoseGraph() block.", v17, 0xCu);
    sub_245F8E6F4(v19);
    v20 = v19;
    v6 = v18;
    MEMORY[0x24C1989D0](v20, -1, -1);
    v21 = v17;
    v3 = v49;
    v2 = v47;
    MEMORY[0x24C1989D0](v21, -1, -1);
  }

  v22 = v3[1];
  v22(v11, v2);
  if (sub_246044794())
  {
    v23 = *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager];
    if (v23)
    {
      v24 = *(*v23 + 520);
      v25 = *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager];

      v24(v26);
    }

    v6 = v48;
    v13(v48, v12, v2);
    v41 = sub_2460918D4();
    v42 = sub_246091FB4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v6;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *v44 = 136380675;
      *(v44 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2660, &v51);
      _os_log_impl(&dword_245F8A000, v41, v42, "ObjectCaptureSession.%{private}s: Failed to reset pose graph, capture manager has not been initialized", v44, 0xCu);
      sub_245F8E6F4(v45);
      MEMORY[0x24C1989D0](v45, -1, -1);
      MEMORY[0x24C1989D0](v44, -1, -1);

      v40 = v43;
      return (v22)(v40, v2);
    }

LABEL_12:
    v40 = v6;
    return (v22)(v40, v2);
  }

  v13(v6, v12, v2);
  v28 = a1;
  v29 = sub_2460918D4();
  v30 = sub_246091FB4();

  if (!os_log_type_enabled(v29, v30))
  {

    goto LABEL_12;
  }

  v31 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v51 = v48;
  *v31 = 136381187;
  *(v31 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2660, &v51);
  *(v31 + 12) = 2082;
  (*((*MEMORY[0x277D85000] & *v28) + 0x410))(&v50);
  v32 = sub_246091C54();
  v47 = v6;
  v34 = sub_245F8D3C0(v32, v33, &v51);
  v49 = v3;
  v35 = v34;

  *(v31 + 14) = v35;
  *(v31 + 22) = 2082;
  v50 = *&v28[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause];
  sub_2460818E4(v50);
  v36 = sub_246091C54();
  v38 = sub_245F8D3C0(v36, v37, &v51);

  *(v31 + 24) = v38;
  _os_log_impl(&dword_245F8A000, v29, v30, "ObjectCaptureSession.%{private}s: Capture pose graph reset disallowed in state %{public}s (stateOnPause = %{public}s", v31, 0x20u);
  v39 = v48;
  swift_arrayDestroy();
  MEMORY[0x24C1989D0](v39, -1, -1);
  MEMORY[0x24C1989D0](v31, -1, -1);

  v40 = v47;
  return (v22)(v40, v2);
}

uint64_t sub_2460428E8(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v22 = a3;
  v23 = a4;
  v20 = a1;
  v21 = a2;
  v5 = sub_2460919F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_246091A64();
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v25);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  v15 = v21;
  *(v14 + 16) = v20;
  *(v14 + 32) = v15;
  v16 = v23;
  *(v14 + 48) = v22;
  *(v14 + 64) = v16;
  *(v14 + 80) = v4;
  aBlock[4] = sub_24607A61C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E0EC8;
  v17 = _Block_copy(aBlock);
  v18 = v4;
  sub_246091A14();
  v26 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v13, v9, v17);
  _Block_release(v17);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v25);
}

void sub_246042BD0(void *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, int8x16_t a5)
{
  v28 = a4;
  v29 = a5;
  v26 = a2;
  v27 = a3;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246021E38(v26, v27, v28, v29);
  if (v11)
  {
    OCBoundingBox.init(transform:)(&v30, v11);
    v12 = v30.transform.columns[1];
    v13 = v30.transform.columns[2];
    v14 = v30.transform.columns[3];
    v31 = 0;
    v15 = (a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox);
    *v15 = v30.transform.columns[0];
    v15[1] = v12;
    v15[2] = v13;
    v15[3] = v14;
    v15[4].i8[0] = 0;
    v16 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager);
    if (v16)
    {
      v17 = *((*MEMORY[0x277D85000] & *a1) + 0x4A8);
      v18 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager);

      if (v17(v19))
      {
        v20 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions);
        if (v20 == 2)
        {
LABEL_13:
          __break(1u);
          return;
        }

        if ((v20 & 0x100) != 0)
        {
          (*(*v16 + 392))(v26, v27, v28, v29);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    v21 = sub_245FA3174();
    (*(v7 + 16))(v10, v21, v6);
    v22 = sub_2460918D4();
    v23 = sub_246091FB4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30.transform.columns[0].i64[0] = v25;
      *v24 = 136380675;
      *(v24 + 4) = sub_245F8D3C0(0xD000000000000026, 0x80000002460A4870, &v30);
      _os_log_impl(&dword_245F8A000, v22, v23, "ObjectCaptureSession.%{private}s: Invalid bounding box in area mode!", v24, 0xCu);
      sub_245F8E6F4(v25);
      MEMORY[0x24C1989D0](v25, -1, -1);
      MEMORY[0x24C1989D0](v24, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_246042E9C()
{
  if (*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown + 8) != 1)
  {
    return *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown);
  }

  v1 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
  if (!v1)
  {
    return 0;
  }

  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x4A8);
  v3 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);

  v5 = v2(v4);
  v6 = (*(*v1 + 560))(v5 & 1);

  return *&v6;
}

uint64_t sub_246042FA0()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v70 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v66 = &v65 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v65 - v7;
  v9 = sub_2460917D4();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_246096460;
  v67 = v12;
  sub_2460917B4();
  v14 = MEMORY[0x277D83A80];
  *(v13 + 56) = MEMORY[0x277D839F8];
  *(v13 + 64) = v14;
  *(v13 + 32) = v15 * 1000.0;
  v16 = sub_246091C24();
  v18 = v17;
  v19 = sub_245FA3174();
  v20 = v1[2];
  v73 = v19;
  v74 = (v1 + 2);
  v72 = v20;
  (v20)(v8);

  v21 = sub_2460918D4();
  v22 = sub_246091FA4();

  v23 = os_log_type_enabled(v21, v22);
  v71 = v1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v77 = v25;
    *v24 = 136380931;
    *(v24 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, &v77);
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_245F8D3C0(v16, v18, &v77);
    _os_log_impl(&dword_245F8A000, v21, v22, "ObjectCaptureSession.%{private}s: takes time = %{public}s ms", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v25, -1, -1);
    MEMORY[0x24C1989D0](v24, -1, -1);

    v26 = v71[1];
  }

  else
  {

    v26 = v1[1];
  }

  v26(v8, v0);
  v27 = sub_246091BD4();
  v28 = objc_opt_self();
  v29 = [v28 bundleWithIdentifier_];

  if (v29)
  {
    v30 = [v29 infoDictionary];

    if (v30)
    {
      v31 = sub_246091B64();

      if (*(v31 + 16) && (v32 = sub_245F8D968(0x656C646E75424643, 0xEF6E6F6973726556), (v33 & 1) != 0))
      {
        sub_245F8E5C8(*(v31 + 56) + 32 * v32, &v77);

        if (swift_dynamicCast())
        {
          v35 = v75;
          v34 = v76;
          goto LABEL_12;
        }
      }

      else
      {
      }
    }
  }

  v34 = 0xE500000000000000;
  v35 = 0x302E302E30;
LABEL_12:
  result = OCModulesGitHash();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v37 = sub_246091CE4();
  v39 = v38;
  v77 = v35;
  v78 = v34;

  MEMORY[0x24C196640](46, 0xE100000000000000);

  MEMORY[0x24C196640](v37, v39);

  v40 = v77;
  v41 = v78;
  v42 = v66;
  v72(v66, v73, v0);

  v43 = sub_2460918D4();
  v44 = sub_246091FA4();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v77 = v46;
    *v45 = 136380931;
    *(v45 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, &v77);
    *(v45 + 12) = 2082;
    v47 = sub_245F8D3C0(v40, v41, &v77);

    *(v45 + 14) = v47;
    _os_log_impl(&dword_245F8A000, v43, v44, "ObjectCaptureSession.%{private}s: CoreOCModules version: %{public}s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v46, -1, -1);
    MEMORY[0x24C1989D0](v45, -1, -1);
  }

  else
  {
  }

  v26(v42, v0);
  type metadata accessor for ObjectCaptureSession(0);
  v48 = [v28 bundleForClass_];
  v49 = [v48 infoDictionary];

  v50 = v70;
  if (!v49)
  {
    goto LABEL_22;
  }

  v51 = sub_246091B64();

  if (!*(v51 + 16) || (v52 = sub_245F8D968(0x656C646E75424643, 0xEF6E6F6973726556), (v53 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_245F8E5C8(*(v51 + 56) + 32 * v52, &v77);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v55 = 0xE500000000000000;
    v54 = 0x302E302E30;
    goto LABEL_23;
  }

  v54 = v75;
  v55 = v76;
LABEL_23:
  v56 = OCGitHash()();
  v77 = v54;
  v78 = v55;

  MEMORY[0x24C196640](46, 0xE100000000000000);

  MEMORY[0x24C196640](v56._countAndFlagsBits, v56._object);

  v57 = v77;
  v58 = v78;
  v72(v50, v73, v0);

  v59 = sub_2460918D4();
  v60 = sub_246091FA4();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v74 = v26;
    v63 = v62;
    v77 = v62;
    *v61 = 136380931;
    *(v61 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, &v77);
    *(v61 + 12) = 2082;
    v64 = sub_245F8D3C0(v57, v58, &v77);

    *(v61 + 14) = v64;
    _os_log_impl(&dword_245F8A000, v59, v60, "ObjectCaptureSession.%{private}s: CoreOC version:  %{public}s", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v63, -1, -1);
    MEMORY[0x24C1989D0](v61, -1, -1);

    v74(v50, v0);
  }

  else
  {

    v26(v50, v0);
  }

  sub_245F92E28();
  return (*(v68 + 8))(v67, v69);
}

uint64_t sub_246043938()
{
  v0 = sub_2460919F4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_246082354;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E2B98;
  _Block_copy(aBlock);
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);

  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  v3 = sub_246091AE4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_246091AC4();

  return v6;
}

id sub_246043C14(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7();
  return objc_msgSendSuper2(&v12, sel_initWithTransform_, a2, a3, a4, a5);
}

id sub_246043C80(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v14.receiver = a1;
  v14.super_class = a8();
  return objc_msgSendSuper2(&v14, sel_initWithName_transform_, a7, a2, a3, a4, a5);
}

id sub_246043CF4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6.receiver = a1;
  v6.super_class = a4();
  return objc_msgSendSuper2(&v6, sel_initWithAnchor_, a3);
}

id sub_246043D58(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_246043DEC(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v21 = a4;
  v22 = a5;
  v19 = a2;
  v20 = a3;
  v10 = sub_246091834();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_246091814();
  v15 = sub_246091804();
  v16 = a8();
  v23.receiver = a1;
  v23.super_class = v16;
  v17 = objc_msgSendSuper2(&v23, sel_initWithIdentifier_transform_, v15, v19.n128_f64[0], v20.n128_f64[0], v21.n128_f64[0], v22.n128_f64[0]);

  (*(v11 + 8))(v14, v10);
  return v17;
}

id sub_246043F28(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, void *a8, uint64_t (*a9)(void))
{
  v24 = a4;
  v25 = a5;
  v22 = a2;
  v23 = a3;
  v12 = sub_246091834();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_246091814();
  v17 = a8;
  v18 = sub_246091804();
  v19 = a9();
  v26.receiver = a1;
  v26.super_class = v19;
  v20 = objc_msgSendSuper2(&v26, sel_initWithIdentifier_transform_name_, v18, v17, v22.n128_f64[0], v23.n128_f64[0], v24.n128_f64[0], v25.n128_f64[0]);

  (*(v13 + 8))(v16, v12);
  return v20;
}

id sub_246044068(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, char a8, uint64_t (*a9)(uint64_t))
{
  v11 = v9;
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a3;
  v15 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  sub_245F8E7A4(a1, &v27 - v17, &qword_27EE3A350, &unk_2460969A0);
  v19 = sub_246091834();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v18, 1, v19);
  v22 = 0;
  if (v21 != 1)
  {
    v22 = sub_246091804();
    v21 = (*(v20 + 8))(v18, v19);
  }

  if (a7)
  {
    v23 = sub_246091BD4();
  }

  else
  {
    v23 = 0;
  }

  v24 = a9(v21);
  v31.receiver = v11;
  v31.super_class = v24;
  v25 = objc_msgSendSuper2(&v31, sel_initWithIdentifier_transform_name_hiddenFromPublicDelegate_, v22, v23, a8 & 1, v27.n128_f64[0], v28.n128_f64[0], v29.n128_f64[0], v30.n128_f64[0]);

  sub_245F8E744(a1, &qword_27EE3A350, &unk_2460969A0);
  return v25;
}

id sub_24604424C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t (*a10)(uint64_t))
{
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  v14 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  if (a7)
  {
    sub_246091814();
    v18 = sub_246091834();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  else
  {
    v19 = sub_246091834();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  if (a8)
  {
    v20 = sub_246091C04();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  return sub_246044068(v17, v24, v25, v26, v27, v20, v22, a9, a10);
}

id sub_2460443C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2460444BC()
{
  type metadata accessor for PGManager();
  result = sub_245FD4A28();
  byte_27EE3DC18 = result & 1;
  return result;
}

uint64_t sub_2460444F4()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x410);
  v1(&v6);
  if (v6 == 11)
  {
    sub_246077B30(0xB);
    v2 = 11;
LABEL_7:
    sub_246077B30(v2);
    return 1;
  }

  sub_246077B30(v6);
  sub_246077B30(0xB);
  v1(&v6);
  if (v6 == 12)
  {
    sub_246077B30(0xC);
    v2 = 12;
    goto LABEL_7;
  }

  sub_246077B30(v6);
  sub_246077B30(0xC);
  v1(&v6);
  if (v6 == 14)
  {
    sub_246077B30(0xE);
    v2 = 14;
    goto LABEL_7;
  }

  sub_246077B30(v6);
  sub_246077B30(0xE);
  v1(&v6);
  v4 = v6;
  v5 = v6 == 15;
  if (v6 != 15)
  {
    sub_2460818E4(v6);
  }

  sub_246077B30(v4);
  sub_246077B30(0xF);
  sub_246077B30(v4);
  return v5;
}

uint64_t sub_246044638()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x410))(v6);
  if (v6[0] != 15)
  {
    sub_246077B30(v6[0]);
    sub_246077B30(0xF);
LABEL_8:
    v4 = 0;
    return v4 & 1;
  }

  sub_246077B30(0xF);
  sub_246077B30(0xF);
  v2 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
  swift_beginAccess();
  v3 = *(*(v0 + v2) + 16);
  if (qword_27EE3DC00 != -1)
  {
    swift_once();
  }

  if (v3 >= qword_27EE3DC08 && *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_configuration) != 1)
  {
    goto LABEL_8;
  }

  v4 = (*((*v1 & *v0) + 0x4A8))() ^ *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformCanAutoCaptureStart) ^ 1;
  return v4 & 1;
}

uint64_t sub_246044794()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x410);
  v1(&v5);
  if (v5 == 15)
  {
    goto LABEL_2;
  }

  sub_246077B30(v5);
  sub_246077B30(0xF);
  v1(&v5);
  if (v5 == 13)
  {
    sub_246077B30(0xD);
    sub_246077B30(0xD);
    v3 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause);
    if (v3 == 15)
    {
      sub_246077B30(0xF);
LABEL_2:
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      return 1;
    }

    sub_2460818E4(*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause));
    sub_2460818E4(v3);
    sub_246077B30(v3);
    sub_246077B30(0xF);
    v4 = v3;
  }

  else
  {
    sub_246077B30(v5);
    v4 = 13;
  }

  sub_246077B30(v4);
  return 0;
}

uint64_t sub_2460448B0()
{
  v1 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  if (qword_27EE3DC10 != -1)
  {
    swift_once();
  }

  if (byte_27EE3DC18 != 1)
  {
    goto LABEL_7;
  }

  v5 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMUserDefaultValue);
  if (v5 == 2)
  {
    if (*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMEnabled) != 1 || (v6 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_snapshotURL, swift_beginAccess(), sub_245F8E7A4(v0 + v6, v4, &qword_27EE3A498, &unk_246097EB8), v7 = sub_246091704(), LODWORD(v6) = (*(*(v7 - 8) + 48))(v4, 1, v7), sub_245F8E744(v4, &qword_27EE3A498, &unk_246097EB8), v6 == 1))
    {
LABEL_7:
      LOBYTE(v5) = 0;
      return v5 & 1;
    }

    if (*sub_2460208E4())
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMiPhoneOverride);
    }
  }

  return v5 & 1;
}

void sub_246044A5C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition;
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v3;
  *(v2 + 16) = *(a1 + 32);
  if ((*(a1 + 33) & 1) == 0)
  {
    v4 = *((*MEMORY[0x277D85000] & *v1) + 0x410);
    v4(&v6);
    if (v6 == 12)
    {
      sub_246077B30(0xC);
      v5 = 12;
LABEL_6:
      sub_246077B30(v5);
      *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldRestartVoxelIntegration) = 1;
      return;
    }

    sub_246077B30(v6);
    sub_246077B30(0xC);
    v4(&v6);
    if (v6 == 14)
    {
      sub_246077B30(0xE);
      v5 = 14;
      goto LABEL_6;
    }

    sub_246077B30(v6);
    sub_246077B30(0xE);
  }
}

void sub_246044B58(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox;
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v3;
  v4 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v4;
  v5 = *(a1 + 64);
  v2[64] = v5;
  if ((v5 & 1) == 0)
  {
    v8 = *(v2 + 1);
    v9 = *v2;
    v6 = *(v2 + 3);
    v7 = *(v2 + 2);
    (*((*MEMORY[0x277D85000] & *v1) + 0x410))(v10);
    if (*&v10[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      v10[0] = v9;
      v10[1] = v8;
      v10[2] = v7;
      v10[3] = v6;
      sub_24608585C(*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID));
    }

    else
    {
      sub_246077B30(*&v10[0]);
      sub_246077B30(0xF);
    }
  }
}

uint64_t sub_246044C40()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession);
    v9 = v7;
    [v8 addAnchor_];
    v10 = sub_245FA3174();
    (*(v2 + 16))(v6, v10, v1);
    v11 = v9;
    v12 = sub_2460918D4();
    v13 = sub_246091FC4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v14 = 136380931;
      *(v14 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A3140, &v26);
      *(v14 + 12) = 2082;
      [v11 transform];
      v19 = sub_246020FBC(v15, v16, v17, v18);
      v20 = MEMORY[0x24C196760](v19);
      v22 = v21;

      v23 = sub_245F8D3C0(v20, v22, &v26);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_245F8A000, v12, v13, "ObjectCaptureSession.%{private}s: Added bounding box anchor: %{public}s", v14, 0x16u);
      v24 = v25;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v14, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

uint64_t sub_246044F20(const void *a1)
{
  v3 = sub_2460919F4();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_246091A64();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v20, a1, 0x191uLL);
  v15[1] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  memcpy((v11 + 32), a1, 0x191uLL);
  v19[4] = sub_246081FB0;
  v19[5] = v11;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_245F913A4;
  v19[3] = &unk_2858E2A58;
  v12 = _Block_copy(v19);
  v13 = v1;
  sub_245FCFDFC(v20, v18);
  sub_246091A14();
  v18[0] = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v10, v6, v12);
  _Block_release(v12);
  (*(v17 + 8))(v6, v3);
  (*(v7 + 8))(v10, v16);
}

uint64_t sub_24604522C(const void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2460919F4();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091A64();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_246091834();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v54 = v15;
  v55 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = sub_2460918F4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v64, a1, 0x191uLL);
  v24 = sub_245FA3174();
  v53 = v20;
  (*(v20 + 16))(v23, v24, v19);
  v52 = *(v13 + 16);
  v52(v18, a2, v12);
  v25 = sub_2460918D4();
  v51 = sub_246091FA4();
  if (os_log_type_enabled(v25, v51))
  {
    v26 = swift_slowAlloc();
    v50 = a2;
    v27 = v26;
    v49 = swift_slowAlloc();
    v62[0] = v49;
    *v27 = 136380931;
    *(v27 + 4) = sub_245F8D3C0(0xD000000000000020, 0x80000002460A4440, v62);
    *(v27 + 12) = 2082;
    sub_246077C40(&unk_27EE3A310, MEMORY[0x277CC95F0]);
    v47 = v25;
    v28 = sub_2460923D4();
    v48 = v19;
    v29 = v3;
    v31 = v30;
    (*(v13 + 8))(v18, v12);
    v32 = sub_245F8D3C0(v28, v31, v62);
    v3 = v29;

    *(v27 + 14) = v32;
    v33 = v47;
    _os_log_impl(&dword_245F8A000, v47, v51, "ObjectCaptureSession.%{private}s: Pushed oc capture data (stillImage) with identifier = %{public}s", v27, 0x16u);
    v34 = v49;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v34, -1, -1);
    v35 = v27;
    a2 = v50;
    MEMORY[0x24C1989D0](v35, -1, -1);

    (*(v53 + 8))(v23, v48);
  }

  else
  {

    (*(v13 + 8))(v18, v12);
    (*(v53 + 8))(v23, v19);
  }

  v36 = *&v3[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v37 = v55;
  v52(v55, a2, v12);
  v38 = (*(v13 + 80) + 433) & ~*(v13 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v3;
  memcpy((v39 + 32), v64, 0x191uLL);
  (*(v13 + 32))(v39 + v38, v37, v12);
  v63[4] = sub_246081DF4;
  v63[5] = v39;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 1107296256;
  v63[2] = sub_245F913A4;
  v63[3] = &unk_2858E2A08;
  v40 = _Block_copy(v63);
  v41 = v3;
  sub_245FCFDFC(v64, v62);
  v42 = v56;
  sub_246091A14();
  v62[0] = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  v43 = v59;
  v44 = v61;
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v42, v43, v40);
  _Block_release(v40);
  (*(v60 + 8))(v43, v44);
  (*(v57 + 8))(v42, v58);
}

void sub_2460458D8(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v4 = v1;
  v6 = v5;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v262 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2460917D4();
  v291 = *(v12 - 8);
  v13 = *(v291 + 64);
  MEMORY[0x28223BE20](v12);
  Width = &v262 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v334, v6, 0x191uLL);
  v16 = *sub_24608FC40();
  v17 = OCSignPostsAriadneDbgCode();
  v288 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_traceDebugId;
  v18 = *(v4 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_traceDebugId);
  v19 = sub_24608FD3C();
  if ((*v19 & 0x8000000000000000) != 0)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if ((*(v4 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex) & 0x8000000000000000) != 0)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v289.i64[0] = v11;
  v292.n128_u64[0] = v7;
  v293 = v12;
  v286 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex;
  v287 = v19;
  kdebug_trace();
  v294 = Width;
  sub_2460917A4();
  v20 = *(&v334[0] + 1);
  v3 = *v334;
  v21 = v334[1];
  sub_246077AC8(v335);
  *&v331[88] = v335[5];
  *&v331[104] = v335[6];
  *&v331[120] = v335[7];
  *&v331[136] = v335[8];
  *&v331[24] = v335[1];
  *&v331[40] = v335[2];
  *&v331[56] = v335[3];
  *&v331[72] = v335[4];
  *&v331[8] = v335[0];
  sub_246077AE8(v336);
  memcpy(v344, v336, 0x2B0uLL);
  memcpy(v339, &v334[7], sizeof(v339));
  memset(v343, 0, 72);
  memset(&v343[5], 0, 168);
  memset(&v343[16], 0, 168);
  memset(&v343[27], 0, 160);
  LODWORD(v343[37]) = -1082130432;
  *(&v343[37] + 8) = 0u;
  DWORD2(v343[38]) = 0;
  BYTE12(v343[38]) = 1;
  sub_24601E8F4(&v334[7], v342);
  sub_24601E8F4(&v334[7], v342);
  v22 = v21;
  v23 = v20;
  v24 = *(&v21 + 1);
  sub_24608BC2C(&v343[39]);
  *(&v343[42] + 1) = MEMORY[0x277D84F90];
  memcpy(v337, v343, sizeof(v337));
  nullsub_1(v337, v25);
  memcpy(v338, v344, sizeof(v338));
  sub_245F8E744(v338, &unk_27EE3A980, &unk_246099C10);
  *(&v340[25] + 8) = *&v331[96];
  *(&v340[26] + 8) = *&v331[112];
  *(&v340[27] + 8) = *&v331[128];
  *(&v340[21] + 8) = *&v331[32];
  *(&v340[22] + 8) = *&v331[48];
  *(&v340[23] + 8) = *&v331[64];
  *(&v340[24] + 8) = *&v331[80];
  *(&v340[19] + 8) = *v331;
  *(&v340[20] + 8) = *&v331[16];
  *(&v340[28] + 1) = *&v331[144];
  memcpy(&v340[36], v337, 0x2B0uLL);
  *v340 = v3;
  v290[0] = v23;
  *(&v340[0] + 1) = v23;
  v340[1] = v21;
  memcpy(&v340[2], v339, 0x118uLL);
  LODWORD(v340[29]) = 0;
  memset(&v340[29] + 8, 0, 104);
  nullsub_1(v340, 0);
  v26 = (v4 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
  swift_beginAccess();
  memcpy(v341, v26, sizeof(v341));
  v2 = v26;
  memcpy(v26, v340, 0x4F0uLL);
  sub_245F8E744(v341, &qword_27EE3A9F0, &qword_246099CE0);
  v27 = v4;
  v28 = sub_2460443FC();
  v30 = v29;
  memmove(v342, v29, 0x4F0uLL);
  if (sub_246081984(v342) == 1)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v31 = (v30 + 576);
  memmove(v332, v31, 0x2B0uLL);
  if (sub_246081ACC(v332) != 1)
  {
    v32 = v31[3];
    v344[2] = v31[2];
    v344[3] = v32;
    *&v344[4] = *(v31 + 8);
    v33 = *v31;
    v344[1] = v31[1];
    v344[0] = v33;
    v34 = v334[5];
    v31[2] = v334[4];
    v31[3] = v34;
    *(v31 + 8) = *&v334[6];
    v35 = v334[3];
    *v31 = v334[2];
    v31[1] = v35;
    sub_245F8E7A4(&v334[2], v343, &qword_27EE3B1B0, &unk_246099D60);
    sub_245F8E744(v344, &qword_27EE3B1B0, &unk_246099D60);
  }

  (v28)(v331, 0);
  v4 = v293;
  v36 = sub_2460443FC();
  v38 = v37;
  memmove(v331, v37, 0x4F0uLL);
  if (sub_246081984(v331) == 1)
  {
    goto LABEL_184;
  }

  memmove(v330, v38 + 72, 0x2B0uLL);
  if (sub_246081ACC(v330) != 1)
  {
    v39 = *(&v334[24] + 1);
    v40 = v38[147];
    v38[147] = *(&v334[24] + 1);
    v41 = v39;
  }

  (v36)(v344, 0);
  LOBYTE(v344[0]) = v334[14];
  LOBYTE(v343[0]) = 5;
  sub_246081AE4();
  if ((sub_246091BB4() & 1) == 0)
  {
    sub_24601E950(&v334[7]);
    v46 = sub_245FA3174();
    v47 = v289.i64[0];
    v48 = v292.n128_u64[0];
    (*(v8 + 16))(v289.i64[0], v46, v292.n128_u64[0]);
    v49 = sub_2460918D4();
    v50 = sub_246091FA4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v2;
      v53 = swift_slowAlloc();
      *&v344[0] = v53;
      *v51 = 136380675;
      *(v51 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A4270, v344);
      _os_log_impl(&dword_245F8A000, v49, v50, "ObjectCaptureSession.%{private}s: Camera tracking is not normal!", v51, 0xCu);
      sub_245F8E6F4(v53);
      v54 = v53;
      v2 = v52;
      MEMORY[0x24C1989D0](v54, -1, -1);
      MEMORY[0x24C1989D0](v51, -1, -1);

      (*(v8 + 8))(v47, v292.n128_u64[0]);
    }

    else
    {

      (*(v8 + 8))(v47, v48);
    }

    Width = v294;
    v62 = *(v27 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers);
    sub_24606B888();
    memcpy(v343, v2, sizeof(v343));
    memcpy(v344, v2, sizeof(v344));
    if (sub_246081984(v344) != 1)
    {
      memcpy(v327, v344, sizeof(v327));
      memcpy(v328, v343, sizeof(v328));
      sub_246081B38(v328, v329);
      sub_246091924();

      memcpy(v329, v327, sizeof(v329));
      sub_246081B70(v329);
      v63 = v27;
      goto LABEL_172;
    }

    goto LABEL_185;
  }

  v11 = v27;
  v8 = MEMORY[0x277D85000];
  v42 = (*MEMORY[0x277D85000] & *v27) + 1040;
  v289.i64[0] = *((*MEMORY[0x277D85000] & *v27) + 0x410);
  v292.n128_u64[0] = v42;
  (v289.i64[0])(v344);
  if (*&v344[0] == 11)
  {
    sub_246077B30(0xB);
    sub_246077B30(0xB);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_246091984();

    v43 = *&v344[0];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v344[0] = 12;
    v44 = v27;
    sub_246091994();
    *&v344[0] = v43;
    sub_246036D70(v344);
    v45 = v43;
  }

  else
  {
    sub_246077B30(*&v344[0]);
    v45 = 11;
  }

  sub_246077B30(v45);
  v12 = v2;
  v284.n128_u64[0] = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager;
  if (*(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager) || ((*((*v8 & *v11) + 0x4A8))() & 1) == 0)
  {
    goto LABEL_25;
  }

  (v289.i64[0])(v344);
  if (*&v344[0] != 15)
  {
    sub_246077B30(*&v344[0]);
    sub_246077B30(0xF);
    goto LABEL_25;
  }

  sub_246077B30(0xF);
  sub_246077B30(0xF);
  if (*(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8))
  {
    __break(1u);
    goto LABEL_183;
  }

  v55 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl);
  if (!v55)
  {
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
    return;
  }

  v2 = v4;
  v56 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp);
  type metadata accessor for CaptureManager();
  LOBYTE(v344[0]) = 1;
  memset(v333, 0, 64);
  v333[64] = 1;
  v57 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager);
  v58 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);

  v59 = v58;

  v60 = sub_245FCBC94(v333, v55, v57, v59, v56);
  v61 = *(v11 + v284.n128_u64[0]);
  *(v11 + v284.n128_u64[0]) = v60;

  v4 = v2;
LABEL_25:
  if (((*((*v8 & *v11) + 0x4A8))() & 1) == 0)
  {
    memcpy(v329, v334, 0x191uLL);
    sub_24604860C(v329);
    memcpy(v329, v334, 0x191uLL);
    sub_246048D64(v329);
    sub_246049464(v64);
    memcpy(v343, v12, sizeof(v343));
    memcpy(v327, v12, 0x4A0uLL);
    v17 = *&v343[74];
    v65 = *(v12 + 1240);
    v319[2] = *(v12 + 1224);
    v319[3] = v65;
    *&v319[4] = *(v12 + 1256);
    v66 = *(v12 + 1192);
    v319[1] = *(v12 + 1208);
    v319[0] = v66;
    memcpy(v344, v12, 0x4A0uLL);
    v67 = *(v12 + 1240);
    *(&v344[76] + 8) = *(v12 + 1224);
    *(&v344[77] + 8) = v67;
    v68 = *(v12 + 1208);
    *(&v344[74] + 8) = *(v12 + 1192);
    *(&v344[75] + 8) = v68;
    *(&v344[78] + 1) = *(v12 + 1256);
    *&v344[74] = *&v343[74];
    if (sub_246081984(v344) != 1)
    {
      memcpy(v320, &v327[36], 0x260uLL);
      *(&v320[40] + 8) = v319[2];
      *(&v320[41] + 8) = v319[3];
      *(&v320[38] + 8) = v319[0];
      *(&v320[39] + 8) = v319[1];
      *(&v320[42] + 1) = *&v319[4];
      *&v320[38] = v17;
      if (sub_246081ACC(v320) == 1)
      {
        memcpy(v329, v327, 0x4A0uLL);
        *&v329[74] = v17;
        *(&v329[76] + 8) = v319[2];
        *(&v329[77] + 8) = v319[3];
        *(&v329[74] + 8) = v319[0];
        *(&v329[75] + 8) = v319[1];
        *(&v329[78] + 1) = *&v319[4];
        sub_245F8E7A4(v343, v328, &qword_27EE3A9F0, &qword_246099CE0);
        sub_246081B70(v329);
      }

      else
      {
        memcpy(v329, v327, 0x4A0uLL);
        *&v329[74] = v17;
        *(&v329[76] + 8) = v319[2];
        *(&v329[77] + 8) = v319[3];
        *(&v329[74] + 8) = v319[0];
        *(&v329[75] + 8) = v319[1];
        *(&v329[78] + 1) = *&v319[4];
        sub_245F8E7A4(v343, v328, &qword_27EE3A9F0, &qword_246099CE0);

        sub_246081B70(v329);
        if (v17)
        {
          v2 = v4;
          v69 = v290[0];
          Width = CVPixelBufferGetWidth(v290[0]);
          Height = CVPixelBufferGetHeight(v69);
          v7 = *(v17 + 2);
          if (v7)
          {
            v4 = Height;

            v71 = v17;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_32;
            }

            goto LABEL_181;
          }

          v71 = v17;
          goto LABEL_52;
        }
      }

      goto LABEL_36;
    }

    goto LABEL_191;
  }

LABEL_36:
  for (v285.i64[0] = 0; ; v285.i64[0] = *&v328[0])
  {
    if (*(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__explicitFeedbackEnabled) != 1)
    {
      goto LABEL_111;
    }

    v78 = v334[0];
    v281 = v334[8];
    v282 = v334[7];
    v279 = v334[10];
    v280 = v334[9];
    v277 = v334[12];
    v278 = v334[11];
    v276 = v334[13];
    v79 = *((*v8 & *v11) + 0x410);
    v79(v344);
    if (*&v344[0] == 12)
    {
      v274 = *(&v78 + 1);
      sub_246077B30(0xC);
      v80 = 12;
    }

    else
    {
      sub_246077B30(*&v344[0]);
      sub_246077B30(0xC);
      v79(v344);
      if (*&v344[0] == 14)
      {
        v274 = *(&v78 + 1);
        sub_246077B30(0xE);
        v80 = 14;
      }

      else
      {
        sub_246077B30(*&v344[0]);
        sub_246077B30(0xE);
        v79(v344);
        if (*&v344[0] != 15)
        {
          sub_246077B30(*&v344[0]);
          sub_246077B30(0xF);
          goto LABEL_111;
        }

        v274 = *(&v78 + 1);
        sub_246077B30(0xF);
        v80 = 15;
      }
    }

    sub_246077B30(v80);
    v2 = v4;
    v81 = *sub_24608FCE8();
    OCSignPostsAriadneDbgCode();
    v82 = kdebug_trace();
    v321[0] = 1;
    if (((*((*v8 & *v11) + 0x4A8))(v82) & 1) == 0)
    {
      v98 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform);
      v272 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 16);
      v273 = v98;
      v99 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 32);
      v270 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 48);
      v271 = v99;
      v97 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 64);
      v79(v320);
      if (*&v320[0] > 14 && *&v320[0] == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
      }

      else
      {
        sub_246077B30(*&v320[0]);
        sub_246077B30(0xF);
        v272 = 0u;
        v273 = 0u;
        v97 = v321[0];
        v270 = 0u;
        v271 = 0u;
      }

      v79(v344);
      if (*&v344[0] == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
        v100 = (v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox);
        if ((*(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64) & 1) == 0)
        {
          v85 = 0;
          v101 = v100[2];
          v266 = v100[3];
          v267 = v101;
          v102 = *v100;
          v268 = v100[1];
          v269 = v102;
LABEL_59:
          v275 = v12;
          v103 = v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud;
          swift_beginAccess();
          v104 = *(v103 + 3);
          v344[2] = *(v103 + 2);
          v344[3] = v104;
          v105 = *(v103 + 5);
          v344[4] = *(v103 + 4);
          v344[5] = v105;
          v106 = *(v103 + 1);
          v344[0] = *v103;
          v344[1] = v106;
          if (*&v344[0])
          {
            v93 = 0;
            v264 = v344[3];
            v265 = v344[2];
            v262 = v344[5];
            v263 = v344[4];
          }

          else
          {
            v264 = 0u;
            v265 = 0u;
            v93 = v321[0];
            v262 = 0u;
            v263 = 0u;
          }

          *(v329 + 8) = *(v103 + 8);
          v107 = *(v103 + 3);
          *&v329[0] = *&v344[0];
          *(&v329[1] + 1) = v107;
          v329[2] = v344[2];
          v329[3] = v344[3];
          v329[4] = v344[4];
          v329[5] = v344[5];
          sub_245F8E7A4(v344, v343, &qword_27EE3A978, &qword_246099C08);
          sub_245F8E744(v329, &qword_27EE3A978, &qword_246099C08);
          v108 = *(v103 + 3);
          v343[2] = *(v103 + 2);
          v343[3] = v108;
          v109 = *(v103 + 5);
          v343[4] = *(v103 + 4);
          v343[5] = v109;
          v110 = *(v103 + 1);
          v343[0] = *v103;
          v343[1] = v110;
          v111 = *&v343[0];
          if (*&v343[0])
          {

            v283.n128_u64[0] = v111;
          }

          else
          {
            v283.n128_u64[0] = 0;
          }

          *(&v328[2] + 8) = *(v103 + 40);
          *(&v328[3] + 8) = *(v103 + 56);
          *(&v328[4] + 8) = *(v103 + 72);
          v112 = *(v103 + 11);
          *&v328[0] = v111;
          *(&v328[5] + 1) = v112;
          *(v328 + 8) = *(v103 + 8);
          *(&v328[1] + 8) = *(v103 + 24);
          sub_245F8E7A4(v343, v327, &qword_27EE3A978, &qword_246099C08);
          sub_245F8E744(v328, &qword_27EE3A978, &qword_246099C08);
          v12 = v275;
          v94 = v272;
          v83 = v273;
          v96 = v270;
          v95 = v271;
          v86 = v268;
          v84 = v269;
          v88 = v266;
          v87 = v267;
          v90 = v264;
          v89 = v265;
          v92 = v262;
          v91 = v263;
          goto LABEL_66;
        }
      }

      else
      {
        sub_246077B30(*&v344[0]);
        sub_246077B30(0xF);
      }

      v268 = 0u;
      v269 = 0u;
      v85 = v321[0];
      v266 = 0u;
      v267 = 0u;
      goto LABEL_59;
    }

    v283.n128_u64[0] = 0;
    v83 = 0uLL;
    v84 = 0uLL;
    v85 = v321[0];
    v86 = 0uLL;
    v87 = 0uLL;
    v88 = 0uLL;
    v89 = 0uLL;
    v90 = 0uLL;
    v91 = 0uLL;
    v92 = 0uLL;
    v93 = v321[0];
    v94 = 0uLL;
    v95 = 0uLL;
    v96 = 0uLL;
    v97 = v321[0];
LABEL_66:
    v320[0] = v83;
    v320[1] = v94;
    v320[2] = v95;
    v320[3] = v96;
    LOBYTE(v320[4]) = v97;
    v319[0] = v84;
    v319[1] = v86;
    v319[2] = v87;
    v319[3] = v88;
    LOBYTE(v319[4]) = v85;
    v318[0] = v89;
    v318[1] = v90;
    v318[2] = v91;
    v318[3] = v92;
    LOBYTE(v318[4]) = v93;
    v113 = [*(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) configuration];
    if (!v113)
    {
      goto LABEL_192;
    }

    v114 = v113;
    v115 = [v113 videoFormat];

    v116 = [v115 device];
    v117 = &off_278E99000;
    [v116 ISO];
    *&v327[1] = 0;
    v327[0] = v274;
    v327[2] = v282;
    v327[3] = v281;
    v327[4] = v280;
    v327[5] = v279;
    v327[6] = v278;
    v327[7] = v277;
    v327[8] = v276;
    *&v327[9] = v78;
    DWORD2(v327[9]) = v118;
    v322 = sub_245FC6824();
    v323 = v119;
    v324[0] = 0;
    v325 = 0.0;
    __asm { FMOV            V0.2D, #-1.0 }

    v326 = _Q0;
    v125 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager);
    if (v125)
    {
      v126 = *(*v125 + 128);
      v127 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager);

      if (v126(v327, v283.n128_u64[0], v318, v319, v320, &v322, v324))
      {
        if (v322 == 1)
        {
          v128 = (v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v344, v128, sizeof(v344));
          if (sub_246081984(v344) == 1)
          {
            goto LABEL_203;
          }

          v129 = v128[59];
          if ((v129 & 1) == 0)
          {
            v128[59] = v129 | 1;
          }
        }

        if (BYTE1(v322) == 1)
        {
          v130 = (v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v344, v130, sizeof(v344));
          if (sub_246081984(v344) == 1)
          {
            goto LABEL_204;
          }

          v131 = v130[59];
          if ((v131 & 2) == 0)
          {
            v130[59] = v131 | 2;
          }
        }

        if (BYTE2(v322) == 1)
        {
          v132 = (v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v344, v132, sizeof(v344));
          if (sub_246081984(v344) == 1)
          {
            goto LABEL_205;
          }

          v133 = v132[59];
          if ((v133 & 0x20) == 0)
          {
            v132[59] = v133 | 0x20;
          }
        }

        if (BYTE4(v322) == 1)
        {
          v134 = (v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v344, v134, sizeof(v344));
          if (sub_246081984(v344) == 1)
          {
            goto LABEL_206;
          }

          v135 = v134[59];
          if ((v135 & 8) == 0)
          {
            v134[59] = v135 | 8;
          }
        }

        if (BYTE3(v322) == 1)
        {
          v136 = (v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v344, v136, sizeof(v344));
          if (sub_246081984(v344) == 1)
          {
            goto LABEL_207;
          }

          v137 = v136[59];
          if ((v137 & 4) == 0)
          {
            v136[59] = v137 | 4;
          }
        }

        if (BYTE5(v322) == 1)
        {
          v138 = (v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v344, v138, sizeof(v344));
          if (sub_246081984(v344) == 1)
          {
            goto LABEL_208;
          }

          v139 = v138[59];
          if ((v139 & 0x10) == 0)
          {
            v138[59] = v139 | 0x10;
          }
        }

        v140 = v323;
        if (*(v323 + 16) < 3uLL)
        {
        }

        else
        {
          v141 = sub_2460443FC();
          v143 = v142;
          memmove(v344, v142, 0x4F0uLL);
          if (sub_246081984(v344) == 1)
          {
            goto LABEL_209;
          }

          memmove(v329, v143 + 72, 0x2B0uLL);
          if (sub_246081ACC(v329) != 1)
          {
            v144 = v143[148];
            v143[148] = v140;
          }

          (v141)(v343, 0);
          v145 = sub_2460443FC();
          v147 = v146;
          memmove(v343, v146, 0x4F0uLL);
          if (sub_246081984(v343) == 1)
          {
            goto LABEL_210;
          }

          memmove(v328, v147 + 144, 0x2B0uLL);
          if (sub_246081ACC(v328) != 1)
          {
            v147[298] = v125[8];
            *(v147 + 1196) = 0;
          }

          (v145)(v317, 0);
        }

        v117 = &off_278E99000;
        *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectInFOVRatio) = v325;
        *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_centerOfObjectInFOV) = v326;
      }

      else
      {

        v117 = &off_278E99000;
      }
    }

    else
    {
    }

    v148 = *sub_24608FCF4();
    OCSignPostsAriadneDbgCode();
    kdebug_trace();
    if (*(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugExplicitFeedbackEnabled) == 1)
    {
      if (v324[0])
      {
        v149 = v325 * 100.0;
      }

      else
      {
        v149 = -100.0;
      }

      v150 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers);
      sub_24606BAE0();
      [v116 v117[170]];
      *&v344[0] = __PAIR64__(LODWORD(v149), v151);
      sub_246091924();
    }

    v4 = v2;
LABEL_111:
    v8 = v289.i64[0];
    (v289.i64[0])(v344);
    if (*&v344[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      v152 = (v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_centerOfObjectInFOV);
      v153 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_centerOfObjectInFOV);
      if (v153 < 0.0 || v153 > 1.0 || (v154 = v152[1], v154 < 0.0) || v154 > 1.0)
      {
        v166 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl;
        v167 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl);
        if (!v167)
        {
          goto LABEL_193;
        }

        v2 = v4;
        v168 = *(*v167 + 232);
        v169 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl);

        v168(v170, 0.5, 0.5);

        v171 = *(v11 + v166);
        if (!v171)
        {
          goto LABEL_194;
        }

        v172 = *(*v171 + 256);

        v172(v173, 0.5, 0.5);
      }

      else
      {
        v155 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl;
        v156 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl);
        if (!v156)
        {
          goto LABEL_200;
        }

        v157 = v12;
        v158 = *(*v156 + 232);
        v2 = (*v156 + 232);
        v159 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl);

        v158(v160, v153, v154);

        v161 = *(v11 + v155);
        if (!v161)
        {
          goto LABEL_201;
        }

        v162 = *v152;
        v163 = v152[1];
        v164 = *(*v161 + 256);

        v164(v165, v162, v163);
        v12 = v157;
        v8 = v289.i64[0];
      }

      if (*(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugCameraControl) == 1)
      {
        v275 = v12;
        v174 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers);
        sub_24606BB78();
        v175 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl;
        v176 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl);
        if (!v176)
        {
          goto LABEL_197;
        }

        v177 = v4;
        v178 = *(*v176 + 312);
        v179 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl);

        v181 = v178(v180);
        v183 = v182;

        v184 = *(v11 + v175);
        if (!v184)
        {
          goto LABEL_198;
        }

        v185 = *(*v184 + 120);
        v2 = (*v184 + 120);
        v186 = *(v11 + v175);

        v188 = v185(v187);
        v190 = v189;

        v191 = *(v11 + v175);
        if (!v191)
        {
          goto LABEL_199;
        }

        v192 = *(*v191 + 128);

        v194 = v192(v193);
        v196 = v195;

        *&v344[0] = v181;
        *(&v344[0] + 1) = v183;
        *&v344[1] = v188;
        *(&v344[1] + 1) = v190;
        *&v344[2] = v194;
        *(&v344[2] + 1) = v196;
        sub_246091924();

        v4 = v177;
        v12 = v275;
        v8 = v289.i64[0];
      }

      memcpy(v344, v334, 0x191uLL);
      sub_246049AA4(v344);
      sub_24604A090();
    }

    else
    {
      sub_246077B30(*&v344[0]);
      sub_246077B30(0xF);
    }

    v197 = (v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox);
    if (*(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64) & 1) != 0 || (v198 = (v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform), (*(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 64)))
    {
    }

    else
    {
      v199 = *v197;
      v2 = v197[1];
      v200 = v197[2];
      v201 = v197[3];
      v202 = v197[4];
      v203 = v197[5];
      v204 = v197[7];
      v283.n128_u64[0] = v197[6];
      v205 = *v198;
      v281 = v198[1];
      v282 = v205;
      v206 = v198[2];
      v279 = v198[3];
      v280 = v206;
      memcpy(v344, v12, sizeof(v344));
      if (sub_246081984(v344) == 1)
      {
        goto LABEL_196;
      }

      *(&v329[0] + 1) = v2;
      *&v329[0] = v199;
      *(&v329[1] + 1) = v201;
      *&v329[1] = v200;
      *(&v329[2] + 1) = v203;
      *&v329[2] = v202;
      *(&v329[3] + 1) = v204;
      *&v329[3] = v283.n128_u64[0];
      v329[4] = v282;
      v329[5] = v281;
      v329[6] = v280;
      v329[7] = v279;
      LOBYTE(v329[8]) = 4;
      *(&v329[8] + 1) = v285.i64[0];
      nullsub_1(v329, v279);
      v207 = *(v12 + 432);
      v343[6] = *(v12 + 416);
      v343[7] = v207;
      v343[8] = *(v12 + 448);
      v208 = *(v12 + 368);
      v343[2] = *(v12 + 352);
      v343[3] = v208;
      v209 = *(v12 + 384);
      v343[5] = *(v12 + 400);
      v343[4] = v209;
      v210 = *(v12 + 320);
      v343[1] = *(v12 + 336);
      v343[0] = v210;
      v211 = v329[5];
      *(v12 + 384) = v329[4];
      *(v12 + 400) = v211;
      v212 = v329[7];
      *(v12 + 416) = v329[6];
      *(v12 + 432) = v212;
      *(v12 + 448) = v329[8];
      v213 = v329[3];
      *(v12 + 352) = v329[2];
      *(v12 + 368) = v213;
      v214 = v329[1];
      *(v12 + 320) = v329[0];
      *(v12 + 336) = v214;
      sub_245F8E744(v343, &qword_27EE3A970, &qword_246099C00);
      v4 = v293;
      v8 = v289.i64[0];
    }

    v215 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_coverage);
    memcpy(v344, v12, sizeof(v344));
    if (sub_246081984(v344) == 1)
    {
      goto LABEL_186;
    }

    *(v12 + 464) = v215;
    v216 = sub_2460443FC();
    v218 = v217;
    memmove(v343, v217, 0x4F0uLL);
    if (sub_246081984(v343) == 1)
    {
      goto LABEL_187;
    }

    memmove(v324, v218 + 72, 0x2B0uLL);
    if (sub_246081ACC(v324) != 1)
    {
      v219 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
      v220 = v218[124];
      v218[124] = v219;
      v221 = v219;
    }

    (v216)(v329, 0);
    v222 = sub_2460443FC();
    v224 = v223;
    memmove(v329, v223, 0x4F0uLL);
    if (sub_246081984(v329) == 1)
    {
      goto LABEL_188;
    }

    memmove(&v322, v224 + 36, 0x2B0uLL);
    if (sub_246081ACC(&v322) != 1)
    {
      v225 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 48);
      v327[2] = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 32);
      v327[3] = v225;
      v327[4] = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 64);
      v226 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud);
      v327[1] = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 16);
      v327[0] = v226;
      v227 = v224[69];
      v228 = v224[71];
      v328[2] = v224[70];
      v328[3] = v228;
      v328[4] = v224[72];
      v229 = v224[68];
      v328[1] = v227;
      v328[0] = v229;
      memmove(v224 + 68, v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud, 0x50uLL);
      sub_245F8E7A4(v327, v320, &qword_27EE3AB10, &qword_246096678);
      sub_245F8E744(v328, &qword_27EE3AB10, &qword_246096678);
    }

    (v222)(v319, 0);
    Width = v294;
    sub_246023B40(v290[0]);
    v231 = v230;
    v232 = sub_2460443FC();
    v234 = v233;
    memmove(v328, v233, 0x4F0uLL);
    if (sub_246081984(v328) == 1)
    {
      goto LABEL_189;
    }

    memmove(v321, v234 + 144, 0x2B0uLL);
    if (sub_246081ACC(v321) != 1)
    {
      v234[292] = v231;
    }

    v235 = (v232)(v327, 0);
    (v8)(v327, v235);
    if (*&v327[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      v236 = *(v11 + v284.n128_u64[0]);
      if (v236)
      {
        v237 = *(v11 + v284.n128_u64[0]);

        v238 = sub_2460443FC();
        v2 = v239;
        memmove(v327, v239, 0x4F0uLL);
        if (sub_246081984(v327) == 1)
        {
          goto LABEL_195;
        }

        memmove(v320, v2 + 72, 0x2B0uLL);
        if (sub_246081ACC(v320) != 1)
        {
          v240 = (*(*v236 + 568))();
          v241 = v2[157];
          v2[157] = v240;
        }

        (v238)(v319, 0);

        Width = v294;
      }
    }

    else
    {
      sub_246077B30(*&v327[0]);
      sub_246077B30(0xF);
    }

    v242 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers);
    v17 = sub_24606B888();
    memcpy(v320, v12, sizeof(v320));
    memcpy(v327, v12, sizeof(v327));
    if (sub_246081984(v327) == 1)
    {
      goto LABEL_190;
    }

    memcpy(v318, v320, sizeof(v318));
    memcpy(v317, v327, sizeof(v317));
    sub_246081B38(v318, v319);
    sub_246091924();

    memcpy(v319, v317, sizeof(v319));
    v243 = sub_246081B70(v319);
    v314 = v334[17];
    v315 = v334[18];
    v316 = v334[19];
    v310 = v334[13];
    v311 = v334[14];
    v313 = v334[16];
    v312 = v334[15];
    v306 = v334[9];
    v307 = v334[10];
    v309 = v334[12];
    v308 = v334[11];
    v305 = v334[8];
    v304 = v334[7];
    v244 = v334[20];
    v245 = v334[21];
    v246 = v334[22];
    v247 = v334[23];
    v7 = LOBYTE(v334[24]);
    v303[0] = *(&v334[24] + 1);
    *(v303 + 3) = DWORD1(v334[24]);
    v248 = (v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToMobileSfMTransform);
    if (*(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToMobileSfMTransform + 64))
    {
      v284 = v334[23];
      v285 = v334[22];
      v289 = v334[21];
      *v290 = v334[20];
    }

    else
    {
      v7 = 0;
      v245 = v248[2];
      v244 = v248[3];
      v249 = *v248;
      v246 = v248[1];
      v250 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v248, *&v334[10]), v246, *&v334[10], 1), v245, v334[10], 2), v244, v334[10], 3);
      v289 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v248, *&v334[11]), v246, *&v334[11], 1), v245, v334[11], 2), v244, v334[11], 3);
      *v290 = v250;
      v251 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v249, *&v334[12]), v246, *&v334[12], 1), v245, v334[12], 2), v244, v334[12], 3);
      v247 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v249, *&v334[13]), v246, *&v334[13], 1), v245, v334[13], 2), v244, v334[13], 3);
      v284 = v247;
      v285 = v251;
      LOBYTE(v317[0]) = 0;
    }

    if (*(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugWriteAllFramesData) == 1)
    {
      v17 = v11;
      (v8)(&v302, v243, v244, v245, v246, v247);
      if (v302 == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
        if (*&v334[2])
        {
          v296 = *&v334[2];
          v297 = *(&v334[2] + 8);
          v298 = *(&v334[3] + 8);
          v299 = *(&v334[4] + 8);
          v300 = *(&v334[5] + 8);
          v301[10] = v314;
          v301[11] = v315;
          v301[6] = v310;
          v301[7] = v311;
          v301[9] = v313;
          v301[8] = v312;
          v301[2] = v306;
          v301[3] = v307;
          v301[4] = v308;
          v301[5] = v309;
          v301[0] = v304;
          v301[1] = v305;
          v301[12] = v316;
          v301[13] = *v290;
          v301[14] = v289;
          v301[15] = v285;
          v301[16] = v284;
          LOBYTE(v301[17]) = v7;
          *(&v301[17] + 1) = v303[0];
          DWORD1(v301[17]) = *(v303 + 3);
          memcpy(v295, v301, 0x118uLL);
          sub_245F8E7A4(&v334[2], v317, &qword_27EE3B1B0, &unk_246099D60);
          sub_24601E8F4(v301, v317);
          sub_2460866B4(&v296, v295, v317, v3);
          v252 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers);
          v17 = sub_24606CCF0();
          memcpy(v295, v317, sizeof(v295));
          sub_246091924();

          sub_246081BA0(v317);
        }
      }

      else
      {
        sub_246077B30(v302);
        sub_246077B30(0xF);
      }
    }

    if (*sub_246020998() == 1)
    {
      v17 = v11;
      (v8)(v317);
      if (*&v317[0] == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
        if (*(&v334[6] + 1))
        {
          v253 = *(&v334[6] + 1);
          DataBuffer = OCNonModularSPI_ADJasperPointCloud_CreateDataBuffer();
          if (DataBuffer)
          {
            v255 = DataBuffer;
            v8 = v4;
            type metadata accessor for TemporalDepthPointCloud();
            v301[0] = v334[7];
            v301[1] = v334[8];
            v292 = v334[10];
            v301[2] = v334[9];
            v282 = v334[12];
            v283 = v334[11];
            v281 = v334[13];
            v256 = v255;
            sub_245FC70B8(v301, v295, v292, v283, v282, v281, COERCE_DOUBLE(0x5A000000780));
            sub_245FC74AC(v256, v295, v3);
            v12 = v257;
            v2 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer;
            v17 = *(v11 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer);
            if (v17)
            {
              goto LABEL_166;
            }

            sub_245F8E624(&qword_27EE3AD88, &unk_24609AD30);
            *&v317[0] = v12;

            v258 = sub_24608EAF8(91, v317);
            v259 = *(v2 + v11);
            *(v2 + v11) = v258;

            v17 = *(v2 + v11);
            if (v17)
            {
LABEL_166:
              v296 = v12;
              v2 = *(*v17 + 264);

              (v2)(v317, &v296);

              v17 = *&v317[0];
            }

            else
            {
            }

            Width = v294;
          }

          else
          {

            Width = v294;
          }
        }
      }

      else
      {
        sub_246077B30(*&v317[0]);
        sub_246077B30(0xF);
      }
    }

    v260 = *sub_24608FC4C();
    OCSignPostsAriadneDbgCode();
    if ((*v287 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    v71 = sub_246072624(v17);
LABEL_32:
    v72 = 0;
    v73 = 0;
    v74 = v4;
    v75 = *(v71 + 2);
    v4 = v2;
    do
    {
      if (v73 >= v75)
      {
        __break(1u);
        goto LABEL_177;
      }

      *&v76 = ((COERCE_FLOAT(*&v17[v72 + 32]) + COERCE_FLOAT(*&v17[v72 + 32])) / Width) + -1.0;
      ++v73;
      v77 = &v71[v72];
      *(v77 + 8) = v76;
      *(&v76 + 1) = ((*&v17[v72 + 36] + *&v17[v72 + 36]) / v74) + -1.0;
      *(v77 + 4) = v76;
      v72 += 8;
    }

    while (v7 != v73);

LABEL_52:
    ObjectContour.init(points:)(v71, v328);
  }

  if ((*(v11 + v286) & 0x8000000000000000) != 0)
  {
    goto LABEL_180;
  }

  v261 = *(v11 + v288);
  kdebug_trace();
  v317[10] = v314;
  v317[11] = v315;
  v317[6] = v310;
  v317[7] = v311;
  v317[9] = v313;
  v317[8] = v312;
  v317[2] = v306;
  v317[3] = v307;
  v317[5] = v309;
  v317[4] = v308;
  v317[1] = v305;
  v317[0] = v304;
  v317[12] = v316;
  v317[13] = *v290;
  v317[14] = v289;
  v317[15] = v285;
  v317[16] = v284;
  LOBYTE(v317[17]) = v7;
  *(&v317[17] + 1) = v303[0];
  DWORD1(v317[17]) = *(v303 + 3);
  sub_24601E950(v317);
  v63 = v11;
LABEL_172:
  sub_2460482AC(v63);
  (*(v291 + 8))(Width, v4);
}

void sub_2460482AC(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460917D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex) + 0x888888888888888, 1) <= 0x888888888888888uLL)
  {
    sub_2460917A4();
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_246096460;
    sub_2460917B4();
    v13 = MEMORY[0x277D83A80];
    *(v12 + 56) = MEMORY[0x277D839F8];
    *(v12 + 64) = v13;
    *(v12 + 32) = v14 * 1000.0;
    v15 = sub_246091C24();
    v17 = v16;
    v18 = sub_245FA3174();
    (*(v3 + 16))(v6, v18, v2);

    v19 = sub_2460918D4();
    v20 = sub_246091FA4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = v7;
      v22 = v21;
      v23 = swift_slowAlloc();
      v27 = v8;
      v24 = v23;
      v29 = v23;
      *v22 = 136446210;
      v25 = sub_245F8D3C0(v15, v17, &v29);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_245F8A000, v19, v20, "=== ObjectCaptureSession processVideoData() takes time = %{public}s ms ===", v22, 0xCu);
      sub_245F8E6F4(v24);
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v22, -1, -1);

      (*(v3 + 8))(v6, v2);
      (*(v27 + 8))(v11, v28);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }
  }
}

void sub_24604860C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = *(a1 + 176);
  v101 = *(a1 + 160);
  v102 = v15;
  v16 = *(a1 + 208);
  v103 = *(a1 + 192);
  v104 = v16;
  v17 = *(a1 + 112);
  v97 = *(a1 + 96);
  v98 = v17;
  v18 = *(a1 + 144);
  v99 = *(a1 + 128);
  v100 = v18;
  v19 = *(a1 + 48);
  v93 = *(a1 + 32);
  v94 = v19;
  v20 = *(a1 + 80);
  v95 = *(a1 + 64);
  v96 = v20;
  v21 = *(a1 + 16);
  v91 = *a1;
  v92 = v21;
  v22 = *(a1 + 224);
  v23 = *(a1 + 369);
  v88 = *(a1 + 353);
  v89 = v23;
  v90 = *(a1 + 385);
  v24 = *(a1 + 305);
  v84 = *(a1 + 289);
  v85 = v24;
  v25 = *(a1 + 337);
  v86 = *(a1 + 321);
  v87 = v25;
  v26 = *(a1 + 241);
  v80 = *(a1 + 225);
  v81 = v26;
  v27 = *(a1 + 273);
  v82 = *(a1 + 257);
  v83 = v27;
  v28 = MEMORY[0x277D85000];
  if ((*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__voxelIntegrationEnabled) & 1) == 0)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x410))(&v53);
    if (v53.i64[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      return;
    }

    sub_246077B30(v53.i64[0]);
    sub_246077B30(0xF);
  }

  if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldRestartVoxelIntegration) == 1)
  {
    v29 = sub_245FA3280();
    (*(v5 + 16))(v14, v29, v4);
    v30 = sub_2460918D4();
    v31 = sub_246091FC4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v51 = v5;
      v52 = v4;
      v33 = v32;
      v34 = v8;
      v35 = swift_slowAlloc();
      v53.i64[0] = v35;
      *v33 = 136380675;
      *(v33 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4320, &v53);
      _os_log_impl(&dword_245F8A000, v30, v31, "ObjectCaptureSession.%{private}s: Got new tap point, trying to restart voxel integration!", v33, 0xCu);
      sub_245F8E6F4(v35);
      v36 = v35;
      v8 = v34;
      MEMORY[0x24C1989D0](v36, -1, -1);
      v37 = v33;
      v5 = v51;
      v4 = v52;
      MEMORY[0x24C1989D0](v37, -1, -1);
    }

    (*(v5 + 8))(v14, v4);
    v63 = v101;
    v64 = v102;
    v65 = v103;
    v66 = v104;
    v59 = v97;
    v60 = v98;
    v61 = v99;
    v62 = v100;
    v55 = v93;
    v56 = v94;
    v57 = v95;
    v58 = v96;
    v53 = v91;
    v54 = v92;
    v76 = v88;
    v77 = v89;
    v78 = v90;
    v72 = v84;
    v73 = v85;
    v74 = v86;
    v75 = v87;
    v70 = v82;
    v71 = v83;
    v68 = v80;
    v67 = v22;
    v69 = v81;
    sub_24605CAF8(&v53);
    v28 = MEMORY[0x277D85000];
  }

  v38 = *((*v28 & *v2) + 0x410);
  v38(&v53);
  if (v53.i64[0] == 12)
  {
    sub_246077B30(0xC);
    v39 = 12;
    goto LABEL_15;
  }

  sub_246077B30(v53.i64[0]);
  sub_246077B30(0xC);
  v38(&v53);
  if (v53.i64[0] == 14)
  {
    sub_246077B30(0xE);
    v39 = 14;
    goto LABEL_15;
  }

  sub_246077B30(v53.i64[0]);
  sub_246077B30(0xE);
  v38(&v53);
  if (v53.i64[0] == 15)
  {
    sub_246077B30(0xF);
    v39 = 15;
LABEL_15:
    sub_246077B30(v39);
    v53.i8[0] = v22;
    v79 = 5;
    if (static CameraTrackingState.== infix(_:_:)(&v53, &v79))
    {
      v63 = v101;
      v64 = v102;
      v65 = v103;
      v66 = v104;
      v59 = v97;
      v60 = v98;
      v61 = v99;
      v62 = v100;
      v55 = v93;
      v56 = v94;
      v57 = v95;
      v58 = v96;
      v53 = v91;
      v54 = v92;
      v76 = v88;
      v77 = v89;
      v78 = v90;
      v72 = v84;
      v73 = v85;
      v74 = v86;
      v75 = v87;
      v70 = v82;
      v71 = v83;
      v68 = v80;
      v67 = v22;
      v69 = v81;
      sub_24605D558(&v53);
      sub_24605E6CC(v40);
    }

    else
    {
      v41 = sub_245FA3280();
      (*(v5 + 16))(v11, v41, v4);
      v42 = sub_2460918D4();
      v43 = sub_246091FC4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v53.i64[0] = v45;
        *v44 = 136380675;
        *(v44 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4320, &v53);
        _os_log_impl(&dword_245F8A000, v42, v43, "ObjectCaptureSession.%{private}s: Dropping the frame because ARKit tracking state is not normal!", v44, 0xCu);
        sub_245F8E6F4(v45);
        MEMORY[0x24C1989D0](v45, -1, -1);
        MEMORY[0x24C1989D0](v44, -1, -1);
      }

      (*(v5 + 8))(v11, v4);
    }

    return;
  }

  sub_246077B30(v53.i64[0]);
  sub_246077B30(0xF);
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex) + 0x888888888888888, 1) <= 0x888888888888888uLL)
  {
    v46 = sub_245FA3280();
    (*(v5 + 16))(v8, v46, v4);
    v47 = sub_2460918D4();
    v48 = sub_246091FA4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v53.i64[0] = v50;
      *v49 = 136380675;
      *(v49 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4320, &v53);
      _os_log_impl(&dword_245F8A000, v47, v48, "ObjectCaptureSession.%{private}s: Didn't process input frame because the state is not ready, detecting or scanning!", v49, 0xCu);
      sub_245F8E6F4(v50);
      MEMORY[0x24C1989D0](v50, -1, -1);
      MEMORY[0x24C1989D0](v49, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

void sub_246048D64(const void *a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  (*((*MEMORY[0x277D85000] & *v1) + 0x410))(v74, v12);
  if (v74[0] == 14)
  {
    v72 = a1;
    sub_246077B30(0xE);
    sub_246077B30(0xE);
    v15 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition;
    if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33))
    {
      goto LABEL_7;
    }

    v17 = *(v16 + 2);
    v18 = *(v16 + 3);
    v19 = v16[32];
    v75 = *v16;
    v76 = v17;
    v77 = v18;
    v78 = v19 & 1;
    if (v19)
    {
      goto LABEL_7;
    }

    v70 = v4;
    v71 = v3;
    v20 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud);
    v21 = v17;
    swift_beginAccess();
    v22 = v20;
    v23 = v21;
    v4 = v70;
    v3 = v71;
    v24 = *v22;
    if (!*v22 || (v25 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform), (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform + 64) & 1) != 0))
    {
LABEL_7:
      if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33))
      {
        v26 = sub_245FA3174();
        (*(v4 + 16))(v7, v26, v3);
        v27 = sub_2460918D4();
        v28 = sub_246091FB4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v74[0] = v30;
          *v29 = 136380675;
          *(v29 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4300, v74);
          _os_log_impl(&dword_245F8A000, v27, v28, "ObjectCaptureSession.%{private}s: Skipped bounding box detection because tap position is not available!", v29, 0xCu);
          sub_245F8E6F4(v30);
          MEMORY[0x24C1989D0](v30, -1, -1);
          MEMORY[0x24C1989D0](v29, -1, -1);
        }

        (*(v4 + 8))(v7, v3);
      }

      else if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 32))
      {
        v31 = sub_245FA3174();
        (*(v4 + 16))(v10, v31, v3);
        v32 = sub_2460918D4();
        v33 = sub_246091FB4();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v74[0] = v35;
          *v34 = 136380675;
          *(v34 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4300, v74);
          _os_log_impl(&dword_245F8A000, v32, v33, "ObjectCaptureSession.%{private}s: Skipped bounding box detection because world point is not available!", v34, 0xCu);
          sub_245F8E6F4(v35);
          MEMORY[0x24C1989D0](v35, -1, -1);
          MEMORY[0x24C1989D0](v34, -1, -1);
        }

        (*(v4 + 8))(v10, v3);
      }

      else if (!v15)
      {
        v36 = sub_245FA3174();
        (*(v4 + 16))(v14, v36, v3);
        v37 = sub_2460918D4();
        v38 = sub_246091FB4();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v74[0] = v40;
          *v39 = 136380675;
          *(v39 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4300, v74);
          _os_log_impl(&dword_245F8A000, v37, v38, "ObjectCaptureSession.%{private}s: Skipped bounding box detection because plane is not available!", v39, 0xCu);
          sub_245F8E6F4(v40);
          MEMORY[0x24C1989D0](v40, -1, -1);
          MEMORY[0x24C1989D0](v39, -1, -1);
        }

        (*(v4 + 8))(v14, v3);
      }
    }

    else
    {
      v41 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager);
      if (v41)
      {
        v42.n128_u64[0] = v23;
        v42.n128_u64[1] = v18;
        v68 = v42;
        v43 = v22[1];
        v70 = v22[2];
        v71 = v43;
        v44 = v22[4];
        v67 = v22[3];
        v45 = v22[6];
        v54 = v22[5];
        v55 = v44;
        v46 = v22[8];
        v61 = v22[7];
        v62 = v45;
        v47 = v22[10];
        v69 = v22[9];
        v48 = v22[11];
        v66 = v25[3];
        v65 = v25[2];
        v64 = v25[1];
        v63 = *v25;
        v49 = v24;
        v56 = v24;
        memcpy(v74, v72, 0x191uLL);
        v73[0] = v49;
        v73[1] = v71;
        v73[2] = v70;
        v73[4] = v44;
        v73[5] = v54;
        v73[6] = v62;
        v73[7] = v61;
        v59 = v48;
        v60 = v47;
        v73[10] = v47;
        v73[11] = v48;
        v73[8] = v46;
        v73[9] = v69;
        LODWORD(v72) = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugMaskingVoxel);
        v50 = *v41;
        v57 = *(*v41 + 288);
        v58 = v50 + 288;
        v51 = v15;
        v52 = v56;
        sub_246081C18(v56);

        v57(v74, v51, &v75, v73, v72, v68, v63, v64, v65, v66);

        sub_246079A84(v52);
      }
    }
  }

  else
  {
    sub_246077B30(v74[0]);
    sub_246077B30(0xE);
  }
}

void sub_246049464(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v1) + 0x410))(v58, v5);
  if (v58[0] == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager) && (sub_2460448B0() & 1) != 0 && *sub_245F925DC() == 1)
    {
      v8 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer);
      if (v8)
      {
        v9 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform);
        v39 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform + 16);
        v40 = v9;
        v10 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform + 32);
        v37 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform + 48);
        v38 = v10;
        v11 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
        swift_beginAccess();
        memcpy(v58, v11, sizeof(v58));
        if (sub_246081984(v58) == 1)
        {
          __break(1u);
        }

        else
        {
          v12 = v11[33];
          v55[2] = v11[32];
          v55[3] = v12;
          v13 = v11[35];
          v55[4] = v11[34];
          v55[5] = v13;
          v14 = v11[31];
          v55[0] = v11[30];
          v55[1] = v14;
          v11[30].n128_u64[1] = 0;
          v11[31].n128_u64[0] = 0;
          v11[30].n128_u64[0] = v8;
          v15 = v39;
          v11[32] = v40;
          v11[33] = v15;
          v16 = v37;
          v11[34] = v38;
          v11[35] = v16;
          swift_retain_n();
          sub_245F8E744(v55, &qword_27EE3A978, &qword_246099C08);
          memcpy(v56, v11, sizeof(v56));
          memcpy(v54, v11, sizeof(v54));
          memcpy(v57, v11, 0x4F0uLL);
          if (sub_246081984(v57) != 1)
          {
            v49 = v54[32];
            v50 = v54[33];
            v51 = v54[34];
            v52 = v54[35];
            v48[0] = v54[30];
            v48[1] = v54[31];
            memcpy(v53, v54, sizeof(v53));
            sub_245F8E7A4(v56, v47, &qword_27EE3A9F0, &qword_246099CE0);
            sub_245F8E7A4(v48, v47, &qword_27EE3A978, &qword_246099C08);
            sub_246081B70(v53);
            v17 = *&v48[0];
            if (!*&v48[0])
            {

              return;
            }

            if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugSurfaceGeometryData) != 1)
            {
LABEL_17:

              sub_245F8E744(v48, &qword_27EE3A978, &qword_246099C08);
              return;
            }

            v39 = v50;
            v40 = v49;
            v37 = v52;
            v38 = v51;
            v18 = sub_2460443FC();
            v20 = v19;
            memmove(v47, v19, 0x4F0uLL);
            if (sub_246081984(v47) != 1)
            {
              memmove(v46, v20 + 36, 0x2B0uLL);
              if (sub_246081ACC(v46) != 1)
              {
                sub_246022048(v17, 0, v43);
                v21 = v20[44];
                v45[2] = v20[43];
                v45[3] = v21;
                v45[4] = v20[45];
                v22 = v20[42];
                v45[0] = v20[41];
                v45[1] = v22;
                v23 = v43[3];
                v20[43] = v43[2];
                v20[44] = v23;
                v20[45] = v43[4];
                v24 = v43[1];
                v20[41] = v43[0];
                v20[42] = v24;
                sub_245F8E744(v45, &qword_27EE3AB10, &qword_246096678);
              }

              (v18)(v42, 0);
              v25 = sub_2460443FC();
              v27 = v26;
              memmove(v45, v26, 0x4F0uLL);
              if (sub_246081984(v45) != 1)
              {
                memmove(v43, v27 + 36, 0x2B0uLL);
                if (sub_246081ACC(v43) != 1)
                {
                  sub_246022454(v17, 0, v41, v40, v39, v38, v37);
                  v28 = v27[55];
                  v42[2] = v27[54];
                  v42[3] = v28;
                  v42[4] = v27[56];
                  v29 = v27[53];
                  v42[0] = v27[52];
                  v42[1] = v29;
                  v30 = v41[3];
                  v27[54] = v41[2];
                  v27[55] = v30;
                  v27[56] = v41[4];
                  v31 = v41[1];
                  v27[52] = v41[0];
                  v27[53] = v31;
                  sub_245F8E744(v42, &qword_27EE3AB18, &qword_246099D70);
                }

                (v25)(&v44, 0);
                goto LABEL_17;
              }

              goto LABEL_27;
            }

LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            return;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

      v32 = sub_245FA3174();
      (*(v3 + 16))(v7, v32, v2);
      v33 = sub_2460918D4();
      v34 = sub_246091FC4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v58[0] = v36;
        *v35 = 136380675;
        *(v35 + 4) = sub_245F8D3C0(0xD000000000000025, 0x80000002460A42D0, v58);
        _os_log_impl(&dword_245F8A000, v33, v34, "ObjectCaptureSession.%{private}s: MobileSfM point cloud is not available.", v35, 0xCu);
        sub_245F8E6F4(v36);
        MEMORY[0x24C1989D0](v36, -1, -1);
        MEMORY[0x24C1989D0](v35, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
    }
  }

  else
  {
    sub_246077B30(v58[0]);
    sub_246077B30(0xF);
  }
}

uint64_t sub_246049AA4(const void *a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  memcpy(v51, a1, 0x191uLL);
  v11 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager];

    if ((sub_246044638() & 1) == 0 || (v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__autoCaptureEnabled] & 1) == 0)
    {
    }

    v13 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 48];
    v49[2] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 32];
    v49[3] = v13;
    v50 = v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 64];
    v14 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 16];
    v49[0] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform];
    v49[1] = v14;
    memcpy(v47, a1, 0x191uLL);
    LOBYTE(v43[0]) = 4;
    v15 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
    swift_beginAccess();
    memcpy(v48, &v1[v15], sizeof(v48));
    result = sub_246081984(v48);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v45[0] = v48[59];
      v17 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectInFOVRatio];
      v18 = swift_allocObject();
      *(v18 + 16) = v1;
      v19 = *(*v11 + 480);
      v20 = v1;
      v21 = v19(v47, v49, v43, v45, sub_246081BF4, v18, v17);

      if ((v21 & 1) == 0)
      {
      }

      v22 = sub_245FA3174();
      (*(v4 + 16))(v10, v22, v3);
      sub_245FCFDFC(v51, v47);
      v23 = sub_2460918D4();
      v24 = sub_246091FC4();
      sub_245FCFE58(v51);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v47[0] = v42;
        *v25 = 136380931;
        *(v25 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A42B0, v47);
        *(v25 + 12) = 2082;
        v26 = sub_24602138C(v51[0]);
        v41 = v23;
        v28 = sub_245F8D3C0(v26, v27, v47);

        *(v25 + 14) = v28;
        v29 = v41;
        _os_log_impl(&dword_245F8A000, v41, v24, "ObjectCaptureSession.%{private}s: Taking automatic shot around video frame %{public}s", v25, 0x16u);
        v30 = v42;
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v30, -1, -1);
        MEMORY[0x24C1989D0](v25, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v10, v3);
      if (v20[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAutoCaptureEnabled] != 1)
      {
      }

      v36 = sub_2460443FC();
      v38 = v37;
      memmove(v47, v37, 0x4F0uLL);
      result = sub_246081984(v47);
      if (result != 1)
      {
        memmove(v45, v38 + 576, 0x2B0uLL);
        if (sub_246081ACC(v45) != 1)
        {
          (*(*v11 + 448))(v43);
          v39 = v43[1];
          *(v38 + 75) = v43[0];
          *(v38 + 76) = v39;
          *(v38 + 77) = *v44;
          *(v38 + 1245) = *&v44[13];
        }

        (v36)(&v46, 0);
      }
    }

    __break(1u);
  }

  else
  {
    v31 = sub_245FA3174();
    (*(v4 + 16))(v7, v31, v3);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48[0] = v35;
      *v34 = 136380675;
      *(v34 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A42B0, v48);
      _os_log_impl(&dword_245F8A000, v32, v33, "ObjectCaptureSession.%{private}s: Failed to run automatic capture - capture manager has not been initialized!", v34, 0xCu);
      sub_245F8E6F4(v35);
      MEMORY[0x24C1989D0](v35, -1, -1);
      MEMORY[0x24C1989D0](v34, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_24604A090()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
  if (v7)
  {
    v8 = *((*MEMORY[0x277D85000] & *v1) + 0x4C0);
    v9 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);

    v11 = v8(v10);
    if (sub_246044638())
    {
      v12 = (*(*v7 + 576))();
      if ((v11 & 1) == (v12 & 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((v11 & 1) == 0)
      {
LABEL_12:
      }

      v12 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v19[7] = v12 & 1;
    v1;
    sub_246091994();
    sub_246038590();
  }

  v13 = sub_245FA3174();
  (*(v3 + 16))(v6, v13, v2);
  v14 = sub_2460918D4();
  v15 = sub_246091FB4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136380675;
    *(v16 + 4) = sub_245F8D3C0(0xD000000000000018, 0x80000002460A4290, &v20);
    _os_log_impl(&dword_245F8A000, v14, v15, "ObjectCaptureSession.%{private}s: Failed to update manual shot status - capture manager has not been initialized!", v16, 0xCu);
    sub_245F8E6F4(v17);
    MEMORY[0x24C1989D0](v17, -1, -1);
    MEMORY[0x24C1989D0](v16, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

size_t sub_24604A384(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v1;
  v389.i64[0] = v4;
  v6 = v5;
  v7 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v323 - v9;
  v348 = sub_245F8E624(&unk_27EE3AD50, &unk_24609AD00);
  v11 = *(*(v348 - 8) + 64);
  MEMORY[0x28223BE20](v348);
  v349 = &v323 - v12;
  v345 = sub_245F8E624(&qword_27EE3A738, &qword_246098890);
  v13 = *(*(v345 - 8) + 64);
  MEMORY[0x28223BE20](v345);
  v346 = (&v323 - v14);
  v15 = sub_245F8E624(&qword_27EE3A5B8, &qword_246098418);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v332 = &v323 - v17;
  v18 = type metadata accessor for PhotogrammetrySample();
  v330 = *(v18 - 8);
  v331 = v18;
  v19 = *(v330 + 64);
  MEMORY[0x28223BE20](v18);
  v325 = (&v323 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v327 = (&v323 - v22);
  v390.i64[0] = sub_246091834();
  v387.i64[0] = *(v390.i64[0] - 8);
  v23 = *(v387.i64[0] + 64);
  MEMORY[0x28223BE20](v390.i64[0]);
  v25 = &v323 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v354 = &v323 - v27;
  MEMORY[0x28223BE20](v28);
  v336 = &v323 - v29;
  MEMORY[0x28223BE20](v30);
  v356 = &v323 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v323 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v323 - v36;
  v38 = sub_2460918F4();
  isa = v38[-1].isa;
  v39 = *(isa + 8);
  MEMORY[0x28223BE20](v38);
  v323 = &v323 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v326 = &v323 - v42;
  MEMORY[0x28223BE20](v43);
  v350 = &v323 - v44;
  MEMORY[0x28223BE20](v45);
  v337 = &v323 - v46;
  MEMORY[0x28223BE20](v47);
  v355 = &v323 - v48;
  MEMORY[0x28223BE20](v49);
  v375 = &v323 - v50;
  MEMORY[0x28223BE20](v51);
  v53 = &v323 - v52;
  MEMORY[0x28223BE20](v54);
  v361 = &v323 - v55;
  v56 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v343 = &v323 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v324 = &v323 - v60;
  MEMORY[0x28223BE20](v61);
  v384.i64[0] = &v323 - v62;
  v380 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v347 = *(v380 - 8);
  v63 = *(v347 + 64);
  MEMORY[0x28223BE20](v380);
  v386 = &v323 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v438, v6, 0x191uLL);
  v65 = *&v438[1];
  v344 = v53;
  v335 = v37;
  if (!*&v438[1])
  {
    goto LABEL_10;
  }

  v66 = v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions;
  swift_beginAccess();
  LODWORD(v66) = v66[8];
  v67 = v65;
  if (v66 != 1)
  {
    goto LABEL_10;
  }

  v68 = v67;
  if (CVPixelBufferGetWidth(v68) == 256)
  {
    if (CVPixelBufferGetHeight(v68) == 192)
    {
      if (!*(&v438[1] + 1))
      {
LABEL_9:

        goto LABEL_10;
      }

      v69 = v34;
      v70 = v65;
      v71 = *(&v438[1] + 1);
      if (CVPixelBufferGetWidth(v71) != 256)
      {
        __break(1u);
        goto LABEL_119;
      }

      Height = CVPixelBufferGetHeight(v71);

      v65 = v70;
      v34 = v69;
      if (Height != 192)
      {
        __break(1u);
        goto LABEL_9;
      }

LABEL_10:
      v333 = v34;
      v378 = v65;
      v341 = v25;
      v342 = v10;
      v385 = v38;
      v73 = *(&v438[1] + 1);
      v376 = *(&v438[0] + 1);
      v353 = v73;
      v370 = v73;
      DataBuffer = OCNonModularSPI_ADJasperPointCloud_CreateDataBuffer();
      v2 = *&v438[0];
      v74 = 1;
      v429 = 1;
      *&v405[28] = v438[16];
      *&v405[44] = v438[17];
      *&v405[60] = v438[18];
      v405[76] = v438[19];
      *&v405[12] = v438[15];
      v430[0] = v438[7];
      v430[1] = v438[8];
      v430[2] = v438[9];
      v359 = v438[11];
      v360 = v438[10];
      v430[3] = v438[10];
      v430[4] = v438[11];
      v357 = v438[13];
      v358 = v438[12];
      v430[5] = v438[12];
      v430[6] = v438[13];
      LOBYTE(v430[7]) = v438[14];
      *(&v430[7] + 1) = *(&v438[19] + 1);
      LODWORD(v430[8]) = DWORD1(v438[24]);
      *(&v430[9] + 4) = *&v405[16];
      *(&v430[10] + 4) = *&v405[32];
      *(&v430[11] + 4) = *&v405[48];
      *(&v430[12] + 1) = *&v405[61];
      *(&v430[8] + 4) = *v405;
      memset(&v430[14], 0, 64);
      LOBYTE(v430[18]) = 1;
      memset(&v430[19], 0, 64);
      LOBYTE(v430[23]) = 1;
      *(&v430[23] + 1) = MEMORY[0x277D84F90];
      *&v430[24] = MEMORY[0x277D84F90];
      sub_245F97D94(v431);
      v426 = v431[6];
      v427 = v431[7];
      v75 = v433;
      v428 = v432;
      v422 = v431[2];
      v423 = v431[3];
      v425 = v431[5];
      v424 = v431[4];
      v421 = v431[1];
      v420 = v431[0];
      v76 = v434;
      v419 = v434;
      v435 = 1;
      v418 = 0;
      v77 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform);
      v373 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 16);
      v374 = v77;
      v78 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 32);
      v371 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 48);
      v372 = v78;
      v79 = MEMORY[0x277D85000];
      v80 = *MEMORY[0x277D85000] & *v3;
      v334 = (v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform);
      v381.i32[0] = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 64);
      v81 = v80 + 1192;
      v82 = *(v80 + 1192);
      v83 = sub_24601E8F4(&v438[7], v405);
      v328 = v82;
      v329 = v81;
      v84 = v82(v83);
      if (v84)
      {
        v85 = v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox;
        if (*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox + 64))
        {
          v84 = OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
        }

        else
        {
          v96 = *(v85 + 1);
          v95 = *(v85 + 2);
          v97 = *v85;
          v99 = *(v85 + 6);
          v98 = *(v85 + 7);
          *v405 = v97;
          *&v405[16] = v96;
          *&v405[32] = v95;
          *&v405[56] = v98;
          *&v405[48] = v99;
          v100 = sub_246090E60();
          *&v86 = OCBoundingBox.scaledTransform(scale:)(*v100);
        }

        v369 = v86;
        v366 = v88;
        v367 = v87;
        v365 = v89;
        v74 = 0;
        v405[0] = 1;
        LOBYTE(v404[0]) = 0;
        LODWORD(v368) = 1;
        v418 = 1;
      }

      else
      {
        v90 = v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox;
        if (*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64))
        {
          v91 = *MEMORY[0x277D860B8];
          v92 = *(MEMORY[0x277D860B8] + 16);
          v93 = *(MEMORY[0x277D860B8] + 32);
          v94 = *(MEMORY[0x277D860B8] + 48);
        }

        else
        {
          v102 = *(v90 + 1);
          v101 = *(v90 + 2);
          v103 = *v90;
          v105 = *(v90 + 6);
          v104 = *(v90 + 7);
          *v405 = v103;
          *&v405[16] = v102;
          *&v405[32] = v101;
          *&v405[56] = v104;
          *&v405[48] = v105;
          v106 = sub_246090EC4();
          *&v91 = OCBoundingBox.scaledTransform(scale:)(*v106);
        }

        v369 = 0u;
        if (v381.i8[0])
        {
          LODWORD(v368) = 0;
          v366 = 0u;
          v367 = 0u;
          v365 = 0u;
        }

        else
        {
          v399[0] = 1;
          v404[0] = v91;
          v404[1] = v92;
          v404[2] = v93;
          v404[3] = v94;
          v404[4] = v374;
          v404[5] = v373;
          v404[6] = v372;
          v404[7] = v371;
          v404[8] = 0uLL;
          LOBYTE(v404[9]) = 1;
          nullsub_1(v404, v371);
          *&v405[96] = v426;
          *&v405[112] = v427;
          *&v405[32] = v422;
          *&v405[48] = v423;
          *&v405[80] = v425;
          *&v405[64] = v424;
          *&v405[16] = v421;
          *v405 = v420;
          *&v405[128] = v428;
          *&v405[136] = v75;
          v405[144] = v76;
          v84 = sub_245F8E744(v405, &qword_27EE3A990, &qword_246099C20);
          LODWORD(v368) = 0;
          v75 = *(&v404[8] + 1);
          v428 = *&v404[8];
          v426 = v404[6];
          v427 = v404[7];
          v422 = v404[2];
          v423 = v404[3];
          v425 = v404[5];
          v424 = v404[4];
          v421 = v404[1];
          v420 = v404[0];
          v366 = 0u;
          v367 = 0u;
          v76 = v404[9];
          v365 = 0u;
          v419 = v404[9];
        }
      }

      v107 = *((*v79 & *v3) + 0x410);
      v339 = (*v79 & *v3) + 1040;
      v340 = v107;
      (v107)(v404, v84);
      v364 = v74;
      if (*&v404[0] == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
        *&v405[96] = v426;
        *&v405[112] = v427;
        *&v405[32] = v422;
        *&v405[48] = v423;
        *&v405[80] = v425;
        *&v405[64] = v424;
        *&v405[16] = v421;
        *v405 = v420;
        *&v405[128] = v428;
        *&v405[136] = v75;
        v405[144] = v76;
        if (sub_245F97C14(v405) != 1)
        {
          v75 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID);
          v419 = 0;
        }

        if ((v74 & 1) == 0)
        {
          v108 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID);
          v418 = 0;
          goto LABEL_28;
        }
      }

      else
      {
        sub_246077B30(*&v404[0]);
        sub_246077B30(0xF);
      }

      v108 = 0;
LABEL_28:
      v109 = v387.i64[0];
      v110 = *(v387.i64[0] + 16);
      v111 = v384.i64[0];
      v112 = v390.i64[0];
      v383 = v387.i64[0] + 16;
      v382 = v110;
      v110(v384.i64[0], v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_identifier, v390.i64[0]);
      v351 = *(v109 + 56);
      v352 = v109 + 56;
      result = v351(v111, 0, 1, v112);
      v414 = v426;
      v415 = v427;
      v410 = v422;
      v411 = v423;
      v413 = v425;
      v412 = v424;
      v409 = v421;
      v408 = v420;
      *&v416 = v428;
      *(&v416 + 1) = v75;
      v417 = v419;
      v388 = v3;
      v114 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager);
      if (!v114)
      {
        __break(1u);
        goto LABEL_121;
      }

      v115 = v418;
      sub_24601E2C0(v430, v405);
      sub_245F8E7A4(&v408, v405, &qword_27EE3A990, &qword_246099C20);
      v116 = [v114 deviceMotion];
      v117 = v116;
      v363 = v75;
      v362 = v115;
      if (v116)
      {
        [v116 gravity];
        v119 = v118;
        v121 = v120;
        v123 = v122;
      }

      else
      {
        v119 = 0;
        v121 = 0;
        v123 = 0;
      }

      v124 = v117 == 0;
      v3 = v388;
      v125 = &v388[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame];
      swift_beginAccess();
      memcpy(v404, v125, sizeof(v404));
      memcpy(v403, v125, sizeof(v403));
      v126 = *(&v404[29] + 1);
      memcpy(v402, v125 + 480, sizeof(v402));
      memcpy(v405, v125, sizeof(v405));
      memcpy(v407, v125 + 480, sizeof(v407));
      v406 = *(&v404[29] + 1);
      v127 = sub_246081984(v405);
      v128 = v127 == 1;
      if (v127 == 1)
      {
        v129 = 0;
      }

      else
      {
        v129 = v126;
      }

      v130 = *(&v438[24] + 1);
      memcpy(v399, v403, sizeof(v399));
      v400 = v126;
      memcpy(v401, v402, sizeof(v401));
      v338 = *(&v438[24] + 1);
      sub_245F8E7A4(v404, v398, &qword_27EE3A9F0, &qword_246099CE0);
      sub_245F8E744(v399, &qword_27EE3A9F0, &qword_246099CE0);
      v10 = v386;
      *v386 = v2;
      memcpy(v10 + 16, v430, 0x188uLL);
      v131 = v380;
      sub_245FC5914(v384.i64[0], &v10[*(v380 + 24)], &qword_27EE3A350, &unk_2460969A0);
      v132 = &v10[v131[7]];
      v133 = v415;
      *(v132 + 6) = v414;
      *(v132 + 7) = v133;
      *(v132 + 8) = v416;
      v132[144] = v417;
      v134 = v411;
      *(v132 + 2) = v410;
      *(v132 + 3) = v134;
      v135 = v413;
      *(v132 + 4) = v412;
      *(v132 + 5) = v135;
      v136 = v409;
      *v132 = v408;
      *(v132 + 1) = v136;
      v137 = &v10[v131[8]];
      v139 = v366;
      v138 = v367;
      *v137 = v369;
      *(v137 + 1) = v138;
      v140 = v365;
      *(v137 + 2) = v139;
      *(v137 + 3) = v140;
      *(v137 + 8) = v108;
      v137[72] = v362;
      v137[73] = v364;
      v10[v131[9]] = v368;
      v141 = &v10[v131[10]];
      *v141 = v119;
      *(v141 + 1) = v121;
      *(v141 + 2) = v123;
      v141[24] = v124;
      *&v10[v131[11]] = v130;
      v142 = &v10[v131[12]];
      *v142 = v129;
      v142[8] = v128;
      v143 = v131[13];
      *&v10[v143] = MEMORY[0x277D84F90];
      v144 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
      v145 = v385;
      v146 = isa;
      if (v144)
      {
        memcpy(v398, v438, 0x191uLL);
        LOBYTE(v391[0]) = 4;

        v147 = sub_246023604(v391);
        v148 = v381.i8[0];
        v150 = v373;
        v149 = v374;
        v152 = v371;
        v151 = v372;
        if (!v147)
        {
          v149 = 0uLL;
          v148 = v429;
          v150 = 0uLL;
          v151 = 0uLL;
          v152 = 0uLL;
        }

        v436[0] = v149;
        v436[1] = v150;
        v436[2] = v151;
        v436[3] = v152;
        v437 = v148;
        v153 = (*(*v144 + 496))(v389.i64[0], v398, v436);
        v154 = v361;
        if (v153)
        {
          v155 = LOBYTE(v438[25]);
          v156 = sub_245FA3174();
          v157 = *(v146 + 2);
          v375 = v146 + 16;
          *&v369 = v157;
          if (v155 == 1)
          {
            v157(v154, v156, v145);
            v158 = v335;
            v159 = v390.i64[0];
            v382(v335, v389.i64[0], v390.i64[0]);
            v160 = sub_2460918D4();
            v384.i32[0] = sub_246091FC4();
            if (os_log_type_enabled(v160, v384.i8[0]))
            {
              v161 = swift_slowAlloc();
              v368 = swift_slowAlloc();
              *&v398[0] = v368;
              *v161 = 136380931;
              *(v161 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v398);
              *(v161 + 12) = 2082;
              *&v366 = v160;
              v162 = sub_2460917F4();
              v164 = v163;
              *&v367 = *(v387.i64[0] + 8);
              (v367)(v158, v159);
              v165 = sub_245F8D3C0(v162, v164, v398);
              v145 = v385;

              *(v161 + 14) = v165;
              v166 = v366;
              _os_log_impl(&dword_245F8A000, v366, v384.i8[0], "ObjectCaptureSession.%{private}s: Added shot %{public}s taken by automatic capture.", v161, 0x16u);
              v167 = v368;
              swift_arrayDestroy();
              MEMORY[0x24C1989D0](v167, -1, -1);
              v168 = v161;
              v10 = v386;
              MEMORY[0x24C1989D0](v168, -1, -1);
            }

            else
            {

              *&v367 = *(v387.i64[0] + 8);
              (v367)(v158, v159);
            }

            v206 = *(v146 + 1);
            v207 = v206(v361, v145);
          }

          else
          {
            v157(v344, v156, v145);
            v195 = v333;
            v196 = v390.i64[0];
            v382(v333, v389.i64[0], v390.i64[0]);
            v197 = sub_2460918D4();
            v384.i32[0] = sub_246091FC4();
            if (os_log_type_enabled(v197, v384.i8[0]))
            {
              v198 = swift_slowAlloc();
              v368 = swift_slowAlloc();
              *&v398[0] = v368;
              *v198 = 136380931;
              *(v198 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v398);
              *(v198 + 12) = 2082;
              *&v366 = v197;
              v199 = sub_2460917F4();
              v201 = v200;
              *&v367 = *(v387.i64[0] + 8);
              (v367)(v195, v196);
              v202 = sub_245F8D3C0(v199, v201, v398);
              v145 = v385;

              *(v198 + 14) = v202;
              v203 = v366;
              _os_log_impl(&dword_245F8A000, v366, v384.i8[0], "ObjectCaptureSession.%{private}s: Added  shot %{public}s taken by manual capture.", v198, 0x16u);
              v204 = v368;
              swift_arrayDestroy();
              MEMORY[0x24C1989D0](v204, -1, -1);
              v205 = v198;
              v10 = v386;
              MEMORY[0x24C1989D0](v205, -1, -1);
            }

            else
            {

              *&v367 = *(v387.i64[0] + 8);
              (v367)(v195, v196);
            }

            v206 = *(v146 + 1);
            v207 = v206(v344, v145);
          }

          if (*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__captureRateControlEnabled) == 1)
          {
            if (*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown + 8))
            {
              v208 = v328(v207);
              v209 = *v144;
              if (v208)
              {
                (*(v209 + 544))();
              }

              else
              {
                (*(v209 + 536))();
              }
            }

            else
            {
              (*(*v144 + 552))(v207, *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown));
            }
          }

          v210 = *sub_246020998();
          v384.i64[0] = MEMORY[0x277D84F90];
          v368 = v206;
          if (v210 != 1)
          {
LABEL_73:
            v37 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
            swift_beginAccess();
            v68 = *(*&v37[v3] + 16);
            if (qword_27EE3DC00 == -1)
            {
              goto LABEL_74;
            }

            goto LABEL_117;
          }

          v211 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer;
          if (*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer))
          {
            v212 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer);

            v213 = sub_24608F79C();

            v214 = *(v3 + v211);
            v384.i64[0] = v213;
            *&v10[v143] = v213;
            if (v214)
            {
              v215 = *(*v214 + 240);

              v215(v216);
              v3 = v388;
            }
          }

          else
          {
            v217 = MEMORY[0x277D84F90];
            *&v10[v143] = MEMORY[0x277D84F90];
            v384.i64[0] = v217;
          }

          v218 = v390.i64[0];
          v220 = v336;
          v219 = v337;
          v221 = sub_245FA3174();
          (v369)(v219, v221, v145);
          v382(v220, v389.i64[0], v218);
          v38 = sub_2460918D4();
          LOBYTE(v10) = sub_246091FC4();
          if (!os_log_type_enabled(v38, v10))
          {

            (v367)(v220, v218);
            v206(v219, v145);
            goto LABEL_72;
          }

          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *&v398[0] = v71;
          *v70 = 136381187;
          *(v70 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v398);
          *(v70 + 12) = 2050;
          if (!(v384.i64[0] >> 62))
          {
            v222 = *((v384.i64[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_70:
            *(v70 + 14) = v222;
            *(v70 + 22) = 2082;
            v223 = v336;
            v224 = sub_2460917F4();
            v226 = v225;
            (v367)(v223, v390.i64[0]);
            v227 = sub_245F8D3C0(v224, v226, v398);

            *(v70 + 24) = v227;
            _os_log_impl(&dword_245F8A000, v38, v10, "ObjectCaptureSession.%{private}s: Added %{public}ld\nframes of temporal LiDAR point cloud to metadata of id = %{public}s.", v70, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x24C1989D0](v71, -1, -1);
            MEMORY[0x24C1989D0](v70, -1, -1);

            v368(v337, v385);
LABEL_72:
            v10 = v386;
            goto LABEL_73;
          }

LABEL_119:
          v222 = sub_246092354();
          goto LABEL_70;
        }
      }

      v169 = sub_245FA3174();
      v170 = *(v146 + 2);
      v171 = v375;
      v388 = v169;
      v384.i64[0] = v170;
      v170(v375);
      v172 = v356;
      v173 = v390.i64[0];
      v382(v356, v389.i64[0], v390.i64[0]);
      v174 = v146;
      v175 = sub_2460918D4();
      v176 = v145;
      v177 = sub_246091FB4();
      if (os_log_type_enabled(v175, v177))
      {
        v178 = swift_slowAlloc();
        v179 = v172;
        v180 = swift_slowAlloc();
        *&v398[0] = v180;
        *v178 = 136380931;
        *(v178 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v398);
        *(v178 + 12) = 2082;
        v181 = sub_2460917F4();
        v182 = v173;
        v184 = v183;
        (*(v387.i64[0] + 8))(v179, v182);
        v185 = sub_245F8D3C0(v181, v184, v398);

        *(v178 + 14) = v185;
        _os_log_impl(&dword_245F8A000, v175, v177, "ObjectCaptureSession.%{private}s: Failed to add shot of id = %{public}s to automatic capture!", v178, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v180, -1, -1);
        v186 = v385;
        MEMORY[0x24C1989D0](v178, -1, -1);

        v187 = *(v174 + 1);
        v187(v375, v186);
        v188 = v378;
        v189 = v355;
      }

      else
      {

        (*(v387.i64[0] + 8))(v172, v173);
        v187 = *(v174 + 1);
        v187(v171, v176);
        v188 = v378;
        v189 = v355;
        v186 = v176;
      }

      (v384.i64[0])(v189, v388, v186);
      sub_245FCFDFC(v438, v398);
      v190 = sub_2460918D4();
      v191 = sub_246091FC4();
      sub_245FCFE58(v438);
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *&v398[0] = v193;
        *v192 = 136380931;
        *(v192 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v398);
        *(v192 + 12) = 2050;
        *(v192 + 14) = v2;
        _os_log_impl(&dword_245F8A000, v190, v191, "ObjectCaptureSession.%{private}s: High-resolution pixel buffer %{public}f has been released because the shot has been rejected.", v192, 0x16u);
        sub_245F8E6F4(v193);
        MEMORY[0x24C1989D0](v193, -1, -1);
        MEMORY[0x24C1989D0](v192, -1, -1);

        sub_24601E31C(v430);
      }

      else
      {

        sub_24601E31C(v430);
      }

      v187(v189, v186);
      v194 = v386;
      goto LABEL_113;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_117:
  swift_once();
LABEL_74:
  v228 = qword_27EE3DC08;
  v229 = v350;
  if (v68 >= qword_27EE3DC08)
  {
    v232 = v3;
    v233 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPgManagerTornDown;
    if ((*(v232 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPgManagerTornDown) & 1) == 0)
    {
      v234 = sub_245FA3174();
      v235 = v385;
      (v369)(v229, v234, v385);
      v236 = v388;
      *&v367 = v388;
      v237 = sub_2460918D4();
      v238 = sub_246091FC4();
      if (os_log_type_enabled(v237, v238))
      {
        v239 = swift_slowAlloc();
        v240 = swift_slowAlloc();
        *&v398[0] = v240;
        *v239 = 136381187;
        *(v239 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v398);
        *(v239 + 12) = 2050;
        *(v239 + 14) = *(*&v37[v236] + 16);

        *(v239 + 22) = 2050;
        *(v239 + 24) = v228;
        _os_log_impl(&dword_245F8A000, v237, v238, "ObjectCaptureSession.%{private}s: Turned off mobileSfM because number of images (%{public}ld) exceeded the limit %{public}ld", v239, 0x20u);
        sub_245F8E6F4(v240);
        MEMORY[0x24C1989D0](v240, -1, -1);
        v241 = v239;
        v10 = v386;
        MEMORY[0x24C1989D0](v241, -1, -1);

        v242 = v350;
        v243 = v385;
      }

      else
      {

        v242 = v229;
        v243 = v235;
      }

      v368(v242, v243);
      v236[v233] = 1;
      v265 = *(v367 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager);
      if (v265)
      {
        v266 = *(*v265 + 640);
        v267 = *(v367 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager);

        v266(v268);
      }
    }
  }

  else
  {
    v230 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager);
    if (v230)
    {
      *&v398[0] = v2;
      *(&v398[0] + 1) = v376;
      *&v398[1] = v378;
      *(&v398[1] + 1) = v353;
      *&v398[2] = DataBuffer;
      swift_beginAccess();

      v231 = v332;
      static PhotogrammetrySample.makeSample(shot:shotMetadata:)(v398, v10, v332);
      if ((*(v330 + 48))(v231, 1, v331) == 1)
      {

        sub_245F8E744(v231, &qword_27EE3A5B8, &qword_246098418);
        if ((v381.i8[0] & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v244 = v327;
        sub_24608199C(v231, v327, type metadata accessor for PhotogrammetrySample);
        (*(*v230 + 616))(v244);
        v245 = *v244;
        v246 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotUUIDToIDMap;
        v247 = v388;
        swift_beginAccess();
        v248 = *&v247[v246];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v391[0] = *&v247[v246];
        *&v247[v246] = 0x8000000000000000;
        v250 = v389.i64[0];
        sub_24607470C(v245, v389.i64[0], isUniquelyReferenced_nonNull_native);
        *&v247[v246] = *&v391[0];
        swift_endAccess();
        v251 = v324;
        v252 = v390.i64[0];
        v382(v324, v250, v390.i64[0]);
        v351(v251, 0, 1, v252);
        swift_beginAccess();
        v253 = v244;
        sub_24604CF20(v251, v245);
        swift_endAccess();
        v254 = sub_245FA3174();
        v255 = v326;
        v256 = v385;
        (v369)(v326, v254, v385);
        v257 = v244;
        v258 = v325;
        sub_246081A04(v257, v325, type metadata accessor for PhotogrammetrySample);
        v259 = sub_2460918D4();
        v260 = sub_246091FC4();
        if (os_log_type_enabled(v259, v260))
        {
          v261 = swift_slowAlloc();
          v262 = swift_slowAlloc();
          *&v398[0] = v262;
          *v261 = 136380931;
          *(v261 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v398);
          *(v261 + 12) = 2050;
          v263 = *v258;
          sub_246081A6C(v258, type metadata accessor for PhotogrammetrySample);
          *(v261 + 14) = v263;
          _os_log_impl(&dword_245F8A000, v259, v260, "ObjectCaptureSession.%{private}s: Added shot sample of id = %{public}ld to mobileSfM.", v261, 0x16u);
          sub_245F8E6F4(v262);
          MEMORY[0x24C1989D0](v262, -1, -1);
          MEMORY[0x24C1989D0](v261, -1, -1);

          v368(v326, v256);
          v264 = v327;
        }

        else
        {
          sub_246081A6C(v258, type metadata accessor for PhotogrammetrySample);

          v368(v255, v256);
          v264 = v253;
        }

        sub_246081A6C(v264, type metadata accessor for PhotogrammetrySample);
        v10 = v386;
        if ((v381.i8[0] & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      goto LABEL_88;
    }
  }

  if ((v381.i8[0] & 1) == 0)
  {
LABEL_91:
    v439.columns[1] = v373;
    v439.columns[0] = v374;
    v439.columns[3] = v371;
    v439.columns[2] = v372;
    v440 = __invert_f4(v439);
    v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440.columns[0], v360.f32[0]), v440.columns[1], *v360.f32, 1), v440.columns[2], v360, 2), v440.columns[3], v360, 3);
    v374 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440.columns[0], v359.f32[0]), v440.columns[1], *v359.f32, 1), v440.columns[2], v359, 2), v440.columns[3], v359, 3);
    v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440.columns[0], v357.f32[0]), v440.columns[1], *v357.f32, 1), v440.columns[2], v357, 2), v440.columns[3], v357, 3);
    v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v440.columns[0], v358.f32[0]), v440.columns[1], *v358.f32, 1), v440.columns[2], v358, 2), v440.columns[3], v358, 3);
    v269 = v388;
    v272 = *&v388[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers];
    sub_24606BC10();
    v398[0] = v381;
    v398[1] = v374;
    v398[2] = v373;
    v271 = v372;
    goto LABEL_92;
  }

LABEL_88:
  v269 = v388;
  v270 = *&v388[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers];
  sub_24606BC10();
  v398[0] = v360;
  v398[1] = v359;
  v271 = v357;
  v398[2] = v358;
LABEL_92:
  v398[3] = v271;
  sub_246091924();

  v273 = v349;
  v274 = v340;
  v275 = objc_allocWithZone(type metadata accessor for ObjectCaptureSession.ShotAnchor());
  v276 = sub_246091804();
  v277 = [v275 initWithIdentifier:v276 transform:{*v360.i64, *v359.i64, *v358.i64, *v357.i64}];

  v274(v398);
  if (*&v398[0] == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    [*&v269[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession] addAnchor_];
  }

  else
  {
    sub_246077B30(*&v398[0]);
    sub_246077B30(0xF);
  }

  swift_beginAccess();
  v278 = v277;
  v279 = *&v37[v269];
  v280 = swift_isUniquelyReferenced_nonNull_native();
  *&v391[0] = *&v37[v269];
  *&v37[v269] = 0x8000000000000000;
  v381.i64[0] = v278;
  sub_2460743B8(v278, v389.i64[0], v280);
  *&v37[v269] = *&v391[0];
  swift_endAccess();
  v281 = *&v269[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers];
  sub_24606BFC0();
  swift_beginAccess();
  v282 = v346;
  v283 = *(v345 + 48);
  *v346 = v2;
  v284 = v376;
  v285 = v378;
  v282[1] = v376;
  v282[2] = v285;
  v286 = DataBuffer;
  v282[3] = v353;
  v282[4] = v286;
  sub_246081A04(v10, v282 + v283, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  v374.i64[0] = v286;
  v287 = v284;
  v378 = v285;
  DataBuffer = v370;
  sub_246091924();

  sub_245F8E744(v282, &qword_27EE3A738, &qword_246098890);
  sub_24606C600();
  v288 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  swift_beginAccess();
  v289 = *&v388[v288];
  v290 = *&v388[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane];
  if (v290)
  {
    v291 = *&v388[v288];

    v292 = [v290 identifier];
    v293 = v343;
    sub_246091814();

    v351(v293, 0, 1, v390.i64[0]);
  }

  else
  {
    v293 = v343;
    v351(v343, 1, 1, v390.i64[0]);
  }

  v294 = *(v348 + 48);
  v295 = *(v348 + 64);
  *v273 = v289;
  sub_245FC5914(v293, v273 + v294, &qword_27EE3A350, &unk_2460969A0);
  *(v273 + v295) = v2;
  sub_246091924();

  sub_245F8E744(v273, &unk_27EE3AD50, &unk_24609AD00);
  v296 = *&v438[2];
  v394 = *(&v438[2] + 8);
  v395 = *(&v438[3] + 8);
  v396 = *(&v438[4] + 8);
  v397 = *(&v438[5] + 8);
  v297 = v386;
  if (*&v438[2])
  {
    v392[2] = v438[4];
    v392[3] = v438[5];
    v393 = *&v438[6];
    v392[0] = v438[2];
    v392[1] = v438[3];
    sub_24601E370(v392, v398);
    sub_24606C850();
    *(v391 + 8) = v394;
    *(&v391[1] + 8) = v395;
    *(&v391[2] + 8) = v396;
    *(&v391[3] + 8) = v397;
    *&v391[0] = v296;
    *(&v391[4] + 1) = v2;
    sub_246091924();

    v398[2] = v391[2];
    v398[3] = v391[3];
    v398[4] = v391[4];
    v398[1] = v391[1];
    v398[0] = v391[0];
    sub_245F8E744(v398, &unk_27EE3AB00, &qword_246098D68);
  }

  v382(v354, v389.i64[0], v390.i64[0]);
  v298 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment;
  v299 = v388;
  v300 = *&v388[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment];
  v301 = swift_isUniquelyReferenced_nonNull_native();
  *&v299[v298] = v300;
  v302 = v385;
  if ((v301 & 1) == 0)
  {
    v300 = sub_2460722B8(0, v300[2] + 1, 1, v300);
    *&v388[v298] = v300;
  }

  v304 = v300[2];
  v303 = v300[3];
  if (v304 >= v303 >> 1)
  {
    v300 = sub_2460722B8(v303 > 1, v304 + 1, 1, v300);
  }

  v300[2] = v304 + 1;
  v305 = v300 + ((*(v387.i64[0] + 80) + 32) & ~*(v387.i64[0] + 80)) + *(v387.i64[0] + 72) * v304;
  v306 = v390.i64[0];
  (*(v387.i64[0] + 32))(v305, v354, v390.i64[0]);
  v307 = v388;
  *&v388[v298] = v300;
  v308 = v307;
  v309 = v380;
  *(v297 + *(v380 + 52)) = MEMORY[0x277D84F90];
  *(v297 + *(v309 + 44)) = 0;

  v310 = v341;
  v382(v341, v389.i64[0], v306);
  v311 = v342;
  sub_246081A04(v297, v342, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  (*(v347 + 56))(v311, 0, 1, v309);
  swift_beginAccess();
  sub_24604D170(v311, v310);
  swift_endAccess();
  if (v308[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled] != 1)
  {
    goto LABEL_111;
  }

  if (v334[4].i8[0])
  {

    sub_24601E31C(v430);
    goto LABEL_112;
  }

  v312 = *v334;
  v389 = v334[1];
  v390 = v312;
  v313 = v334[3];
  v387 = v334[2];
  v384 = v313;
  result = CVPixelBufferGetHeight(v287);
  if ((v308[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64] & 1) == 0)
  {
    sub_24602181C(v398, v360, v359, v358, v357, *&v308[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox], *&v308[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 16], *&v308[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 32], *&v308[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 48], v390, v389, v387, v384);
    v390 = v398[3];
    v389 = v398[2];
    v387 = v398[1];
    v384 = v398[0];
    v314 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface;
    swift_beginAccess();
    v315 = *&v308[v314];
    if (OCProxySurfaceCoverageGuideAddCameraShot())
    {
      v316 = sub_245FA3174();
      v317 = v323;
      (v369)(v323, v316, v302);
      sub_245FCFDFC(v438, v398);
      v318 = sub_2460918D4();
      v319 = sub_246091FB4();
      sub_245FCFE58(v438);
      if (os_log_type_enabled(v318, v319))
      {
        v320 = v297;
        v321 = swift_slowAlloc();
        v322 = swift_slowAlloc();
        *&v398[0] = v322;
        *v321 = 136380931;
        *(v321 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v398);
        *(v321 + 12) = 2050;
        *(v321 + 14) = v2;
        _os_log_impl(&dword_245F8A000, v318, v319, "ObjectCaptureSession.%{private}s: Failed to add camera for coverage guide at still image capture at timestamp %{public}f!", v321, 0x16u);
        sub_245F8E6F4(v322);
        MEMORY[0x24C1989D0](v322, -1, -1);
        MEMORY[0x24C1989D0](v321, -1, -1);

        sub_24601E31C(v430);
        v368(v317, v302);
        v194 = v320;
LABEL_113:
        sub_246081A6C(v194, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        v398[6] = v426;
        v398[7] = v427;
        v398[2] = v422;
        v398[3] = v423;
        v398[5] = v425;
        v398[4] = v424;
        v398[1] = v421;
        v398[0] = v420;
        *&v398[8] = v428;
        *(&v398[8] + 1) = v363;
        LOBYTE(v398[9]) = v419;
        return sub_245F8E744(v398, &qword_27EE3A990, &qword_246099C20);
      }

      sub_24601E31C(v430);

      v368(v317, v302);
LABEL_112:
      v194 = v297;
      goto LABEL_113;
    }

LABEL_111:

    sub_24601E31C(v430);
    goto LABEL_112;
  }

LABEL_121:
  __break(1u);
  return result;
}