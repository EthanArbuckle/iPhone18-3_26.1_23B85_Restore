id sub_24606656C@<X0>(char *a1@<X8>)
{
  result = [v1 trackingState];
  if (!result)
  {
    v4 = 4;
LABEL_9:
    *a1 = v4;
    return result;
  }

  if (result == 1)
  {
    result = [v1 trackingStateReason];
    if (result >= 5)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0x302010002uLL >> (8 * result);
    }

    goto LABEL_9;
  }

  if (result == 2)
  {
    v4 = 5;
    goto LABEL_9;
  }

  result = sub_246092344();
  __break(1u);
  return result;
}

Swift::Void __swiftcall ObjectCaptureSession.session(_:didAdd:)(ARSession _, Swift::OpaquePointer didAdd)
{
  v3 = v2;
  v6 = sub_2460919F4();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_246091A64();
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2460918F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_245FA3174();
  (*(v13 + 16))(v16, v17, v12);

  v18 = sub_2460918D4();
  v19 = sub_246091FA4();
  if (os_log_type_enabled(v18, v19))
  {
    isa = _.super.isa;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000012, 0x80000002460A2850, aBlock);
    *(v20 + 12) = 2050;
    if (didAdd._rawValue >> 62)
    {
      v22 = sub_246092354();
    }

    else
    {
      v22 = *((didAdd._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 14) = v22;

    _os_log_impl(&dword_245F8A000, v18, v19, "ObjectCaptureSession.%{private}s: has been called. #anchors = %{public}ld", v20, 0x16u);
    sub_245F8E6F4(v21);
    MEMORY[0x24C1989D0](v21, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);

    (*(v13 + 8))(v16, v12);
    _.super.isa = isa;
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  if ((v3[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos] & 1) == 0)
  {
    v23 = *&v3[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
    v24 = swift_allocObject();
    *(v24 + 16) = didAdd;
    *(v24 + 24) = v3;
    *(v24 + 32) = _;
    aBlock[4] = sub_24607CBD4;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E11C0;
    v25 = _Block_copy(aBlock);

    v26 = v3;
    v27 = _.super.isa;
    sub_246091A14();
    v37 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    v28 = v33;
    v29 = v36;
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v11, v28, v25);
    _Block_release(v25);
    (*(v35 + 8))(v28, v29);
    (*(v32 + 8))(v11, v34);
  }
}

void sub_246066BA0(unint64_t a1, unint64_t a2, void *a3)
{
  v46 = a3;
  v53 = sub_246091834();
  v48 = *(v53 - 8);
  v5 = *(v48 + 64);
  v6 = MEMORY[0x28223BE20](v53);
  v57 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_26:
    v8 = sub_246092354();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v10 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
      v11 = a1 & 0xC000000000000001;
      v49 = a1 & 0xFFFFFFFFFFFFFF8;
      v50 = a2;
      v47 = v48 + 16;
      v51 = a1;
      v52 = (v48 + 8);
      v12 = 0x277CE5000uLL;
      v13 = &off_278E99000;
      do
      {
        if (v11)
        {
          v18 = MEMORY[0x24C196C20](v9, a1, v6);
        }

        else
        {
          if (v9 >= *(v49 + 16))
          {
            goto LABEL_24;
          }

          v18 = *(a1 + 8 * v9 + 32);
        }

        v19 = v18;
        v17 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v20 = *(v12 + 792);
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          v54 = v9 + 1;
          v55 = v21;
          v22 = [v21 v13[75]];
          v23 = v57;
          sub_246091814();

          swift_beginAccess();
          v56 = v19;
          v24 = v19;
          v25 = *(a2 + v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58 = *(a2 + v10);
          a1 = v58;
          *(a2 + v10) = 0x8000000000000000;
          a2 = sub_245FC1BDC(v23);
          v28 = *(a1 + 16);
          v29 = (v27 & 1) == 0;
          v30 = v28 + v29;
          if (__OFADD__(v28, v29))
          {
            goto LABEL_23;
          }

          v31 = v27;
          if (*(a1 + 24) >= v30)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2460755FC(&unk_27EE3ADB0, &qword_24609AD50);
            }
          }

          else
          {
            sub_2460735E4(v30, isUniquelyReferenced_nonNull_native, &unk_27EE3ADB0, &qword_24609AD50);
            v32 = sub_245FC1BDC(v57);
            if ((v31 & 1) != (v33 & 1))
            {
              sub_246092424();
              __break(1u);
              return;
            }

            a2 = v32;
          }

          v19 = v56;
          a1 = v58;
          if (v31)
          {
            v14 = v58[7];
            v15 = *(v14 + 8 * a2);
            *(v14 + 8 * a2) = v55;

            (*v52)(v57, v53);
          }

          else
          {
            v34 = v12;
            v35 = v11;
            v36 = v10;
            v37 = v8;
            v58[(a2 >> 6) + 8] |= 1 << a2;
            v38 = v48;
            v39 = v57;
            v40 = v53;
            (*(v48 + 16))(*(a1 + 48) + *(v48 + 72) * a2, v57, v53);
            *(*(a1 + 56) + 8 * a2) = v55;
            (*(v38 + 8))(v39, v40);
            v41 = *(a1 + 16);
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_25;
            }

            *(a1 + 16) = v43;
            v8 = v37;
            v10 = v36;
            v11 = v35;
            v12 = v34;
            v13 = &off_278E99000;
            v19 = v56;
          }

          a2 = v50;
          v16 = *(v50 + v10);
          *(v50 + v10) = a1;

          swift_endAccess();
          a1 = v51;
          v17 = v54;
        }

        ++v9;
      }

      while (v17 != v8);
    }
  }

  v44 = [v46 currentFrame];
  if (v44)
  {
    v45 = v44;
    sub_246066F7C(v44);
  }

  sub_246067044();
}

void sub_246066F7C(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
  if (v3)
  {
    v7 = v3;
    v5 = [a1 camera];
    sub_24606656C(&v9);

    v8 = 5;
    if (static CameraTrackingState.== infix(_:_:)(&v9, &v8))
    {
      v6 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_prevPlane);
      *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_prevPlane) = v3;
    }

    else
    {
      v6 = v7;
    }
  }
}

void sub_246067044()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v70 = *(v2 - 8);
  v3 = *(v70 + 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v69 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  v11 = sub_246091834();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v0) + 0x410))(v75, v14);
  v17 = &unk_27EE3D000;
  v18 = &unk_27EE3D000;
  if (v75[0].i64[0] != 15)
  {
    sub_246077B30(v75[0].i64[0]);
    sub_246077B30(0xF);
    v28 = (v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition);
    if (*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33))
    {
      v29 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
      *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane) = 0;
    }

    else
    {
      v30 = v28[2].i8[0];
      v31 = v28[1];
      v75[0] = *v28;
      v75[1] = v31;
      v76 = v30 & 1;
      v32 = sub_24606B408(v75);
      v29 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
      *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane) = v32;
    }

    goto LABEL_29;
  }

  v69 = v2;
  sub_246077B30(0xF);
  sub_246077B30(0xF);
  v19 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane;
  v20 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
  v21 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  swift_beginAccess();
  if (v20)
  {
    v22 = *(v1 + v21);
    v23 = v20;

    v24 = [v23 identifier];
    sub_246091814();

    if (*(v22 + 16))
    {
      v25 = sub_245FC1BDC(v16);
      if (v26)
      {
        v27 = *(*(v22 + 56) + 8 * v25);

        (*(v12 + 8))(v16, v11);

        goto LABEL_12;
      }
    }

    (*(v12 + 8))(v16, v11);
  }

  v27 = 0;
LABEL_12:
  v33 = *(v1 + v19);
  *(v1 + v19) = v27;

  v18 = &unk_27EE3D000;
  v34 = v71;
  if (!*(v1 + v19))
  {
    v43 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_prevPlane);
    v17 = &unk_27EE3D000;
    if (v43)
    {
      v34 = v43;
      v44 = sub_245FA3174();
      v46 = v69;
      v45 = v70;
      (*(v70 + 2))(v10, v44, v69);
      v47 = sub_2460918D4();
      v48 = sub_246091FC4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v71 = v34;
        v50 = v49;
        v51 = swift_slowAlloc();
        v74[0] = v51;
        *v50 = 136380675;
        *(v50 + 4) = sub_245F8D3C0(0x6C50657461647075, 0xED00002928656E61, v74);
        _os_log_impl(&dword_245F8A000, v47, v48, "ObjectCaptureSession.%{private}s: Plane under the object was removed, looking for another plane close to the old plane.", v50, 0xCu);
        sub_245F8E6F4(v51);
        MEMORY[0x24C1989D0](v51, -1, -1);
        v52 = v50;
        v34 = v71;
        MEMORY[0x24C1989D0](v52, -1, -1);

        v45[1](v10, v69);
      }

      else
      {

        v45[1](v10, v46);
      }

      v54 = sub_24606B084(v34);

      v59 = *(v1 + v19);
      *(v1 + v19) = v54;

      if (*(v1 + v19))
      {
        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
      v19 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane;
      if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane))
      {
        goto LABEL_29;
      }

      v53 = sub_245FA3174();
      v48 = v69;
      v10 = v70;
      (*(v70 + 2))(v34, v53, v69);
      v54 = sub_2460918D4();
      v55 = sub_246091FB4();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = v10;
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v74[0] = v58;
        *v57 = 136380675;
        *(v57 + 4) = sub_245F8D3C0(0x6C50657461647075, 0xED00002928656E61, v74);
        _os_log_impl(&dword_245F8A000, v54, v55, "ObjectCaptureSession.%{private}s: Plane under the object was removed, cloudn't find another plane close to the old plane. Setting should wait for plane = true.", v57, 0xCu);
        sub_245F8E6F4(v58);
        MEMORY[0x24C1989D0](v58, -1, -1);
        MEMORY[0x24C1989D0](v57, -1, -1);

        (*(v56 + 1))(v71, v48);
LABEL_28:
        *(v1 + v19) = 1;
        goto LABEL_29;
      }
    }

    (*(v10 + 1))(v34, v48);
    goto LABEL_28;
  }

  v35 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane;
  v17 = &unk_27EE3D000;
  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane) == 1)
  {
    v36 = sub_245FA3174();
    v38 = v69;
    v37 = v70;
    (*(v70 + 2))(v5, v36, v69);
    v39 = sub_2460918D4();
    v40 = sub_246091FC4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v74[0] = v42;
      *v41 = 136380675;
      *(v41 + 4) = sub_245F8D3C0(0x6C50657461647075, 0xED00002928656E61, v74);
      _os_log_impl(&dword_245F8A000, v39, v40, "ObjectCaptureSession.%{private}s: Found a new plane under the object after it was removed. Setting should wait for plane = false.", v41, 0xCu);
      sub_245F8E6F4(v42);
      MEMORY[0x24C1989D0](v42, -1, -1);
      MEMORY[0x24C1989D0](v41, -1, -1);

      (*(v70 + 1))(v5, v38);
    }

    else
    {

      v37[1](v5, v38);
    }

    *(v1 + v35) = 0;
  }

LABEL_29:
  v60 = v17[430];
  v61 = *(v1 + v60);
  v62 = *(v1 + v18[431]);
  v63 = v62;
  v64 = v61;
  sub_24607CC40(v61, v62);

  if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugPlaneDetection) == 1)
  {
    v65 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers);
    sub_24606BA48();
    v66 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
    swift_beginAccess();
    v67 = *(v1 + v60);
    v72 = *(v1 + v66);
    v73 = v67;
    v68 = v67;

    sub_246091924();
  }
}

Swift::Void __swiftcall ObjectCaptureSession.session(_:didUpdate:)(ARSession _, Swift::OpaquePointer didUpdate)
{
  v5 = sub_2460919F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_246091A64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos] & 1) == 0)
  {
    v20[1] = *&v2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
    v21 = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = didUpdate;
    *(v16 + 24) = v2;
    *(v16 + 32) = _;
    aBlock[4] = sub_24607CBE0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E1210;
    v17 = _Block_copy(aBlock);

    v18 = v2;
    v19 = _.super.isa;
    sub_246091A14();
    v22 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v15, v9, v17);
    _Block_release(v17);
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v15, v21);
  }
}

void sub_246067B64(unint64_t a1, uint64_t a2, void *a3)
{
  v326 = a3;
  v5 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v345 = *(v5 - 8);
  v6 = *(v345 + 64);
  MEMORY[0x28223BE20](v5);
  v310 = &v305 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v344 = &v305 - v9;
  v10 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v305 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v317 = &v305 - v15;
  MEMORY[0x28223BE20](v16);
  v320 = &v305 - v17;
  MEMORY[0x28223BE20](v18);
  v346 = &v305 - v19;
  v356 = sub_2460918F4();
  v371 = *(v356 - 8);
  v20 = v371[8];
  MEMORY[0x28223BE20](v356);
  v327 = &v305 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v309 = &v305 - v23;
  MEMORY[0x28223BE20](v24);
  v325 = &v305 - v25;
  MEMORY[0x28223BE20](v26);
  v350 = &v305 - v27;
  MEMORY[0x28223BE20](v28);
  v322 = &v305 - v29;
  v30 = sub_246091834();
  v360 = *(v30 - 1);
  v31 = *(v360 + 64);
  MEMORY[0x28223BE20](v30);
  v321 = &v305 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v313 = &v305 - v34;
  MEMORY[0x28223BE20](v35);
  v319 = &v305 - v36;
  MEMORY[0x28223BE20](v37);
  v318 = &v305 - v38;
  MEMORY[0x28223BE20](v39);
  isUniquelyReferenced_nonNull_native = &v305 - v40;
  MEMORY[0x28223BE20](v42);
  v343 = &v305 - v43;
  MEMORY[0x28223BE20](v44);
  v354 = &v305 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v305 - v47;
  MEMORY[0x28223BE20](v49);
  v330 = &v305 - v50;
  v328 = sub_245FFC558(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
    goto LABEL_122;
  }

  v51 = a1;
  v52 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v370 = a2;
  if (!v52)
  {
    v294 = v328;
    v295 = &unk_27EE3D000;
    goto LABEL_107;
  }

  v365 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformCanAutoCaptureStart;
  v366 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager;
  v53 = v5;
  v54 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotUUIDToIDMap;
  v341 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers;
  v5 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
  v307 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager;
  a1 = v13;
  v55 = v370;
  v323 = (v370 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox);
  v311 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID;
  v315 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment;
  v316 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager;
  v324 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  v369 = v51 & 0xC000000000000001;
  v368 = v52;
  v364 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;
  swift_beginAccess();
  v308 = v5;
  swift_beginAccess();
  v305 = v54;
  v56 = v53;
  a2 = v55;
  swift_beginAccess();
  v363 = 0;
  v57 = 0;
  v353 = v51 & 0xFFFFFFFFFFFFFF8;
  v367 = (v360 + 16);
  v362 = (v360 + 8);
  v13 = v51;
  v348 = (v371 + 1);
  v349 = (v371 + 2);
  v336 = "ewPlane:oldPlane:)";
  v359 = (v345 + 56);
  v342 = (v345 + 48);
  *&v58 = 136380931;
  v335 = v58;
  v361 = v51;
  v306 = a1;
  v371 = v30;
  v314 = isUniquelyReferenced_nonNull_native;
  v347 = v56;
  v355 = v48;
LABEL_8:
  v48 = v57;
  do
  {
    if (v369)
    {
      a1 = v30;
      v60 = MEMORY[0x24C196C20](v48, v13);
    }

    else
    {
      if (v48 >= *(v353 + 16))
      {
        goto LABEL_119;
      }

      a1 = v30;
      v60 = *&v13[8 * v48 + 32];
    }

    v61 = v60;
    v30 = (v48 + 1);
    if (__OFADD__(v48, 1))
    {
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
      v51 = a1;
      v52 = sub_246092354();
      goto LABEL_3;
    }

    objc_opt_self();
    v62 = swift_dynamicCastObjCClass();
    if (v62)
    {
      v329 = (v48 + 1);
      a1 = a2;
      a2 = v62;
      v68 = [v62 identifier];
      v69 = v330;
      sub_246091814();

      v70 = v324;
      swift_beginAccess();
      v71 = v61;
      v72 = *(a1 + v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v372[0] = *(a1 + v70);
      v73 = *&v372[0];
      *(a1 + v70) = 0x8000000000000000;
      v74 = sub_245FC1BDC(v69);
      v76 = *(v73 + 16);
      v77 = (v75 & 1) == 0;
      v78 = __OFADD__(v76, v77);
      v79 = v76 + v77;
      if (v78)
      {
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        (a2)(v317, 1, 1, v347);
        __break(1u);
LABEL_131:
        sub_246092424();
        __break(1u);
        return;
      }

      v5 = v75;
      if (*(v73 + 24) >= v79)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = v74;
          sub_2460755FC(&unk_27EE3ADB0, &qword_24609AD50);
          v74 = isUniquelyReferenced_nonNull_native;
          v106 = *&v372[0];
          if (v5)
          {
            goto LABEL_35;
          }

          goto LABEL_100;
        }
      }

      else
      {
        sub_2460735E4(v79, isUniquelyReferenced_nonNull_native, &unk_27EE3ADB0, &qword_24609AD50);
        v74 = sub_245FC1BDC(v330);
        if ((v5 & 1) != (v80 & 1))
        {
          goto LABEL_131;
        }
      }

      v106 = *&v372[0];
      if (v5)
      {
LABEL_35:
        v107 = v106[7];
        v108 = *(v107 + 8 * v74);
        *(v107 + 8 * v74) = a2;

        v30 = v371;
        (*v362)(v330, v371);
LABEL_102:
        a2 = v370;
        v293 = *(v370 + v324);
        *(v370 + v324) = v106;

        swift_endAccess();

        goto LABEL_103;
      }

LABEL_100:
      v106[(v74 >> 6) + 8] |= 1 << v74;
      isUniquelyReferenced_nonNull_native = v360;
      v5 = v74;
      v290 = v330;
      v30 = v371;
      (*(v360 + 16))(v106[6] + *(v360 + 72) * v74, v330, v371);
      *(v106[7] + 8 * v5) = a2;
      (*(isUniquelyReferenced_nonNull_native + 8))(v290, v30);
      v291 = v106[2];
      v78 = __OFADD__(v291, 1);
      v292 = v291 + 1;
      if (v78)
      {
        goto LABEL_124;
      }

      v106[2] = v292;
      goto LABEL_102;
    }

    type metadata accessor for ObjectCaptureSession.BoundingBoxAnchor();
    v63 = swift_dynamicCastClass();
    if (v63)
    {
      v81 = v63;
      OCBoundingBox.init(transform:)(v373, [v63 transform]);
      v82 = v373[0].transform.columns[0];
      v83 = v373[0].transform.columns[1];
      v84 = v373[0].transform.columns[2];
      v85 = v373[0].transform.columns[3];
      v375 = 0;
      v86 = v323;
      *v323 = v373[0].transform.columns[0];
      v86[1] = v83;
      v86[2] = v84;
      v86[3] = v85;
      v86[4].i8[0] = 0;
      v351 = v85;
      v352 = v84;
      v357 = v83;
      v358 = v82;
      (*((*MEMORY[0x277D85000] & *a2) + 0x410))(v372);
      if (*&v372[0] == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
        v372[0] = v358;
        v372[1] = v357;
        v372[2] = v352;
        v372[3] = v351;
        sub_24608585C(*(a2 + v311));
      }

      else
      {
        sub_246077B30(*&v372[0]);
        sub_246077B30(0xF);
      }

      v329 = v30;
      v144 = sub_245FA3174();
      v145 = *v349;
      isUniquelyReferenced_nonNull_native = v322;
      v340 = v144;
      v146 = v356;
      v339.n128_u64[0] = v145;
      v145(v322);
      v147 = v61;
      v148 = sub_2460918D4();
      v13 = sub_246091FC4();
      v312 = v147;

      if (os_log_type_enabled(v148, v13))
      {
        v149 = swift_slowAlloc();
        v358.i64[0] = swift_slowAlloc();
        v373[0].transform.columns[0].i64[0] = v358.i64[0];
        *v149 = v335;
        *(v149 + 4) = sub_245F8D3C0(0xD000000000000015, v336 | 0x8000000000000000, v373);
        *(v149 + 12) = 2082;
        [v81 transform];
        v154 = sub_246020FBC(v150, v151, v152, v153);
        v155 = MEMORY[0x24C196760](v154);
        v157 = v156;

        v158 = sub_245F8D3C0(v155, v157, v373);

        *(v149 + 14) = v158;
        _os_log_impl(&dword_245F8A000, v148, v13, "ObjectCaptureSession.%{private}s: Bounding box anchor updated: %{public}s", v149, 0x16u);
        v159 = v358.i64[0];
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v159, -1, -1);
        MEMORY[0x24C1989D0](v149, -1, -1);

        v160 = *v348;
        v161 = isUniquelyReferenced_nonNull_native;
        v162 = v356;
      }

      else
      {

        v160 = *v348;
        v161 = isUniquelyReferenced_nonNull_native;
        v162 = v146;
      }

      v338.n128_u64[0] = v160;
      v160(v161, v162);
      v5 = v346;
      v163 = v347;
      v48 = v355;
      v30 = a1;
      if (v323[4].i8[0])
      {
        goto LABEL_129;
      }

      v165 = v323[2];
      v164 = v323[3];
      v166 = v323[1];
      v373[0].transform.columns[0] = *v323;
      v373[0].transform.columns[1] = v166;
      v373[0].transform.columns[2] = v165;
      v373[0].transform.columns[3] = v164;
      v167 = sub_246090EC4();
      v168.n128_f64[0] = OCBoundingBox.scaledTransform(scale:)(*v167);
      v169 = *(a2 + v316);
      v333 = v170;
      v334 = v168;
      v331 = v172;
      v332 = v171;
      if (v169)
      {
        v173 = *(a2 + v311);
        v174 = *(*v169 + 632);
        isUniquelyReferenced_nonNull_native = *v169 + 632;

        v175 = v173;
        v5 = v346;
        v174(v175, v334, v333, v332, v331);
        v48 = v355;
        v163 = v347;
      }

      a1 = *(a2 + v315);
      v358.i64[0] = *(a1 + 16);
      if (v358.i64[0])
      {
        v357.i64[0] = a1 + ((*(v360 + 80) + 32) & ~*(v360 + 80));

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = 0;
        v337.n128_u64[0] = a1;
        while (1)
        {
          if (isUniquelyReferenced_nonNull_native >= *(a1 + 16))
          {
            goto LABEL_118;
          }

          v13 = *(v360 + 16);
          (v13)(v48, v357.i64[0] + *(v360 + 72) * isUniquelyReferenced_nonNull_native, v30);
          v176 = *(a2 + v364);
          if (*(v176 + 16))
          {
            v177 = *(a2 + v364);

            v178 = sub_245FC1BDC(v48);
            if (v179)
            {
              v180 = *(v176 + 56);
              v181 = v30;
              v182 = v345;
              v352.i64[0] = *(v345 + 72);
              sub_246081A04(v180 + v352.i64[0] * v178, v5, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

              (*(v182 + 56))(v5, 0, 1, v163);
              sub_245F8E744(v5, &qword_27EE3ACE0, &unk_246098880);
              (v13)(v354, v48, v181);
              a1 = a2;
              v5 = sub_24604445C();
              v183 = sub_2460599F8(v374);
              v185 = v184;
              if ((*(v182 + 48))(v184, 1, v163) == 1)
              {
                goto LABEL_128;
              }

              v186 = (v185 + *(v163 + 28));
              memmove(v373, v186, 0x91uLL);
              v187 = sub_245F97C14(v373);
              a2 = v356;
              v30 = v362;
              if (v187 != 1)
              {
                v188 = v333;
                *v186 = v334;
                v186[1] = v188;
                v189 = v331;
                v186[2] = v332;
                v186[3] = v189;
              }

              (v183)(v374, 0);
              v190 = *v30;
              (*v30)(v354, v371);
              (v5)(v372, 0);
              v48 = v355;
              v191 = *(a1 + v341);
              v192 = sub_24606C1B4();
              v193 = *(a1 + v364);
              if (!*(v193 + 16))
              {
                goto LABEL_120;
              }

              v5 = v192;
              v194 = *(a1 + v364);

              v195 = sub_245FC1BDC(v48);
              if ((v196 & 1) == 0)
              {
                goto LABEL_121;
              }

              v351.i64[0] = v190;
              v197 = v344;
              sub_246081A04(*(v193 + 56) + v195 * v352.i64[0], v344, type metadata accessor for ObjectCaptureSession.Metadata.Shot);

              sub_246091924();

              sub_246081A6C(v197, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
              v198 = v350;
              (v339.n128_u64[0])(v350, v340, a2);
              v199 = v343;
              v200 = v371;
              (v13)(v343, v48, v371);
              v201 = sub_2460918D4();
              v202 = sub_246091FC4();
              if (os_log_type_enabled(v201, v202))
              {
                v203 = v199;
                v204 = swift_slowAlloc();
                v352.i64[0] = swift_slowAlloc();
                *&v372[0] = v352.i64[0];
                *v204 = v335;
                *(v204 + 4) = sub_245F8D3C0(0xD000000000000015, v336 | 0x8000000000000000, v372);
                *(v204 + 12) = 2082;
                sub_246077C40(&unk_27EE3A310, MEMORY[0x277CC95F0]);
                v205 = sub_2460923D4();
                v207 = v206;
                v208 = v203;
                v209 = v351.i64[0];
                (v351.i64[0])(v208, v200);
                v210 = sub_245F8D3C0(v205, v207, v372);

                *(v204 + 14) = v210;
                _os_log_impl(&dword_245F8A000, v201, v202, "ObjectCaptureSession.%{private}s: Published bounding box update for shot %{public}s", v204, 0x16u);
                v211 = v352.i64[0];
                swift_arrayDestroy();
                v13 = v361;
                MEMORY[0x24C1989D0](v211, -1, -1);
                MEMORY[0x24C1989D0](v204, -1, -1);

                (v338.n128_u64[0])(v350, v356);
                v48 = v355;
                v209(v355, v200);
                v5 = v346;
              }

              else
              {

                v212 = v199;
                v213 = v351.i64[0];
                (v351.i64[0])(v212, v200);
                (v338.n128_u64[0])(v198, a2);
                v48 = v355;
                v213(v355, v200);
                v5 = v346;
                v13 = v361;
              }

              v163 = v347;
              v30 = v371;
              a2 = v370;
              a1 = v337.n128_u64[0];
              goto LABEL_56;
            }
          }

          (*v362)(v48, v30);
          (*v359)(v5, 1, 1, v163);
          sub_245F8E744(v5, &qword_27EE3ACE0, &unk_246098880);
          v13 = v361;
LABEL_56:
          if (v358.i64[0] == ++isUniquelyReferenced_nonNull_native)
          {

            v59 = v368;
            v57 = v329;
            goto LABEL_7;
          }
        }
      }

LABEL_103:
      v59 = v368;
      v57 = v329;
      v13 = v361;
      goto LABEL_7;
    }

    type metadata accessor for ObjectCaptureSession.ShotAnchor();
    v64 = swift_dynamicCastClass();
    if (v64)
    {
      isUniquelyReferenced_nonNull_native = v64;
      a1 = v13;
      v87 = sub_245FA3174();
      v88 = *v349;
      v89 = v325;
      v352.i64[0] = v87;
      v90 = v356;
      v351.i64[0] = v88;
      v88(v325);
      v91 = v61;
      v92 = sub_2460918D4();
      v93 = sub_246091FC4();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v358.i64[0] = swift_slowAlloc();
        v373[0].transform.columns[0].i64[0] = v358.i64[0];
        *v94 = v335;
        *(v94 + 4) = sub_245F8D3C0(0xD000000000000015, v336 | 0x8000000000000000, v373);
        *(v94 + 12) = 2082;
        v357.i64[0] = v91;
        v95 = [isUniquelyReferenced_nonNull_native description];
        v96 = sub_246091C04();
        v98 = v97;

        v99 = v96;
        v100 = v361;
        v101 = sub_245F8D3C0(v99, v98, v373);
        a1 = v100;

        *(v94 + 14) = v101;
        _os_log_impl(&dword_245F8A000, v92, v93, "ObjectCaptureSession.%{private}s: Received shot anchor update: %{public}s", v94, 0x16u);
        v102 = v358.i64[0];
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v102, -1, -1);
        MEMORY[0x24C1989D0](v94, -1, -1);

        v103 = *v348;
        v104 = v325;
        v105 = v356;
      }

      else
      {

        v103 = *v348;
        v104 = v89;
        v105 = v90;
      }

      v357.i64[0] = v103;
      v103(v104, v105);
      v109 = v347;
      v110 = v327;
      v111 = v314;
      v340 = v91;
      v112 = [isUniquelyReferenced_nonNull_native identifier];
      sub_246091814();

      a2 = v370;
      v113 = *(v370 + v364);
      if (*(v113 + 16))
      {
        v114 = *(v370 + v364);

        v115 = sub_245FC1BDC(v111);
        if (v116)
        {
          v117 = *(v113 + 56);
          v118 = v345;
          v339.n128_u64[0] = *(v345 + 72);
          v119 = v320;
          sub_246081A04(v117 + v339.n128_u64[0] * v115, v320, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          v120 = v371;
          v358.i64[0] = *v362;
          (v358.i64[0])(v111, v371);

          v121 = v120;
          v338.n128_u64[0] = *(v118 + 56);
          (v338.n128_u64[0])(v119, 0, 1, v109);
          sub_245F8E744(v119, &qword_27EE3ACE0, &unk_246098880);
          v122 = [isUniquelyReferenced_nonNull_native identifier];
          v123 = v318;
          sub_246091814();
          [isUniquelyReferenced_nonNull_native transform];
          v337 = v124;
          v333 = v126;
          v334 = v125;
          v332 = v127;
          v128 = v364;
          swift_beginAccess();
          v129 = *(a2 + v128);
          v130 = a2;
          a2 = swift_isUniquelyReferenced_nonNull_native();
          v131 = v319;
          (*v367)(v319, v123, v121);
          *&v372[0] = *(v130 + v128);
          v132 = *&v372[0];
          *(v130 + v128) = 0x8000000000000000;
          v134 = sub_245FC1BDC(v131);
          v135 = *(v132 + 16);
          v136 = (v133 & 1) == 0;
          v137 = v135 + v136;
          if (__OFADD__(v135, v136))
          {
            goto LABEL_125;
          }

          v138 = v133;
          if (*(v132 + 24) >= v137)
          {
            if ((a2 & 1) == 0)
            {
              sub_246074CB4();
            }
          }

          else
          {
            sub_2460727D4(v137, a2);
            v139 = sub_245FC1BDC(v319);
            if ((v138 & 1) != (v140 & 1))
            {
              goto LABEL_131;
            }

            v134 = v139;
          }

          v214 = v306;
          a2 = v338.n128_u64[0];
          if ((v138 & 1) == 0)
          {
            goto LABEL_130;
          }

          v215 = *&v372[0];
          v216 = v134 * v339.n128_u64[0];
          v217 = v317;
          sub_24608199C(*(*&v372[0] + 56) + v134 * v339.n128_u64[0], v317, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
          v218 = v347;
          (a2)(v217, 0, 1, v347);
          v220 = v333;
          v219 = v334;
          *(v217 + 64) = v337;
          *(v217 + 80) = v219;
          v221 = v332;
          *(v217 + 96) = v220;
          *(v217 + 112) = v221;
          a2 = &unk_246098880;
          sub_245F8E7A4(v217, v214, &qword_27EE3ACE0, &unk_246098880);
          if ((*v342)(v214, 1, v218) == 1)
          {
            sub_245F8E744(v214, &qword_27EE3ACE0, &unk_246098880);
            v222 = v371;
            v223 = v358.i64[0];
            (v358.i64[0])(*(v215 + 48) + *(v360 + 72) * v134, v371);
            sub_2460739C0(v134, v215);
          }

          else
          {
            v224 = v310;
            sub_24608199C(v214, v310, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
            sub_24608199C(v224, *(v215 + 56) + v216, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
            v222 = v371;
            v223 = v358.i64[0];
          }

          v223(v319, v222);
          v223(v318, v222);
          sub_245F8E744(v317, &qword_27EE3ACE0, &unk_246098880);
          v225 = v370;
          *(v370 + v364) = v215;
          swift_endAccess();
          v226 = [isUniquelyReferenced_nonNull_native identifier];
          v227 = v313;
          sub_246091814();

          v228 = *(v225 + v305);
          if (*(v228 + 16))
          {
            v229 = *(v225 + v305);

            v230 = sub_245FC1BDC(v227);
            if (v231)
            {
              v232 = *(*(v228 + 56) + 8 * v230);
              v223(v227, v222);

              [isUniquelyReferenced_nonNull_native transform];
              v337 = v234;
              v338 = v233;
              v333 = v236;
              v334 = v235;
              v237 = v328;
              v238 = swift_isUniquelyReferenced_nonNull_native();
              v373[0].transform.columns[0].i64[0] = v237;
              sub_2460749D4(v232, v238, v338, v337, v334, v333);
              v328 = v373[0].transform.columns[0].i64[0];
LABEL_82:
              v239 = v370;
              v240 = *(v370 + v341);
              sub_24606C1B4();
              v241 = [isUniquelyReferenced_nonNull_native identifier];
              v242 = v321;
              sub_246091814();
              v243 = *(v239 + v364);
              if (!*(v243 + 16))
              {
                goto LABEL_126;
              }

              v244 = *(v239 + v364);

              v245 = sub_245FC1BDC(v242);
              v246 = v242;
              v248 = v247;

              if ((v248 & 1) == 0)
              {
                goto LABEL_127;
              }

              v249 = v344;
              sub_246081A04(*(v243 + 56) + v245 * v339.n128_u64[0], v344, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
              v141 = v358.i64[0];
              (v358.i64[0])(v246, v371);

              sub_246091924();

              v143 = sub_246081A6C(v249, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
              v110 = v327;
              a2 = v370;
              a1 = v361;
              goto LABEL_85;
            }
          }

          v223(v227, v222);
          goto LABEL_82;
        }
      }

      v141 = *v362;
      (*v362)(v111, v371);
      v142 = v320;
      (*v359)(v320, 1, 1, v109);
      v143 = sub_245F8E744(v142, &qword_27EE3ACE0, &unk_246098880);
LABEL_85:
      v358.i64[0] = v141;
      (*((*MEMORY[0x277D85000] & *a2) + 0x410))(v373, v143);
      if (v373[0].transform.columns[0].i64[0] != 15)
      {
        sub_246077B30(v373[0].transform.columns[0].i64[0]);
        sub_246077B30(0xF);
LABEL_92:
        v258 = v340;

        v262 = v351.i64[0];
LABEL_93:
        v262(v110, v352.i64[0], v356);
        v279 = v258;
        v280 = v110;
        v281 = sub_2460918D4();
        v5 = sub_246091FB4();

        if (os_log_type_enabled(v281, v5))
        {
          v282 = swift_slowAlloc();
          v283 = swift_slowAlloc();
          v373[0].transform.columns[0].i64[0] = v283;
          *v282 = v335;
          *(v282 + 4) = sub_245F8D3C0(0xD000000000000015, v336 | 0x8000000000000000, v373);
          *(v282 + 12) = 2082;
          v284 = [isUniquelyReferenced_nonNull_native identifier];
          v285 = v321;
          sub_246091814();

          v286 = sub_2460917F4();
          isUniquelyReferenced_nonNull_native = v287;
          v288 = v285;
          a1 = v371;
          (v358.i64[0])(v288, v371);
          v289 = sub_245F8D3C0(v286, isUniquelyReferenced_nonNull_native, v373);

          *(v282 + 14) = v289;
          _os_log_impl(&dword_245F8A000, v281, v5, "ObjectCaptureSession.%{private}s: Failed to update shot with id = %{public}s for automatic capture!", v282, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v283, -1, -1);
          MEMORY[0x24C1989D0](v282, -1, -1);

          a2 = v370;
          (v357.i64[0])(v327, v356);
          v59 = v368;
          v57 = v30;
          v30 = a1;
        }

        else
        {

          (v357.i64[0])(v280, v356);
          v59 = v368;
          v57 = v30;
          v30 = v371;
        }

        v13 = v361;
        goto LABEL_7;
      }

      sub_246077B30(0xF);
      sub_246077B30(0xF);
      if (!*(*(a2 + v308) + 16))
      {
        goto LABEL_92;
      }

      v250 = *(a2 + v307);
      if (!v250)
      {
        goto LABEL_92;
      }

      v251 = *(a2 + v307);

      v252 = [isUniquelyReferenced_nonNull_native identifier];
      v253 = v321;
      sub_246091814();

      [isUniquelyReferenced_nonNull_native transform];
      v338 = v255;
      v339 = v254;
      v337 = v256;
      v334 = v257;
      v258 = v340;

      LOBYTE(v252) = (*(*v250 + 504))(v253, v339, v338, v337, v334);
      v259 = v253;
      v260 = v358.i64[0];
      (v358.i64[0])(v259, v371);
      v261 = v250;
      v262 = v351.i64[0];
      if ((v252 & 1) == 0)
      {

        goto LABEL_93;
      }

      v339.n128_u64[0] = v261;
      v263 = v309;
      (v351.i64[0])(v309, v352.i64[0], v356);
      v264 = v258;
      v265 = sub_2460918D4();
      v5 = sub_246091FC4();

      v352.i32[0] = v5;
      if (os_log_type_enabled(v265, v5))
      {
        v266 = swift_slowAlloc();
        v351.i64[0] = v264;
        v267 = v266;
        v268 = swift_slowAlloc();
        v340 = v265;
        v269 = v260;
        v270 = v263;
        v5 = v268;
        v373[0].transform.columns[0].i64[0] = v268;
        *v267 = v335;
        *(v267 + 4) = sub_245F8D3C0(0xD000000000000015, v336 | 0x8000000000000000, v373);
        *(v267 + 12) = 2082;
        v271 = [isUniquelyReferenced_nonNull_native identifier];
        v272 = v321;
        sub_246091814();

        v273 = sub_2460917F4();
        isUniquelyReferenced_nonNull_native = v274;
        v269(v272, v371);
        v275 = sub_245F8D3C0(v273, isUniquelyReferenced_nonNull_native, v373);

        *(v267 + 14) = v275;
        v276 = v340;
        _os_log_impl(&dword_245F8A000, v340, v352.i8[0], "ObjectCaptureSession.%{private}s: Update shot with id = %{public}s for automatic capture.", v267, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v5, -1, -1);
        MEMORY[0x24C1989D0](v267, -1, -1);

        v277 = v270;
        a2 = v370;
        v278 = v371;
        (v357.i64[0])(v277, v356);
        v59 = v368;
        v57 = v30;
        v30 = v278;
        v13 = v361;
      }

      else
      {

        (v357.i64[0])(v263, v356);
        v59 = v368;
        v57 = v30;
        v30 = v371;
        v13 = a1;
      }

LABEL_7:
      if (v57 == v59)
      {
        v294 = v328;
        v295 = &unk_27EE3D000;
        if (v363)
        {
          goto LABEL_104;
        }

        goto LABEL_107;
      }

      goto LABEL_8;
    }

    objc_opt_self();
    v65 = swift_dynamicCastObjCClass();
    if (!v65)
    {
      goto LABEL_6;
    }

    v5 = v65;
    *(a2 + v365) = 1;
    (*((*MEMORY[0x277D85000] & *a2) + 0x410))(v373);
    if (v373[0].transform.columns[0].i64[0] != 15)
    {
      sub_246077B30(v373[0].transform.columns[0].i64[0]);
      sub_246077B30(0xF);
LABEL_6:

      v59 = v368;
      v57 = (v48 + 1);
      v30 = a1;
      goto LABEL_7;
    }

    sub_246077B30(0xF);
    sub_246077B30(0xF);
    v66 = *(a2 + v366);
    if (!v66)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = *(*v66 + 360);

    v5 = (isUniquelyReferenced_nonNull_native)(v5);

    if ((v5 & 1) == 0)
    {
      v59 = v368;
      v57 = (v48 + 1);
      v30 = v371;
      a2 = v370;
      goto LABEL_7;
    }

    ++v48;
    v363 = 1;
    v67 = v30 == v368;
    v30 = v371;
    a2 = v370;
  }

  while (!v67);
  v294 = v328;
  v295 = &unk_27EE3D000;
LABEL_104:
  v296 = *(v370 + v366);
  if (v296)
  {
    v297 = *(*v296 + 400);
    v298 = *(v370 + v366);

    v297(v299);
  }

LABEL_107:
  v300 = *(v370 + v295[471]);
  if (v300 && *(v294 + 16))
  {
    v301 = *(*v300 + 624);

    v301(v294);
  }

  v302 = [v326 currentFrame];
  if (v302)
  {
    v303 = v302;
    v304 = [v302 camera];
    sub_24606656C(v373);

    LOBYTE(v372[0]) = 5;
    if (static CameraTrackingState.== infix(_:_:)(v373, v372))
    {
      sub_246066F7C(v303);
      sub_246067044();
    }
  }
}

uint64_t sub_246069CD4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  sub_245FA30EC(0, &qword_27EE3AA10, 0x277CE5218);
  v8 = sub_246091DD4();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

Swift::Void __swiftcall ObjectCaptureSession.session(_:didRemove:)(ARSession _, Swift::OpaquePointer didRemove)
{
  v3 = v2;
  v6 = sub_2460919F4();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_246091A64();
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2460918F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_245FA3174();
  (*(v13 + 16))(v16, v17, v12);

  v18 = sub_2460918D4();
  v19 = sub_246091FA4();
  if (os_log_type_enabled(v18, v19))
  {
    isa = _.super.isa;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A2870, aBlock);
    *(v20 + 12) = 2050;
    if (didRemove._rawValue >> 62)
    {
      v22 = sub_246092354();
    }

    else
    {
      v22 = *((didRemove._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 14) = v22;

    _os_log_impl(&dword_245F8A000, v18, v19, "ObjectCaptureSession.%{private}s has been called. #anchors = %{public}ld", v20, 0x16u);
    sub_245F8E6F4(v21);
    MEMORY[0x24C1989D0](v21, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);

    (*(v13 + 8))(v16, v12);
    _.super.isa = isa;
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  if ((v3[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos] & 1) == 0)
  {
    v23 = *&v3[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
    v24 = swift_allocObject();
    *(v24 + 16) = didRemove;
    *(v24 + 24) = v3;
    *(v24 + 32) = _;
    aBlock[4] = sub_24607CC34;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E1260;
    v25 = _Block_copy(aBlock);

    v26 = v3;
    v27 = _.super.isa;
    sub_246091A14();
    v37 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    v28 = v33;
    v29 = v36;
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v11, v28, v25);
    _Block_release(v25);
    (*(v35 + 8))(v28, v29);
    (*(v32 + 8))(v11, v34);
  }
}

void sub_24606A264(unint64_t a1, uint64_t a2, void *a3)
{
  v29 = a3;
  v35 = sub_246091834();
  v33 = *(v35 - 8);
  v5 = v33[8];
  v6 = MEMORY[0x28223BE20](v35);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v9 = sub_246092354();
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  v10 = 0;
  v11 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  v12 = a1 & 0xC000000000000001;
  v34 = (v33 + 1);
  v31 = a1 & 0xC000000000000001;
  v32 = v9;
  v30 = a1;
  do
  {
    if (v12)
    {
      v13 = MEMORY[0x24C196C20](v10, a1, v6);
    }

    else
    {
      v13 = *(a1 + 8 * v10 + 32);
    }

    v14 = v13;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = [v15 identifier];
      sub_246091814();

      swift_beginAccess();
      v17 = *(a2 + v11);
      v18 = sub_245FC1BDC(v8);
      if (v19)
      {
        v20 = v18;
        v21 = *(a2 + v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(a2 + v11);
        v36 = v23;
        *(a2 + v11) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_2460755FC(&unk_27EE3ADB0, &qword_24609AD50);
          v23 = v36;
        }

        v24 = v33[1];
        v25 = v35;
        v24(*(v23 + 48) + v33[9] * v20, v35);

        sub_246073EB0(v20, v23);
        v24(v8, v25);
        *(a2 + v11) = v23;
        a1 = v30;
        v12 = v31;
        v9 = v32;
      }

      else
      {
        (*v34)(v8, v35);
      }

      swift_endAccess();
    }

    ++v10;
  }

  while (v9 != v10);
LABEL_17:
  v26 = [v29 currentFrame];
  if (v26)
  {
    v27 = v26;
    sub_246066F7C(v26);
  }

  sub_246067044();
}

void sub_24606A53C(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  if (a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled] != 1)
  {
    return;
  }

  sub_24606656C(v46);
  v45 = 5;
  sub_246081AE4();
  if ((sub_246091BB4() & 1) == 0)
  {
    v42 = v8;
    sub_24603D144();
    a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] = 1;
    v15 = sub_245FA3174();
    v39 = v5[2];
    v40 = v15;
    v39(v14);
    v16 = sub_2460918D4();
    v17 = sub_246091FC4();
    v18 = os_log_type_enabled(v16, v17);
    v43 = v5;
    v41 = a2;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46[0] = v20;
      *v19 = 136380675;
      *(v19 + 4) = sub_245F8D3C0(0xD000000000000028, 0x80000002460A4570, v46);
      _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: Set should wait for pose correction using  mobileSfM.", v19, 0xCu);
      sub_245F8E6F4(v20);
      MEMORY[0x24C1989D0](v20, -1, -1);
      v21 = v19;
      v5 = v43;
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    v22 = v5[1];
    v22(v14, v4);
    v23 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
    swift_beginAccess();
    memcpy(v46, &a1[v23], 0x4F0uLL);
    if (sub_246081984(v46) == 1)
    {
      goto LABEL_22;
    }

    v24 = *v46 * 1000.0;
    if (COERCE__INT64(fabs(*v46 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24 > -9.22337204e18)
    {
      if (v24 < 9.22337204e18)
      {
        v25 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection;
        *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection] = v24;
        (v39)(v11, v40, v4);
        v26 = a1;
        v27 = sub_2460918D4();
        v28 = sub_246091FC4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v40 = v22;
          v31 = v30;
          v44 = v30;
          *v29 = 136380931;
          *(v29 + 4) = sub_245F8D3C0(0xD000000000000028, 0x80000002460A4570, &v44);
          *(v29 + 12) = 2050;
          *(v29 + 14) = *&a1[v25];

          _os_log_impl(&dword_245F8A000, v27, v28, "ObjectCaptureSession.%{private}s: Set pause time for pose correction = %{public}ld", v29, 0x16u);
          sub_245F8E6F4(v31);
          MEMORY[0x24C1989D0](v31, -1, -1);
          MEMORY[0x24C1989D0](v29, -1, -1);

          v5 = v43;
          v40(v11, v4);
        }

        else
        {

          v5 = v43;
          v22(v11, v4);
        }

        v8 = v42;
        goto LABEL_13;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

LABEL_13:
  sub_24606656C(v46);
  LOBYTE(v44) = 5;
  if (static CameraTrackingState.== infix(_:_:)(v46, &v44) && a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] == 1)
  {
    sub_24603DCBC();
    v32 = sub_245FA3174();
    (v5[2])(v8, v32, v4);
    v33 = a1;
    v34 = sub_2460918D4();
    v35 = sub_246091FC4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46[0] = v37;
      *v36 = 136380931;
      *(v36 + 4) = sub_245F8D3C0(0xD000000000000028, 0x80000002460A4570, v46);
      *(v36 + 12) = 2050;
      *(v36 + 14) = 0x4024000000000000;
      _os_log_impl(&dword_245F8A000, v34, v35, "ObjectCaptureSession.%{private}s: Set set wait for pose correction timer to %{public}f seconds.", v36, 0x16u);
      sub_245F8E6F4(v37);
      MEMORY[0x24C1989D0](v37, -1, -1);
      MEMORY[0x24C1989D0](v36, -1, -1);
    }

    (v5[1])(v8, v4);
  }
}

void sub_24606ABA4(_BYTE *a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  if (a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled] == 1)
  {
    sub_24603D144();
    a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] = 1;
    v10 = sub_245FA3174();
    v28 = v3[2];
    v29 = v10;
    v28(v9);
    v11 = sub_2460918D4();
    v12 = sub_246091FC4();
    v13 = os_log_type_enabled(v11, v12);
    v30 = v3;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32[0] = v15;
      *v14 = 136380675;
      *(v14 + 4) = sub_245F8D3C0(0xD000000000000026, 0x80000002460A44D0, v32);
      _os_log_impl(&dword_245F8A000, v11, v12, "ObjectCaptureSession.%{private}s: Set should wait for pose correction using mobileSfM", v14, 0xCu);
      sub_245F8E6F4(v15);
      v16 = v15;
      v3 = v30;
      MEMORY[0x24C1989D0](v16, -1, -1);
      MEMORY[0x24C1989D0](v14, -1, -1);
    }

    v17 = v3[1];
    v17(v9, v2);
    v18 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
    swift_beginAccess();
    memcpy(v32, &a1[v18], 0x4F0uLL);
    if (sub_246081984(v32) == 1)
    {
      goto LABEL_15;
    }

    v19 = *v32 * 1000.0;
    if (COERCE__INT64(fabs(*v32 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        v20 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection;
        *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection] = v19;
        (v28)(v6, v29, v2);
        v21 = a1;
        v22 = sub_2460918D4();
        v23 = sub_246091FC4();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v29 = v17;
          v25 = v24;
          v26 = swift_slowAlloc();
          v31 = v26;
          *v25 = 136380931;
          *(v25 + 4) = sub_245F8D3C0(0xD000000000000026, 0x80000002460A44D0, &v31);
          *(v25 + 12) = 2050;
          *(v25 + 14) = *&a1[v20];

          _os_log_impl(&dword_245F8A000, v22, v23, "ObjectCaptureSession.%{private}s: Set pause time for pose correction = %{public}ld", v25, 0x16u);
          sub_245F8E6F4(v26);
          MEMORY[0x24C1989D0](v26, -1, -1);
          MEMORY[0x24C1989D0](v25, -1, -1);

          v29(v6, v2);
        }

        else
        {

          v17(v6, v2);
        }

        return;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

id sub_24606B084(void *a1)
{
  v28 = a1;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition);
  if ((*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33) & 1) != 0 || (v11 = v10[2].i8[0], v12 = v10[1], v30[0] = *v10, v30[1] = v12, v31 = v11 & 1, (v13 = sub_24606B408(v30)) == 0))
  {
    v21 = sub_245FA3174();
    (*(v3 + 16))(v6, v21, v2);
    v22 = sub_2460918D4();
    v23 = sub_246091FB4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136380675;
      *(v24 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A4600, &v29);
      _os_log_impl(&dword_245F8A000, v22, v23, "ObjectCaptureSession.%{private}s: Failed to recompute the nearest plane under the object, using the old plane without anchor updates!", v24, 0xCu);
      sub_245F8E6F4(v25);
      MEMORY[0x24C1989D0](v25, -1, -1);
      MEMORY[0x24C1989D0](v24, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v14 = v13;
    v15 = sub_246021FD4(v28, v13);
    if (v15 <= 0.01)
    {
      return v14;
    }

    v16 = sub_245FA3174();
    (*(v3 + 16))(v9, v16, v2);
    v17 = sub_2460918D4();
    v18 = sub_246091FB4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136380931;
      *(v19 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A4600, &v29);
      *(v19 + 12) = 2050;
      *(v19 + 14) = v15;
      _os_log_impl(&dword_245F8A000, v17, v18, "ObjectCaptureSession.%{private}s: Recomputed plane is too far (%{public}f meters) from old plane, using the old plane without anchor updates!", v19, 0x16u);
      sub_245F8E6F4(v20);
      MEMORY[0x24C1989D0](v20, -1, -1);
      MEMORY[0x24C1989D0](v19, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }

  v26 = v28;

  return v26;
}

uint64_t sub_24606B408(float32x4_t *a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  if (a1[2].i8[0])
  {
    v14 = sub_245FA3174();
    (*(v4 + 16))(v7, v14, v3);
    v15 = sub_2460918D4();
    v16 = sub_246091FB4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 136380675;
      *(v17 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A4620, &v37);
      _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: Failed to compute nearest plane below tap position because worldPoint is nil!", v17, 0xCu);
      sub_245F8E6F4(v18);
      MEMORY[0x24C1989D0](v18, -1, -1);
      MEMORY[0x24C1989D0](v17, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v35 = a1[1];
    v19 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
    swift_beginAccess();
    if (*(*(v1 + v19) + 16))
    {

      sub_246079E60(v20, v35);
      v22 = v21;

      result = v22;
      if (v22)
      {
        return result;
      }

      v24 = sub_245FA3174();
      (*(v4 + 16))(v13, v24, v3);
      v25 = sub_2460918D4();
      v26 = sub_246091FB4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v36 = v28;
        *v27 = 136381443;
        *(v27 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A4620, &v36);
        *(v27 + 12) = 2050;
        v29 = v35;
        *(v27 + 14) = v35.f32[0];
        *(v27 + 22) = 2050;
        *(v27 + 24) = v29.f32[1];
        *(v27 + 32) = 2050;
        *(v27 + 34) = v29.f32[2];
        _os_log_impl(&dword_245F8A000, v25, v26, "ObjectCaptureSession.%{private}s: Failed to compute nearest plane below world tap point x=%{public}f, y=%{public}f, z=%{public}f", v27, 0x2Au);
        sub_245F8E6F4(v28);
        MEMORY[0x24C1989D0](v28, -1, -1);
        MEMORY[0x24C1989D0](v27, -1, -1);
      }

      (*(v4 + 8))(v13, v3);
    }

    else
    {
      v30 = sub_245FA3174();
      (*(v4 + 16))(v10, v30, v3);
      v31 = sub_2460918D4();
      v32 = sub_246091FB4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v36 = v34;
        *v33 = 136380675;
        *(v33 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A4620, &v36);
        _os_log_impl(&dword_245F8A000, v31, v32, "ObjectCaptureSession.%{private}s: Failed to compute nearest plane below tap position because no planes were detected!", v33, 0xCu);
        sub_245F8E6F4(v34);
        MEMORY[0x24C1989D0](v34, -1, -1);
        MEMORY[0x24C1989D0](v33, -1, -1);
      }

      (*(v4 + 8))(v10, v3);
    }
  }

  return 0;
}

uint64_t sub_24606B89C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_24606B92C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_24606B9C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BA5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BAF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BB8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BC24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 520))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BC78(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 120);
  *(*a2 + 120) = *a1;
}

uint64_t sub_24606BCEC()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    v3 = sub_245F8E624(&qword_27EE3AA88, &qword_246099D28);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_246091934();
    v6 = *(v2 + 128);
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_24606BD70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  return result;
}

uint64_t sub_24606BDC4(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 136);
  *(*a2 + 136) = *a1;
}

uint64_t sub_24606BE08()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    sub_24606BCEC();
    sub_245F8E624(&qword_27EE3AA88, &qword_246099D28);
    sub_245F9218C(&qword_27EE3AA90, &qword_27EE3AA88, &qword_246099D28);
    v1 = sub_2460919A4();

    v3 = *(v0 + 136);
    *(v2 + 136) = v1;
  }

  return v1;
}

uint64_t sub_24606BEE4(uint64_t a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
}

void *ObjectCaptureSessionObservingPublishers.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  v16 = v0[17];

  return v0;
}

uint64_t ObjectCaptureSessionObservingPublishers.__deallocating_deinit()
{
  ObjectCaptureSessionObservingPublishers.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24606BFD4(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v4 = v2;
    v5 = sub_245F8E624(a1, a2);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v3 = sub_246091934();
    v8 = *(v4 + 16);
    *(v4 + 16) = v3;
  }

  return v3;
}

uint64_t sub_24606C050@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_24606C0D0(void (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 24))
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v7 = v4;
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3);
    v5 = sub_2460919A4();

    v10 = *(v4 + 24);
    *(v7 + 24) = v5;
  }

  return v5;
}

uint64_t sub_24606C1C8(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 32))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v4 = v2;
    v5 = sub_245F8E624(a1, a2);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v3 = sub_246091934();
    v8 = *(v4 + 32);
    *(v4 + 32) = v3;
  }

  return v3;
}

uint64_t sub_24606C244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_24606C2CC(void (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 40))
  {
    v5 = *(v4 + 40);
  }

  else
  {
    v7 = v4;
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3);
    v5 = sub_2460919A4();

    v10 = *(v4 + 40);
    *(v7 + 40) = v5;
  }

  return v5;
}

uint64_t sub_24606C3C4(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 48))
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v4 = v2;
    v5 = sub_245F8E624(a1, a2);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v3 = sub_246091934();
    v8 = *(v4 + 48);
    *(v4 + 48) = v3;
  }

  return v3;
}

uint64_t sub_24606C440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_24606C498(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 56);
  *(*a2 + 56) = *a1;
}

uint64_t sub_24606C50C(void (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 56))
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v7 = v4;
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3);
    v5 = sub_2460919A4();

    v10 = *(v4 + 56);
    *(v7 + 56) = v5;
  }

  return v5;
}

uint64_t sub_24606C5F0(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_24606C614(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 64))
  {
    v3 = *(v2 + 64);
  }

  else
  {
    v4 = v2;
    v5 = sub_245F8E624(a1, a2);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v3 = sub_246091934();
    v8 = *(v4 + 64);
    *(v4 + 64) = v3;
  }

  return v3;
}

uint64_t sub_24606C690@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  return result;
}

uint64_t sub_24606C6E8(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 72);
  *(*a2 + 72) = *a1;
}

uint64_t sub_24606C75C(void (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 72))
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v7 = v4;
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3);
    v5 = sub_2460919A4();

    v10 = *(v4 + 72);
    *(v7 + 72) = v5;
  }

  return v5;
}

uint64_t sub_24606C840(uint64_t a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_24606C864(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 80))
  {
    v3 = *(v2 + 80);
  }

  else
  {
    v4 = v2;
    v5 = sub_245F8E624(a1, a2);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v3 = sub_246091934();
    v8 = *(v4 + 80);
    *(v4 + 80) = v3;
  }

  return v3;
}

uint64_t sub_24606C8E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_24606C938(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 88);
  *(*a2 + 88) = *a1;
}

uint64_t sub_24606C9AC(void (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 88))
  {
    v5 = *(v4 + 88);
  }

  else
  {
    v7 = v4;
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3);
    v5 = sub_2460919A4();

    v10 = *(v4 + 88);
    *(v7 + 88) = v5;
  }

  return v5;
}

uint64_t sub_24606CA90(uint64_t a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_24606CAB4(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 96))
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v4 = v2;
    v5 = sub_245F8E624(a1, a2);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v3 = sub_246091934();
    v8 = *(v4 + 96);
    *(v4 + 96) = v3;
  }

  return v3;
}

uint64_t sub_24606CB30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  return result;
}

uint64_t sub_24606CB88(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 104);
  *(*a2 + 104) = *a1;
}

uint64_t sub_24606CBFC(void (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 104))
  {
    v5 = *(v4 + 104);
  }

  else
  {
    v7 = v4;
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3);
    v5 = sub_2460919A4();

    v10 = *(v4 + 104);
    *(v7 + 104) = v5;
  }

  return v5;
}

uint64_t sub_24606CCE0(uint64_t a1)
{
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t sub_24606CD04(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 112))
  {
    v3 = *(v2 + 112);
  }

  else
  {
    v4 = v2;
    v5 = sub_245F8E624(a1, a2);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v3 = sub_246091934();
    v8 = *(v4 + 112);
    *(v4 + 112) = v3;
  }

  return v3;
}

uint64_t sub_24606CDB0(void (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 120))
  {
    v5 = *(v4 + 120);
  }

  else
  {
    v7 = v4;
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3);
    v5 = sub_2460919A4();

    v10 = *(v4 + 120);
    *(v7 + 120) = v5;
  }

  return v5;
}

uint64_t sub_24606CE94(uint64_t a1)
{
  v2 = *(v1 + 120);
  *(v1 + 120) = a1;
}

double ObjectCaptureSessionWritingPublishers.init()()
{
  result = 0.0;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  return result;
}

void *ObjectCaptureSessionWritingPublishers.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  return v0;
}

uint64_t ObjectCaptureSessionWritingPublishers.__deallocating_deinit()
{
  ObjectCaptureSessionWritingPublishers.deinit();

  return swift_deallocClassInstance();
}

uint64_t ObjectCaptureSessionWritingPublishers.send(shot:shotMetadata:)(uint64_t *a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A738, &qword_246098890);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v20 - v7);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v13 = a1[3];
  v12 = a1[4];
  sub_24606BFC0();
  v14 = *(v5 + 56);
  *v8 = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v13;
  v8[4] = v12;
  sub_246081A04(a2, v8 + v14, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  v15 = v12;
  v16 = v10;
  v17 = v11;
  v18 = v13;
  sub_246091924();

  return sub_245F8E744(v8, &qword_27EE3A738, &qword_246098890);
}

uint64_t ObjectCaptureSessionWritingPublishers.send(shotMetadata:)()
{
  sub_24606C1B4();
  sub_246091924();
}

Swift::Void __swiftcall ObjectCaptureSessionWritingPublishers.send(sessionMetadata:)(CoreOC::ObjectCaptureSession::Metadata::Session *sessionMetadata)
{
  version = sessionMetadata->provenance.version;
  countAndFlagsBits = sessionMetadata->provenance.identifier._countAndFlagsBits;
  object = sessionMetadata->provenance.identifier._object;
  coverage = sessionMetadata->coverage;
  sub_24606C3B0();
  sub_246091924();
}

uint64_t ObjectCaptureSessionWritingPublishers.send(depthPointCloud:timestamp:)(__int128 *a1, double a2)
{
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v13 = *(a1 + 8);
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  sub_24606C850();
  v9 = a1[2];
  v10 = a1[3];
  *&v11 = *(a1 + 8);
  v7 = *a1;
  v8 = a1[1];
  *(&v11 + 1) = a2;
  sub_24601E370(v12, v14);
  sub_246091924();

  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v14[0] = v7;
  v14[1] = v8;
  return sub_245F8E744(v14, &unk_27EE3AB00, &qword_246098D68);
}

Swift::Void __swiftcall ObjectCaptureSessionWritingPublishers.sendComplete()()
{
  sub_24606C3B0();
  sub_246091914();
}

uint64_t ObjectCaptureSessionFrameSPI.depthPointCloud.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_245F8E7A4(v8, v7, &qword_27EE3B1B0, &unk_246099D60);
}

uint64_t ObjectCaptureSessionFrameSPI.voxelCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v9 = v1[7];
  v10 = v2;
  v11 = v1[9];
  v3 = v11;
  v4 = v1[6];
  v8[0] = v1[5];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &qword_27EE3AB10, &qword_246096678);
}

uint64_t ObjectCaptureSessionFrameSPI.debugVoxelCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[13];
  v9 = v1[12];
  v10 = v2;
  v11 = v1[14];
  v3 = v11;
  v4 = v1[11];
  v8[0] = v1[10];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &qword_27EE3AB10, &qword_246096678);
}

void *ObjectCaptureSessionFrameSPI.tsdfDepth.getter()
{
  v1 = *(v0 + 240);
  v2 = v1;
  return v1;
}

uint64_t ObjectCaptureSessionFrameSPI.pointCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[19];
  v9 = v1[18];
  v10 = v2;
  v11 = v1[20];
  v3 = v11;
  v4 = v1[17];
  v8[0] = v1[16];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &qword_27EE3AB18, &qword_246099D70);
}

uint64_t ObjectCaptureSessionFrameSPI.triangleMesh.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[24];
  v9 = v1[23];
  v10 = v2;
  v11 = v1[25];
  v3 = v11;
  v4 = v1[22];
  v8[0] = v1[21];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &unk_27EE3AB20, &qword_246099D78);
}

void *ObjectCaptureSessionFrameSPI.plane.getter()
{
  v1 = *(v0 + 416);
  v2 = v1;
  return v1;
}

uint64_t ObjectCaptureSessionFrameSPI.coverageVoxelCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[30];
  v9 = v1[29];
  v10 = v2;
  v11 = v1[31];
  v3 = v11;
  v4 = v1[28];
  v8[0] = v1[27];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &qword_27EE3AB10, &qword_246096678);
}

uint64_t ObjectCaptureSessionFrameSPI.maskingVoxelCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[35];
  v9 = v1[34];
  v10 = v2;
  v11 = v1[36];
  v3 = v11;
  v4 = v1[33];
  v8[0] = v1[32];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &qword_27EE3AB10, &qword_246096678);
}

void *ObjectCaptureSessionFrameSPI.rawFeaturePoints.getter()
{
  v1 = *(v0 + 600);
  v2 = v1;
  return v1;
}

__n128 ObjectCaptureSessionFrameSPI.captureFactors.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 640);
  *a1 = *(v1 + 624);
  *(a1 + 16) = v2;
  result = *(v1 + 656);
  *(a1 + 32) = result;
  *(a1 + 45) = *(v1 + 669);
  return result;
}

uint64_t sub_24606D5A4(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD00000000000001BLL, 0x80000002460A2890, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set debug tap position: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E5D4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E12D8;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606D8B8(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x80000002460A28B0, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set debug plane detection: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E614;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1350;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606DBCC(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x80000002460A28D0, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set debug masking voxel: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E644;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E13C8;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606DEE0(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A28F0, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set debug camera control: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E674;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1440;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606E1F4(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD00000000000001BLL, 0x80000002460A2910, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set debug debug voxels: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E6A4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E14B8;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606E508(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A2930, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set debug tsdf depth: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E6D4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1530;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606E81C(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A2950, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set debug surface geometry data: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E704;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E15A8;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606EB30(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A2980, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set debug coverage guide voxels: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E734;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1620;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606EE44(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000027, 0x80000002460A29B0, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set debug explicit feedback enabled: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E764;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1698;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606F140(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A29E0, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set debug auto capture enabled: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E77C;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1710;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606F43C(uint64_t a1, char a2, char *a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = aBlock - v12;
  v14 = sub_245FA3234();
  v15 = *(v7 + 16);
  if (a2)
  {
    v15(v10, v14, v6);
    v16 = sub_2460918D4();
    v17 = sub_246091FC4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136380675;
      *(v18 + 4) = sub_245F8D3C0(0xD00000000000001ALL, 0x80000002460A2A10, aBlock);
      _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: [SPI]removed capture cool down time adjustment.", v18, 0xCu);
      sub_245F8E6F4(v19);
      MEMORY[0x24C1989D0](v19, -1, -1);
      MEMORY[0x24C1989D0](v18, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v15(v13, v14, v6);
    v20 = sub_2460918D4();
    v21 = sub_246091FC4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136380931;
      *(v22 + 4) = sub_245F8D3C0(0xD00000000000001ALL, 0x80000002460A2A10, aBlock);
      *(v22 + 12) = 2050;
      *(v22 + 14) = a1;
      _os_log_impl(&dword_245F8A000, v20, v21, "ObjectCaptureSession.%{private}s: [SPI]adjusted capture cool down time: %{public}f", v22, 0x16u);
      sub_245F8E6F4(v23);
      MEMORY[0x24C1989D0](v23, -1, -1);
      MEMORY[0x24C1989D0](v22, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
  }

  v24 = *&a3[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a1;
  *(v25 + 32) = a2 & 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_24607E7CC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1788;
  v27 = _Block_copy(aBlock);
  v28 = a3;

  dispatch_sync(v24, v27);
  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606F844(uint64_t a1, char *a2)
{
  v41 = a2;
  v3 = sub_246091704();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245FA3234();
  v40 = v11;
  (*(v11 + 16))(v14, v15, v10);
  v39 = *(v4 + 16);
  v39(v9, a1, v3);
  v16 = sub_2460918D4();
  v38 = sub_246091FC4();
  if (os_log_type_enabled(v16, v38))
  {
    v17 = swift_slowAlloc();
    v37 = a1;
    v18 = v17;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v18 = 136381187;
    *(v18 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A2A30, aBlock);
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    sub_246077C40(&qword_27EE3A000, MEMORY[0x277CC9260]);
    v34 = v16;
    v19 = sub_2460923D4();
    v35 = v10;
    v21 = v20;
    (*(v4 + 8))(v9, v3);
    v22 = sub_245F8D3C0(v19, v21, aBlock);
    v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v18 + 24) = v22;
    v23 = v34;
    _os_log_impl(&dword_245F8A000, v34, v38, "ObjectCaptureSession.%{private}s: [SPI]set replay video URL: %{private,mask.hash}s", v18, 0x20u);
    v24 = v36;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v24, -1, -1);
    v25 = v18;
    a1 = v37;
    MEMORY[0x24C1989D0](v25, -1, -1);

    (*(v40 + 8))(v14, v35);
  }

  else
  {

    (*(v4 + 8))(v9, v3);
    (*(v40 + 8))(v14, v10);
  }

  v26 = v41;
  v27 = *&v41[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v39(v6, a1, v3);
  v28 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  (*(v4 + 32))(v29 + v28, v6, v3);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_24607E8B0;
  *(v30 + 24) = v29;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1800;
  v31 = _Block_copy(aBlock);
  v32 = v26;

  dispatch_sync(v27, v31);
  _Block_release(v31);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606FD4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_246091704();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__replayVideoURL;
  swift_beginAccess();
  sub_245F97BAC(v7, a1 + v10, &qword_27EE3A498, &unk_246097EB8);
  return swift_endAccess();
}

uint64_t sub_24606FE90(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
  sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  return sub_246092044();
}

uint64_t sub_24606FF0C(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A2A50, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set debug write all frame data: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E988;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1878;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246070220(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2A80, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set run arkit only: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E9B8;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E18F0;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24607051C(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A2AA0, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set voxel integration enabled: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E9D0;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1968;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246070818(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A2AD0, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set explicit feedback enabled: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607E9E8;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E19E0;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246070B14(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000016, 0x80000002460A2B00, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set coverage enabled: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607EA00;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1A58;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246070E10(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000016, 0x80000002460A2B20, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set automatic capture enabled: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607EA18;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1AD0;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24607110C(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD00000000000001BLL, 0x80000002460A2B40, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set mobileSfM enabled: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607EA30;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1B48;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246071408(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A2B60, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set mobileSfM enabled: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607EA48;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1BC0;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246071704(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA3234();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136380931;
    *(v12 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A2B90, aBlock);
    *(v12 + 12) = 1026;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: [SPI]set Capture Rate Control enabled: %{BOOL,public}d", v12, 0x12u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1 & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24607EA60;
  *(v16 + 24) = v15;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1C38;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v14, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246071A18(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);
  sub_246092044();
  return v3;
}

void *static ObjectCaptureSessionSPI.readHEICToShots(heicFolderURL:)(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091704();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObjectCaptureImageFolderReader(0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = ObjectCaptureImageFolderReader.__allocating_init(url:)(v11);
  v13 = (*(*v12 + 160))();
  type metadata accessor for SegmentIDConverter();
  v14 = sub_2460251F8();
  v15 = (*(*v12 + 184))();
  (*(*v14 + 120))(v15 & 1);
  if (v13)
  {

    sub_245F8E624(&qword_27EE3AB30, &qword_246099D80);
    result = swift_allocObject();
    result[2] = v13;
    result[3] = sub_24607EA90;
    result[4] = v14;
  }

  else
  {
    v17 = sub_245FA3234();
    (*(v3 + 16))(v6, v17, v2);
    v18 = sub_2460918D4();
    v19 = sub_246091FB4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22[0] = v21;
      *v20 = 136380675;
      *(v20 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A2BC0, v22);
      _os_log_impl(&dword_245F8A000, v18, v19, "ObjectCaptureSession.%{private}s: Error reading PG samples!", v20, 0xCu);
      sub_245F8E6F4(v21);
      MEMORY[0x24C1989D0](v21, -1, -1);
      MEMORY[0x24C1989D0](v20, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return result;
}

uint64_t static ObjectCaptureSessionSPI.makeSessionMetaDataForHEICBundle(bundleID:)@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x24C196640]();
  *a1 = 0x302E342E32;
  *(a1 + 8) = 0xE500000000000000;
  *(a1 + 16) = 0x6965685F6D6F7266;
  *(a1 + 24) = 0xEA00000000005F63;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_246071E88(uint64_t a1)
{
  v2 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_246071EF4(uint64_t a1)
{
  v2 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_246071F60(void *a1, uint64_t a2)
{
  v4 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_246072014(uint64_t a1, uint64_t a2)
{
  v4 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_246072090()
{
  v2 = *v0;
  sub_246092504();
  sub_246091B94();
  return sub_246092544();
}

uint64_t sub_2460720F0(uint64_t a1)
{
  v2 = sub_246077C40(&qword_27EE3AF30, type metadata accessor for ARError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24607215C(uint64_t a1)
{
  v2 = sub_246077C40(&qword_27EE3AF30, type metadata accessor for ARError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2460721C8(uint64_t a1)
{
  v2 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_246072234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

size_t sub_2460722B8(size_t result, int64_t a2, char a3, void *a4)
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

  sub_245F8E624(&qword_27EE3AD70, &qword_24609AD20);
  v10 = *(sub_246091834() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_246091834() - 8);
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

char *sub_246072490(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&unk_27EE3AD90, "lK");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_246072594(uint64_t a1, uint64_t a2)
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

  sub_245F8E624(&qword_27EE39F58, &qword_24609AD40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

uint64_t sub_246072638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_245FC1BDC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_246074CB4();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_246091834();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
    v22 = *(v15 - 8);
    sub_24608199C(v14 + *(v22 + 72) * v8, a2, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    sub_2460739C0(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2460727D4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091834();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_245F8E624(&unk_27EE3AD00, &qword_24609ACD8);
  v48 = a2;
  result = sub_246092374();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_24608199C(v31 + v32 * v28, v52, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_246081A04(v33 + v32 * v28, v52, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      }

      v34 = *(v16 + 40);
      sub_246077C40(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
      result = sub_246091B84();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_24608199C(v52, *(v16 + 56) + v32 * v24, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_246072C74(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_246091834();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_245F8E624(&qword_27EE3AD60, &qword_24609AD10);
  v41 = a2;
  result = sub_246092374();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_2460924F4();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_246072FC0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_246091834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_245F8E624(&qword_27EE3AD68, &qword_24609AD18);
  v44 = a2;
  result = sub_246092374();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_246077C40(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
      result = sub_246091B84();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_246073380(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3AE78, &unk_24609AE10);
  result = sub_246092374();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      result = sub_2460924F4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2460735E4(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_246091834();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_245F8E624(a3, a4);
  v47 = a2;
  result = sub_246092374();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_246077C40(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
      result = sub_246091B84();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

void sub_2460739C0(int64_t a1, uint64_t a2)
{
  v4 = sub_246091834();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v43 = a2;
    v12 = ~v10;
    v13 = sub_2460921C4();
    v14 = v12;
    a2 = v43;
    v42 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = v9;
    v41 = v16;
    v17 = *(v15 + 56);
    v39 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v41(v8, *(a2 + 48) + v17 * v11, v4);
      v22 = *(a2 + 40);
      sub_246077C40(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
      v23 = sub_246091B84();
      (*v39)(v8, v4);
      v14 = v20;
      v24 = v23 & v20;
      if (a1 >= v42)
      {
        if (v24 >= v42 && a1 >= v24)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v43 + 48) + v18 * a1 >= (*(v43 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v27 = *(v43 + 56);
          v28 = *(*(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8) + 72);
          v29 = v28 * a1;
          v30 = v27 + v28 * a1;
          v31 = v28 * v11;
          v32 = v27 + v28 * v11 + v28;
          if (v29 < v31 || v30 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v40;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v34 = v29 == v31;
            v9 = v40;
            v14 = v20;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v42 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v40;
      a2 = v43;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

unint64_t sub_246073D04(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2460921C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_2460924F4();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_246091834() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_246073EB0(int64_t a1, uint64_t a2)
{
  v41 = sub_246091834();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_2460921C4();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_246077C40(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
      v25 = sub_246091B84();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

uint64_t sub_2460741D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_245FC1BDC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_246074CB4();
      goto LABEL_7;
    }

    sub_2460727D4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_245FC1BDC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_246074B18(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8) + 72) * v15;

  return sub_24600CB08(a1, v23);
}

void sub_2460743B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_245FC1BDC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2460755FC(&qword_27EE3AD78, &qword_24609AD28);
      goto LABEL_7;
    }

    sub_2460735E4(v18, a3 & 1, &qword_27EE3AD78, &qword_24609AD28);
    v24 = *v4;
    v25 = sub_245FC1BDC(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_2460095AC(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_246092424();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_2460745A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_245FFF3EC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_246074FD8();
      goto LABEL_7;
    }

    sub_246072C74(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_245FFF3EC(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_246091834();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_246074C08(v10, a2, a1, v16);
}

uint64_t sub_24607470C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_245FC1BDC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_246075240();
    goto LABEL_7;
  }

  sub_246072FC0(result, a3 & 1);
  v22 = *v4;
  result = sub_245FC1BDC(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_246092424();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_2460095AC(v15, v12, a1, v21);
}

unint64_t sub_2460748A8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_245FFF3EC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_2460754B0();
    result = v17;
    goto LABEL_8;
  }

  sub_246073380(v14, a3 & 1);
  v18 = *v4;
  result = sub_245FFF3EC(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1 & 1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + result) = a1 & 1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_246092424();
  __break(1u);
  return result;
}

unint64_t sub_2460749D4(uint64_t a1, char a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v10 = *v6;
  result = sub_245FFF3EC(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_245FFA800();
    result = v19;
    goto LABEL_8;
  }

  sub_245FF9474(v16, a2 & 1);
  v20 = *v7;
  result = sub_245FFF3EC(a1);
  if ((v17 & 1) == (v21 & 1))
  {
LABEL_8:
    v22 = *v7;
    if (v17)
    {
      v23 = (v22[7] + (result << 6));
      *v23 = a3;
      v23[1] = a4;
      v23[2] = a5;
      v23[3] = a6;
      return result;
    }

    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a1;
    v24 = (v22[7] + (result << 6));
    *v24 = a3;
    v24[1] = a4;
    v24[2] = a5;
    v24[3] = a6;
    v25 = v22[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v22[2] = v26;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_246074B18(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_246091834();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  result = sub_24608199C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_246074C08(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_246091834();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

char *sub_246074CB4()
{
  v1 = v0;
  v2 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_246091834();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&unk_27EE3AD00, &qword_24609ACD8);
  v7 = *v0;
  v8 = sub_246092364();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_246081A04(v28 + v30, v39, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_24608199C(v31, *(v20 + 56) + v30, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_246074FD8()
{
  v1 = v0;
  v30 = sub_246091834();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3AD60, &qword_24609AD10);
  v4 = *v0;
  v5 = sub_246092364();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
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

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_246075240()
{
  v1 = v0;
  v32 = sub_246091834();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3AD68, &qword_24609AD18);
  v4 = *v0;
  v5 = sub_246092364();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2460754B0()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3AE78, &unk_24609AE10);
  v2 = *v0;
  v3 = sub_246092364();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_2460755FC(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_246091834();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(a1, a2);
  v8 = *v2;
  v9 = sub_246092364();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        result = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

uint64_t sub_246075870(double *a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_2460924F4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_246075B98(v9, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_246075964(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_245F8E624(&qword_27EE3AD48, &qword_24609ACF8);
  result = sub_246092244();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = *(v3 + 48);
      v20 = *(v19 + 8 * v18);
      v21 = *(v6 + 40);
      if (v20 != 0.0)
      {
        v22 = *(v19 + 8 * v18);
      }

      result = sub_2460924F4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_246075B98(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_246075964(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_246075CC4();
      result = v7;
      goto LABEL_12;
    }

    sub_246075E04(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_2460924F4();
  v11 = -1 << *(v8 + 32);
  result = v10 & ~v11;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v12 = ~v11;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v12;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v13 + 48) + 8 * result) = a3;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_246092414();
  __break(1u);
  return result;
}

void *sub_246075CC4()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3AD48, &qword_24609ACF8);
  v2 = *v0;
  v3 = sub_246092234();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_246075E04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_245F8E624(&qword_27EE3AD48, &qword_24609ACF8);
  result = sub_246092244();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = v14 | (v7 << 6);
      v18 = *(v3 + 48);
      v19 = *(v18 + 8 * v17);
      v20 = *(v6 + 40);
      if (v19 != 0.0)
      {
        v21 = *(v18 + 8 * v17);
      }

      result = sub_2460924F4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v19;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_28:

    *v2 = v6;
  }

  return result;
}

void (*sub_246076004(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_246091834();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_24601B120(v7);
  v7[12] = sub_2460761D8(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_246076140;
}

void sub_246076140(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_2460761D8(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_246091834();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(sub_245F8E624(&qword_27EE3ACE0, &unk_246098880) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_245FC1BDC(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_246074CB4();
      goto LABEL_21;
    }

    sub_2460727D4(v26, a3 & 1);
    v29 = *v4;
    v30 = sub_245FC1BDC(a2);
    if ((v27 & 1) == (v31 & 1))
    {
      v23 = v30;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    sub_24608199C(*(*v4 + 56) + *(v15 + 72) * v23, v20, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  (*(v15 + 56))(v20, v32, 1, v13);
  return sub_246076508;
}

void sub_246076508(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_245F8E7A4(v5, v6, &qword_27EE3ACE0, &unk_246098880);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_24608199C(v9, v2[8], type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_24608199C(v13, v14, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        sub_246074B18(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_245F8E7A4(v5, v16, &qword_27EE3ACE0, &unk_246098880);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_24608199C(v9, v2[9], type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_24608199C(v13, v11[7] + *(v2[6] + 72) * v12, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      goto LABEL_10;
    }
  }

  sub_245F8E744(v9, &qword_27EE3ACE0, &unk_246098880);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_2460739C0(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_245F8E744(v22, &qword_27EE3ACE0, &unk_246098880);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t _s6CoreOC20ObjectCaptureSessionC5ErrorO2eeoiySbAE_AEtFZ_0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      if (v2 != 2)
      {
        goto LABEL_18;
      }

      if (v3 == 2)
      {
LABEL_21:
        v5 = 1;
        goto LABEL_24;
      }
    }

    else if (!v3)
    {
      goto LABEL_21;
    }

LABEL_23:
    sub_24601EC48(*a1);
    v5 = 0;
    goto LABEL_24;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      if (v3 != 5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v2 != 6)
      {
        goto LABEL_18;
      }

      if (v3 != 6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_21;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (v3 < 7)
  {
    goto LABEL_23;
  }

  v4 = v2;
  v5 = 1;
LABEL_24:
  sub_24601EC48(v3);
  sub_246077B44(v2);
  sub_246077B44(v3);
  return v5;
}

BOOL _s6CoreOC20ObjectCaptureSessionC5StateO2eeoiySbAE_AEtFZ_0(id *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 11)
  {
    if (v2 <= 8)
    {
      if (v2 == 7)
      {
        if (v3 == 7)
        {
          v4 = 1;
          v5 = 7;
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if (v2 == 8)
      {
        if (v3 == 8)
        {
          v4 = 1;
          v5 = 8;
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    else
    {
      switch(v2)
      {
        case 9:
          if (v3 == 9)
          {
            v4 = 1;
            v5 = 9;
            goto LABEL_39;
          }

          goto LABEL_38;
        case 10:
          if (v3 == 10)
          {
            v4 = 1;
            v5 = 10;
            goto LABEL_39;
          }

          goto LABEL_38;
        case 11:
          if (v3 == 11)
          {
            v4 = 1;
            v5 = 11;
            goto LABEL_39;
          }

LABEL_38:
          sub_2460818E4(*a2);
          sub_2460818E4(v2);
          v4 = 0;
          v5 = v2;
          goto LABEL_39;
      }
    }

LABEL_37:
    if ((v3 - 7) < 0xB)
    {
      goto LABEL_38;
    }

    if (v2 <= 2)
    {
      switch(v2)
      {
        case 0:
          if (!v3)
          {
            goto LABEL_59;
          }

          goto LABEL_55;
        case 1:
          if (v3 != 1)
          {
            goto LABEL_55;
          }

          goto LABEL_59;
        case 2:
          if (v3 != 2)
          {
            goto LABEL_55;
          }

          goto LABEL_59;
      }
    }

    else
    {
      if (v2 <= 4)
      {
        if (v2 != 3)
        {
          if (v3 != 4)
          {
            goto LABEL_55;
          }

LABEL_59:
          v4 = 1;
          goto LABEL_60;
        }

        if (v3 == 3)
        {
          goto LABEL_59;
        }

LABEL_55:
        v4 = 0;
LABEL_57:
        sub_24601EC48(*a1);
        sub_24601EC48(v2);
LABEL_60:
        sub_2460818E4(v3);
        sub_2460818E4(v3);
        sub_2460818E4(v3);
        sub_2460818E4(v2);
        sub_246077B44(v2);
        sub_246077B44(v3);
        sub_246077B30(v2);
        sub_246077B30(v3);
        v5 = v3;
        v3 = v2;
        goto LABEL_39;
      }

      if (v2 == 5)
      {
        if (v3 != 5)
        {
          goto LABEL_55;
        }

        goto LABEL_59;
      }

      if (v2 == 6)
      {
        if (v3 != 6)
        {
          goto LABEL_55;
        }

        goto LABEL_59;
      }
    }

    v4 = v3 > 6;
    goto LABEL_57;
  }

  if (v2 > 14)
  {
    switch(v2)
    {
      case 15:
        if (v3 == 15)
        {
          v4 = 1;
          v5 = 15;
          goto LABEL_39;
        }

        goto LABEL_38;
      case 16:
        if (v3 == 16)
        {
          v4 = 1;
          v5 = 16;
          goto LABEL_39;
        }

        goto LABEL_38;
      case 17:
        if (v3 == 17)
        {
          v4 = 1;
          v5 = 17;
          goto LABEL_39;
        }

        goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v2 == 12)
  {
    if (v3 == 12)
    {
      v4 = 1;
      v5 = 12;
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v2 == 13)
  {
    if (v3 == 13)
    {
      v4 = 1;
      v5 = 13;
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v2 != 14)
  {
    goto LABEL_37;
  }

  if (v3 != 14)
  {
    goto LABEL_38;
  }

  v4 = 1;
  v5 = 14;
LABEL_39:
  sub_246077B30(v5);
  sub_246077B30(v3);
  return v4;
}

int *sub_246076B44@<X0>(int a1@<W0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float a4@<S1>)
{
  LODWORD(v4) = a1;
  v38 = a3;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = fmaxf(powf((vmuls_lane_f32(vmuls_lane_f32(v38.f32[0], *v38.f32, 1), v38, 2) * 0.000000064) / 0.0083902, 0.33333), 0.004);
  result = OCProxySurfaceNumVoxelsAlongAxisInVoxelBlock();
  *v14.i32 = v12 * result;
  *&v15 = vmuls_lane_f32(0.5, v38, 2) / *v14.i32;
  v16.i64[0] = 0x3F0000003F000000;
  v16.i64[1] = 0x3F0000003F000000;
  v17.i64[0] = vdivq_f32(vmulq_f32(v38, v16), vdupq_lane_s32(v14, 0)).u64[0];
  v17.i64[1] = v15;
  v18 = vrndpq_f32(v17);
  v19 = *v18.i32 + *v18.i32;
  v18.i64[0] = vextq_s8(v18, v18, 4uLL).u64[0];
  *v18.i8 = vadd_f32(*v18.i8, *v18.i8);
  v20 = vmuls_lane_f32(v19 * *v18.i32, *v18.i8, 1);
  if ((LODWORD(v20) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v20 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v20 >= 4295000000.0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v21 = v20;
  if (v20 >= 0x2710)
  {
    v21 = 10000;
  }

  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  v23 = sub_245FA3174();
  (*(v8 + 16))(v11, v23, v7);
  v24 = sub_2460918D4();
  v25 = sub_246091FC4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36 = v7;
    v27 = v26;
    v35 = swift_slowAlloc();
    v40 = v35;
    *v27 = 136381187;
    *(v27 + 4) = sub_245F8D3C0(0xD00000000000006ELL, 0x80000002460A4910, &v40);
    *(v27 + 12) = 1026;
    *(v27 + 14) = v22;
    *(v27 + 18) = 2082;
    v39 = v38;
    sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
    v37 = v4;
    sub_245F9218C(&qword_27EE3A340, &qword_27EE3A2F0, &unk_246096850);
    v28 = sub_246092404();
    v4 = sub_245F8D3C0(v28, v29, &v40);

    *(v27 + 20) = v4;
    LOBYTE(v4) = v37;
    _os_log_impl(&dword_245F8A000, v24, v25, "ObjectCaptureSession.%{private}s: Computed voxel integration capacity = %{public}u for the bounding box of size %{public}s", v27, 0x1Cu);
    v30 = v35;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v30, -1, -1);
    MEMORY[0x24C1989D0](v27, -1, -1);

    (*(v8 + 8))(v11, v36);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v31 = *sub_245F92808();
  v32 = *sub_24601EF58();
  result = sub_24601EF64();
  v33 = *result;
  *a2 = 1;
  *(a2 + 4) = 1;
  *(a2 + 16) = 0x100000004;
  *(a2 + 24) = a4;
  *(a2 + 28) = v22;
  *(a2 + 32) = 1;
  *(a2 + 36) = v12;
  *(a2 + 40) = 33;
  *(a2 + 44) = 0x3D4CCCCD3F83D70ALL;
  *(a2 + 52) = 1084227584;
  *(a2 + 64) = v38;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 644245094500000;
  *(a2 + 104) = v31;
  *(a2 + 108) = 0;
  *(a2 + 112) = 1;
  *(a2 + 116) = v32;
  *(a2 + 120) = v33;
  *(a2 + 124) = v4 & 1;
  *(a2 + 128) = 1048576000;
  return result;
}

unint64_t sub_246076F68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_245F8E624(a2, a3);
    v5 = sub_246092384();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_245F8D968(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_246077064(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3AEC0, &qword_24609AE50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_245F8E624(&unk_27EE3AD00, &qword_24609ACD8);
    v8 = sub_246092384();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v10, v6, &qword_27EE3AEC0, &qword_24609AE50);
      result = sub_245FC1BDC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_246091834();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
      result = sub_24608199C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_246077280(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_245F8E624(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_245F8E624(a4, a5);
    v15 = sub_246092384();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_245F8E7A4(v17, v13, a2, v28);
      result = sub_245FC1BDC(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_246091834();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_246077460(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3AEB0, &qword_24609AE40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_245F8E624(&qword_27EE3AD68, &qword_24609AD18);
    v8 = sub_246092384();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v10, v6, &qword_27EE3AEB0, &qword_24609AE40);
      result = sub_245FC1BDC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_246091834();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_246077648(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3AEA8, &qword_24609AE38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_245F8E624(&qword_27EE3AD60, &qword_24609AD10);
    v8 = sub_246092384();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_245F8E7A4(v10, v6, &qword_27EE3AEA8, &qword_24609AE38);
      v12 = *v6;
      result = sub_245FFF3EC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_246091834();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_246077824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3AE78, &unk_24609AE10);
    v3 = sub_246092384();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_245FFF3EC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t _s6CoreOC20ObjectCaptureSessionC24isCurrentDeviceSupportedSbvgZ_0()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24601F24C();
  if ((v5 & 1) == 0)
  {
    v6 = sub_245FA3174();
    (*(v1 + 16))(v4, v6, v0);
    v7 = sub_2460918D4();
    v8 = sub_246091FB4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136380675;
      *(v9 + 4) = sub_245F8D3C0(0xD000000000000018, 0x80000002460A4B00, &v13);
      _os_log_impl(&dword_245F8A000, v7, v8, "ObjectCaptureSession.%{private}s: The device is not supported on this device", v9, 0xCu);
      sub_245F8E6F4(v10);
      MEMORY[0x24C1989D0](v10, -1, -1);
      MEMORY[0x24C1989D0](v9, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  return v5 & 1;
}

double sub_246077AC8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  return result;
}

void sub_246077B30(id a1)
{
  if (a1 - 7 >= 0xB)
  {
    sub_246077B44(a1);
  }
}

void sub_246077B44(id a1)
{
  if (a1 >= 7)
  {
  }
}

uint64_t sub_246077B9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_246077BD4()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isOverCaptureEnabled;
  result = swift_beginAccess();
  *(v1 + v2) = 1;
  return result;
}

uint64_t sub_246077C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_246077C40(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_246077C90(uint64_t a1)
{
  *a1 = 0x200000000;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_246077CE4()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2460917D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v11 = sub_246091BD4();
  [v10 setDateFormat_];

  sub_2460917C4();
  v12 = sub_246091774();
  (*(v6 + 8))(v9, v5);
  v13 = [v10 stringFromDate_];

  v14 = sub_246091C04();
  v16 = v15;

  v17 = sub_245FA3174();
  (*(v1 + 16))(v4, v17, v0);

  v18 = sub_2460918D4();
  v19 = sub_246091FC4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4AA0, &v25);
    *(v20 + 12) = 2082;
    v22 = sub_245F8D3C0(v14, v16, &v25);

    *(v20 + 14) = v22;
    _os_log_impl(&dword_245F8A000, v18, v19, "ObjectCaptureSession.%{private}s: pnp_measurement_window_start %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v21, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  else
  {
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_246078034(uint64_t a1, void *a2, uint64_t a3)
{
  v210 = a2;
  v208 = a1;
  v221 = sub_2460918F4();
  v4 = *(v221 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v221);
  v209 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v205 = &v192 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v203 = &v192 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v200 = &v192 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v199 = &v192 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v201 = &v192 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v194 = &v192 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v193 = &v192 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v195 = &v192 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v202 = &v192 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v204 = &v192 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v192 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v207 = &v192 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v192 - v33;
  v35 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v192 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v192 - v40;
  v42 = sub_2460917D4();
  v213 = *(v42 - 8);
  v214 = v42;
  v43 = *(v213 + 64);
  MEMORY[0x28223BE20](v42);
  v212 = &v192 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v215 = a3;
  sub_245F8E7A4(a3, v41, &qword_27EE3A498, &unk_246097EB8);
  v45 = sub_246091704();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v41, 1, v45);
  v206 = v30;
  if (v47 == 1)
  {
    sub_245F8E744(v41, &qword_27EE3A498, &unk_246097EB8);
    v48 = 0;
    v49 = 0xE000000000000000;
  }

  else
  {
    v48 = sub_246091604();
    v49 = v50;
    (*(v46 + 8))(v41, v45);
  }

  v51 = type metadata accessor for MemoryLogger();
  v52 = *(v51 + 88);
  v198 = v51;
  v197 = v51 + 88;
  v196 = v52;
  v52(0xD00000000000002DLL, 0x80000002460A4A00);
  v53 = sub_245FA3174();
  v54 = v4[2];
  v216 = v53;
  v55 = v221;
  v218 = v54;
  v219 = v4 + 2;
  (v54)(v34);

  v56 = sub_2460918D4();
  v57 = sub_246091FC4();

  v58 = os_log_type_enabled(v56, v57);
  v220 = v4;
  v211 = v49;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v222[0] = v60;
    *v59 = 136381187;
    *(v59 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
    *(v59 + 12) = 2160;
    *(v59 + 14) = 1752392040;
    *(v59 + 22) = 2081;
    *(v59 + 24) = sub_245F8D3C0(v48, v49, v222);
    _os_log_impl(&dword_245F8A000, v56, v57, "ObjectCaptureSession.%{private}s: Snapshot URL: %{private,mask.hash}s", v59, 0x20u);
    swift_arrayDestroy();
    v61 = v60;
    v55 = v221;
    MEMORY[0x24C1989D0](v61, -1, -1);
    MEMORY[0x24C1989D0](v59, -1, -1);
  }

  v62 = v4[1];
  v62(v34, v55);
  sub_245F8E7A4(v215, v39, &qword_27EE3A498, &unk_246097EB8);
  v63 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_snapshotURL;
  v64 = v217;
  swift_beginAccess();
  sub_245F97BAC(v39, &v64[v63], &qword_27EE3A498, &unk_246097EB8);
  swift_endAccess();
  if ((_s6CoreOC20ObjectCaptureSessionC24isCurrentDeviceSupportedSbvgZ_0() & 1) == 0)
  {

    v68 = v209;
    v218(v209, v216, v55);
    v69 = sub_2460918D4();
    v70 = sub_246091FB4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v222[0] = v72;
      *v71 = 136380675;
      *(v71 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
      _os_log_impl(&dword_245F8A000, v69, v70, "ObjectCaptureSession.%{private}s: Unsupported device. Failed to initiate an ObjectCaptureSession!", v71, 0xCu);
      sub_245F8E6F4(v72);
      MEMORY[0x24C1989D0](v72, -1, -1);
      MEMORY[0x24C1989D0](v71, -1, -1);
    }

    v73 = v68;
    goto LABEL_34;
  }

  v65 = v216;
  if (v208)
  {
    OCMetalInitWithDevice();
  }

  v66 = v210;
  if (v210)
  {
    v67 = v210;
  }

  else
  {
    v74 = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
    v66 = v210;
    v67 = v74;
  }

  v75 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager;
  v76 = *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager];
  *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager] = v67;
  v77 = v66;
  v78 = v67;

  LOBYTE(v76) = [v78 isDeviceMotionAvailable];
  if ((v76 & 1) == 0)
  {

    v114 = v207;
    v218(v207, v65, v55);
    v115 = sub_2460918D4();
    v116 = sub_246091FB4();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v222[0] = v118;
      *v117 = 136380675;
      *(v117 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
      v119 = "ObjectCaptureSession.%{private}s: The device-motion service is not available on this device!";
LABEL_32:
      _os_log_impl(&dword_245F8A000, v115, v116, v119, v117, 0xCu);
      sub_245F8E6F4(v118);
      MEMORY[0x24C1989D0](v118, -1, -1);
      MEMORY[0x24C1989D0](v117, -1, -1);
    }

LABEL_33:

    v73 = v114;
LABEL_34:
    v62(v73, v55);
    sub_24600CA6C();
    swift_allocError();
    *v120 = 0;
    swift_willThrow();
LABEL_35:
    v121 = v212;
    sub_246042FA0();
    (*(v213 + 8))(v121, v214);
    return;
  }

  v79 = *&v64[v75];
  if (!v79)
  {
    __break(1u);
    return;
  }

  type metadata accessor for MotionManager();
  v80 = sub_245F8EB68(v79);
  v81 = *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager];
  *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager] = v80;

  v82 = v206;
  v218(v206, v65, v55);
  v83 = sub_2460918D4();
  v84 = sub_246091FC4();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v222[0] = v86;
    *v85 = 136380675;
    *(v85 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
    _os_log_impl(&dword_245F8A000, v83, v84, "ObjectCaptureSession.%{private}s: Initialize object-centric capture mode properties.", v85, 0xCu);
    sub_245F8E6F4(v86);
    v87 = v86;
    v64 = v217;
    MEMORY[0x24C1989D0](v87, -1, -1);
    MEMORY[0x24C1989D0](v85, -1, -1);
  }

  v62(v82, v55);
  type metadata accessor for VoxelIntegrationManager();
  sub_246090C38();
  v88 = *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager];
  *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager] = v89;

  type metadata accessor for MaskingManager();
  v90 = sub_245F8FDD8(256, 192);
  if (!v90)
  {

    v114 = v205;
    v218(v205, v65, v55);
    v115 = sub_2460918D4();
    v116 = sub_246091FB4();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v222[0] = v118;
      *v117 = 136380675;
      *(v117 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
      v119 = "ObjectCaptureSession.%{private}s: Failed to create masking manager!";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v91 = v90;
  v92 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager;
  v93 = *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager];
  *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager] = v90;
  swift_retain_n();

  v95 = (*(*v91 + 272))(v94);

  if ((v95 & 1) == 0)
  {

    v122 = v204;
    v123 = v65;
    v124 = v221;
    v218(v204, v123, v221);
    v125 = sub_2460918D4();
    v126 = sub_246091FB4();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v222[0] = v128;
      *v127 = 136380675;
      *(v127 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
      v129 = "ObjectCaptureSession.%{private}s: Failed to start masking manager!";
LABEL_41:
      _os_log_impl(&dword_245F8A000, v125, v126, v129, v127, 0xCu);
      sub_245F8E6F4(v128);
      MEMORY[0x24C1989D0](v128, -1, -1);
      MEMORY[0x24C1989D0](v127, -1, -1);
    }

LABEL_42:

    v62(v122, v124);
    sub_24600CA6C();
    swift_allocError();
    *v131 = 0;
    swift_willThrow();

    goto LABEL_35;
  }

  type metadata accessor for ExplicitFeedbackManager();
  sub_245FC6834(&v223);
  v96 = sub_245FC684C(&v223);
  if (!v96)
  {

    v122 = v203;
    v130 = v65;
    v124 = v221;
    v218(v203, v130, v221);
    v125 = sub_2460918D4();
    v126 = sub_246091FB4();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v222[0] = v128;
      *v127 = 136380675;
      *(v127 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
      v129 = "ObjectCaptureSession.%{private}s: Failed to create explicit feedback manager!";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v97 = v96;
  v98 = *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager];
  *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager] = v96;
  swift_retain_n();

  v100 = (*(*v97 + 112))(v99);

  if ((v100 & 1) == 0)
  {

    v132 = v202;
    v133 = v65;
    v134 = v221;
    v218(v202, v133, v221);
    v135 = sub_2460918D4();
    v136 = sub_246091FB4();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v222[0] = v138;
      *v137 = 136380675;
      *(v137 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
      v139 = "ObjectCaptureSession.%{private}s: Failed to start explicit feedback manager!";
LABEL_47:
      _os_log_impl(&dword_245F8A000, v135, v136, v139, v137, 0xCu);
      sub_245F8E6F4(v138);
      MEMORY[0x24C1989D0](v138, -1, -1);
      MEMORY[0x24C1989D0](v137, -1, -1);
    }

LABEL_48:

    v62(v132, v134);
    sub_24600CA6C();
    swift_allocError();
    *v141 = 0;
    swift_willThrow();

    goto LABEL_35;
  }

  type metadata accessor for ImageScaler();
  v101 = sub_246082E34();
  if (!v101)
  {

    v132 = v200;
    v140 = v65;
    v134 = v221;
    v218(v200, v140, v221);
    v135 = sub_2460918D4();
    v136 = sub_246091FB4();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v222[0] = v138;
      *v137 = 136380675;
      *(v137 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
      v139 = "ObjectCaptureSession.%{private}s: Failed to create image scaler!";
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  v102 = *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler];
  *&v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler] = v101;
  v103 = v101;
  swift_retain_n();

  LOBYTE(v102) = (*(*v103 + 160))(v104);
  v215 = v103;

  if ((v102 & 1) == 0)
  {
    v142 = v195;
    v143 = v65;
    v144 = v221;
    v218(v195, v143, v221);
    v145 = sub_2460918D4();
    v146 = sub_246091FB4();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v222[0] = v148;
      *v147 = 136380675;
      *(v147 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
      _os_log_impl(&dword_245F8A000, v145, v146, "ObjectCaptureSession.%{private}s: Failed to start image scaler!", v147, 0xCu);
      sub_245F8E6F4(v148);
      MEMORY[0x24C1989D0](v148, -1, -1);
      MEMORY[0x24C1989D0](v147, -1, -1);
    }

    v62(v142, v144);
    sub_24600CA6C();
    swift_allocError();
    *v149 = 0;
    swift_willThrow();

    goto LABEL_35;
  }

  v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isHighQualityMacroModeSupported] = OCNonModularSPI_AVCaptureDevice_IsTimeOfFlightOCMacroModeSupported();
  IsTimeOfFlightSensorType80 = OCNonModularSPI_AVCaptureDevice_IsTimeOfFlightSensorType80();
  v64[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot] = IsTimeOfFlightSensorType80;
  v210 = v97;
  if (IsTimeOfFlightSensorType80)
  {
    v106 = v193;
    v107 = v65;
    v108 = v221;
    (v218)(v193, v107);
    v109 = sub_2460918D4();
    v110 = sub_246091FC4();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v222[0] = v112;
      *v111 = 136380675;
      *(v111 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
      v113 = "ObjectCaptureSession.%{private}s: ToF sensor type 80";
LABEL_54:
      _os_log_impl(&dword_245F8A000, v109, v110, v113, v111, 0xCu);
      sub_245F8E6F4(v112);
      MEMORY[0x24C1989D0](v112, -1, -1);
      MEMORY[0x24C1989D0](v111, -1, -1);
    }
  }

  else
  {
    v106 = v194;
    v150 = v65;
    v108 = v221;
    (v218)(v194, v150);
    v109 = sub_2460918D4();
    v110 = sub_246091FC4();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v222[0] = v112;
      *v111 = 136380675;
      *(v111 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
      v113 = "ObjectCaptureSession.%{private}s: ToF sensor type 74";
      goto LABEL_54;
    }
  }

  v151 = v106;
  v152 = v108;
  v62(v151, v108);
  swift_getKeyPath();
  swift_getKeyPath();
  v153 = v217;
  sub_246091984();

  v154 = v222[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v222[0] = 10;
  v155 = v153;
  sub_246091994();
  v222[0] = v154;
  sub_246036D70(v222);
  sub_246077B30(v154);
  v156 = v201;
  v218(v201, v216, v152);
  v157 = v155;
  v158 = sub_2460918D4();
  v159 = sub_246091FC4();

  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v222[0] = v161;
    *v160 = 136380931;
    *(v160 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v222);
    *(v160 + 12) = 2082;
    sub_246091834();
    v211 = v91;
    sub_246077C40(&unk_27EE3A310, MEMORY[0x277CC95F0]);
    v162 = sub_2460923D4();
    v164 = sub_245F8D3C0(v162, v163, v222);

    *(v160 + 14) = v164;
    _os_log_impl(&dword_245F8A000, v158, v159, "ObjectCaptureSession.%{private}s: Session identifier: %{public}s", v160, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v161, -1, -1);
    MEMORY[0x24C1989D0](v160, -1, -1);

    v165 = v221;
    v166 = v201;
  }

  else
  {

    v166 = v156;
    v165 = v152;
  }

  v62(v166, v165);
  v167 = v216;
  v168 = *&v217[v92];
  if (v168)
  {
    v169 = *(*v168 + 176);
    v170 = v157;

    v169(v157, &off_2858E1C60);
  }

  v171 = sub_246043938();
  v172 = *&v157[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem];
  *&v157[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem] = v171;

  [*&v157[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession] _addObserver_];
  type metadata accessor for ObjectCaptureSessionSPI();
  v173 = swift_allocObject();
  v174 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_spi;
  swift_beginAccess();
  v175 = *&v157[v174];
  *&v157[v174] = v173;

  v176 = *sub_24608FC70();
  OCSignPostsAriadneDbgCode();
  v177 = sub_24608FD30();
  v179 = *v177;
  v178 = *(v177 + 1);
  sub_246091C74();
  v180 = kdebug_trace_string();

  *&v157[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_traceDebugId] = v180;
  v181 = *sub_24608FC28();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v182 = *sub_24608FC88();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  sub_246077CE4();
  v183 = [objc_opt_self() defaultCenter];
  [v183 addObserver:v157 selector:sel_logThermalStateChange name:*MEMORY[0x277CCA600] object:0];

  v184 = v199;
  v185 = v167;
  v186 = v221;
  v218(v199, v185, v221);
  v187 = sub_2460918D4();
  v188 = sub_246091FC4();
  if (os_log_type_enabled(v187, v188))
  {
    v189 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v224 = v190;
    *v189 = 136380675;
    *(v189 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, &v224);
    _os_log_impl(&dword_245F8A000, v187, v188, "ObjectCaptureSession.%{private}s: Session is created.", v189, 0xCu);
    sub_245F8E6F4(v190);
    MEMORY[0x24C1989D0](v190, -1, -1);
    MEMORY[0x24C1989D0](v189, -1, -1);
  }

  v62(v184, v186);
  v196(0xD000000000000023, 0x80000002460A4A70);

  v191 = v212;
  sub_246042FA0();
  (*(v213 + 8))(v191, v214);
}

void sub_246079A74(id a1)
{
  if (a1 != 18)
  {
    sub_246077B30(a1);
  }
}

uint64_t sub_246079A84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_246079B5C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_24603E130(v0[2]);
}

uint64_t sub_246079B8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_246079BC4()
{
  v1 = *(v0 + 24);
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x410))(&v2);
  if (v2 == 14)
  {
    sub_246077B30(0xE);
    sub_246077B30(0xE);
    *v1 = 1;
  }

  else
  {
    sub_246077B30(v2);
    sub_246077B30(0xE);
  }
}

uint64_t sub_246079C60()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession);
    v9 = v7;
    [v8 removeAnchor_];
    v10 = sub_245FA3174();
    (*(v2 + 16))(v6, v10, v1);
    v11 = sub_2460918D4();
    v12 = sub_246091FC4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136380675;
      *(v13 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A3140, &v16);
      _os_log_impl(&dword_245F8A000, v11, v12, "ObjectCaptureSession.%{private}s: Existing bounding box anchor removed.", v13, 0xCu);
      sub_245F8E6F4(v14);
      MEMORY[0x24C1989D0](v14, -1, -1);
      MEMORY[0x24C1989D0](v13, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

void sub_246079E60(uint64_t a1, float32x4_t a2)
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v33 = vdupq_laneq_s32(a2, 2);
  v34 = vdupq_lane_s32(*a2.f32, 1);
  v8 = a2.f32[1] + -0.02;
  v31 = 0;

  v9 = 0;
  for (i = 3.4028e38; v6; v31 = v26)
  {
    while (1)
    {
LABEL_11:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = *(*(v2 + 56) + ((v9 << 9) | (8 * v12)));
      getRotatedPlaneTransform(_:)(v14, v13);
      v39 = __invert_f4(v38);
      v36 = vaddq_f32(v39.columns[3], vmlaq_f32(vmlaq_f32(vmulq_n_f32(v39.columns[0], a2.f32[0]), v34, v39.columns[1]), v33, v39.columns[2]));
      [(ARPlaneAnchor *)v13 center];
      v16 = vabds_f32(v15, v36.f32[0]);
      v17 = [(ARPlaneAnchor *)v13 planeExtent];
      [(ARPlaneExtent *)v17 width];
      v19 = v18;

      if ((v19 * 0.5) < v16)
      {
        goto LABEL_6;
      }

      *&v20 = v19 * 0.5;
      [(ARPlaneAnchor *)v13 center];
      v22 = vabds_f32(v21, v36.f32[2]);
      v23 = [(ARPlaneAnchor *)v13 planeExtent];
      [(ARPlaneExtent *)v23 height];
      v25 = v24;

      if ((v25 * 0.5) < v22)
      {
        goto LABEL_6;
      }

      v26 = v13;
      [(ARPlaneAnchor *)v26 transform];
      *&v28 = v27;
      if (v27 <= v8)
      {
        break;
      }

      v2 = v32;
LABEL_6:

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    [(ARPlaneAnchor *)v26 transform];
    v37 = v29;

    LODWORD(v30) = vsubq_f32(a2, v37).i32[1];
    v2 = v32;
    if (v30 >= i)
    {
      goto LABEL_6;
    }

    i = v30;
  }

LABEL_7:
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_24607A0F0()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2460917D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v11 = sub_246091BD4();
  [v10 setDateFormat_];

  sub_2460917C4();
  v12 = sub_246091774();
  (*(v6 + 8))(v9, v5);
  v13 = [v10 stringFromDate_];

  v14 = sub_246091C04();
  v16 = v15;

  v17 = sub_245FA3174();
  (*(v1 + 16))(v4, v17, v0);

  v18 = sub_2460918D4();
  v19 = sub_246091FC4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A48C0, &v25);
    *(v20 + 12) = 2082;
    v22 = sub_245F8D3C0(v14, v16, &v25);

    *(v20 + 14) = v22;
    _os_log_impl(&dword_245F8A000, v18, v19, "ObjectCaptureSession.%{private}s: pnp_measurement_window_end %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v21, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  else
  {
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_24607A488()
{
  v1 = sub_2460917D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24607A53C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_2460917D4() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_24607A5E4()
{

  return MEMORY[0x2821FE8E8](v0, 88, 15);
}

uint64_t sub_24607A688()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24607A6C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) configuration];
  if (v3)
  {
    v16 = v3;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8) & 1) == 0)
    {
      v5 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp);
      v6 = MEMORY[0x277D85000];
      v7 = v4;
      v8 = v5 + (*((*MEMORY[0x277D85000] & *v2) + 0x78))();
      type metadata accessor for ObjectCaptureFrameEvent();
      v9 = (*((*v6 & *v2) + 0x90))(&v18 + 1);
      v10 = (*((*v6 & *v2) + 0xA8))(&v18, v9);
      v17 = v18;
      v11 = (*((*v6 & *v2) + 0xC0))(v10);
      v13 = v12;
      v14 = (*((*v6 & *v2) + 0xD8))();
      v15 = ObjectCaptureFrameEvent.__allocating_init(timestamp:gesture:scanStatus:position:boxTransform:)(&v18 + 1, &v17, v14, v8, v11, v13);
      [objc_msgSend(v7 recordingTechnique)];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24607A904(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) < 4)
  {
    return dword_246099B90[a1 - 1];
  }

  v8 = sub_245FA3174();
  (*(v3 + 16))(v6, v8, v2);
  v9 = sub_2460918D4();
  v10 = sub_246091FB4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000036, 0x80000002460A4830, &v17);
    *(v11 + 12) = 2082;
    v16 = a1;
    type metadata accessor for UIDeviceOrientation(0);
    v13 = sub_246091C54();
    v15 = sub_245F8D3C0(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: Unsupported device orientation detected: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 1;
}

uint64_t sub_24607AB30(uint64_t a1, int a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v94 = a3;
  v177 = *MEMORY[0x277D85DE8];
  v11 = sub_2460918F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v90 - v17;
  v19 = *(a1 + 16);
  if (!v19 || (v20 = *(a1 + 24)) == 0 || !*(a1 + 32))
  {
    v29 = sub_245FA3280();
    (*(v12 + 16))(v15, v29, v11);
    v30 = sub_2460918D4();
    v31 = sub_246091FB4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v163 = v33;
      *v32 = 136380675;
      *(v32 + 4) = sub_245F8D3C0(0xD00000000000008FLL, 0x80000002460A43B0, &v163);
      _os_log_impl(&dword_245F8A000, v30, v31, "ObjectCaptureSession.%{private}s: Invalid depth, confidence or pointcloud input!", v32, 0xCu);
      sub_245F8E6F4(v33);
      MEMORY[0x24C1989D0](v33, -1, -1);
      MEMORY[0x24C1989D0](v32, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    goto LABEL_12;
  }

  v21 = 0;
  v22 = *(a1 + 8);
  v24 = *(a1 + 88);
  v23 = *(a1 + 96);
  v26 = *(a1 + 112);
  v25 = *(a1 + 128);
  v27 = 1;
  v28 = *(a1 + 144);
  if (a2 <= 1)
  {
    if (!a2)
    {
      v176 = 0;
      v36 = *(v24 + 16);
      v37 = *MEMORY[0x277D860B8];
      v38 = *(MEMORY[0x277D860B8] + 16);
      v39 = *(MEMORY[0x277D860B8] + 32);
      v40 = *(MEMORY[0x277D860B8] + 48);
      if (a6 & 0x100000000) != 0 || *&a6 < 0.0 || (a5[7] & 1) != 0 || (v94[4])
      {
        if (!HIDWORD(v36))
        {
          if (!OCPointCloudCreateWithRGB())
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v83 = *v94;
      v84 = v94[1];
      v85 = v94[2];
      v86 = v94[3];
      v87 = a5[5];
      v167 = a5[4];
      v168 = v87;
      v169 = a5[6];
      v88 = a5[1];
      v163 = *a5;
      v164 = v88;
      v89 = a5[2];
      v166 = a5[3];
      v165 = v89;
      LODWORD(v170) = a6;
      v171 = v83;
      v172 = v84;
      v173 = v85;
      v174 = v86;
      if (HIDWORD(v36))
      {
        goto LABEL_92;
      }

      v68 = OCPointCloudCreateWithRGBAndPlaneClassification();
      goto LABEL_78;
    }

    if (a2 == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2 == 4)
  {
    goto LABEL_28;
  }

  if (a2 != 3)
  {
    if (a2 == 2)
    {
      v176 = 0;
LABEL_18:
      v91 = v26;
      v92 = v25;
      v93 = v28;
      if (a6 & 0x100000000) != 0 || *&a6 < 0.0 || (a5[7] & 1) != 0 || (v94[4])
      {
        sub_246081C68(&v163);
        if (a4[4])
        {
          goto LABEL_24;
        }
      }

      else
      {
        v70 = v94[2];
        v69 = v94[3];
        v72 = *v94;
        v71 = v94[1];
        v73 = a5[5];
        v145 = a5[4];
        v146 = v73;
        v147 = a5[6];
        v74 = a5[1];
        v141 = *a5;
        v142 = v74;
        v75 = a5[3];
        v143 = a5[2];
        v144 = v75;
        LODWORD(v148) = a6;
        v149 = v72;
        v150 = v71;
        v151 = v70;
        v152 = v69;
        sub_246081CAC(&v141);
        v173 = v151;
        v174 = v152;
        v175 = v153;
        v169 = v147;
        v170 = v148;
        v172 = v150;
        v171 = v149;
        v165 = v143;
        v166 = v144;
        v168 = v146;
        v167 = v145;
        v164 = v142;
        v163 = v141;
        if (a4[4])
        {
          goto LABEL_24;
        }
      }

      if ((v94[4] & 1) == 0)
      {
        v49 = a4[1];
        v50 = a4[2];
        v51 = a4[3];
        v53 = v94[2];
        v52 = v94[3];
        v55 = *v94;
        v54 = v94[1];
        v141 = *a4;
        v142 = v49;
        v143 = v50;
        v144 = v51;
        v145 = v55;
        v146 = v54;
        v147 = v53;
        v148 = v52;
        sub_245F97D8C(&v141);
        v160 = v147;
        v161 = v148;
        v162 = v149;
        v156 = v143;
        v157 = v144;
        v159 = v146;
        v158 = v145;
        v155 = v142;
        v154 = v141;
LABEL_46:
        v151 = v173;
        v152 = v174;
        v153 = v175;
        v147 = v169;
        v148 = v170;
        v149 = v171;
        v150 = v172;
        v143 = v165;
        v144 = v166;
        v145 = v167;
        v146 = v168;
        v141 = v163;
        v142 = v164;
        if (sub_246081C90(&v141) == 1)
        {
          goto LABEL_48;
        }

        v137 = v149;
        v138 = v150;
        v139 = v151;
        v140 = v152;
        v133 = v145;
        v134 = v146;
        v135 = v147;
        v136 = v148;
        v129 = v141;
        v130 = v142;
        v131 = v143;
        v132 = v144;
        v122 = v160;
        v123 = v161;
        LOBYTE(v124) = v162;
        v118 = v156;
        v119 = v157;
        v120 = v158;
        v121 = v159;
        v116 = v154;
        v117 = v155;
        if (sub_245F97DBC(&v116) == 1)
        {
LABEL_48:
          v126 = v173;
          v127 = v174;
          v128 = v175;
          v122 = v169;
          v123 = v170;
          v124 = v171;
          v125 = v172;
          v118 = v165;
          v119 = v166;
          v120 = v167;
          v121 = v168;
          v116 = v163;
          v117 = v164;
          if (sub_246081C90(&v116) != 1)
          {
            v112 = v124;
            v113 = v125;
            v114 = v126;
            v115 = v127;
            v108 = v120;
            v109 = v121;
            v110 = v122;
            v111 = v123;
            v104 = v116;
            v105 = v117;
            v106 = v118;
            v107 = v119;
            if (!OCPointCloudCreateFromDenseDepthWithPlaneClassification())
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }

          v101 = v160;
          v102 = v161;
          v103 = v162;
          v97 = v156;
          v98 = v157;
          v99 = v158;
          v100 = v159;
          v95 = v154;
          v96 = v155;
          if (sub_245F97DBC(&v95) == 1)
          {
            if (!OCPointCloudCreateFromDenseDepth())
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }

          v56 = OCPointCloudCreateFromDenseDepthWithBoundingBox();
        }

        else
        {
          v56 = OCPointCloudCreateFromDenseDepthWithPlaneClassificationAndBoundingBox();
        }

        if (!v56)
        {
LABEL_58:
          result = v176;
          goto LABEL_59;
        }

LABEL_57:
        v176 = 0;
        goto LABEL_58;
      }

LABEL_24:
      sub_245F97B40(&v154);
      goto LABEL_46;
    }

LABEL_15:
    v27 = 0;
    v21 = 1;
  }

LABEL_16:
  v176 = 0;
  if ((a2 - 1) < 2)
  {
    if ((v21 & 1) == 0)
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_87;
  }

  if (a2 == 3)
  {
    if ((v21 & 1) == 0)
    {
LABEL_29:
      v90[3] = v27;
      v91 = v26;
      v92 = v25;
      v93 = v28;
      v35 = *(v24 + 16);
      if (a6 & 0x100000000) != 0 || *&a6 < 0.0 || (a5[7] & 1) != 0 || (v94[4])
      {
        sub_246081C68(&v163);
        if (a4[4])
        {
          goto LABEL_35;
        }
      }

      else
      {
        v77 = v94[2];
        v76 = v94[3];
        v79 = *v94;
        v78 = v94[1];
        v80 = a5[5];
        v145 = a5[4];
        v146 = v80;
        v147 = a5[6];
        v81 = a5[1];
        v141 = *a5;
        v142 = v81;
        v82 = a5[3];
        v143 = a5[2];
        v144 = v82;
        LODWORD(v148) = a6;
        v149 = v79;
        v150 = v78;
        v151 = v77;
        v152 = v76;
        sub_246081CAC(&v141);
        v173 = v151;
        v174 = v152;
        v175 = v153;
        v169 = v147;
        v170 = v148;
        v172 = v150;
        v171 = v149;
        v165 = v143;
        v166 = v144;
        v168 = v146;
        v167 = v145;
        v164 = v142;
        v163 = v141;
        if (a4[4])
        {
          goto LABEL_35;
        }
      }

      if ((v94[4] & 1) == 0)
      {
        v58 = a4[1];
        v59 = a4[2];
        v60 = a4[3];
        v62 = v94[2];
        v61 = v94[3];
        v64 = *v94;
        v63 = v94[1];
        v141 = *a4;
        v142 = v58;
        v143 = v59;
        v144 = v60;
        v145 = v64;
        v146 = v63;
        v147 = v62;
        v148 = v61;
        sub_245F97D8C(&v141);
        v160 = v147;
        v161 = v148;
        v162 = v149;
        v156 = v143;
        v157 = v144;
        v159 = v146;
        v158 = v145;
        v155 = v142;
        v154 = v141;
LABEL_61:
        v151 = v173;
        v152 = v174;
        v153 = v175;
        v147 = v169;
        v148 = v170;
        v149 = v171;
        v150 = v172;
        v143 = v165;
        v144 = v166;
        v145 = v167;
        v146 = v168;
        v141 = v163;
        v142 = v164;
        if (sub_246081C90(&v141) != 1)
        {
          v137 = v149;
          v138 = v150;
          v139 = v151;
          v140 = v152;
          v133 = v145;
          v134 = v146;
          v135 = v147;
          v136 = v148;
          v129 = v141;
          v130 = v142;
          v131 = v143;
          v132 = v144;
          v122 = v160;
          v123 = v161;
          LOBYTE(v124) = v162;
          v118 = v156;
          v119 = v157;
          v120 = v158;
          v121 = v159;
          v116 = v154;
          v117 = v155;
          if (sub_245F97DBC(&v116) != 1)
          {
            if (!HIDWORD(v35))
            {
              if (!OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassificationAndBoundingBox())
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            }

            goto LABEL_89;
          }
        }

        v126 = v173;
        v127 = v174;
        v128 = v175;
        v122 = v169;
        v123 = v170;
        v124 = v171;
        v125 = v172;
        v118 = v165;
        v119 = v166;
        v120 = v167;
        v121 = v168;
        v116 = v163;
        v117 = v164;
        if (sub_246081C90(&v116) != 1)
        {
          v112 = v124;
          v113 = v125;
          v114 = v126;
          v115 = v127;
          v108 = v120;
          v109 = v121;
          v110 = v122;
          v111 = v123;
          v104 = v116;
          v105 = v117;
          v106 = v118;
          v107 = v119;
          if (HIDWORD(v35))
          {
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          v67 = OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassification();
LABEL_69:
          if (!v67)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        v101 = v160;
        v102 = v161;
        v103 = v162;
        v97 = v156;
        v98 = v157;
        v99 = v158;
        v100 = v159;
        v95 = v154;
        v96 = v155;
        v65 = sub_245F97DBC(&v95);
        v66 = HIDWORD(v35);
        if (v65 == 1)
        {
          if (v66)
          {
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          v67 = OCPointCloudCreateFromSparseAndDenseDepth();
          goto LABEL_69;
        }

        if (v66)
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
        }

        v68 = OCPointCloudCreateFromSparseAndDenseDepthWithBoundingBox();
LABEL_78:
        if (!v68)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

LABEL_35:
      sub_245F97B40(&v154);
      goto LABEL_61;
    }

    __break(1u);
LABEL_28:
    v176 = 0;
    v27 = 2;
    goto LABEL_29;
  }

  v41 = v20;
  v42 = v19;
  v43 = v41;
  v44 = sub_245FA3280();
  (*(v12 + 16))(v18, v44, v11);
  v45 = sub_2460918D4();
  v46 = sub_246091FB4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v163 = v48;
    *v47 = 136380675;
    *(v47 + 4) = sub_245F8D3C0(0xD00000000000008FLL, 0x80000002460A43B0, &v163);
    _os_log_impl(&dword_245F8A000, v45, v46, "ObjectCaptureSession.%{private}s: Invalid point type!", v47, 0xCu);
    sub_245F8E6F4(v48);
    MEMORY[0x24C1989D0](v48, -1, -1);
    MEMORY[0x24C1989D0](v47, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v18, v11);
LABEL_12:
  result = 0;
LABEL_59:
  v57 = *MEMORY[0x277D85DE8];
  return result;
}