void sub_1D0F5C554()
{
  if (!qword_1EC5FC7F8)
  {
    sub_1D0F304E4();
    sub_1D0F5C67C(&qword_1EE070B40, sub_1D0F304E4);
    v0 = sub_1D0FF5DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC7F8);
    }
  }
}

void sub_1D0F5C5E8()
{
  if (!qword_1EE071058)
  {
    sub_1D0FF4468();
    sub_1D0F5C67C(&qword_1EE071240, MEMORY[0x1E6969AD0]);
    v0 = sub_1D0FF5DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE071058);
    }
  }
}

uint64_t sub_1D0F5C67C(unint64_t *a1, void (*a2)(uint64_t))
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

void static CameraAuthorizationSupport.checkOrRequestCameraAccessIfNeeded(_:)(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_1D0FF4C18();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D0FF5248();
  v50 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D0FF5268();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x1E6987608];
  v14 = objc_opt_self();
  v15 = [v14 authorizationStatusForMediaType_];
  v16 = v15;
  if ((v15 - 2) < 2)
  {
    sub_1D0F5CFEC();
    v23 = sub_1D0FF5B38();
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = v51;
    v24[4] = v16;
    v57 = sub_1D0F5D96C;
    v58 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v54 = 1107296256;
    v55 = sub_1D0F1E1EC;
    v56 = &block_descriptor_18;
    v25 = _Block_copy(&aBlock);

    sub_1D0FF5258();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D0F5D3D0(&qword_1EE071288, MEMORY[0x1E69E7F60]);
    sub_1D0F5D378();
    sub_1D0F5D3D0(&qword_1EE071278, sub_1D0F5D378);
    sub_1D0FF5CC8();
    MEMORY[0x1D3881150](0, v12, v8, v25);
    _Block_release(v25);

    (*(v50 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v45 = v6;
    v46 = v12;
    v17 = v51;
    v47 = v10;
    if (v15)
    {
      if (v15 == 1)
      {
        sub_1D0F5CFEC();
        v18 = sub_1D0FF5B38();
        v19 = swift_allocObject();
        v19[2] = a1;
        v19[3] = v17;
        v19[4] = 1;
        v57 = sub_1D0F5D870;
        v58 = v19;
        aBlock = MEMORY[0x1E69E9820];
        v54 = 1107296256;
        v55 = sub_1D0F1E1EC;
        v56 = &block_descriptor_12;
        v20 = _Block_copy(&aBlock);

        v21 = v46;
        sub_1D0FF5258();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1D0F5D3D0(&qword_1EE071288, MEMORY[0x1E69E7F60]);
        sub_1D0F5D378();
        sub_1D0F5D3D0(&qword_1EE071278, sub_1D0F5D378);
        v22 = v45;
        sub_1D0FF5CC8();
        MEMORY[0x1D3881150](0, v21, v8, v20);
        _Block_release(v20);

        (*(v50 + 8))(v8, v22);
        (*(v47 + 8))(v21, v9);
      }

      else
      {
        v44 = v9;
        sub_1D0FF4BC8();
        v29 = sub_1D0FF4C08();
        v30 = sub_1D0FF5958();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock = v43;
          *v31 = 136315394;
          *(v31 + 4) = sub_1D0F1AE0C(0xD00000000000001ALL, 0x80000001D0FFAD50, &aBlock);
          *(v31 + 12) = 2080;
          v52 = v16;
          type metadata accessor for AVAuthorizationStatus(0);
          v32 = sub_1D0FF5448();
          v34 = sub_1D0F1AE0C(v32, v33, &aBlock);

          *(v31 + 14) = v34;
          _os_log_impl(&dword_1D0F17000, v29, v30, "%s Camera Access: Unexpected return value %s", v31, 0x16u);
          v35 = v43;
          swift_arrayDestroy();
          MEMORY[0x1D3882680](v35, -1, -1);
          MEMORY[0x1D3882680](v31, -1, -1);
        }

        (*(v48 + 8))(v5, v49);
        v37 = v46;
        v36 = v47;
        v38 = v17;
        v39 = v45;
        sub_1D0F5CFEC();
        v40 = sub_1D0FF5B38();
        v41 = swift_allocObject();
        v41[2] = a1;
        v41[3] = v38;
        v41[4] = v16;
        v57 = sub_1D0F5D96C;
        v58 = v41;
        aBlock = MEMORY[0x1E69E9820];
        v54 = 1107296256;
        v55 = sub_1D0F1E1EC;
        v56 = &block_descriptor_3;
        v42 = _Block_copy(&aBlock);

        sub_1D0FF5258();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1D0F5D3D0(&qword_1EE071288, MEMORY[0x1E69E7F60]);
        sub_1D0F5D378();
        sub_1D0F5D3D0(&qword_1EE071278, sub_1D0F5D378);
        sub_1D0FF5CC8();
        MEMORY[0x1D3881150](0, v37, v8, v42);
        _Block_release(v42);

        (*(v50 + 8))(v8, v39);
        (*(v36 + 8))(v37, v44);
      }
    }

    else
    {
      v26 = swift_allocObject();
      v26[2] = a1;
      v26[3] = v17;
      v26[4] = v13;
      v57 = sub_1D0F5D864;
      v58 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_1D0F5D324;
      v56 = &block_descriptor_6;
      v27 = _Block_copy(&aBlock);

      v28 = v13;

      [v14 requestAccessForMediaType:v28 completionHandler:v27];
      _Block_release(v27);
    }
  }
}

unint64_t sub_1D0F5CFEC()
{
  result = qword_1EE071270;
  if (!qword_1EE071270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE071270);
  }

  return result;
}

uint64_t sub_1D0F5D038(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D0FF5248();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D0FF5268();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F5CFEC();
  v14 = sub_1D0FF5B38();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  aBlock[4] = sub_1D0F5D8F0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F1E1EC;
  aBlock[3] = &block_descriptor_31;
  v16 = _Block_copy(aBlock);

  v17 = a4;

  sub_1D0FF5258();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D0F5D3D0(&qword_1EE071288, MEMORY[0x1E69E7F60]);
  sub_1D0F5D378();
  sub_1D0F5D3D0(&qword_1EE071278, sub_1D0F5D378);
  sub_1D0FF5CC8();
  MEMORY[0x1D3881150](0, v13, v10, v16);
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_1D0F5D324(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1D0F5D378()
{
  if (!qword_1EE071280)
  {
    sub_1D0FF5248();
    v0 = sub_1D0FF56E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE071280);
    }
  }
}

uint64_t sub_1D0F5D3D0(unint64_t *a1, void (*a2)(uint64_t))
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

void static CameraAuthorizationSupport.presentCameraAccessDeniedAlert(on:)(void *a1)
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  sub_1D0FF4108();
  sub_1D0FF4108();
  v1 = sub_1D0FF53E8();

  v2 = sub_1D0FF53E8();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:{1, 0xE000000000000000}];

  sub_1D0FF4108();
  v4 = sub_1D0FF53E8();

  v5 = objc_opt_self();
  v6 = [v5 actionWithTitle:v4 style:1 handler:{0, 0xE000000000000000}];

  [v3 addAction_];
  sub_1D0FF4108();
  v7 = sub_1D0FF53E8();

  aBlock[4] = sub_1D0F5D7D4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F5D76C;
  aBlock[3] = &block_descriptor_21;
  v8 = _Block_copy(aBlock);

  v9 = [v5 actionWithTitle:v7 style:0 handler:{v8, 0xE000000000000000}];
  _Block_release(v8);

  [v3 addAction_];
  [v3 setPreferredAction_];
  if (a1)
  {
    [a1 presentViewController:v3 animated:1 completion:0];
  }
}

void sub_1D0F5D76C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id static CameraAuthorizationSupport.shouldShowCameraOption()()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isCameraAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0F5D8F0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() authorizationStatusForMediaType_];
  return v1(v2);
}

uint64_t sub_1D0F5D970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = "ready";
  v4 = a1;
  v5 = 0xD00000000000001DLL;
  if (a1 == 4)
  {
    v6 = "trendNotification";
  }

  else
  {
    v5 = 0xD00000000000001ELL;
    v6 = "walkingSteadinessNotification";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "lowHeartRateNotification";
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xD000000000000019;
  if (v4 == 1)
  {
    v10 = "lowCardioFitnessNotification";
  }

  else
  {
    v9 = 0xD000000000000018;
    v10 = "highHeartRateNotification";
  }

  if (!v4)
  {
    v9 = 0xD00000000000001CLL;
    v10 = "ready";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "lowHeartRateNotification";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001DLL;
      v3 = "trendNotification";
    }

    else
    {
      v2 = 0xD00000000000001ELL;
      v3 = "walkingSteadinessNotification";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000019;
      v3 = "lowCardioFitnessNotification";
    }

    else
    {
      v2 = 0xD000000000000018;
      v3 = "highHeartRateNotification";
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D0FF6278();
  }

  return v12 & 1;
}

uint64_t sub_1D0F5DAE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D614E7473726966;
  v4 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v7 = 0x6564496573756572;
      v8 = 0xEF7265696669746ELL;
    }

    else
    {
      v7 = 0xD000000000000010;
      if (v4 == 4)
      {
        v8 = 0x80000001D1003300;
      }

      else
      {
        v8 = 0x80000001D1003320;
      }
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x656D614E7473616CLL;
    if (a1 != 1)
    {
      v6 = 0x616D496F746F6870;
      v5 = 0xEA00000000006567;
    }

    if (a1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x6D614E7473726966;
    }

    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xE900000000000065;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0x80000001D1003300;
      }

      else
      {
        v2 = 0x80000001D1003320;
      }

      if (v7 != 0xD000000000000010)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v3 = 0x6564496573756572;
    v2 = 0xEF7265696669746ELL;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xE800000000000000;
      if (v7 != 0x656D614E7473616CLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEA00000000006567;
      if (v7 != 0x616D496F746F6870)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_28;
  }

  if (v7 != v3)
  {
LABEL_31:
    v9 = sub_1D0FF6278();
    goto LABEL_32;
  }

LABEL_28:
  if (v8 != v2)
  {
    goto LABEL_31;
  }

  v9 = 1;
LABEL_32:

  return v9 & 1;
}

uint64_t sub_1D0F5DCE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7972616D697270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7972616974726574;
    }

    else
    {
      v4 = 0x746E65636361;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7261646E6F636573;
    }

    else
    {
      v4 = 0x7972616D697270;
    }

    if (v3)
    {
      v5 = 0xE900000000000079;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x7972616974726574;
  if (a2 != 2)
  {
    v8 = 0x746E65636361;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x7261646E6F636573;
    v6 = 0xE900000000000079;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D0FF6278();
  }

  return v11 & 1;
}

uint64_t sub_1D0F5DE28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xEA00000000003472;
    if (a1 == 6)
    {
      v9 = 0xEA00000000003372;
    }

    v10 = 0xEA00000000003172;
    if (a1 != 4)
    {
      v10 = 0xEA00000000003272;
    }

    v7 = 0x6F6C6F4374786574;
    if (v2 <= 5)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0xE300000000000000;
    v5 = 7107189;
    if (a1 != 2)
    {
      v5 = 0x726F6C6F436762;
      v4 = 0xE700000000000000;
    }

    v6 = 0x746867696568;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x6874646977;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v11 = 0xEA00000000003372;
        if (v7 != 0x6F6C6F4374786574)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v11 = 0xEA00000000003472;
        if (v7 != 0x6F6C6F4374786574)
        {
LABEL_44:
          v12 = sub_1D0FF6278();
          goto LABEL_45;
        }
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xEA00000000003172;
      if (v7 != 0x6F6C6F4374786574)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v11 = 0xEA00000000003272;
      if (v7 != 0x6F6C6F4374786574)
      {
        goto LABEL_44;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0xE300000000000000;
      if (v7 != 7107189)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v7 != 0x726F6C6F436762)
      {
        goto LABEL_44;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE600000000000000;
    if (v7 != 0x746867696568)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v7 != 0x6874646977)
    {
      goto LABEL_44;
    }
  }

  if (v8 != v11)
  {
    goto LABEL_44;
  }

  v12 = 1;
LABEL_45:

  return v12 & 1;
}

uint64_t sub_1D0F5E07C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0x80000001D10031E0;
      v5 = 0xD000000000000017;
    }

    else if (a1 == 4)
    {
      v6 = 0x80000001D1003200;
      v5 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v3 = 0x80000001D10031C0;
    v4 = 0xD00000000000001BLL;
    if (a1 == 1)
    {
      v4 = 0x464364756F6C4369;
      v3 = 0xE900000000000055;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x80000001D10031A0;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = 0x80000001D10031E0;
      if (v5 != 0xD000000000000017)
      {
        goto LABEL_36;
      }
    }

    else if (a2 == 4)
    {
      v8 = 0x80000001D1003200;
      if (v5 != 0xD000000000000012)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v8 = 0xE700000000000000;
      if (v5 != 0x6E776F6E6B6E75)
      {
LABEL_36:
        v9 = sub_1D0FF6278();
        goto LABEL_37;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0x464364756F6C4369;
    }

    else
    {
      v7 = 0xD00000000000001BLL;
    }

    if (a2 == 1)
    {
      v8 = 0xE900000000000055;
    }

    else
    {
      v8 = 0x80000001D10031C0;
    }

    if (v5 != v7)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v8 = 0x80000001D10031A0;
    if (v5 != 0xD000000000000011)
    {
      goto LABEL_36;
    }
  }

  if (v6 != v8)
  {
    goto LABEL_36;
  }

  v9 = 1;
LABEL_37:

  return v9 & 1;
}

uint64_t sub_1D0F5E25C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  if (a1 <= 3u)
  {
    v3 = 0x80000001D1003360;
    v4 = 0xD000000000000016;
    if (a1 != 2)
    {
      v4 = 0xD000000000000019;
      v3 = 0x80000001D1003380;
    }

    v7 = 0x80000001D1003340;
    if (a1)
    {
      v8 = 0xD00000000000001ALL;
    }

    else
    {
      v8 = 0x6C62697369567369;
    }

    if (!a1)
    {
      v7 = 0xE900000000000065;
    }

    v9 = a1 <= 1u;
  }

  else
  {
    v3 = 0x80000001D10033E0;
    v4 = 0xD000000000000020;
    v5 = 0x80000001D1003410;
    v6 = 0xD000000000000017;
    if (a1 != 7)
    {
      v6 = 0xD00000000000001ALL;
      v5 = 0x80000001D1003430;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x80000001D10033A0;
    v8 = 0xD00000000000001CLL;
    if (a1 != 4)
    {
      v8 = 0xD000000000000019;
      v7 = 0x80000001D10033C0;
    }

    v9 = a1 <= 5u;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        if (v10 != 0x6C62697369567369)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      v12 = "isShareableFeedItemEnabled";
      goto LABEL_44;
    }

    if (a2 == 2)
    {
      v2 = 0x80000001D1003360;
      if (v10 != 0xD000000000000016)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    v13 = "dataTypeDetailShareAction";
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001D10033E0;
        if (v10 != 0xD000000000000020)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      if (a2 == 7)
      {
        v2 = 0x80000001D1003410;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      v12 = "healthSharingHealthAppLink";
LABEL_44:
      v2 = (v12 - 32) | 0x8000000000000000;
      if (v10 != 0xD00000000000001ALL)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    if (a2 == 4)
    {
      v2 = 0x80000001D10033A0;
      if (v10 != 0xD00000000000001CLL)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    v13 = "dataTypeDetailContextMenu";
  }

  v2 = (v13 - 32) | 0x8000000000000000;
  if (v10 != 0xD000000000000019)
  {
LABEL_50:
    v14 = sub_1D0FF6278();
    goto LABEL_51;
  }

LABEL_48:
  if (v11 != v2)
  {
    goto LABEL_50;
  }

  v14 = 1;
LABEL_51:

  return v14 & 1;
}

HealthExperience::CloudSyncRestoreState_optional __swiftcall CloudSyncRestoreState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D0FF6088();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CloudSyncRestoreState.rawValue.getter()
{
  v1 = 0x64656C696166;
  v2 = 0x6574656C706D6F63;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1D0F5E5C0()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0F5E688()
{
  sub_1D0FF5488();
}

uint64_t sub_1D0F5E73C()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

void sub_1D0F5E80C(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64656C696166;
  v4 = 0x80000001D1003180;
  v5 = 0x6574656C706D6F63;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001D1003160;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D0F5E894()
{
  v1 = *v0;
  v2 = 0x64656C6261736964;
  v3 = 0x6465636E7973;
  v4 = 0x65636E7953746F6ELL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x647055736465656ELL;
  if (v1 != 1)
  {
    v5 = 0x726F727265;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D0F5E958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0F6194C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0F5E98C(uint64_t a1)
{
  v2 = sub_1D0F61720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F5E9C8(uint64_t a1)
{
  v2 = sub_1D0F61720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F5EA10(uint64_t a1)
{
  v2 = sub_1D0F61680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F5EA4C(uint64_t a1)
{
  v2 = sub_1D0F61680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F5EA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D0FF6278();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D0F5EB08(uint64_t a1)
{
  v2 = sub_1D0F615D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F5EB44(uint64_t a1)
{
  v2 = sub_1D0F615D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F5EB80(uint64_t a1)
{
  v2 = sub_1D0F614DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F5EBBC(uint64_t a1)
{
  v2 = sub_1D0F614DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F5EC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x62616E45636E7973 && a2 == 0xEB0000000064656CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D0FF6278();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D0F5ECA4(uint64_t a1)
{
  v2 = sub_1D0F6162C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F5ECE0(uint64_t a1)
{
  v2 = sub_1D0F6162C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F5ED1C(uint64_t a1)
{
  v2 = sub_1D0F61530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F5ED58(uint64_t a1)
{
  v2 = sub_1D0F61530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F5EDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D1004160 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D0FF6278();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D0F5EE44(uint64_t a1)
{
  v2 = sub_1D0F61584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F5EE80(uint64_t a1)
{
  v2 = sub_1D0F61584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudSyncState.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D0F6182C(0, &qword_1EE06E1C0, sub_1D0F614DC, &type metadata for CloudSyncState.FirstRestoreNotCompleteCodingKeys, MEMORY[0x1E69E6F58]);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v45 - v4;
  sub_1D0F6182C(0, &qword_1EE06E1D0, sub_1D0F61530, &type metadata for CloudSyncState.NotSyncedCodingKeys, v2);
  v58 = v5;
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v45 - v6;
  sub_1D0F6182C(0, &qword_1EE06E1E0, sub_1D0F61584, &type metadata for CloudSyncState.SyncedCodingKeys, v2);
  v63 = v7;
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v45 - v8;
  v9 = sub_1D0FF4348();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F6182C(0, &qword_1EE06E1E8, sub_1D0F615D8, &type metadata for CloudSyncState.ErrorCodingKeys, v2);
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v45 - v12;
  sub_1D0F6182C(0, &qword_1EE06E1C8, sub_1D0F6162C, &type metadata for CloudSyncState.NeedsUpdateCodingKeys, v2);
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v45 - v14;
  sub_1D0F6182C(0, &qword_1EE06E1D8, sub_1D0F61680, &type metadata for CloudSyncState.DisabledCodingKeys, v2);
  v47 = v15;
  v46 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for CloudSyncState();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F6182C(0, &qword_1EE06E1F0, sub_1D0F61720, &type metadata for CloudSyncState.CodingKeys, v2);
  v22 = v21;
  v66 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v45 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F61720();
  v67 = v24;
  sub_1D0FF6438();
  sub_1D0F61774(v68, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v69 = 0;
      sub_1D0F61680();
      v32 = v67;
      sub_1D0FF6178();
      (*(v46 + 8))(v17, v47);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v74 = 4;
      sub_1D0F61530();
      v31 = v54;
      v32 = v67;
      sub_1D0FF6178();
      (*(v56 + 8))(v31, v58);
    }

    else
    {
      v75 = 5;
      sub_1D0F614DC();
      v44 = v62;
      v32 = v67;
      sub_1D0FF6178();
      (*(v64 + 8))(v44, v65);
    }

    return (*(v66 + 8))(v32, v22);
  }

  else if (EnumCaseMultiPayload)
  {
    v26 = v22;
    v27 = v67;
    if (EnumCaseMultiPayload == 1)
    {
      v28 = *v20;
      v72 = 2;
      sub_1D0F615D8();
      v29 = v51;
      sub_1D0FF6178();
      v71 = v28;
      sub_1D0F617D8();
      v30 = v53;
      sub_1D0FF6208();
      (*(v52 + 8))(v29, v30);
    }

    else
    {
      v38 = v59;
      v39 = v55;
      v40 = v20;
      v41 = v60;
      (*(v59 + 32))(v55, v40, v60);
      v73 = 3;
      sub_1D0F61584();
      v42 = v57;
      sub_1D0FF6178();
      sub_1D0F62544(&qword_1EC5FC488, MEMORY[0x1E6969530]);
      v43 = v63;
      sub_1D0FF6208();
      (*(v61 + 8))(v42, v43);
      (*(v38 + 8))(v39, v41);
    }

    return (*(v66 + 8))(v27, v26);
  }

  else
  {
    v70 = 1;
    sub_1D0F6162C();
    v33 = v48;
    v34 = v22;
    v35 = v67;
    sub_1D0FF6178();
    v36 = v50;
    sub_1D0FF61D8();
    (*(v49 + 8))(v33, v36);
    return (*(v66 + 8))(v35, v34);
  }
}

uint64_t CloudSyncState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D0F6182C(0, &qword_1EE06E238, sub_1D0F614DC, &type metadata for CloudSyncState.FirstRestoreNotCompleteCodingKeys, MEMORY[0x1E69E6F48]);
  v74 = v4;
  v70 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v59 - v5;
  sub_1D0F6182C(0, &qword_1EE06E248, sub_1D0F61530, &type metadata for CloudSyncState.NotSyncedCodingKeys, v3);
  v71 = v6;
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v59 - v7;
  sub_1D0F6182C(0, &qword_1EE06E258, sub_1D0F61584, &type metadata for CloudSyncState.SyncedCodingKeys, v3);
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v59 - v9;
  sub_1D0F6182C(0, &qword_1EE06E260, sub_1D0F615D8, &type metadata for CloudSyncState.ErrorCodingKeys, v3);
  v68 = v10;
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v59 - v11;
  sub_1D0F6182C(0, &qword_1EE06E240, sub_1D0F6162C, &type metadata for CloudSyncState.NeedsUpdateCodingKeys, v3);
  v65 = v12;
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v59 - v13;
  sub_1D0F6182C(0, &qword_1EE06E250, sub_1D0F61680, &type metadata for CloudSyncState.DisabledCodingKeys, v3);
  v64 = v14;
  v63 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v59 - v15;
  sub_1D0F6182C(0, &unk_1EE06E268, sub_1D0F61720, &type metadata for CloudSyncState.CodingKeys, v3);
  v81 = v16;
  v79 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v19 = type metadata accessor for CloudSyncState();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v59 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v59 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v59 - v29;
  v31 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D0F61720();
  v32 = v84;
  sub_1D0FF6428();
  if (!v32)
  {
    v59 = v28;
    v60 = v25;
    v33 = v80;
    v61 = v22;
    v34 = v82;
    v62 = v30;
    v84 = v19;
    v35 = v79;
    v36 = v83;
    v37 = v81;
    v38 = sub_1D0FF6158();
    v39 = (2 * *(v38 + 16)) | 1;
    v86 = v38;
    v87 = v38 + 32;
    v88 = 0;
    v89 = v39;
    v40 = sub_1D0F321F4();
    if (v40 != 6 && v88 == v89 >> 1)
    {
      if (v40 > 2u)
      {
        if (v40 == 3)
        {
          v90 = 3;
          sub_1D0F61584();
          sub_1D0FF60A8();
          v49 = v35;
          v80 = v18;
          sub_1D0FF4348();
          sub_1D0F62544(&qword_1EC5FC4C8, MEMORY[0x1E6969530]);
          v50 = v61;
          v51 = v73;
          sub_1D0FF6148();
          (*(v72 + 8))(v34, v51);
          (*(v49 + 8))(v80, v37);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v55 = v50;
LABEL_20:
          v48 = v62;
          sub_1D0F61894(v55, v62);
          goto LABEL_21;
        }

        if (v40 == 4)
        {
          v90 = 4;
          sub_1D0F61530();
          v47 = v78;
          sub_1D0FF60A8();
          (*(v69 + 8))(v47, v71);
        }

        else
        {
          v90 = 5;
          sub_1D0F614DC();
          v54 = v76;
          sub_1D0FF60A8();
          (*(v70 + 8))(v54, v74);
        }

        (*(v35 + 8))(v18, v37);
        swift_unknownObjectRelease();
        v48 = v62;
      }

      else
      {
        if (v40)
        {
          if (v40 == 1)
          {
            v90 = 1;
            sub_1D0F6162C();
            v41 = v75;
            sub_1D0FF60A8();
            v42 = v65;
            v56 = sub_1D0FF6118();
            (*(v66 + 8))(v41, v42);
            (*(v35 + 8))(v18, v37);
            swift_unknownObjectRelease();
            v57 = v56 & 1;
            v58 = v59;
            *v59 = v57;
          }

          else
          {
            v90 = 2;
            sub_1D0F615D8();
            v52 = v77;
            sub_1D0FF60A8();
            sub_1D0F618F8();
            v53 = v68;
            sub_1D0FF6148();
            (*(v67 + 8))(v52, v53);
            (*(v35 + 8))(v18, v37);
            swift_unknownObjectRelease();
            v58 = v60;
            *v60 = v90;
          }

          swift_storeEnumTagMultiPayload();
          v55 = v58;
          goto LABEL_20;
        }

        v90 = 0;
        sub_1D0F61680();
        sub_1D0FF60A8();
        (*(v63 + 8))(v33, v64);
        (*(v35 + 8))(v18, v37);
        swift_unknownObjectRelease();
        v48 = v62;
      }

      swift_storeEnumTagMultiPayload();
LABEL_21:
      sub_1D0F61894(v48, v36);
      return __swift_destroy_boxed_opaque_existential_1Tm(v85);
    }

    v43 = sub_1D0FF5E38();
    swift_allocError();
    v45 = v44;
    sub_1D0F35154();
    *v45 = v84;
    sub_1D0FF60B8();
    sub_1D0FF5E18();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v35 + 8))(v18, v37);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v85);
}

unint64_t CloudSyncError.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x464364756F6C4369;
  if (a1 == 4)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000017;
  }

  if (a1 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D0F60580()
{
  v1 = *v0;
  sub_1D0FF6338();
  CloudSyncError.rawValue.getter(v1);
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0F605E4()
{
  CloudSyncError.rawValue.getter(*v0);
  sub_1D0FF5488();
}

uint64_t sub_1D0F60638()
{
  v1 = *v0;
  sub_1D0FF6338();
  CloudSyncError.rawValue.getter(v1);
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0F60698@<X0>(_BYTE *a1@<X8>)
{
  result = _s16HealthExperience14CloudSyncErrorO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_1D0F606C8@<X0>(unint64_t *a1@<X8>)
{
  result = CloudSyncError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D0F606F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = CloudSyncError.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == CloudSyncError.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D0FF6278();
  }

  return v8 & 1;
}

uint64_t CloudSyncState.init(status:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v4 = sub_1D0FF4348();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D0FF4C18();
  v52 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - v12;
  sub_1D0F3F904();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  if ([a1 accountProhibitedForCloudSync])
  {

    *a2 = 3;
    type metadata accessor for CloudSyncState();
    goto LABEL_10;
  }

  v50 = v8;
  v51 = a2;
  v20 = [a1 accountSupportsSecureContainer];
  v21 = [a1 syncEnabled];
  v22 = v21;
  if (!v20)
  {

    *v51 = v22;
    type metadata accessor for CloudSyncState();
    goto LABEL_10;
  }

  if (!v21)
  {

    type metadata accessor for CloudSyncState();
LABEL_10:

    return swift_storeEnumTagMultiPayload();
  }

  v23 = [a1 errorRequiringUserAction];
  if (v23)
  {
    v24 = v23;
    v25 = _s16HealthExperience14CloudSyncErrorO5errorACs0E0_p_tcfC_0(v24);
    if (v25 < 4u || v25 == 4)
    {
      v31 = sub_1D0FF6278();

      if ((v31 & 1) == 0)
      {
        sub_1D0FF4BC8();
        v32 = sub_1D0FF4C08();
        v33 = sub_1D0FF5958();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v54 = v35;
          *v34 = 136446210;
          LOBYTE(v53) = v25;
          v36 = sub_1D0FF5448();
          v38 = sub_1D0F1AE0C(v36, v37, &v54);

          *(v34 + 4) = v38;
          _os_log_impl(&dword_1D0F17000, v32, v33, "Cloud sync has error requiring user action: %{public}s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v35);
          MEMORY[0x1D3882680](v35, -1, -1);
          MEMORY[0x1D3882680](v34, -1, -1);
        }

        else
        {
        }

        (*(v52 + 8))(v11, v50);
LABEL_31:
        *v51 = v25;
        type metadata accessor for CloudSyncState();
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
    }

    sub_1D0FF4BC8();
    v39 = v24;
    v40 = sub_1D0FF4C08();
    v41 = sub_1D0FF5958();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v53 = v39;
      v54 = v43;
      *v42 = 136446210;
      sub_1D0F1E940();
      v44 = v39;
      v45 = sub_1D0FF5448();
      v47 = sub_1D0F1AE0C(v45, v46, &v54);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1D0F17000, v40, v41, "Unhandled cloud sync error received: %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1D3882680](v43, -1, -1);
      MEMORY[0x1D3882680](v42, -1, -1);
    }

    else
    {
    }

    (*(v52 + 8))(v13, v50);
    goto LABEL_31;
  }

  v26 = [a1 restoreCompletionDate];
  if (v26)
  {
    v27 = v26;
    sub_1D0FF4328();

    (*(v5 + 56))(v19, 0, 1, v4);
    sub_1D0F625F0(v19, sub_1D0F3F904);
    HKCloudSyncObserverStatus.lastPushOrPullDate.getter(v17);

    v28 = (*(v5 + 48))(v17, 1, v4);
    v29 = v51;
    if (v28 == 1)
    {
      sub_1D0F625F0(v17, sub_1D0F3F904);
    }

    else
    {
      v30 = *(v5 + 32);
      v30(v7, v17, v4);
      v30(v29, v7, v4);
    }

    type metadata accessor for CloudSyncState();
  }

  else
  {

    (*(v5 + 56))(v19, 1, 1, v4);
    sub_1D0F625F0(v19, sub_1D0F3F904);
    type metadata accessor for CloudSyncState();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t static CloudSyncState.alertPluginFeedItemUniqueIdentifier(for:)(void *a1)
{
  v2 = sub_1D0FF43A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1D0FF5DE8();
  v6 = [a1 identifier];
  sub_1D0FF4388();

  sub_1D0F62544(&qword_1EE071248, MEMORY[0x1E69695A8]);
  v7 = sub_1D0FF6238();
  v9 = v8;

  v11 = v7;
  v12 = v9;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1D3880AC0](0xD000000000000021, 0x80000001D1004130);
  return v11;
}

uint64_t _s16HealthExperience14CloudSyncStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF4348();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CloudSyncState();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  sub_1D0F6258C();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 56);
  sub_1D0F61774(a1, v19);
  sub_1D0F61774(a2, &v19[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_20;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_20;
    }

    sub_1D0F625F0(v19, type metadata accessor for CloudSyncState);
    v22 = 1;
    return v22 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D0F61774(v19, v13);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = sub_1D0F5E07C(*v13, v19[v20]);
LABEL_16:
        sub_1D0F625F0(v19, type metadata accessor for CloudSyncState);
        return v22 & 1;
      }
    }

    else
    {
      sub_1D0F61774(v19, v10);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v24 = v28;
        (*(v28 + 32))(v6, &v19[v20], v4);
        v22 = sub_1D0FF4318();
        v25 = *(v24 + 8);
        v25(v6, v4);
        v25(v10, v4);
        goto LABEL_16;
      }

      (*(v28 + 8))(v10, v4);
    }

LABEL_20:
    sub_1D0F625F0(v19, sub_1D0F6258C);
    v22 = 0;
    return v22 & 1;
  }

  sub_1D0F61774(v19, v15);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_20;
  }

  v23 = *v15 ^ v19[v20];
  sub_1D0F625F0(v19, type metadata accessor for CloudSyncState);
  v22 = v23 ^ 1;
  return v22 & 1;
}

unint64_t sub_1D0F614DC()
{
  result = qword_1EE070638;
  if (!qword_1EE070638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070638);
  }

  return result;
}

unint64_t sub_1D0F61530()
{
  result = qword_1EE070668;
  if (!qword_1EE070668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070668);
  }

  return result;
}

unint64_t sub_1D0F61584()
{
  result = qword_1EE070698;
  if (!qword_1EE070698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070698);
  }

  return result;
}

unint64_t sub_1D0F615D8()
{
  result = qword_1EE0706B0;
  if (!qword_1EE0706B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0706B0);
  }

  return result;
}

unint64_t sub_1D0F6162C()
{
  result = qword_1EE070650;
  if (!qword_1EE070650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070650);
  }

  return result;
}

unint64_t sub_1D0F61680()
{
  result = qword_1EE070680;
  if (!qword_1EE070680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070680);
  }

  return result;
}

uint64_t type metadata accessor for CloudSyncState()
{
  result = qword_1EE070F70;
  if (!qword_1EE070F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D0F61720()
{
  result = qword_1EE0706C8[0];
  if (!qword_1EE0706C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0706C8);
  }

  return result;
}

uint64_t sub_1D0F61774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D0F617D8()
{
  result = qword_1EC5FC800;
  if (!qword_1EC5FC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC800);
  }

  return result;
}

void sub_1D0F6182C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D0F61894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D0F618F8()
{
  result = qword_1EC5FC808;
  if (!qword_1EC5FC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC808);
  }

  return result;
}

uint64_t sub_1D0F6194C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647055736465656ELL && a2 == 0xEB00000000657461 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465636E7973 && a2 == 0xE600000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E7953746F6ELL && a2 == 0xE900000000000064 || (sub_1D0FF6278() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1004180 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D0FF6278();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t _s16HealthExperience14CloudSyncErrorO5errorACs0E0_p_tcfC_0(void *a1)
{
  v2 = a1;
  sub_1D0F1E940();
  type metadata accessor for HKError(0);
  if (swift_dynamicCast())
  {
    sub_1D0F62544(&qword_1EC5FBFE0, type metadata accessor for HKError);
    v3 = sub_1D0FF4168();

    if ((v3 - 701) <= 5)
    {
      return (0x10004020503uLL >> (8 * (v3 + 67)));
    }

    else
    {
      return 5;
    }
  }

  else
  {

    return 5;
  }
}

uint64_t _s16HealthExperience14CloudSyncErrorO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D0FF6088();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D0F61CA0()
{
  result = qword_1EC5FC810;
  if (!qword_1EC5FC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC810);
  }

  return result;
}

unint64_t sub_1D0F61CF8()
{
  result = qword_1EC5FC818;
  if (!qword_1EC5FC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC818);
  }

  return result;
}

void sub_1D0F61D4C()
{
  sub_1D0F61DC8();
  if (v0 <= 0x3F)
  {
    sub_1D0F61DF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1D0F61DC8()
{
  result = qword_1EE06FA50;
  if (!qword_1EE06FA50)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE06FA50);
  }

  return result;
}

void sub_1D0F61DF8()
{
  if (!qword_1EE070A50)
  {
    v0 = sub_1D0FF4348();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070A50);
    }
  }
}

unint64_t sub_1D0F61EC4()
{
  result = qword_1EC5FC820;
  if (!qword_1EC5FC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC820);
  }

  return result;
}

unint64_t sub_1D0F61F1C()
{
  result = qword_1EC5FC828;
  if (!qword_1EC5FC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC828);
  }

  return result;
}

unint64_t sub_1D0F61F74()
{
  result = qword_1EC5FC830;
  if (!qword_1EC5FC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC830);
  }

  return result;
}

unint64_t sub_1D0F61FCC()
{
  result = qword_1EC5FC838;
  if (!qword_1EC5FC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC838);
  }

  return result;
}

unint64_t sub_1D0F62024()
{
  result = qword_1EE0706B8;
  if (!qword_1EE0706B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0706B8);
  }

  return result;
}

unint64_t sub_1D0F6207C()
{
  result = qword_1EE0706C0;
  if (!qword_1EE0706C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0706C0);
  }

  return result;
}

unint64_t sub_1D0F620D4()
{
  result = qword_1EE070670;
  if (!qword_1EE070670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070670);
  }

  return result;
}

unint64_t sub_1D0F6212C()
{
  result = qword_1EE070678;
  if (!qword_1EE070678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070678);
  }

  return result;
}

unint64_t sub_1D0F62184()
{
  result = qword_1EE070640;
  if (!qword_1EE070640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070640);
  }

  return result;
}

unint64_t sub_1D0F621DC()
{
  result = qword_1EE070648;
  if (!qword_1EE070648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070648);
  }

  return result;
}

unint64_t sub_1D0F62234()
{
  result = qword_1EE0706A0;
  if (!qword_1EE0706A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0706A0);
  }

  return result;
}

unint64_t sub_1D0F6228C()
{
  result = qword_1EE0706A8;
  if (!qword_1EE0706A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0706A8);
  }

  return result;
}

unint64_t sub_1D0F622E4()
{
  result = qword_1EE070688;
  if (!qword_1EE070688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070688);
  }

  return result;
}

unint64_t sub_1D0F6233C()
{
  result = qword_1EE070690;
  if (!qword_1EE070690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070690);
  }

  return result;
}

unint64_t sub_1D0F62394()
{
  result = qword_1EE070658;
  if (!qword_1EE070658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070658);
  }

  return result;
}

unint64_t sub_1D0F623EC()
{
  result = qword_1EE070660;
  if (!qword_1EE070660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070660);
  }

  return result;
}

unint64_t sub_1D0F62444()
{
  result = qword_1EE070628;
  if (!qword_1EE070628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070628);
  }

  return result;
}

unint64_t sub_1D0F6249C()
{
  result = qword_1EE070630;
  if (!qword_1EE070630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070630);
  }

  return result;
}

unint64_t sub_1D0F624F0()
{
  result = qword_1EC5FC840;
  if (!qword_1EC5FC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC840);
  }

  return result;
}

uint64_t sub_1D0F62544(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D0F6258C()
{
  if (!qword_1EE06F668[0])
  {
    type metadata accessor for CloudSyncState();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE06F668);
    }
  }
}

uint64_t sub_1D0F625F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D0F62670(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696BFE8]);

  return [v4 initWithHealthStore:a1 delegate:a2];
}

uint64_t (*static CloudSyncEventPublisherObserver.defaultCloudSyncObserverConstructor.getter())()
{
  swift_beginAccess();
  v0 = off_1EE070D10;

  return v0;
}

uint64_t static CloudSyncEventPublisherObserver.defaultCloudSyncObserverConstructor.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_1EE070D10 = a1;
  qword_1EE070D18 = a2;
}

uint64_t sub_1D0F627C8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = off_1EE070D10;
  v2 = qword_1EE070D18;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = sub_1D0F633F4;
  a1[1] = v4;
}

uint64_t sub_1D0F6284C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  off_1EE070D10 = sub_1D0F633B0;
  qword_1EE070D18 = v3;
}

char *CloudSyncEventPublisherObserver.init(healthStore:makeCloudSyncObserver:)(void *a1, uint64_t (*a2)(id, char *))
{
  v3 = v2;
  v25 = a2;
  sub_1D0F62C44();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC16HealthExperience31CloudSyncEventPublisherObserver_observer] = 0;
  v10 = OBJC_IVAR____TtC16HealthExperience31CloudSyncEventPublisherObserver_subject;
  v27 = 0;
  v28 = -1;
  sub_1D0F62CE0();
  swift_allocObject();
  v11 = sub_1D0FF4F58();
  *&v2[v10] = v11;
  *&v2[OBJC_IVAR____TtC16HealthExperience31CloudSyncEventPublisherObserver_healthStore] = a1;
  v27 = v11;
  sub_1D0F62DB0(&qword_1EE070BC8, sub_1D0F62CE0);

  v12 = a1;
  sub_1D0FF50A8();

  sub_1D0F62DB0(&qword_1EE070C00, sub_1D0F62C44);
  v13 = sub_1D0FF5098();
  (*(v7 + 8))(v9, v6);
  *&v3[OBJC_IVAR____TtC16HealthExperience31CloudSyncEventPublisherObserver_publisher] = v13;
  v14 = type metadata accessor for CloudSyncEventPublisherObserver();
  v26.receiver = v3;
  v26.super_class = v14;
  v15 = objc_msgSendSuper2(&v26, sel_init);
  v16 = v25(v12, v15);
  v17 = OBJC_IVAR____TtC16HealthExperience31CloudSyncEventPublisherObserver_observer;
  v18 = *&v15[OBJC_IVAR____TtC16HealthExperience31CloudSyncEventPublisherObserver_observer];
  *&v15[OBJC_IVAR____TtC16HealthExperience31CloudSyncEventPublisherObserver_observer] = v16;
  v19 = v16;

  [v19 startObservingSyncStatus];
  result = *&v15[v17];
  if (result)
  {
    v21 = [result status];
    if (v21)
    {
      v27 = v21;
      v28 = 2;
      v22 = v21;

      v23 = v22;
      sub_1D0FF4F18();

      sub_1D0F62E1C(v27, v28);
    }

    else
    {
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D0F62C44()
{
  if (!qword_1EE070BF0)
  {
    sub_1D0F62CE0();
    sub_1D0F62DB0(&qword_1EE070BC8, sub_1D0F62CE0);
    v0 = sub_1D0FF4CA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070BF0);
    }
  }
}

void sub_1D0F62CE0()
{
  if (!qword_1EE070BB8)
  {
    sub_1D0F62D48();
    v0 = sub_1D0FF4F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070BB8);
    }
  }
}

void sub_1D0F62D48()
{
  if (!qword_1EE070D00)
  {
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070D00);
    }
  }
}

id sub_1D0F62D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_1D0F6342C(v2, v3);
}

uint64_t sub_1D0F62DB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D0F62E1C(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_1D0F62E30(a1, a2);
  }
}

void sub_1D0F62E30(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

void sub_1D0F62E64(int a1, id a2)
{
  v2 = a2;
  sub_1D0FF4F18();
  sub_1D0F62E1C(a2, 1u);
}

void sub_1D0F62FD0(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v3 = a2;
  sub_1D0FF4F18();
  sub_1D0F62E1C(a2, a3);
}

void sub_1D0F63028(void *a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  v6 = a4;
  v7 = a1;
  sub_1D0FF4F18();

  sub_1D0F62E1C(a4, a5);
}

id CloudSyncEventPublisherObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudSyncEventPublisherObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncEventPublisherObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_16HealthExperience31CloudSyncEventPublisherObserverC0cdE0O(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D0F632FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D0F63344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D0F63388(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D0F633B0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_1D0F633F4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result;
  return result;
}

id sub_1D0F6342C(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1D0F63440(result, a2);
  }

  return result;
}

id sub_1D0F63440(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

uint64_t DataTypesHaveSomeDataPublisher.Data.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 1;
  if ((result & 1) == 0)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

_BYTE *sub_1D0F63488@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 1;
  if (!*result)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D0F634A0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D0FF5068();

  *a1 = v3;
  return result;
}

uint64_t sub_1D0F63520(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D0F65934(v1);

  return sub_1D0FF5078();
}

uint64_t sub_1D0F6359C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D0FF5068();
}

uint64_t sub_1D0F63614()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D0FF5078();
}

void (*sub_1D0F63684(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D0FF5058();
  return sub_1D0F63728;
}

void sub_1D0F63728(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1D0F63790()
{
  swift_beginAccess();
  sub_1D0F63B98(0, &qword_1EC5FC8D8, MEMORY[0x1E695C070]);
  sub_1D0FF5038();
  return swift_endAccess();
}

uint64_t sub_1D0F63818(uint64_t a1)
{
  sub_1D0F63B98(0, &qword_1EC5FC8E0, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_1D0F63B98(0, &qword_1EC5FC8D8, MEMORY[0x1E695C070]);
  sub_1D0FF5048();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1D0F639BC()
{
  swift_beginAccess();
  sub_1D0F63B98(0, &qword_1EC5FC8D8, MEMORY[0x1E695C070]);
  sub_1D0FF5038();
  return swift_endAccess();
}

uint64_t sub_1D0F63A40(uint64_t a1)
{
  sub_1D0F63B98(0, &qword_1EC5FC8E0, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  sub_1D0F63B98(0, &qword_1EC5FC8D8, MEMORY[0x1E695C070]);
  sub_1D0FF5048();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void sub_1D0F63B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for DataTypesHaveSomeDataPublisher.Data);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void (*sub_1D0F63BEC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1D0F63B98(0, &qword_1EC5FC8E0, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher__haveSomeData;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1D0F63B98(0, &qword_1EC5FC8D8, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1D0FF5038();
  swift_endAccess();
  return sub_1D0F63D7C;
}

void sub_1D0F63D7C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1D0FF5048();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1D0FF5048();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t DataTypesHaveSomeDataPublisher.__allocating_init(healthStore:types:anchor:)(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  DataTypesHaveSomeDataPublisher.init(healthStore:types:anchor:)(a1, a2, a3);
  return v6;
}

char *DataTypesHaveSomeDataPublisher.init(healthStore:types:anchor:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v40 = sub_1D0FF4C18();
  v8 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F63B98(0, &qword_1EC5FC8D8, MEMORY[0x1E695C070]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher__haveSomeData;
  v42 = 3;
  sub_1D0FF5028();
  (*(v13 + 32))(&v4[v16], v15, v12);
  v17 = OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher_query;
  sub_1D0F64340();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = 0;
  *&v4[v17] = v18;
  *&v4[OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher_healthStore] = a1;
  v19 = a1;
  sub_1D0FF4B88();

  v20 = sub_1D0FF4C08();
  v21 = sub_1D0FF5978();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v19;
    v23 = v22;
    v24 = swift_slowAlloc();
    v39 = a3;
    v25 = v24;
    v42 = v24;
    *v23 = 136446466;
    v41 = *v4;
    sub_1D0F654EC();
    v26 = sub_1D0FF5448();
    v28 = sub_1D0F1AE0C(v26, v27, &v42);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2082;
    v29 = sub_1D0F1ACD4(0, &qword_1EE070B50);
    v30 = MEMORY[0x1D3880C20](a2, v29);
    v32 = sub_1D0F1AE0C(v30, v31, &v42);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_1D0F17000, v20, v21, "[%{public}s] Initializing query for types: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    v33 = v25;
    a3 = v39;
    MEMORY[0x1D3882680](v33, -1, -1);
    v34 = v23;
    v19 = v38;
    MEMORY[0x1D3882680](v34, -1, -1);
  }

  v35 = (*(v8 + 8))(v10, v40);
  v36 = *&v4[OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher_query];
  MEMORY[0x1EEE9AC00](v35);
  *(&v38 - 4) = a2;
  *(&v38 - 3) = a3;
  *(&v38 - 2) = v4;

  os_unfair_lock_lock((v36 + 24));
  sub_1D0F64648((v36 + 16));
  os_unfair_lock_unlock((v36 + 24));

  return v4;
}

void sub_1D0F64340()
{
  if (!qword_1EC5FC8F0)
  {
    sub_1D0F643A8();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D0FF5E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC8F0);
    }
  }
}

void sub_1D0F643A8()
{
  if (!qword_1EC5FC8F8)
  {
    sub_1D0F1ACD4(255, &qword_1EC5FC900);
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC8F8);
    }
  }
}

void sub_1D0F64410(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = objc_allocWithZone(MEMORY[0x1E696C618]);
  sub_1D0F1ACD4(0, &qword_1EE070B50);

  v9 = sub_1D0FF55F8();
  v19 = sub_1D0F658C4;
  v20 = v7;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1D0F653EC;
  v18 = &block_descriptor_4;
  v10 = _Block_copy(&v15);
  v11 = [v8 initWithTypes:v9 anchor:a3 resultsHandler:v10];

  _Block_release(v10);

  v15 = 0;
  v16 = 0xE000000000000000;
  v12 = v11;
  v13 = sub_1D0FF6468();
  MEMORY[0x1D3880AC0](v13);

  MEMORY[0x1D3880AC0](58, 0xE100000000000000);
  v21 = a4;
  sub_1D0FF5F38();
  v14 = sub_1D0FF53E8();

  [v12 setDebugIdentifier_];

  *a1 = v12;
}

uint64_t sub_1D0F64668(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D0F64D24(a3, a4);
  }

  return result;
}

uint64_t DataTypesHaveSomeDataPublisher.__allocating_init(healthStore:types:anchor:)(void *a1, unint64_t a2, void *a3)
{
  v5 = sub_1D0F64760(a2);

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for DataTypesHaveSomeDataPublisher();
  v7 = swift_allocObject();
  DataTypesHaveSomeDataPublisher.init(healthStore:types:anchor:)(a1, v6, a3);
  return v7;
}

uint64_t sub_1D0F64760(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D0FF5EB8();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D0FF5D18())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D3881410](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D0FF5E88();
      sub_1D0FF5EC8();
      sub_1D0FF5ED8();
      sub_1D0FF5E98();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D0FF5D18();
    sub_1D0FF5EB8();
  }

  return v8;
}

void sub_1D0F648C8()
{
  v1 = v0;
  v2 = sub_1D0FF4C18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4B88();

  v6 = sub_1D0FF4C08();
  v7 = sub_1D0FF5978();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446210;
    v16 = *v1;
    v17 = v9;
    sub_1D0F654EC();
    v10 = sub_1D0FF5448();
    v12 = sub_1D0F1AE0C(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D0F17000, v6, v7, "[%{public}s] Activating query", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D3882680](v9, -1, -1);
    MEMORY[0x1D3882680](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = *(v1 + OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher_query);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  v15 = v14;
  os_unfair_lock_unlock((v13 + 24));
  if (v14)
  {
    [*(v1 + OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher_healthStore) executeQuery_];
  }
}

void sub_1D0F64AF8()
{
  v1 = v0;
  v2 = sub_1D0FF4C18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4B88();

  v6 = sub_1D0FF4C08();
  v7 = sub_1D0FF5978();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446210;
    v15 = *v1;
    v16 = v9;
    sub_1D0F654EC();
    v10 = sub_1D0FF5448();
    v12 = sub_1D0F1AE0C(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D0F17000, v6, v7, "[%{public}s] Cancelling query", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D3882680](v9, -1, -1);
    MEMORY[0x1D3882680](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = *(v1 + OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher_query);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  *(v13 + 16) = 0;
  os_unfair_lock_unlock((v13 + 24));
  if (v14)
  {
    [*(v1 + OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher_healthStore) stopQuery_];
  }
}

void sub_1D0F64D24(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D0FF4C18();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - v11;
  v13 = *(v3 + OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher_query);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  v15 = v14;
  os_unfair_lock_unlock((v13 + 24));
  if (v14)
  {

    if (!a1)
    {
      sub_1D0FF4B88();

      v24 = a2;
      v25 = sub_1D0FF4C08();
      v26 = sub_1D0FF5958();

      if (os_log_type_enabled(v25, v26))
      {
        v46 = v6;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 136446466;
        v47 = *v3;
        v48 = v28;
        sub_1D0F654EC();
        v29 = sub_1D0FF5448();
        v31 = sub_1D0F1AE0C(v29, v30, &v48);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        if (a2)
        {
          v47 = a2;
          v32 = a2;
          sub_1D0F1E940();
          v33 = sub_1D0FF5448();
          v35 = v34;
        }

        else
        {
          v35 = 0xE300000000000000;
          v33 = 7104878;
        }

        v43 = sub_1D0F1AE0C(v33, v35, &v48);

        *(v27 + 14) = v43;
        _os_log_impl(&dword_1D0F17000, v25, v26, "[%{public}s] Query error: %{public}s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v28, -1, -1);
        MEMORY[0x1D3882680](v27, -1, -1);

        (*(v7 + 8))(v10, v46);
      }

      else
      {

        (*(v7 + 8))(v10, v6);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v48 = a2;

      v44 = a2;
      goto LABEL_28;
    }

    sub_1D0FF4B88();

    v16 = sub_1D0FF4C08();
    v17 = sub_1D0FF5978();

    if (os_log_type_enabled(v16, v17))
    {
      v46 = v6;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45 = v19;
      *v18 = 136446466;
      v47 = *v3;
      v48 = v19;
      sub_1D0F654EC();
      v20 = sub_1D0FF5448();
      v22 = sub_1D0F1AE0C(v20, v21, &v48);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v23 = sub_1D0FF5D18();
      }

      else
      {
        v23 = *(a1 + 16);
      }

      v37 = v23 == 0;
      if (v23)
      {
        v38 = 0x65736C6166;
      }

      else
      {
        v38 = 1702195828;
      }

      if (v37)
      {
        v39 = 0xE400000000000000;
      }

      else
      {
        v39 = 0xE500000000000000;
      }

      v40 = sub_1D0F1AE0C(v38, v39, &v48);

      *(v18 + 14) = v40;
      _os_log_impl(&dword_1D0F17000, v16, v17, "[%{public}s] Received results. Empty: %{public}s", v18, 0x16u);
      v41 = v45;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v41, -1, -1);
      MEMORY[0x1D3882680](v18, -1, -1);

      (*(v7 + 8))(v12, v46);
      if ((a1 & 0xC000000000000001) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {

      (*(v7 + 8))(v12, v6);
      if ((a1 & 0xC000000000000001) == 0)
      {
LABEL_20:
        v36 = *(a1 + 16);
        goto LABEL_21;
      }
    }

    v36 = sub_1D0FF5D18();
LABEL_21:
    if (v36)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v42;

LABEL_28:
    sub_1D0FF5078();
  }
}

uint64_t DataTypesHaveSomeDataPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher__haveSomeData;
  sub_1D0F63B98(0, &qword_1EC5FC8D8, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DataTypesHaveSomeDataPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16HealthExperience30DataTypesHaveSomeDataPublisher__haveSomeData;
  sub_1D0F63B98(0, &qword_1EC5FC8D8, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D0F653EC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = *(a1 + 32);
  if (a4)
  {
    sub_1D0F1ACD4(0, &qword_1EE070B50);
    sub_1D0F1ACD4(0, &qword_1EE070B20);
    sub_1D0F658CC();
    v6 = sub_1D0FF5348();
  }

  v10 = a2;
  v11 = a3;
  v12 = a5;
  v9(v10, a3, v6, a5);
}

unint64_t sub_1D0F654EC()
{
  result = qword_1EC5FC908;
  if (!qword_1EC5FC908)
  {
    type metadata accessor for DataTypesHaveSomeDataPublisher();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC5FC908);
  }

  return result;
}

uint64_t type metadata accessor for DataTypesHaveSomeDataPublisher()
{
  result = qword_1EC5FC910;
  if (!qword_1EC5FC910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D0F65594()
{
  sub_1D0F63B98(319, &qword_1EC5FC8D8, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16HealthExperience017DataTypesHaveSomeC9PublisherC0C0O(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D0F657CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0F65828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1D0F65884(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

unint64_t sub_1D0F658CC()
{
  result = qword_1EE070B40;
  if (!qword_1EE070B40)
  {
    sub_1D0F1ACD4(255, &qword_1EE070B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070B40);
  }

  return result;
}

id sub_1D0F65934(id result)
{
  if (result - 1 >= 3)
  {
    return result;
  }

  return result;
}

uint64_t static StorageLocations.notificationProfileImageDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D0F3B100();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = sub_1D0FF4238();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D0FF4618();
  v13 = [v12 containerURLForSecurityApplicationGroupIdentifier_];

  if (v13)
  {
    sub_1D0FF4218();

    v14 = *(v9 + 56);
    v14(v5, 0, 1, v8);
  }

  else
  {
    v14 = *(v9 + 56);
    v14(v5, 1, 1, v8);
  }

  sub_1D0F3B73C(v5, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D0F42558(v7);
    v15 = 1;
  }

  else
  {
    sub_1D0FF41D8();
    v16 = *(v9 + 8);
    v16(v7, v8);
    sub_1D0FF41D8();
    v16(v11, v8);
    v15 = 0;
  }

  return (v14)(a1, v15, 1, v8);
}

uint64_t static StorageLocations.relevenceEngineLogsDirectory.getter()
{
  v0 = sub_1D0FF4238();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4628();
  sub_1D0FF41D8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static StorageLocations.healthAppGroupContainer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D0FF4618();
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier_];

  if (v3)
  {
    sub_1D0FF4218();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1D0FF4238();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t static StorageLocations.notificationAssetsDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D0F3B100();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = sub_1D0FF4618();
  v9 = [v8 containerURLForSecurityApplicationGroupIdentifier_];

  if (v9)
  {
    sub_1D0FF4218();

    v10 = sub_1D0FF4238();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  else
  {
    v10 = sub_1D0FF4238();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  sub_1D0F3B73C(v5, v7);
  sub_1D0FF4238();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_1D0F42558(v7);
    v12 = 1;
  }

  else
  {
    sub_1D0FF41D8();
    (*(v11 + 8))(v7, v10);
    v12 = 0;
  }

  return (*(v11 + 56))(a1, v12, 1, v10);
}

uint64_t TransactionRecord.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D0FF43A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TransactionRecord.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for TransactionRecord() + 20));

  return v1;
}

uint64_t type metadata accessor for TransactionRecord()
{
  result = qword_1EE06F458;
  if (!qword_1EE06F458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransactionRecord.init(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D0FF4398();
  result = type metadata accessor for TransactionRecord();
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t TransactionRecord.description.getter()
{
  v3 = *(v0 + *(type metadata accessor for TransactionRecord() + 20));

  MEMORY[0x1D3880AC0](95, 0xE100000000000000);
  v1 = sub_1D0FF4358();
  MEMORY[0x1D3880AC0](v1);

  return v3;
}

uint64_t static TransactionRecord.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D0FF4378() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TransactionRecord() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_1D0FF6278();
}

uint64_t TransactionRecord.hash(into:)()
{
  sub_1D0FF43A8();
  sub_1D0F6BE84(&qword_1EE071250, MEMORY[0x1E69695A8]);
  sub_1D0FF5378();
  type metadata accessor for TransactionRecord();

  return sub_1D0FF5488();
}

uint64_t TransactionRecord.hashValue.getter()
{
  sub_1D0FF6338();
  sub_1D0FF43A8();
  sub_1D0F6BE84(&qword_1EE071250, MEMORY[0x1E69695A8]);
  sub_1D0FF5378();
  type metadata accessor for TransactionRecord();
  sub_1D0FF5488();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F66354()
{
  sub_1D0FF6338();
  sub_1D0FF43A8();
  sub_1D0F6BE84(&qword_1EE071250, MEMORY[0x1E69695A8]);
  sub_1D0FF5378();
  sub_1D0FF5488();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F663FC()
{
  sub_1D0FF43A8();
  sub_1D0F6BE84(&qword_1EE071250, MEMORY[0x1E69695A8]);
  sub_1D0FF5378();

  return sub_1D0FF5488();
}

uint64_t sub_1D0F66498()
{
  sub_1D0FF6338();
  sub_1D0FF43A8();
  sub_1D0F6BE84(&qword_1EE071250, MEMORY[0x1E69695A8]);
  sub_1D0FF5378();
  sub_1D0FF5488();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F6653C(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 20));

  MEMORY[0x1D3880AC0](95, 0xE100000000000000);
  v2 = sub_1D0FF4358();
  MEMORY[0x1D3880AC0](v2);

  return v4;
}

uint64_t sub_1D0F665A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D0FF4378() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1D0FF6278();
}

uint64_t TransactionManagedCache.__allocating_init()()
{
  v0 = swift_allocObject();
  TransactionManagedCache.init()();
  return v0;
}

char *TransactionManagedCache.init()()
{
  v1 = *v0;
  sub_1D0FF4548();
  swift_allocObject();
  *(v0 + 2) = sub_1D0FF4538();
  (*(*(*(v1 + 80) - 8) + 56))(&v0[*(*v0 + 96)], 1, 1);
  *&v0[*(*v0 + 104)] = MEMORY[0x1E69E7CD0];
  return v0;
}

uint64_t TransactionManagedCache.fetchCachedOrCreate(for:using:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v127 = a3;
  v128 = a2;
  v138 = a1;
  v135 = a4;
  v6 = *v4;
  v132 = v6;
  v126 = type metadata accessor for TransactionRecord();
  v7 = MEMORY[0x1EEE9AC00](v126);
  v122 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v130 = &v120 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v131 = &v120 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v120 - v13;
  v14 = sub_1D0FF4C18();
  v139 = *(v14 - 8);
  v140 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v124 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v125 = &v120 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v136 = &v120 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v129 = &v120 - v21;
  v22 = *(v6 + 80);
  v23 = sub_1D0FF5C38();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v123 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v120 - v28;
  v30 = *(v22 - 8);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v33 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = (&v120 - v34);
  sub_1D0FF4518();
  v36 = v30;
  v37 = v23;
  v38 = v24;
  v39 = *(*v5 + 96);
  swift_beginAccess();
  (*(v38 + 16))(v29, v5 + v39, v37);
  v40 = (*(v36 + 48))(v29, 1, v22);
  v134 = v22;
  if (v40 == 1)
  {
    v137 = v39;
    v41 = v138;
    v133 = v36;
    v42 = (*(v38 + 8))(v29, v37);
    v43 = v142;
    v128(v42);
    if (!v43)
    {
      v129 = v33;
      v136 = v37;
      v44 = v125;
      sub_1D0FF4BC8();
      v45 = v41;
      v46 = v122;
      sub_1D0F67434(v41, v122);
      v47 = sub_1D0FF4C08();
      v48 = sub_1D0FF5978();
      v49 = os_log_type_enabled(v47, v48);
      v142 = 0;
      v121 = v38;
      if (v49)
      {
        v50 = swift_slowAlloc();
        LODWORD(v128) = v48;
        v51 = v50;
        v52 = swift_slowAlloc();
        v141[0] = v52;
        *v51 = 136446466;
        v53 = sub_1D0FF6468();
        v55 = sub_1D0F1AE0C(v53, v54, v141);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2082;
        v56 = (v46 + *(v126 + 20));
        v57 = *v56;
        v58 = v56[1];

        sub_1D0F6BD78(v46, type metadata accessor for TransactionRecord);
        v59 = v57;
        v45 = v41;
        v60 = sub_1D0F1AE0C(v59, v58, v141);

        *(v51 + 14) = v60;
        _os_log_impl(&dword_1D0F17000, v47, v128, "[%{public}s]: Created new item for %{public}s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v52, -1, -1);
        MEMORY[0x1D3882680](v51, -1, -1);

        v61 = *(v139 + 8);
        v61(v125, v140);
      }

      else
      {

        sub_1D0F6BD78(v46, type metadata accessor for TransactionRecord);
        v61 = *(v139 + 8);
        v61(v44, v140);
      }

      v95 = v130;
      sub_1D0F67434(v45, v130);
      swift_beginAccess();
      v96 = v131;
      sub_1D0F685B8(v131, v95);
      swift_endAccess();
      sub_1D0F6BD78(v96, type metadata accessor for TransactionRecord);
      v97 = v124;
      sub_1D0FF4BC8();
      swift_retain_n();
      v98 = sub_1D0FF4C08();
      v99 = sub_1D0FF5978();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v138 = v61;
        v102 = v101;
        v141[0] = v101;
        *v100 = 136446466;
        v103 = sub_1D0FF6468();
        v105 = sub_1D0F1AE0C(v103, v104, v141);

        *(v100 + 4) = v105;
        *(v100 + 12) = 2082;

        v107 = v142;
        v108 = sub_1D0F67498(v106);
        v142 = v107;

        v109 = MEMORY[0x1D3880C20](v108, MEMORY[0x1E69E6158]);
        v111 = v110;

        v112 = sub_1D0F1AE0C(v109, v111, v141);

        *(v100 + 14) = v112;
        _os_log_impl(&dword_1D0F17000, v98, v99, "[%{public}s]: Updated transactions %{public}s", v100, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v102, -1, -1);
        MEMORY[0x1D3882680](v100, -1, -1);

        v138(v97, v140);
      }

      else
      {

        v61(v97, v140);
      }

      v114 = v133;
      v113 = v134;
      v115 = v136;
      v116 = v123;
      v117 = v129;
      (*(v133 + 16))(v123, v129, v134);
      (*(v114 + 56))(v116, 0, 1, v113);
      v118 = v137;
      swift_beginAccess();
      (*(v121 + 40))(v5 + v118, v116, v115);
      swift_endAccess();
      (*(v114 + 32))(v135, v117, v113);
    }
  }

  else
  {
    v127 = *(v36 + 32);
    v128 = v35;
    v133 = v36 + 32;
    v127(v35, v29, v22);
    v62 = v129;
    sub_1D0FF4BC8();
    v63 = v138;
    sub_1D0F67434(v138, v137);
    v64 = sub_1D0FF4C08();
    v65 = sub_1D0FF5978();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v141[0] = v67;
      *v66 = 136446466;
      v68 = sub_1D0FF6468();
      v70 = sub_1D0F1AE0C(v68, v69, v141);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2082;
      v71 = v137;
      v72 = (v137 + *(v126 + 20));
      v73 = *v72;
      v74 = v72[1];

      sub_1D0F6BD78(v71, type metadata accessor for TransactionRecord);
      v75 = sub_1D0F1AE0C(v73, v74, v141);

      *(v66 + 14) = v75;
      _os_log_impl(&dword_1D0F17000, v64, v65, "[%{public}s]: Using cached item for %{public}s", v66, 0x16u);
      swift_arrayDestroy();
      v63 = v138;
      MEMORY[0x1D3882680](v67, -1, -1);
      MEMORY[0x1D3882680](v66, -1, -1);
    }

    else
    {

      sub_1D0F6BD78(v137, type metadata accessor for TransactionRecord);
    }

    v76 = *(v139 + 8);
    v76(v62, v140);
    v77 = v136;
    v78 = v130;
    sub_1D0F67434(v63, v130);
    swift_beginAccess();
    v79 = v131;
    sub_1D0F685B8(v131, v78);
    swift_endAccess();
    sub_1D0F6BD78(v79, type metadata accessor for TransactionRecord);
    sub_1D0FF4BC8();
    swift_retain_n();
    v80 = sub_1D0FF4C08();
    v81 = sub_1D0FF5978();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v141[0] = v83;
      *v82 = 136446466;
      v84 = sub_1D0FF6468();
      v86 = sub_1D0F1AE0C(v84, v85, v141);

      *(v82 + 4) = v86;
      *(v82 + 12) = 2082;

      v88 = v142;
      v89 = sub_1D0F67498(v87);
      v142 = v88;

      v90 = MEMORY[0x1D3880C20](v89, MEMORY[0x1E69E6158]);
      v92 = v91;

      v93 = sub_1D0F1AE0C(v90, v92, v141);

      *(v82 + 14) = v93;
      _os_log_impl(&dword_1D0F17000, v80, v81, "[%{public}s]: Updated transactions %{public}s", v82, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v83, -1, -1);
      MEMORY[0x1D3882680](v82, -1, -1);

      v94 = v136;
    }

    else
    {

      v94 = v77;
    }

    v76(v94, v140);
    v127(v135, v128, v134);
  }

  return sub_1D0FF4528();
}

uint64_t sub_1D0F67434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0F67498(uint64_t a1)
{
  v3 = type metadata accessor for TransactionRecord();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v26[1] = v1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D0FD0C6C(0, v5, 0);
  v6 = v35;
  v34 = a1 + 56;
  result = sub_1D0FF5CD8();
  v8 = result;
  v9 = 0;
  v27 = a1 + 64;
  v28 = v5;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v34 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v32 = *(a1 + 36);
    v12 = v29;
    sub_1D0F67434(*(a1 + 48) + *(v30 + 72) * v8, v29);
    v13 = (v12 + *(v31 + 20));
    v33 = *v13;
    v14 = a1;
    v15 = v13[1];

    result = sub_1D0F6BD78(v12, type metadata accessor for TransactionRecord);
    v35 = v6;
    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_1D0FD0C6C((v16 > 1), v17 + 1, 1);
      v6 = v35;
    }

    *(v6 + 16) = v17 + 1;
    v18 = v6 + 16 * v17;
    *(v18 + 32) = v33;
    *(v18 + 40) = v15;
    v10 = 1 << *(v14 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v19 = *(v34 + 8 * v11);
    if ((v19 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    a1 = v14;
    if (v32 != *(v14 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v8 & 0x3F));
    if (v20)
    {
      v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (v27 + 8 * v11);
      while (v22 < (v10 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1D0F6CA74(v8, v32, 0);
          v10 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1D0F6CA74(v8, v32, 0);
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v28)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t TransactionManagedCache.finishUse(for:)(uint64_t a1)
{
  v63[2] = *v1;
  v3 = sub_1D0FF4C18();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v64 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v63[0] = v63 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v63 - v8;
  sub_1D0F68884();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TransactionRecord();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v63 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v63 - v21;
  sub_1D0FF4518();
  v23 = *(*v1 + 104);
  swift_beginAccess();
  v63[1] = v23;
  sub_1D0F6BAC0(a1, v12);
  swift_endAccess();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D0F6BD78(v12, sub_1D0F68884);
    v24 = v63[0];
    sub_1D0FF4BC8();
    sub_1D0F67434(a1, v17);
    v25 = sub_1D0FF4C08();
    v26 = sub_1D0FF5978();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v67[0] = v28;
      *v27 = 136446466;
      v29 = sub_1D0FF6468();
      v31 = sub_1D0F1AE0C(v29, v30, v67);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      v32 = &v17[*(v13 + 20)];
      v33 = *v32;
      v34 = v32[1];

      sub_1D0F6BD78(v17, type metadata accessor for TransactionRecord);
      v35 = sub_1D0F1AE0C(v33, v34, v67);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1D0F17000, v25, v26, "[%{public}s]: Finished use for %{public}s, but no existing transaction found for it", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v28, -1, -1);
      MEMORY[0x1D3882680](v27, -1, -1);
    }

    else
    {

      sub_1D0F6BD78(v17, type metadata accessor for TransactionRecord);
    }

    v47 = *(v65 + 8);
    v47(v24, v66);
  }

  else
  {
    sub_1D0F6BDD8(v12, v22);
    sub_1D0FF4BC8();
    sub_1D0F67434(v22, v20);
    v36 = sub_1D0FF4C08();
    v37 = sub_1D0FF5978();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      v67[0] = v63[0];
      *v38 = 136446466;
      v39 = sub_1D0FF6468();
      v41 = sub_1D0F1AE0C(v39, v40, v67);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2082;
      v42 = &v20[*(v13 + 20)];
      v43 = *v42;
      v44 = v42[1];

      sub_1D0F6BD78(v20, type metadata accessor for TransactionRecord);
      v45 = sub_1D0F1AE0C(v43, v44, v67);

      *(v38 + 14) = v45;
      _os_log_impl(&dword_1D0F17000, v36, v37, "[%{public}s]: Finished use for %{public}s", v38, 0x16u);
      v46 = v63[0];
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v46, -1, -1);
      MEMORY[0x1D3882680](v38, -1, -1);
    }

    else
    {

      sub_1D0F6BD78(v20, type metadata accessor for TransactionRecord);
    }

    v47 = *(v65 + 8);
    v47(v9, v66);
    sub_1D0F6BD78(v22, type metadata accessor for TransactionRecord);
  }

  v48 = v64;
  sub_1D0FF4BC8();
  swift_retain_n();
  v49 = sub_1D0FF4C08();
  v50 = sub_1D0FF5978();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v67[0] = v52;
    *v51 = 136446466;
    v53 = sub_1D0FF6468();
    v55 = sub_1D0F1AE0C(v53, v54, v67);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2082;

    v57 = sub_1D0F67498(v56);

    v58 = MEMORY[0x1D3880C20](v57, MEMORY[0x1E69E6158]);
    v60 = v59;

    v61 = sub_1D0F1AE0C(v58, v60, v67);

    *(v51 + 14) = v61;
    _os_log_impl(&dword_1D0F17000, v49, v50, "[%{public}s]: Updated transactions %{public}s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v52, -1, -1);
    MEMORY[0x1D3882680](v51, -1, -1);
  }

  else
  {
  }

  v47(v48, v66);
  sub_1D0F67F3C();
  return sub_1D0FF4528();
}

uint64_t sub_1D0F67F3C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 80);
  v5 = sub_1D0FF5C38();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = sub_1D0FF4C18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 104);
  result = swift_beginAccess();
  if (!*(*(v1 + v12) + 16))
  {
    v26 = v3;
    sub_1D0FF4BC8();
    v14 = sub_1D0FF4C08();
    v15 = sub_1D0FF5978();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = v16;
      v25 = swift_slowAlloc();
      v28[0] = v25;
      *v16 = 136446210;
      v17 = sub_1D0FF6468();
      LODWORD(v26) = v15;
      v19 = v5;
      v20 = sub_1D0F1AE0C(v17, v18, v28);

      v21 = v24;
      *(v24 + 1) = v20;
      v5 = v19;
      _os_log_impl(&dword_1D0F17000, v14, v26, "[%{public}s]: Finished use, no more transactions left, clearing cache", v21, 0xCu);
      v22 = v25;
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1D3882680](v22, -1, -1);
      MEMORY[0x1D3882680](v21, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    (*(*(v4 - 8) + 56))(v7, 1, 1, v4);
    v23 = *(*v1 + 96);
    swift_beginAccess();
    (*(v27 + 40))(v1 + v23, v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t TransactionManagedCache.deinit()
{

  v1 = *(*v0 + 96);
  v2 = sub_1D0FF5C38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TransactionManagedCache.__deallocating_deinit()
{
  TransactionManagedCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D0F68380(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D0FF5D28();

    if (v9)
    {

      sub_1D0F1ACD4(0, &qword_1EE070B50);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1D0FF5D18();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D0F69108(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1D0F69684();
    }

    v18 = v8;
    sub_1D0F6A038(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D0F1ACD4(0, &qword_1EE070B50);
  v11 = sub_1D0FF5BE8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1D0F6A248(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D0FF5BF8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1D0F685B8(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for TransactionRecord();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v25 - v9;
  v27 = v2;
  v10 = *v2;
  sub_1D0FF6338();
  sub_1D0FF43A8();
  sub_1D0F6BE84(&qword_1EE071250, MEMORY[0x1E69695A8]);
  sub_1D0FF5378();
  v29 = v4;
  v11 = (a2 + *(v4 + 20));
  v12 = *v11;
  v13 = v11[1];
  sub_1D0FF5488();
  v14 = sub_1D0FF6378();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_1D0F67434(*(v10 + 48) + v18 * v16, v8);
      if (sub_1D0FF4378())
      {
        v19 = &v8[*(v29 + 20)];
        v20 = *v19 == v12 && *(v19 + 1) == v13;
        if (v20 || (sub_1D0FF6278() & 1) != 0)
        {
          break;
        }
      }

      sub_1D0F6BD78(v8, type metadata accessor for TransactionRecord);
      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_1D0F6BD78(v8, type metadata accessor for TransactionRecord);
    sub_1D0F6BD78(a2, type metadata accessor for TransactionRecord);
    sub_1D0F67434(*(v10 + 48) + v18 * v16, v28);
    return 0;
  }

  else
  {
LABEL_11:
    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v26;
    sub_1D0F67434(a2, v26);
    v30 = *v22;
    sub_1D0F6A3B8(v24, v16, isUniquelyReferenced_nonNull_native);
    *v22 = v30;
    sub_1D0F6BDD8(a2, v28);
    return 1;
  }
}

void sub_1D0F68884()
{
  if (!qword_1EE06F428[0])
  {
    type metadata accessor for TransactionRecord();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, qword_1EE06F428);
    }
  }
}

uint64_t sub_1D0F688DC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1D0FF5D28();

    if (v8)
    {

      sub_1D0FF4EA8();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_1D0FF5D18();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1D0F692E8(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_1D0F69BDC();
    }

    sub_1D0F6A0BC(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1D0FF4EA8();
  sub_1D0F6BE84(&qword_1EE06E5E8, MEMORY[0x1E695BF10]);
  v10 = sub_1D0FF5368();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_1D0F6A67C(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1D0F6BE84(&qword_1EE06E5E0, MEMORY[0x1E695BF10]);
  while ((sub_1D0FF53D8() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1D0F68B7C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1D0FF5D28();

    if (v8)
    {

      type metadata accessor for AdvertisableFeatureModel();
      swift_dynamicCast();
      result = 0;
      *a1 = v52;
      return result;
    }

    result = sub_1D0FF5D18();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v44 = sub_1D0F6950C(v7, result + 1);
    if (*(v44 + 24) <= *(v44 + 16))
    {
      sub_1D0F69E64();
    }

    sub_1D0F6A1A4(v45, v44);

    *v3 = v44;
    *a1 = a2;
    return 1;
  }

  v46 = v2;
  sub_1D0FF6338();
  AdvertisableFeatureModel.hash(into:)();
  v10 = sub_1D0FF6378();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  v50 = v6 + 56;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_68:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *v46;

    sub_1D0F6A878(v43, v12, isUniquelyReferenced_nonNull_native);
    *v46 = v53;
    *a1 = a2;
    return 1;
  }

  v48 = ~v11;
  v51 = a2;
  v49 = v6;
  while (1)
  {
    v13 = *(*(v6 + 48) + 8 * v12);
    v14 = *(v13 + 16);
    if (v14 > 2)
    {
      v17 = 0xD00000000000001DLL;
      if (v14 == 4)
      {
        v18 = "trendNotification";
      }

      else
      {
        v17 = 0xD00000000000001ELL;
        v18 = "walkingSteadinessNotification";
      }

      if (v14 == 3)
      {
        v15 = 0xD000000000000011;
      }

      else
      {
        v15 = v17;
      }

      if (v14 == 3)
      {
        v16 = "lowHeartRateNotification";
      }

      else
      {
        v16 = v18;
      }
    }

    else if (*(v13 + 16))
    {
      if (v14 == 1)
      {
        v15 = 0xD000000000000019;
        v16 = "lowCardioFitnessNotification";
      }

      else
      {
        v15 = 0xD000000000000018;
        v16 = "highHeartRateNotification";
      }
    }

    else
    {
      v15 = 0xD00000000000001CLL;
      v16 = "ready";
    }

    v19 = *(a2 + 16);
    v20 = v16 | 0x8000000000000000;
    v21 = 0xD00000000000001CLL;
    v22 = 0xD00000000000001DLL;
    if (v19 == 4)
    {
      v23 = "trendNotification";
    }

    else
    {
      v22 = 0xD00000000000001ELL;
      v23 = "walkingSteadinessNotification";
    }

    if (v19 == 3)
    {
      v22 = 0xD000000000000011;
      v23 = "lowHeartRateNotification";
    }

    v24 = 0xD000000000000019;
    if (v19 != 1)
    {
      v24 = 0xD000000000000018;
    }

    v25 = "lowCardioFitnessNotification";
    if (v19 != 1)
    {
      v25 = "highHeartRateNotification";
    }

    if (*(a2 + 16))
    {
      v21 = v24;
    }

    v26 = "ready";
    if (*(a2 + 16))
    {
      v26 = v25;
    }

    v27 = *(a2 + 16) <= 2u ? v21 : v22;
    v28 = *(a2 + 16) <= 2u ? v26 : v23;
    if (v15 == v27 && v20 == (v28 | 0x8000000000000000))
    {
    }

    else
    {
      v29 = sub_1D0FF6278();

      if ((v29 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v31 = *(v13 + 40);
    v30 = *(v13 + 48);
    v32 = *(v13 + 56);
    v33 = v51[5];
    v34 = v51[6];
    v35 = v51[7];
    v36 = *(v13 + 24) == v51[3] && *(v13 + 32) == v51[4];
    if (!v36 && (sub_1D0FF6278() & 1) == 0)
    {
      goto LABEL_63;
    }

    v37 = v31 == v33 && v30 == v34;
    if (!v37 && (sub_1D0FF6278() & 1) == 0)
    {
      goto LABEL_63;
    }

    if (v32)
    {
      break;
    }

    if (!v35)
    {
      goto LABEL_62;
    }

LABEL_63:

    a2 = v51;
    v6 = v49;
    v12 = (v12 + 1) & v48;
    if (((*(v50 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  if (!v35)
  {
    goto LABEL_63;
  }

  sub_1D0F1ACD4(0, &qword_1EE06F9A0);

  v38 = v32;

  v39 = v35;
  v40 = v38;
  v41 = sub_1D0FF5BF8();

  if ((v41 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_62:

  sub_1D0FF4908();

  sub_1D0FF4908();

  sub_1D0FF4908();

  sub_1D0FF4908();

  *a1 = *(*(v49 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1D0F69108(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D0F5C554();
    v2 = sub_1D0FF5DA8();
    v14 = v2;
    sub_1D0FF5D08();
    if (sub_1D0FF5D38())
    {
      sub_1D0F1ACD4(0, &qword_1EE070B50);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1D0F69684();
        }

        v2 = v14;
        result = sub_1D0FF5BE8();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1D0FF5D38());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D0F692E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D0F6C9E0();
    v2 = sub_1D0FF5DA8();
    v14 = v2;
    sub_1D0FF5D08();
    if (sub_1D0FF5D38())
    {
      sub_1D0FF4EA8();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1D0F69BDC();
        }

        v2 = v14;
        sub_1D0F6BE84(&qword_1EE06E5E8, MEMORY[0x1E695BF10]);
        result = sub_1D0FF5368();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1D0FF5D38());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D0F6950C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D0F6C05C();
    v2 = sub_1D0FF5DA8();
    v6 = v2;
    sub_1D0FF5D08();
    if (sub_1D0FF5D38())
    {
      type metadata accessor for AdvertisableFeatureModel();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1D0F69E64();
        }

        v2 = v6;
        sub_1D0FF6338();
        AdvertisableFeatureModel.hash(into:)();
        sub_1D0FF6378();
        v3 = sub_1D0FF5CF8();
        *(v6 + 56 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v6 + 48) + 8 * v3) = v5;
        ++*(v6 + 16);
      }

      while (sub_1D0FF5D38());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D0F69684()
{
  v1 = v0;
  v2 = *v0;
  sub_1D0F5C554();
  result = sub_1D0FF5D98();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1D0FF5BE8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D0F698A0()
{
  v1 = v0;
  v2 = type metadata accessor for TransactionRecord();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D0F6CA80();
  result = sub_1D0FF5D98();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_1D0F6BDD8(v19 + v20 * (v16 | (v8 << 6)), v4);
      sub_1D0FF6338();
      sub_1D0FF43A8();
      sub_1D0F6BE84(&qword_1EE071250, MEMORY[0x1E69695A8]);
      sub_1D0FF5378();
      sub_1D0FF5488();
      result = sub_1D0FF6378();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D0F6BDD8(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D0F69BDC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D0F6C9E0();
  result = sub_1D0FF5D98();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1D0FF4EA8();
      sub_1D0F6BE84(&qword_1EE06E5E8, MEMORY[0x1E695BF10]);
      result = sub_1D0FF5368();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D0F69E64()
{
  v1 = v0;
  v2 = *v0;
  sub_1D0F6C05C();
  result = sub_1D0FF5D98();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    for (i = result + 56; v9; ++*(v4 + 16))
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_1D0FF6338();
      AdvertisableFeatureModel.hash(into:)();
      sub_1D0FF6378();
      result = sub_1D0FF5CF8();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v4 + 48) + 8 * result) = v15;
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v16 = 1 << *(v2 + 32);
    if (v16 >= 64)
    {
      bzero((v2 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v16;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D0F6A038(uint64_t a1, uint64_t a2)
{
  sub_1D0FF5BE8();
  result = sub_1D0FF5CF8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D0F6A0BC(uint64_t a1, uint64_t a2)
{
  sub_1D0FF4EA8();
  sub_1D0F6BE84(&qword_1EE06E5E8, MEMORY[0x1E695BF10]);
  sub_1D0FF5368();
  result = sub_1D0FF5CF8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D0F6A1A4(uint64_t a1, uint64_t a2)
{
  sub_1D0FF6338();
  AdvertisableFeatureModel.hash(into:)();
  sub_1D0FF6378();
  result = sub_1D0FF5CF8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1D0F6A248(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D0F69684();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D0F6AD40();
      goto LABEL_12;
    }

    sub_1D0F6B1A4();
  }

  v8 = *v3;
  v9 = sub_1D0FF5BE8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1D0F1ACD4(0, &qword_1EE070B50);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1D0FF5BF8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D0FF62A8();
  __break(1u);
}

uint64_t sub_1D0F6A3B8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for TransactionRecord();
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_1D0F698A0();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D0F6AE84();
      goto LABEL_18;
    }

    sub_1D0F6B3AC();
  }

  v12 = *v3;
  sub_1D0FF6338();
  sub_1D0FF43A8();
  sub_1D0F6BE84(&qword_1EE071250, MEMORY[0x1E69695A8]);
  sub_1D0FF5378();
  v13 = (a1 + *(v7 + 20));
  v14 = *v13;
  v15 = v13[1];
  sub_1D0FF5488();
  v16 = sub_1D0FF6378();
  v17 = -1 << *(v12 + 32);
  a2 = v16 & ~v17;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v29 + 72);
    while (1)
    {
      sub_1D0F67434(*(v12 + 48) + v19 * a2, v9);
      if (sub_1D0FF4378())
      {
        v20 = &v9[*(v7 + 20)];
        v21 = *v20 == v14 && *(v20 + 1) == v15;
        if (v21 || (sub_1D0FF6278() & 1) != 0)
        {
          break;
        }
      }

      sub_1D0F6BD78(v9, type metadata accessor for TransactionRecord);
      a2 = (a2 + 1) & v18;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_1D0F6BD78(v9, type metadata accessor for TransactionRecord);
    sub_1D0FF62A8();
    __break(1u);
  }

LABEL_18:
  v22 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D0F6BDD8(a1, *(v22 + 48) + *(v29 + 72) * a2);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t sub_1D0F6A67C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D0F69BDC();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D0F6B058(sub_1D0F6C9E0);
      goto LABEL_12;
    }

    sub_1D0F6B6B8();
  }

  v8 = *v3;
  sub_1D0FF4EA8();
  sub_1D0F6BE84(&qword_1EE06E5E8, MEMORY[0x1E695BF10]);
  result = sub_1D0FF5368();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1D0F6BE84(&qword_1EE06E5E0, MEMORY[0x1E695BF10]);
    do
    {
      result = sub_1D0FF53D8();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D0FF62A8();
  __break(1u);
  return result;
}

uint64_t sub_1D0F6A878(uint64_t result, unint64_t a2, char a3)
{
  v46 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (a3)
  {
    sub_1D0F69E64();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1D0F6B058(sub_1D0F6C05C);
      goto LABEL_69;
    }

    sub_1D0F6B924();
  }

  v7 = *v3;
  sub_1D0FF6338();
  AdvertisableFeatureModel.hash(into:)();
  result = sub_1D0FF6378();
  v44 = v7 + 56;
  v45 = v7;
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v43 = ~v8;
    type metadata accessor for AdvertisableFeatureModel();
    do
    {
      v9 = *(*(v45 + 48) + 8 * a2);
      v10 = *(v9 + 16);
      if (v10 > 2)
      {
        v13 = 0xD00000000000001DLL;
        if (v10 == 4)
        {
          v14 = "trendNotification";
        }

        else
        {
          v13 = 0xD00000000000001ELL;
          v14 = "walkingSteadinessNotification";
        }

        if (v10 == 3)
        {
          v11 = 0xD000000000000011;
        }

        else
        {
          v11 = v13;
        }

        if (v10 == 3)
        {
          v12 = "lowHeartRateNotification";
        }

        else
        {
          v12 = v14;
        }
      }

      else if (*(v9 + 16))
      {
        if (v10 == 1)
        {
          v11 = 0xD000000000000019;
          v12 = "lowCardioFitnessNotification";
        }

        else
        {
          v11 = 0xD000000000000018;
          v12 = "highHeartRateNotification";
        }
      }

      else
      {
        v11 = 0xD00000000000001CLL;
        v12 = "ready";
      }

      v15 = *(v46 + 16);
      v16 = v12 | 0x8000000000000000;
      v17 = 0xD00000000000001CLL;
      v18 = 0xD00000000000001DLL;
      if (v15 == 4)
      {
        v19 = "trendNotification";
      }

      else
      {
        v18 = 0xD00000000000001ELL;
        v19 = "walkingSteadinessNotification";
      }

      if (v15 == 3)
      {
        v18 = 0xD000000000000011;
        v19 = "lowHeartRateNotification";
      }

      v20 = 0xD000000000000019;
      if (v15 != 1)
      {
        v20 = 0xD000000000000018;
      }

      v21 = "lowCardioFitnessNotification";
      if (v15 != 1)
      {
        v21 = "highHeartRateNotification";
      }

      if (*(v46 + 16))
      {
        v17 = v20;
      }

      v22 = "ready";
      if (*(v46 + 16))
      {
        v22 = v21;
      }

      if (*(v46 + 16) <= 2u)
      {
        v23 = v17;
      }

      else
      {
        v23 = v18;
      }

      if (*(v46 + 16) <= 2u)
      {
        v24 = v22;
      }

      else
      {
        v24 = v19;
      }

      if (v11 == v23 && v16 == (v24 | 0x8000000000000000))
      {
      }

      else
      {
        v25 = sub_1D0FF6278();

        if ((v25 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      v26 = *(v9 + 40);
      v27 = *(v9 + 48);
      v28 = *(v9 + 56);
      v30 = *(v46 + 40);
      v29 = *(v46 + 48);
      v31 = *(v46 + 56);
      v32 = *(v9 + 24) == *(v46 + 24) && *(v9 + 32) == *(v46 + 32);
      if (v32 || (sub_1D0FF6278() & 1) != 0)
      {
        v33 = v26 == v30 && v27 == v29;
        if (v33 || (sub_1D0FF6278() & 1) != 0)
        {
          if (v28)
          {
            if (v31)
            {
              sub_1D0F1ACD4(0, &qword_1EE06F9A0);

              v34 = v28;

              v35 = v31;
              v36 = v34;
              v37 = sub_1D0FF5BF8();

              if (v37)
              {
LABEL_63:

                sub_1D0FF4908();

                sub_1D0FF4908();

                sub_1D0FF4908();

                sub_1D0FF4908();

                result = sub_1D0FF62A8();
                __break(1u);
                break;
              }
            }
          }

          else if (!v31)
          {
            goto LABEL_63;
          }
        }
      }

LABEL_64:

      a2 = (a2 + 1) & v43;
    }

    while (((*(v44 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_69:
  v38 = *v42;
  *(*v42 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v38 + 48) + 8 * a2) = v46;
  v39 = *(v38 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v41;
  }

  return result;
}

id sub_1D0F6AD40()
{
  v1 = v0;
  sub_1D0F5C554();
  v2 = *v0;
  v3 = sub_1D0FF5D88();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_1D0F6AE84()
{
  v1 = v0;
  v2 = type metadata accessor for TransactionRecord();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F6CA80();
  v6 = *v0;
  v7 = sub_1D0FF5D88();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D0F67434(*(v6 + 48) + v21, v5);
        result = sub_1D0F6BDD8(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void *sub_1D0F6B058(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1D0FF5D88();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        *(*(v5 + 48) + 8 * (v15 | (v9 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v9 << 6)));
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D0F6B1A4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D0F5C554();
  result = sub_1D0FF5D98();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1D0FF5BE8();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D0F6B3AC()
{
  v1 = v0;
  v2 = type metadata accessor for TransactionRecord();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D0F6CA80();
  result = sub_1D0FF5D98();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_1D0F67434(v19 + v20 * (v16 | (v8 << 6)), v4);
      sub_1D0FF6338();
      sub_1D0FF43A8();
      sub_1D0F6BE84(&qword_1EE071250, MEMORY[0x1E69695A8]);
      sub_1D0FF5378();
      sub_1D0FF5488();
      result = sub_1D0FF6378();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D0F6BDD8(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D0F6B6B8()
{
  v1 = v0;
  v2 = *v0;
  sub_1D0F6C9E0();
  result = sub_1D0FF5D98();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1D0FF4EA8();
      sub_1D0F6BE84(&qword_1EE06E5E8, MEMORY[0x1E695BF10]);

      result = sub_1D0FF5368();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1D0F6B924()
{
  v1 = *v0;
  sub_1D0F6C05C();
  result = sub_1D0FF5D98();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    for (i = result + 56; v7; ++*(v3 + 16))
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v13 = *(*(v1 + 48) + 8 * (v10 | (v4 << 6)));
      sub_1D0FF6338();

      AdvertisableFeatureModel.hash(into:)();
      sub_1D0FF6378();
      result = sub_1D0FF5CF8();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 48) + 8 * result) = v13;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_14;
      }

      v12 = *(v1 + 56 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_1D0F6BAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for TransactionRecord();
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v7 = *v2;
  sub_1D0FF6338();
  sub_1D0FF43A8();
  sub_1D0F6BE84(&qword_1EE071250, MEMORY[0x1E69695A8]);
  sub_1D0FF5378();
  v28 = v4;
  v8 = (a1 + *(v4 + 20));
  v9 = *v8;
  v10 = v8[1];
  sub_1D0FF5488();
  v11 = sub_1D0FF6378();
  v12 = -1 << *(v7 + 32);
  v13 = v11 & ~v12;
  if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return (*(v27 + 56))(v26, 1, 1, v28);
  }

  v14 = ~v12;
  v15 = *(v27 + 72);
  while (1)
  {
    sub_1D0F67434(*(v7 + 48) + v15 * v13, v6);
    if (sub_1D0FF4378())
    {
      v16 = &v6[*(v28 + 20)];
      v17 = *v16 == v9 && *(v16 + 1) == v10;
      if (v17 || (sub_1D0FF6278() & 1) != 0)
      {
        break;
      }
    }

    sub_1D0F6BD78(v6, type metadata accessor for TransactionRecord);
    v13 = (v13 + 1) & v14;
    if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return (*(v27 + 56))(v26, 1, 1, v28);
    }
  }

  sub_1D0F6BD78(v6, type metadata accessor for TransactionRecord);
  v18 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D0F6AE84();
    v20 = v29;
  }

  v21 = *(v20 + 48) + v15 * v13;
  v22 = v26;
  sub_1D0F6BDD8(v21, v26);
  sub_1D0F6C4E0(v13);
  *v18 = v29;
  return (*(v27 + 56))(v22, 0, 1, v28);
}

uint64_t sub_1D0F6BD78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D0F6BDD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0F6BE84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D0F6BEF4()
{
  result = sub_1D0FF43A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D0F6BF68()
{
  result = sub_1D0FF5C38();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D0F6C05C()
{
  if (!qword_1EC5FC920)
  {
    type metadata accessor for AdvertisableFeatureModel();
    sub_1D0F6BE84(&qword_1EC5FC268, type metadata accessor for AdvertisableFeatureModel);
    v0 = sub_1D0FF5DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC920);
    }
  }
}

uint64_t sub_1D0F6C0F0()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {

    v2 = sub_1D0FF5D48();

    if (v2)
    {
      v3 = sub_1D0F6C304();

      return v3;
    }

    return 0;
  }

  sub_1D0FF4EA8();
  sub_1D0F6BE84(&qword_1EE06E5E8, MEMORY[0x1E695BF10]);
  v5 = sub_1D0FF5368();
  v6 = -1 << *(v1 + 32);
  v7 = v5 & ~v6;
  if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  sub_1D0F6BE84(&qword_1EE06E5E0, MEMORY[0x1E695BF10]);
  while ((sub_1D0FF53D8() & 1) == 0)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  v12 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D0F6B058(sub_1D0F6C9E0);
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v7);
  sub_1D0F6C7F4(v7);
  result = v11;
  *v0 = v12;
  return result;
}

uint64_t sub_1D0F6C304()
{

  v1 = sub_1D0FF5D18();
  v2 = swift_unknownObjectRetain();
  v3 = sub_1D0F692E8(v2, v1);
  v10 = v3;
  sub_1D0FF4EA8();
  sub_1D0F6BE84(&qword_1EE06E5E8, MEMORY[0x1E695BF10]);

  v4 = sub_1D0FF5368();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1D0F6BE84(&qword_1EE06E5E0, MEMORY[0x1E695BF10]);
    while ((sub_1D0FF53D8() & 1) == 0)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v8 = *(*(v3 + 48) + 8 * v6);
  sub_1D0F6C7F4(v6);
  result = sub_1D0FF53D8();
  if (result)
  {
    *v0 = v10;
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F6C4E0(int64_t a1)
{
  v27 = type metadata accessor for TransactionRecord();
  v3 = *(v27 - 8);
  result = MEMORY[0x1EEE9AC00](v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1D0FF5CE8();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v26 = (v12 + 1) & v11;
      v13 = *(v3 + 72);
      v14 = v11;
      do
      {
        v15 = v8;
        v16 = v13;
        v17 = v13 * v10;
        sub_1D0F67434(*(v7 + 48) + v13 * v10, v6);
        sub_1D0FF6338();
        sub_1D0FF43A8();
        sub_1D0F6BE84(&qword_1EE071250, MEMORY[0x1E69695A8]);
        v18 = v14;
        sub_1D0FF5378();
        sub_1D0FF5488();
        v19 = sub_1D0FF6378();
        sub_1D0F6BD78(v6, type metadata accessor for TransactionRecord);
        v20 = v19 & v18;
        v14 = v18;
        if (a1 >= v26)
        {
          if (v20 < v26)
          {
            v13 = v16;
            goto LABEL_5;
          }

          v13 = v16;
          if (a1 < v20)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = v16;
          if (v20 < v26 && a1 < v20)
          {
            goto LABEL_5;
          }
        }

        v21 = v13 * a1;
        if (v13 * a1 < v17 || *(v7 + 48) + v13 * a1 >= (*(v7 + 48) + v17 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v10;
        if (v21 != v17)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v14;
        v8 = v15;
      }

      while (((*(v15 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v7 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v24;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1D0F6C7F4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D0FF5CE8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      sub_1D0FF4EA8();
      sub_1D0F6BE84(&qword_1EE06E5E8, MEMORY[0x1E695BF10]);
      do
      {
        v10 = sub_1D0FF5368() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1D0F6C9E0()
{
  if (!qword_1EE06E2C0)
  {
    sub_1D0FF4EA8();
    sub_1D0F6BE84(&qword_1EE06E5E8, MEMORY[0x1E695BF10]);
    v0 = sub_1D0FF5DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E2C0);
    }
  }
}

uint64_t sub_1D0F6CA74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1D0F6CA80()
{
  if (!qword_1EE06E2C8)
  {
    type metadata accessor for TransactionRecord();
    sub_1D0F6BE84(&qword_1EE06F470, type metadata accessor for TransactionRecord);
    v0 = sub_1D0FF5DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E2C8);
    }
  }
}

uint64_t HKCloudSyncObserver.AccountStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  return sub_1D0FF6378();
}

uint64_t static HKCloudSyncObserver.accountStatusPublisher(for:accountStore:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v10[3] = sub_1D0F1ACD4(0, &qword_1EC5FC928);
  v10[4] = &protocol witness table for ACAccountStore;
  v10[0] = a2;
  *a3 = a1;
  sub_1D0F39694(v10, (a3 + 1));
  v6 = a2;
  v7 = a1;
  v8 = sub_1D0FF5928();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
  a3[6] = v8;
  return result;
}

uint64_t HKCloudSyncObserver.AccountStatusPublisher.init(healthStore:accountStore:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9[3] = sub_1D0F1ACD4(0, &qword_1EC5FC928);
  v9[4] = &protocol witness table for ACAccountStore;
  v9[0] = a2;
  *a3 = a1;
  sub_1D0F39694(v9, (a3 + 1));
  v6 = a1;
  v7 = sub_1D0FF5928();

  result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
  a3[6] = v7;
  return result;
}

uint64_t HKCloudSyncObserver.AccountStatusPublisher.init(healthStore:accountProvider:statusPublisher:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  sub_1D0F39694(a2, (a4 + 1));
  if (!a3)
  {
    v8 = a1;
    a3 = sub_1D0FF5928();
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(a2);
  a4[6] = a3;
  return result;
}

uint64_t HKCloudSyncObserver.AccountStatusPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v48 = a3;
  v46 = a1;
  sub_1D0F6D40C();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F6D5B0();
  v42 = v7;
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F6D974();
  v43 = v10;
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D0FF5BA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F6D8D4();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F6D69C();
  v36 = v21;
  v38 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_opt_self() defaultCenter];
  sub_1D0FF5BB8();

  sub_1D0F6D88C(&qword_1EE070B18, MEMORY[0x1E6969F20]);
  sub_1D0FF50C8();
  (*(v13 + 8))(v15, v12);
  sub_1D0F6D88C(&qword_1EC5FC970, sub_1D0F6D8D4);
  sub_1D0FF5128();
  (*(v18 + 8))(v20, v17);
  v25 = v37;
  *&v49[0] = *(v37 + 48);
  sub_1D0F6D4C8();
  sub_1D0F6D88C(&unk_1EE06E610, sub_1D0F6D4C8);
  sub_1D0FF5088();
  sub_1D0F6D88C(&qword_1EC5FC978, sub_1D0F6D40C);
  sub_1D0F6D88C(&qword_1EC5FC980, sub_1D0F6D69C);
  v26 = v39;
  v27 = v36;
  sub_1D0FF50B8();
  (*(v40 + 8))(v6, v26);
  sub_1D0F6DE4C(v25, v49);
  v28 = swift_allocObject();
  v29 = v49[1];
  *(v28 + 16) = v49[0];
  *(v28 + 32) = v29;
  *(v28 + 48) = v49[2];
  *(v28 + 64) = v50;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1D0F6DE84;
  *(v30 + 24) = v28;
  sub_1D0F6D88C(&qword_1EC5FC990, sub_1D0F6D5B0);
  v32 = v41;
  v31 = v42;
  sub_1D0FF50C8();

  (*(v44 + 8))(v9, v31);
  sub_1D0F6D88C(&qword_1EC5FC998, sub_1D0F6D974);
  v33 = v43;
  sub_1D0FF5168();
  (*(v45 + 8))(v32, v33);
  return (*(v38 + 8))(v23, v27);
}

void sub_1D0F6D40C()
{
  if (!qword_1EC5FC930)
  {
    sub_1D0F6D4C8();
    sub_1D0F1ACD4(255, &qword_1EE071068);
    sub_1D0F6D88C(&unk_1EE06E610, sub_1D0F6D4C8);
    v0 = sub_1D0FF4CA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC930);
    }
  }
}

void sub_1D0F6D4C8()
{
  if (!qword_1EE06E608)
  {
    sub_1D0F6D530();
    v0 = sub_1D0FF4E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E608);
    }
  }
}

void sub_1D0F6D530()
{
  if (!qword_1EE06E098)
  {
    sub_1D0F1ACD4(255, &qword_1EE071068);
    sub_1D0F1E940();
    v0 = sub_1D0FF6418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E098);
    }
  }
}

void sub_1D0F6D5B0()
{
  if (!qword_1EC5FC938)
  {
    sub_1D0F6D40C();
    sub_1D0F6D69C();
    sub_1D0F6D88C(&qword_1EC5FC978, sub_1D0F6D40C);
    sub_1D0F6D88C(&qword_1EC5FC980, sub_1D0F6D69C);
    v0 = sub_1D0FF4C98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC938);
    }
  }
}

void sub_1D0F6D69C()
{
  if (!qword_1EC5FC940)
  {
    sub_1D0F6D788();
    sub_1D0F6D8D4();
    sub_1D0F6D88C(&qword_1EC5FC968, sub_1D0F6D788);
    sub_1D0F6D88C(&qword_1EC5FC970, sub_1D0F6D8D4);
    v0 = sub_1D0FF4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC940);
    }
  }
}

void sub_1D0F6D788()
{
  if (!qword_1EC5FC948)
  {
    sub_1D0F6D838();
    sub_1D0F6D88C(&qword_1EC5FC958, sub_1D0F6D838);
    v0 = sub_1D0FF4D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC948);
    }
  }
}

void sub_1D0F6D838()
{
  if (!qword_1EC5FC950)
  {
    v0 = sub_1D0FF56E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC950);
    }
  }
}

uint64_t sub_1D0F6D88C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D0F6D8D4()
{
  if (!qword_1EC5FC960)
  {
    sub_1D0FF5BA8();
    sub_1D0F6D88C(&qword_1EE070B18, MEMORY[0x1E6969F20]);
    v0 = sub_1D0FF4D08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC960);
    }
  }
}

void sub_1D0F6D974()
{
  if (!qword_1EC5FC988)
  {
    sub_1D0F6D5B0();
    sub_1D0F6D88C(&qword_1EC5FC990, sub_1D0F6D5B0);
    v0 = sub_1D0FF4D08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC988);
    }
  }
}

uint64_t sub_1D0F6DA10@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1D0FF4C18();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = a2[4];
  v17 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v16);
  v18 = (*(v17 + 8))(v16, v17);
  if (v18)
  {

    if ([a1 accountSupportsSecureContainer])
    {
      sub_1D0FF4BF8();
      v19 = sub_1D0FF4C08();
      v20 = sub_1D0FF5938();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v43 = v22;
        *v21 = 136446210;
        v23 = sub_1D0FF6468();
        v25 = sub_1D0F1AE0C(v23, v24, &v43);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_1D0F17000, v19, v20, "[%{public}s] iCloud account supports 2FA", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1D3882680](v22, -1, -1);
        MEMORY[0x1D3882680](v21, -1, -1);
      }

      result = (*(v7 + 8))(v15, v6);
      v27 = 2;
    }

    else
    {
      sub_1D0FF4BF8();
      v35 = sub_1D0FF4C08();
      v36 = sub_1D0FF5938();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v43 = v38;
        *v37 = 136446210;
        v39 = sub_1D0FF6468();
        v41 = sub_1D0F1AE0C(v39, v40, &v43);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_1D0F17000, v35, v36, "[%{public}s] iCloud account doesn't support 2FA", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x1D3882680](v38, -1, -1);
        MEMORY[0x1D3882680](v37, -1, -1);
      }

      result = (*(v7 + 8))(v13, v6);
      v27 = 1;
    }
  }

  else
  {
    sub_1D0FF4BF8();
    v28 = sub_1D0FF4C08();
    v29 = sub_1D0FF5938();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136446210;
      v32 = sub_1D0FF6468();
      v34 = sub_1D0F1AE0C(v32, v33, &v43);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1D0F17000, v28, v29, "[%{public}s] not signed into iCloud account", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1D3882680](v31, -1, -1);
      MEMORY[0x1D3882680](v30, -1, -1);
    }

    result = (*(v7 + 8))(v10, v6);
    v27 = 0;
  }

  *a3 = v27;
  return result;
}

id ACAccountStore.primaryiCloudAccount.getter()
{
  v1 = [v0 aa_primaryAppleAccount];

  return v1;
}

unint64_t sub_1D0F6DEF8()
{
  result = qword_1EC5FC9A0;
  if (!qword_1EC5FC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC9A0);
  }

  return result;
}

id sub_1D0F6DF4C()
{
  v1 = [*v0 aa_primaryAppleAccount];

  return v1;
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

uint64_t sub_1D0F6DFB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D0F6DFF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D0F6E0C4()
{
  result = qword_1EC5FC9A8;
  if (!qword_1EC5FC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC9A8);
  }

  return result;
}

unint64_t sub_1D0F6E118()
{
  result = qword_1EC5FC9B0;
  if (!qword_1EC5FC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC9B0);
  }

  return result;
}

unint64_t sub_1D0F6E16C()
{
  result = qword_1EC5FC9B8;
  if (!qword_1EC5FC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC9B8);
  }

  return result;
}

UIColor __swiftcall ColorRepresentation.uiColor(for:)(HealthExperience::ColorProviderContext a1)
{
  v3 = type metadata accessor for ColorRepresentation(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1.healthStore.super.isa;
  sub_1D0F288C8(v1, v5, type metadata accessor for ColorRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *v5;
      v9 = &type metadata for SemanticColorProvider;
      v19 = &type metadata for SemanticColorProvider;
      v10 = sub_1D0F6E118();
      v20 = v10;
      LOBYTE(v18[0]) = v11;
    }

    else
    {
      v9 = &type metadata for RGBColorProvider;
      v19 = &type metadata for RGBColorProvider;
      v10 = sub_1D0F6E0C4();
      v20 = v10;
      v13 = swift_allocObject();
      v18[0] = v13;
      v14 = *(v5 + 1);
      *(v13 + 16) = *v5;
      *(v13 + 32) = v14;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v12 = *v5;
    v9 = &type metadata for DisplayCategoryColorProvider;
    v19 = &type metadata for DisplayCategoryColorProvider;
    v10 = sub_1D0F6E16C();
    v20 = v10;
    v18[0] = v12;
  }

  else
  {
    v19 = type metadata accessor for HKObjectTypeColorProvider(0);
    v20 = sub_1D0F279EC(qword_1EE06EEC0, type metadata accessor for HKObjectTypeColorProvider);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    sub_1D0F2822C(v5, boxed_opaque_existential_0, type metadata accessor for HKObjectTypeColorProvider);
    v9 = v19;
    v10 = v20;
  }

  __swift_project_boxed_opaque_existential_1(v18, v9);
  v17 = v6;
  v15.super.isa = (*(v10 + 32))(&v17, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v15;
}

uint64_t static HKObjectTypeColorProvider.== infix(_:_:)()
{
  sub_1D0F1ACD4(0, &qword_1EE06FA48);
  sub_1D0F71980(&qword_1EE06E430);

  return sub_1D0FF52D8();
}

uint64_t sub_1D0F6E464(uint64_t a1)
{
  v2 = sub_1D0F268F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F6E4A0(uint64_t a1)
{
  v2 = sub_1D0F268F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F6E4DC(uint64_t a1)
{
  v2 = sub_1D0F25F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F6E518(uint64_t a1)
{
  v2 = sub_1D0F25F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F6E554(uint64_t a1)
{
  v2 = sub_1D0F266B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F6E590(uint64_t a1)
{
  v2 = sub_1D0F266B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F6E5CC(uint64_t a1)
{
  v2 = sub_1D0F24A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F6E608(uint64_t a1)
{
  v2 = sub_1D0F24A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F6E644(uint64_t a1)
{
  v2 = sub_1D0F24EA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F6E680(uint64_t a1)
{
  v2 = sub_1D0F24EA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ColorRepresentation.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D0F24A18(0, &qword_1EE06E170, sub_1D0F24A80, &type metadata for ColorRepresentation.RgbCodingKeys, MEMORY[0x1E69E6F58]);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v34 - v4;
  sub_1D0F24A18(0, &qword_1EE06E168, sub_1D0F24EA0, &type metadata for ColorRepresentation.SemanticCodingKeys, v2);
  v41 = *(v5 - 8);
  *&v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v34 - v6;
  sub_1D0F24A18(0, &qword_1EE06E158, sub_1D0F25F80, &type metadata for ColorRepresentation.DisplayCategoryCodingKeys, v2);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v34 - v8;
  sub_1D0F24A18(0, &qword_1EE06E160, sub_1D0F266B4, &type metadata for ColorRepresentation.ObjectTypeCodingKeys, v2);
  v37 = v9;
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v34 = type metadata accessor for HKObjectTypeColorProvider(0);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ColorRepresentation(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D0F24A18(0, &qword_1EE06E178, sub_1D0F268F8, &type metadata for ColorRepresentation.CodingKeys, v2);
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F268F8();
  sub_1D0FF6438();
  sub_1D0F288C8(v46, v16, type metadata accessor for ColorRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      LOBYTE(v49) = 3;
      sub_1D0F24A80();
      v31 = v16[1];
      v46 = *v16;
      v42 = v31;
      v32 = v43;
      v22 = v47;
      sub_1D0FF6178();
      v50 = v42;
      v49 = v46;
      sub_1D0F719D4();
      v33 = v45;
      sub_1D0FF6208();
      (*(v44 + 8))(v32, v33);
      return (*(v48 + 8))(v20, v22);
    }

    v24 = *v16;
    LOBYTE(v49) = 2;
    sub_1D0F24EA0();
    v25 = v40;
    v26 = v47;
    sub_1D0FF6178();
    LOBYTE(v49) = v24;
    sub_1D0F71A28();
    v27 = v42;
    sub_1D0FF6208();
    v28 = v41;
LABEL_7:
    (*(v28 + 8))(v25, v27);
    return (*(v48 + 8))(v20, v26);
  }

  if (EnumCaseMultiPayload)
  {
    v29 = *v16;
    LOBYTE(v49) = 1;
    sub_1D0F25F80();
    v25 = v36;
    v26 = v47;
    sub_1D0FF6178();
    *&v49 = v29;
    sub_1D0F71A7C();
    v27 = v39;
    sub_1D0FF6208();
    v28 = v38;
    goto LABEL_7;
  }

  sub_1D0F2822C(v16, v13, type metadata accessor for HKObjectTypeColorProvider);
  LOBYTE(v49) = 0;
  sub_1D0F266B4();
  v22 = v47;
  sub_1D0FF6178();
  sub_1D0F279EC(&qword_1EE06FF58, type metadata accessor for HKObjectTypeColorProvider);
  v23 = v37;
  sub_1D0FF6208();
  (*(v35 + 8))(v11, v23);
  sub_1D0F72754(v13, type metadata accessor for HKObjectTypeColorProvider);
  return (*(v48 + 8))(v20, v22);
}

uint64_t ColorRepresentation.hash(into:)()
{
  v1 = type metadata accessor for HKObjectTypeColorProvider(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ColorRepresentation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D0F288C8(v0, v6, type metadata accessor for ColorRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      MEMORY[0x1D3881950](2);
      sub_1D0FF5488();
    }

    else
    {
      v10 = *v6;
      v11 = v6[1];
      v12 = v6[2];
      v13 = v6[3];
      MEMORY[0x1D3881950](3);
      if (v10 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v10;
      }

      MEMORY[0x1D3881970](*&v14);
      if (v11 == 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v11;
      }

      MEMORY[0x1D3881970](*&v15);
      if (v12 == 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v12;
      }

      MEMORY[0x1D3881970](*&v16);
      if (v13 == 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v13;
      }

      return MEMORY[0x1D3881970](*&v17);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v9 = *v6;
    MEMORY[0x1D3881950](1);
    return MEMORY[0x1D3881950](*&v9);
  }

  else
  {
    sub_1D0F2822C(v6, v3, type metadata accessor for HKObjectTypeColorProvider);
    MEMORY[0x1D3881950](0);
    sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
    sub_1D0F71AD0();
    sub_1D0FF5378();
    return sub_1D0F72754(v3, type metadata accessor for HKObjectTypeColorProvider);
  }
}

uint64_t ColorRepresentation.hashValue.getter()
{
  sub_1D0FF6338();
  ColorRepresentation.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F6F0FC()
{
  sub_1D0FF6338();
  ColorRepresentation.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F6F140()
{
  sub_1D0FF6338();
  ColorRepresentation.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t HKObjectTypeColorProvider.objectType.getter()
{
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);

  return sub_1D0FF52B8();
}

uint64_t HKObjectTypeColorProvider.objectType.setter()
{
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);

  return sub_1D0FF52C8();
}

void (*HKObjectTypeColorProvider.objectType.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  *(v3 + 32) = sub_1D0FF52A8();
  return sub_1D0F6F304;
}

void sub_1D0F6F304(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t HKObjectTypeColorProvider.init(_:)()
{
  sub_1D0F1ACD4(0, &qword_1EE06FA48);

  return sub_1D0FF52F8();
}

uint64_t HKObjectTypeColorProvider.color(for:)(uint64_t *a1)
{
  v3 = *a1;
  v1.super.isa = HKObjectTypeColorProvider.uiColor(for:)(&v3).super.isa;

  return MEMORY[0x1EEDDC738](v1.super.isa);
}

uint64_t sub_1D0F6F3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79547463656A626FLL && a2 == 0xEA00000000006570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D0FF6278();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D0F6F474(uint64_t a1)
{
  v2 = sub_1D0F2809C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F6F4B0(uint64_t a1)
{
  v2 = sub_1D0F2809C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKObjectTypeColorProvider.encode(to:)(void *a1)
{
  sub_1D0F24A18(0, &qword_1EE06E128, sub_1D0F2809C, &type metadata for HKObjectTypeColorProvider.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F2809C();
  sub_1D0FF6438();
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  sub_1D0F281A0(&qword_1EE06E4D8);
  sub_1D0FF6208();
  return (*(v4 + 8))(v6, v3);
}

uint64_t HKObjectTypeColorProvider.hash(into:)()
{
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  sub_1D0F71AD0();

  return sub_1D0FF5378();
}

uint64_t HKObjectTypeColorProvider.hashValue.getter()
{
  sub_1D0FF6338();
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  sub_1D0F71AD0();
  sub_1D0FF5378();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F6F7B8()
{
  sub_1D0F1ACD4(0, &qword_1EE06FA48);
  sub_1D0F71980(&qword_1EE06E430);

  return sub_1D0FF52D8();
}

uint64_t sub_1D0F6F840()
{
  sub_1D0FF6338();
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  sub_1D0F71AD0();
  sub_1D0FF5378();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F6F8C4()
{
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  sub_1D0F71AD0();

  return sub_1D0FF5378();
}

uint64_t sub_1D0F6F944()
{
  sub_1D0FF6338();
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  sub_1D0F71AD0();
  sub_1D0FF5378();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F6F9C4(void *a1)
{
  sub_1D0F24A18(0, &qword_1EE06E128, sub_1D0F2809C, &type metadata for HKObjectTypeColorProvider.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F2809C();
  sub_1D0FF6438();
  sub_1D0F21950(0, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
  sub_1D0F281A0(&qword_1EE06E4D8);
  sub_1D0FF6208();
  return (*(v4 + 8))(v6, v3);
}

void DisplayCategoryColorProvider.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 categoryID];

  *a2 = v4;
}

uint64_t DisplayCategoryColorProvider.color(for:)(HealthExperience::ColorProviderContext a1)
{
  v1.super.isa = DisplayCategoryColorProvider.uiColor(for:)(a1).super.isa;

  return MEMORY[0x1EEDDC738](v1.super.isa);
}

UIColor __swiftcall DisplayCategoryColorProvider.uiColor(for:)(HealthExperience::ColorProviderContext a1)
{
  v2 = sub_1D0FF4C18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = [objc_opt_self() categoryWithID_];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 color];

    if (v9)
    {
      return v9;
    }
  }

  sub_1D0FF4BA8();
  v11 = sub_1D0FF4C08();
  v12 = sub_1D0FF5958();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1D0F1AE0C(0xD00000000000001CLL, 0x80000001D0FFBB40, &v17);
    *(v13 + 12) = 2048;
    *(v13 + 14) = v6;
    _os_log_impl(&dword_1D0F17000, v11, v12, "[%s]: Unable to resolve color for %ld", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1D3882680](v14, -1, -1);
    MEMORY[0x1D3882680](v13, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v15 = [objc_opt_self() blackColor];

  return v15;
}

uint64_t sub_1D0F6FEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001D1004390 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D0FF6278();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D0F6FF3C(uint64_t a1)
{
  v2 = sub_1D0F71C8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F6FF78(uint64_t a1)
{
  v2 = sub_1D0F71C8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DisplayCategoryColorProvider.encode(to:)(void *a1)
{
  sub_1D0F24A18(0, &qword_1EE06E120, sub_1D0F71C8C, &type metadata for DisplayCategoryColorProvider.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F71C8C();
  sub_1D0FF6438();
  sub_1D0FF61F8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DisplayCategoryColorProvider.hashValue.getter()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  return sub_1D0FF6378();
}

uint64_t DisplayCategoryColorProvider.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  sub_1D0F24A18(0, &qword_1EC5FC9E8, sub_1D0F71C8C, &type metadata for DisplayCategoryColorProvider.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F71C8C();
  sub_1D0FF6428();
  if (!v2)
  {
    v9 = v13;
    v10 = sub_1D0FF6138();
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D0F70330(HealthExperience::ColorProviderContext a1)
{
  v1.super.isa = DisplayCategoryColorProvider.uiColor(for:)(a1).super.isa;

  return MEMORY[0x1EEDDC738](v1.super.isa);
}

uint64_t sub_1D0F70390(void *a1)
{
  sub_1D0F24A18(0, &qword_1EE06E120, sub_1D0F71C8C, &type metadata for DisplayCategoryColorProvider.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F71C8C();
  sub_1D0FF6438();
  sub_1D0FF61F8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SemanticColorProvider.color(for:)()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      v1 = [objc_opt_self() tertiaryLabelColor];

      return MEMORY[0x1EEDDC738](v1);
    }

    else
    {

      return MEMORY[0x1EEDE3EC0]();
    }
  }

  else if (*v0)
  {

    return MEMORY[0x1EEDE40F8]();
  }

  else
  {

    return MEMORY[0x1EEDE4038]();
  }
}

UIColor __swiftcall SemanticColorProvider.uiColor(for:)(HealthExperience::ColorProviderContext a1)
{
  v2 = [objc_opt_self() *off_1E83D92D8[*v1]];

  return v2;
}

HealthExperience::SemanticColorProvider_optional __swiftcall SemanticColorProvider.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D0FF6088();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SemanticColorProvider.rawValue.getter()
{
  v1 = 0x7972616D697270;
  v2 = 0x7972616974726574;
  if (*v0 != 2)
  {
    v2 = 0x746E65636361;
  }

  if (*v0)
  {
    v1 = 0x7261646E6F636573;
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

void sub_1D0F706D0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x7972616D697270;
  v4 = 0xE800000000000000;
  v5 = 0x7972616974726574;
  if (*v1 != 2)
  {
    v5 = 0x746E65636361;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x7261646E6F636573;
    v2 = 0xE900000000000079;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D0F70750()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      v1 = [objc_opt_self() tertiaryLabelColor];

      return MEMORY[0x1EEDDC738](v1);
    }

    else
    {

      return MEMORY[0x1EEDE3EC0]();
    }
  }

  else if (*v0)
  {

    return MEMORY[0x1EEDE40F8]();
  }

  else
  {

    return MEMORY[0x1EEDE4038]();
  }
}

id sub_1D0F707F4()
{
  v1 = [objc_opt_self() *off_1E83D92D8[*v0]];

  return v1;
}

uint64_t sub_1D0F70854()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0F70918()
{
  sub_1D0FF5488();
}

uint64_t sub_1D0F709C8()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

HealthExperience::RGBColorProvider __swiftcall RGBColorProvider.init(red:green:blue:alpha:)(Swift::Double red, Swift::Double green, Swift::Double blue, Swift::Double alpha)
{
  *v4 = red;
  v4[1] = green;
  v4[2] = blue;
  v4[3] = alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

HealthExperience::RGBColorProvider __swiftcall RGBColorProvider.init(uiColor:)(UIColor uiColor)
{
  v3 = v1;
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0.0;
  v11[0] = 0;
  v8 = 0.0;
  v9 = 0.0;
  [(objc_class *)uiColor.super.isa getRed:v11 green:&v10 blue:&v9 alpha:&v8];

  v5 = v10;
  v4 = *v11;
  v7 = v8;
  v6 = v9;
  *v3 = v11[0];
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  result.alpha = v7;
  result.blue = v6;
  result.green = v5;
  result.red = v4;
  return result;
}

uint64_t RGBColorProvider.color(for:)()
{
  v0 = sub_1D0FF51B8();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8]);
  return sub_1D0FF51E8();
}

UIColor __swiftcall RGBColorProvider.uiColor(for:)(HealthExperience::ColorProviderContext a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v6 initWithRed:v2 green:v3 blue:v4 alpha:v5];
}

uint64_t sub_1D0F70D1C()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_1D0F70D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0F72540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0F70DA4(uint64_t a1)
{
  v2 = sub_1D0F71CE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F70DE0(uint64_t a1)
{
  v2 = sub_1D0F71CE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RGBColorProvider.encode(to:)(void *a1)
{
  sub_1D0F24A18(0, &qword_1EE06E1B8, sub_1D0F71CE0, &type metadata for RGBColorProvider.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F71CE0();
  sub_1D0FF6438();
  v13 = 0;
  sub_1D0FF61E8();
  if (!v1)
  {
    v12 = 1;
    sub_1D0FF61E8();
    v11 = 2;
    sub_1D0FF61E8();
    v10 = 3;
    sub_1D0FF61E8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RGBColorProvider.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D3881970](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1D3881970](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1D3881970](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1D3881970](*&v7);
}

uint64_t RGBColorProvider.hashValue.getter()
{
  sub_1D0FF6338();
  RGBColorProvider.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t RGBColorProvider.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  sub_1D0F24A18(0, &qword_1EC5FC9F0, sub_1D0F71CE0, &type metadata for RGBColorProvider.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F71CE0();
  sub_1D0FF6428();
  if (!v2)
  {
    v9 = v6;
    v10 = v21;
    v25 = 0;
    sub_1D0FF6128();
    v12 = v11;
    v24 = 1;
    sub_1D0FF6128();
    v14 = v13;
    v23 = 2;
    sub_1D0FF6128();
    v16 = v15;
    v22 = 3;
    sub_1D0FF6128();
    v19 = v18;
    (*(v9 + 8))(v8, v5);
    *v10 = v12;
    v10[1] = v14;
    v10[2] = v16;
    v10[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D0F71308()
{
  v0 = sub_1D0FF51B8();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8]);
  return sub_1D0FF51E8();
}

id sub_1D0F713F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v5 initWithRed:v1 green:v2 blue:v3 alpha:v4];
}

uint64_t sub_1D0F71454()
{
  sub_1D0FF6338();
  RGBColorProvider.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F714A4()
{
  sub_1D0FF6338();
  RGBColorProvider.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t _s16HealthExperience19ColorRepresentationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKObjectTypeColorProvider(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorRepresentation(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v32 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v32 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  sub_1D0F726F0();
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v21[*(v19 + 56)];
  sub_1D0F288C8(a1, v21, type metadata accessor for ColorRepresentation);
  sub_1D0F288C8(a2, v22, type metadata accessor for ColorRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D0F288C8(v21, v12, type metadata accessor for ColorRepresentation);
      v26 = swift_getEnumCaseMultiPayload();
      v25 = sub_1D0F726F0;
      if (v26 == 2)
      {
        v24 = sub_1D0F5DCE4(*v12, *v22);
LABEL_14:
        v25 = type metadata accessor for ColorRepresentation;
        goto LABEL_15;
      }
    }

    else
    {
      sub_1D0F288C8(v21, v9, type metadata accessor for ColorRepresentation);
      v28 = swift_getEnumCaseMultiPayload();
      v25 = sub_1D0F726F0;
      if (v28 == 3)
      {
        v24 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v9, *v22), vceqq_f64(v9[1], *(v22 + 16)))));
        goto LABEL_14;
      }
    }

LABEL_12:
    v24 = 0;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D0F288C8(v21, v15, type metadata accessor for ColorRepresentation);
    v27 = swift_getEnumCaseMultiPayload();
    v25 = sub_1D0F726F0;
    if (v27 == 1)
    {
      v24 = *v15 == *v22;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_1D0F288C8(v21, v17, type metadata accessor for ColorRepresentation);
  if (!swift_getEnumCaseMultiPayload())
  {
    v29 = v22;
    v30 = v33;
    sub_1D0F2822C(v29, v33, type metadata accessor for HKObjectTypeColorProvider);
    sub_1D0F1ACD4(0, &qword_1EE06FA48);
    sub_1D0F71980(&qword_1EE06E430);
    v24 = sub_1D0FF52D8();
    sub_1D0F72754(v30, type metadata accessor for HKObjectTypeColorProvider);
    sub_1D0F72754(v17, type metadata accessor for HKObjectTypeColorProvider);
    goto LABEL_14;
  }

  sub_1D0F72754(v17, type metadata accessor for HKObjectTypeColorProvider);
  v24 = 0;
  v25 = sub_1D0F726F0;
LABEL_15:
  sub_1D0F72754(v21, v25);
  return v24 & 1;
}

uint64_t sub_1D0F71980(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D0F1ACD4(255, &qword_1EE06FA48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D0F719D4()
{
  result = qword_1EE06F510;
  if (!qword_1EE06F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F510);
  }

  return result;
}

unint64_t sub_1D0F71A28()
{
  result = qword_1EC5FC9C0;
  if (!qword_1EC5FC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC9C0);
  }

  return result;
}

unint64_t sub_1D0F71A7C()
{
  result = qword_1EE06ED38;
  if (!qword_1EE06ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06ED38);
  }

  return result;
}

unint64_t sub_1D0F71AD0()
{
  result = qword_1EC5FC9C8;
  if (!qword_1EC5FC9C8)
  {
    sub_1D0F21950(255, &qword_1EE06FAB8, &qword_1EE06FA48, 0x1E696C2E0, MEMORY[0x1E696B370]);
    sub_1D0F71980(&qword_1EE06E438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC9C8);
  }

  return result;
}

unint64_t sub_1D0F71B90()
{
  result = qword_1EC5FC9D0;
  if (!qword_1EC5FC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC9D0);
  }

  return result;
}

unint64_t sub_1D0F71BE4()
{
  result = qword_1EC5FC9D8;
  if (!qword_1EC5FC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC9D8);
  }

  return result;
}

unint64_t sub_1D0F71C38()
{
  result = qword_1EC5FC9E0;
  if (!qword_1EC5FC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC9E0);
  }

  return result;
}

unint64_t sub_1D0F71C8C()
{
  result = qword_1EE06ED50;
  if (!qword_1EE06ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06ED50);
  }

  return result;
}

unint64_t sub_1D0F71CE0()
{
  result = qword_1EE06F528[0];
  if (!qword_1EE06F528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE06F528);
  }

  return result;
}

uint64_t sub_1D0F71D34(uint64_t a1)
{
  *(a1 + 8) = sub_1D0F279EC(&qword_1EC5FC9F8, type metadata accessor for ColorRepresentation);
  result = sub_1D0F279EC(&qword_1EC5FCA00, type metadata accessor for ColorRepresentation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D0F71E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D0F71EB4()
{
  result = qword_1EC5FCA18;
  if (!qword_1EC5FCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA18);
  }

  return result;
}

unint64_t sub_1D0F71F38()
{
  result = qword_1EC5FCA20;
  if (!qword_1EC5FCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA20);
  }

  return result;
}

unint64_t sub_1D0F71FBC()
{
  result = qword_1EC5FCA28;
  if (!qword_1EC5FCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA28);
  }

  return result;
}

unint64_t sub_1D0F72124()
{
  result = qword_1EC5FCA30;
  if (!qword_1EC5FCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA30);
  }

  return result;
}

unint64_t sub_1D0F7217C()
{
  result = qword_1EC5FCA38;
  if (!qword_1EC5FCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA38);
  }

  return result;
}

unint64_t sub_1D0F721D4()
{
  result = qword_1EC5FCA40;
  if (!qword_1EC5FCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA40);
  }

  return result;
}

unint64_t sub_1D0F7222C()
{
  result = qword_1EC5FCA48;
  if (!qword_1EC5FCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA48);
  }

  return result;
}

unint64_t sub_1D0F72284()
{
  result = qword_1EC5FCA50;
  if (!qword_1EC5FCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA50);
  }

  return result;
}

unint64_t sub_1D0F722DC()
{
  result = qword_1EC5FCA58;
  if (!qword_1EC5FCA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA58);
  }

  return result;
}

unint64_t sub_1D0F72334()
{
  result = qword_1EC5FCA60;
  if (!qword_1EC5FCA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA60);
  }

  return result;
}

unint64_t sub_1D0F7238C()
{
  result = qword_1EC5FCA68;
  if (!qword_1EC5FCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA68);
  }

  return result;
}

unint64_t sub_1D0F723E4()
{
  result = qword_1EE06F518;
  if (!qword_1EE06F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F518);
  }

  return result;
}

unint64_t sub_1D0F7243C()
{
  result = qword_1EE06F520;
  if (!qword_1EE06F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F520);
  }

  return result;
}

unint64_t sub_1D0F72494()
{
  result = qword_1EE06ED40;
  if (!qword_1EE06ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06ED40);
  }

  return result;
}

unint64_t sub_1D0F724EC()
{
  result = qword_1EE06ED48;
  if (!qword_1EE06ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06ED48);
  }

  return result;
}