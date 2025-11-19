uint64_t MediaML.writeCellData(data:)(uint64_t a1)
{
  *(v2 + 1112) = v1;
  *(v2 + 1104) = a1;
  *(v2 + 944) = v2;
  *(v2 + 952) = 0;
  *(v2 + 960) = 0;
  *(v2 + 984) = 0;
  *(v2 + 576) = 0;
  *(v2 + 584) = 0;
  *(v2 + 608) = 0;
  *(v2 + 616) = 0;
  *(v2 + 992) = 0;
  *(v2 + 640) = 0;
  *(v2 + 648) = 0;
  *(v2 + 1000) = 0;
  *(v2 + 1008) = 0;
  *(v2 + 848) = 0;
  *(v2 + 856) = 0;
  *(v2 + 864) = 0;
  *(v2 + 872) = 0;
  *(v2 + 880) = 0;
  *(v2 + 888) = 0;
  *(v2 + 896) = 0;
  *(v2 + 904) = 0;
  *(v2 + 912) = 0;
  *(v2 + 920) = 0;
  *(v2 + 928) = 0;
  *(v2 + 936) = 0;
  *(v2 + 1016) = 0;
  v3 = type metadata accessor for Logger();
  *(v2 + 1120) = v3;
  v12 = *(v3 - 8);
  *(v2 + 1128) = v12;
  v13 = *(v12 + 64);
  *(v2 + 1136) = swift_task_alloc();
  *(v2 + 1144) = swift_task_alloc();
  v4 = type metadata accessor for Calendar.Component();
  *(v2 + 1152) = v4;
  v14 = *(v4 - 8);
  *(v2 + 1160) = v14;
  v5 = *(v14 + 64) + 15;
  *(v2 + 1168) = swift_task_alloc();
  v6 = type metadata accessor for Calendar();
  *(v2 + 1176) = v6;
  v15 = *(v6 - 8);
  *(v2 + 1184) = v15;
  v7 = *(v15 + 64) + 15;
  *(v2 + 1192) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v2 + 1200) = v8;
  v16 = *(v8 - 8);
  *(v2 + 1208) = v16;
  v9 = *(v16 + 64) + 15;
  *(v2 + 1216) = swift_task_alloc();
  *(v2 + 952) = a1;
  *(v2 + 960) = v17;
  v10 = *(v2 + 944);

  return MEMORY[0x2822009F8](MediaML.writeCellData(data:), v17, 0);
}

uint64_t MediaML.writeCellData(data:)()
{
  v92 = v0[139];
  v0[118] = v0;
  swift_beginAccess();
  v93 = *(v92 + 112);

  swift_endAccess();
  v0[121] = v93;
  if (v0[121])
  {
    outlined destroy of DataWriter?((v91 + 968));
    v1 = *(v91 + 1216);
    v90 = *(v91 + 1104);
    Date.init()();
    v89 = *kMediaML_throughputTrue.unsafeMutableAddressor();

    *(v91 + 544) = v89;
    MEMORY[0x259C87380]();
    outlined destroy of String(v91 + 544);
    if (!*(v91 + 200))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v84 = *(v91 + 1104);
    outlined init with take of Any(v91 + 176, v91 + 144);
    swift_dynamicCast();
    throughputTrue = *(v91 + 976);
    *(v91 + 984) = throughputTrue;
    v83 = *kMediaML_sessionID.unsafeMutableAddressor();

    *(v91 + 560) = v83;
    MEMORY[0x259C87380]();
    outlined destroy of String(v91 + 560);
    if (*(v91 + 232))
    {
      if (swift_dynamicCast())
      {
        v80 = *(v91 + 832);
        v81 = *(v91 + 840);
      }

      else
      {
        v80 = 0;
        v81 = 0;
      }

      v78 = v80;
      v79 = v81;
    }

    else
    {
      outlined destroy of Any?((v91 + 208));
      v78 = 0;
      v79 = 0;
    }

    *(v91 + 1224) = v79;
    v77 = *(v91 + 1104);
    *(v91 + 576) = v78;
    *(v91 + 584) = v79;
    v76 = *kMediaML_carrier.unsafeMutableAddressor();

    *(v91 + 592) = v76;
    MEMORY[0x259C87380]();
    outlined destroy of String(v91 + 592);
    if (*(v91 + 264))
    {
      if (swift_dynamicCast())
      {
        v74 = *(v91 + 816);
        v75 = *(v91 + 824);
      }

      else
      {
        v74 = 0;
        v75 = 0;
      }

      v72 = v74;
      v73 = v75;
    }

    else
    {
      outlined destroy of Any?((v91 + 240));
      v72 = 0;
      v73 = 0;
    }

    *(v91 + 1232) = v73;
    v6 = *(v91 + 1216);
    v71 = *(v91 + 1104);
    *(v91 + 608) = v72;
    *(v91 + 616) = v73;
    Date.timeIntervalSince1970.getter();
    timestamp = v7;
    *(v91 + 992) = v7;
    v70 = *kMediaML_appName.unsafeMutableAddressor();

    *(v91 + 624) = v70;
    MEMORY[0x259C87380]();
    outlined destroy of String(v91 + 624);
    if (*(v91 + 296))
    {
      if (swift_dynamicCast())
      {
        v67 = *(v91 + 800);
        v68 = *(v91 + 808);
      }

      else
      {
        v67 = 0;
        v68 = 0;
      }

      v65 = v67;
      v66 = v68;
    }

    else
    {
      outlined destroy of Any?((v91 + 272));
      v65 = 0;
      v66 = 0;
    }

    *(v91 + 1240) = v66;
    v55 = *(v91 + 1216);
    v59 = *(v91 + 1192);
    v60 = *(v91 + 1176);
    v58 = *(v91 + 1168);
    v56 = *(v91 + 1152);
    v64 = *(v91 + 1104);
    v52 = *(v91 + 1184);
    v51 = *(v91 + 1160);
    *(v91 + 640) = v65;
    *(v91 + 648) = v66;
    static Calendar.current.getter();
    v54 = *(v51 + 104);
    v54(v58, *MEMORY[0x277CC9980], v56);
    hour = Calendar.component(_:from:)();
    v57 = *(v51 + 8);
    v57(v58, v56);
    v61 = *(v52 + 8);
    v61(v59, v60);
    *(v91 + 1000) = hour;
    static Calendar.current.getter();
    v54(v58, *MEMORY[0x277CC99B8], v56);
    dow = Calendar.component(_:from:)();
    v57(v58, v56);
    v61(v59, v60);
    *(v91 + 1008) = dow;
    v63 = *kMediaML_rssi.unsafeMutableAddressor();

    *(v91 + 656) = v63;
    MEMORY[0x259C87380]();
    outlined destroy of String(v91 + 656);
    if (*(v91 + 328))
    {
      if (swift_dynamicCast())
      {
        v49 = *(v91 + 1096);
        v50 = 0;
      }

      else
      {
        v49 = 0;
        v50 = 1;
      }

      v47 = v49;
      v48 = v50;
    }

    else
    {
      outlined destroy of Any?((v91 + 304));
      v47 = 0;
      v48 = 1;
    }

    v46 = *(v91 + 1104);
    *(v91 + 848) = v47;
    *(v91 + 856) = v48 & 1;
    v45 = *kMediaML_rsrp.unsafeMutableAddressor();

    *(v91 + 672) = v45;
    MEMORY[0x259C87380]();
    outlined destroy of String(v91 + 672);
    if (*(v91 + 360))
    {
      if (swift_dynamicCast())
      {
        v43 = *(v91 + 1088);
        v44 = 0;
      }

      else
      {
        v43 = 0;
        v44 = 1;
      }

      v41 = v43;
      v42 = v44;
    }

    else
    {
      outlined destroy of Any?((v91 + 336));
      v41 = 0;
      v42 = 1;
    }

    v40 = *(v91 + 1104);
    *(v91 + 864) = v41;
    *(v91 + 872) = v42 & 1;
    v39 = *kMediaML_rsrq.unsafeMutableAddressor();

    *(v91 + 688) = v39;
    MEMORY[0x259C87380]();
    outlined destroy of String(v91 + 688);
    if (*(v91 + 392))
    {
      if (swift_dynamicCast())
      {
        v37 = *(v91 + 1080);
        v38 = 0;
      }

      else
      {
        v37 = 0;
        v38 = 1;
      }

      v35 = v37;
      v36 = v38;
    }

    else
    {
      outlined destroy of Any?((v91 + 368));
      v35 = 0;
      v36 = 1;
    }

    v34 = *(v91 + 1104);
    *(v91 + 880) = v35;
    *(v91 + 888) = v36 & 1;
    v33 = *kMediaML_rscp.unsafeMutableAddressor();

    *(v91 + 704) = v33;
    MEMORY[0x259C87380]();
    outlined destroy of String(v91 + 704);
    if (*(v91 + 424))
    {
      if (swift_dynamicCast())
      {
        v31 = *(v91 + 1072);
        v32 = 0;
      }

      else
      {
        v31 = 0;
        v32 = 1;
      }

      v29 = v31;
      v30 = v32;
    }

    else
    {
      outlined destroy of Any?((v91 + 400));
      v29 = 0;
      v30 = 1;
    }

    v28 = *(v91 + 1104);
    *(v91 + 896) = v29;
    *(v91 + 904) = v30 & 1;
    v27 = *kMediaML_snr.unsafeMutableAddressor();

    *(v91 + 720) = v27;
    MEMORY[0x259C87380]();
    outlined destroy of String(v91 + 720);
    if (*(v91 + 456))
    {
      if (swift_dynamicCast())
      {
        v25 = *(v91 + 1064);
        v26 = 0;
      }

      else
      {
        v25 = 0.0;
        v26 = 1;
      }

      v23 = v25;
      v24 = v26;
    }

    else
    {
      outlined destroy of Any?((v91 + 432));
      v23 = 0.0;
      v24 = 1;
    }

    v22 = *(v91 + 1104);
    *(v91 + 912) = v23;
    *(v91 + 920) = v24 & 1;
    v21 = *kMediaML_bars.unsafeMutableAddressor();

    *(v91 + 736) = v21;
    MEMORY[0x259C87380]();
    outlined destroy of String(v91 + 736);
    if (*(v91 + 488))
    {
      if (swift_dynamicCast())
      {
        v19 = *(v91 + 1056);
        v20 = 0;
      }

      else
      {
        v19 = 0;
        v20 = 1;
      }

      v17 = v19;
      v18 = v20;
    }

    else
    {
      outlined destroy of Any?((v91 + 464));
      v17 = 0;
      v18 = 1;
    }

    *(v91 + 928) = v17;
    *(v91 + 936) = v18 & 1;

    *(v91 + 752) = v78;
    *(v91 + 760) = v79;
    if (*(v91 + 760))
    {
      v94 = *(v91 + 752);
    }

    else
    {
      v94 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v91 + 760))
      {
        outlined destroy of String?(v91 + 752);
      }
    }

    *(v91 + 768) = v65;
    *(v91 + 776) = v66;
    if (*(v91 + 776))
    {
      v95 = *(v91 + 768);
    }

    else
    {
      v95 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v91 + 776))
      {
        outlined destroy of String?(v91 + 768);
      }
    }

    *(v91 + 784) = v72;
    *(v91 + 792) = v73;
    if (*(v91 + 792))
    {
      v96 = *(v91 + 784);
    }

    else
    {
      v96 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v91 + 792))
      {
        outlined destroy of String?(v91 + 784);
      }
    }

    rssi = (v48 & 1) != 0 ? 0 : v47;
    rsrp = (v42 & 1) != 0 ? 0 : v41;
    rscp = (v30 & 1) != 0 ? 0 : v29;
    rsrq = (v36 & 1) != 0 ? 0 : v35;
    v12 = (v24 & 1) != 0 ? 0.0 : v23;
    bars = (v18 & 1) != 0 ? 0 : v17;
    v9 = *(v91 + 1112);
    CellDataPointForWriting.init(sessionID:timestamp:appName:carrier:hour:dow:rssi:rsrp:rscp:rsrq:snr:bars:throughputTrue:)((v91 + 16), v94, timestamp, v95, v96, hour, dow, rssi, rsrp, rscp, rsrq, v12, bars, throughputTrue);
    swift_beginAccess();
    v10 = *(v9 + 112);
    *(v91 + 1248) = v10;

    swift_endAccess();
    if (v10)
    {
      v8 = swift_task_alloc();
      *(v91 + 1256) = v8;
      *v8 = *(v91 + 944);
      v8[1] = MediaML.writeCellData(data:);

      return DataWriter.writeRawDataForCell(data:)((v91 + 16));
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    outlined destroy of DataWriter?((v91 + 968));
    v2 = *(v91 + 1216);
    v85 = *(v91 + 1192);
    v86 = *(v91 + 1168);
    v87 = *(v91 + 1144);
    v88 = *(v91 + 1136);

    v3 = *(*(v91 + 944) + 8);
    v4 = *(v91 + 944);

    return v3();
  }
}

{
  v12 = *v1;
  v10 = *v1 + 16;
  v11 = (v12 + 944);
  v2 = *(*v1 + 1256);
  *(v12 + 944) = *v1;
  *(v12 + 1264) = v0;

  if (v0)
  {
    v4 = *(v10 + 1096);
    v7 = *v11;
    v6 = MediaML.writeCellData(data:);
  }

  else
  {
    v3 = *(v10 + 1232);
    v9 = *(v10 + 1096);

    v4 = v9;
    v5 = *v11;
    v6 = MediaML.writeCellData(data:);
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

{
  v1 = v0[143];
  v27 = v0[141];
  v28 = v0[140];
  v0[118] = v0;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v27 + 16))(v1, v2, v28);
  v30 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v30, v29))
  {
    v3 = *(v26 + 1264);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0);
    v24 = createStorage<A>(capacity:type:)(0);
    *(v26 + 1024) = buf;
    *(v26 + 1032) = v23;
    *(v26 + 1040) = v24;
    serialize(_:at:)(0, (v26 + 1024));
    serialize(_:at:)(0, (v26 + 1024));
    *(v26 + 1048) = v31;
    v25 = swift_task_alloc();
    v25[2] = v26 + 1024;
    v25[3] = v26 + 1032;
    v25[4] = v26 + 1040;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_2586A4000, v30, v29, "Cell Data write to disk finished", buf, 2u);
    destroyStorage<A>(_:count:)(v23, 0, v21);
    destroyStorage<A>(_:count:)(v24, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = *(v26 + 1144);
  v10 = *(v26 + 1120);
  v8 = *(v26 + 1128);
  MEMORY[0x277D82BD8](v30);
  (*(v8 + 8))(v9, v10);
  v11 = *(v26 + 1240);
  v12 = *(v26 + 1232);
  v13 = *(v26 + 1224);
  v15 = *(v26 + 1216);
  v16 = *(v26 + 1200);
  v14 = *(v26 + 1208);
  outlined destroy of CellDataPointForWriting((v26 + 16));

  (*(v14 + 8))(v15, v16);
  v5 = *(v26 + 1216);
  v17 = *(v26 + 1192);
  v18 = *(v26 + 1168);
  v19 = *(v26 + 1144);
  v20 = *(v26 + 1136);

  v6 = *(*(v26 + 944) + 8);
  v7 = *(v26 + 944);

  return v6();
}

{
  v45 = v0;
  v30 = v0[158];
  v1 = v0[156];
  v2 = v0[142];
  v28 = v0[141];
  v29 = v0[140];
  v0[118] = v0;

  MEMORY[0x259C87ED0](v30);
  v0[127] = v30;
  v3 = MediaML.logger.unsafeMutableAddressor();
  (*(v28 + 16))(v2, v3, v29);
  MEMORY[0x259C87ED0](v30);
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = 64;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #10 in MediaML.writeCellData(data:);
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v33 + 24) = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v36 + 24) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v37 = v4;

  *v37 = closure #1 in OSLogArguments.append(_:)partial apply;
  v37[1] = v34;

  v37[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v37[3] = v35;

  v37[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v37[5] = v36;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v38, v39))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(1);
    v26 = createStorage<A>(capacity:type:)(0);
    v40 = buf;
    v41 = v25;
    v42 = v26;
    serialize(_:at:)(2, &v40);
    serialize(_:at:)(1, &v40);
    v43 = closure #1 in OSLogArguments.append(_:)partial apply;
    v44 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v43, &v40, &v41, &v42);
    v43 = closure #1 in OSLogArguments.append(_:)partial apply;
    v44 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v43, &v40, &v41, &v42);
    v43 = closure #1 in OSLogArguments.append(_:)partial apply;
    v44 = v36;
    closure #1 in osLogInternal(_:log:type:)(&v43, &v40, &v41, &v42);
    _os_log_impl(&dword_2586A4000, v38, v39, "Failed to write cell data with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v25, 1, v23);
    destroyStorage<A>(_:count:)(v26, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v27[158];
  v10 = v27[142];
  v11 = v27[140];
  v9 = v27[141];
  MEMORY[0x277D82BD8](v38);
  (*(v9 + 8))(v10, v11);
  MEMORY[0x259C87EC0](v12);
  MEMORY[0x259C87EC0](v12);
  v13 = v27[155];
  v14 = v27[154];
  v15 = v27[153];
  v17 = v27[152];
  v18 = v27[150];
  v16 = v27[151];
  outlined destroy of CellDataPointForWriting(v27 + 2);

  (*(v16 + 8))(v17, v18);
  v5 = v27[152];
  v19 = v27[149];
  v20 = v27[146];
  v21 = v27[143];
  v22 = v27[142];

  v6 = *(v27[118] + 8);
  v7 = v27[118];

  return v6();
}

uint64_t MediaML.writeData(data:)(uint64_t a1)
{
  v2[22] = v1;
  v2[21] = a1;
  v2[14] = v2;
  v2[15] = 0;
  v2[16] = 0;
  v2[17] = 0;
  v2[18] = 0;
  v3 = type metadata accessor for Logger();
  v2[23] = v3;
  v7 = *(v3 - 8);
  v2[24] = v7;
  v4 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[15] = a1;
  v2[16] = v8;
  v5 = v2[14];

  return MEMORY[0x2822009F8](MediaML.writeData(data:), v8, 0);
}

uint64_t MediaML.writeData(data:)()
{
  object = v0[10]._object;
  v0[7]._countAndFlagsBits = v0;
  v12 = *kMediaML_interfaceType.unsafeMutableAddressor();

  v0[5] = v12;
  MEMORY[0x259C87380]();
  outlined destroy of String(&v0[5]);
  if (v0[2]._object)
  {
    if (swift_dynamicCast())
    {
      v9 = v11[20];
      v10 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 1;
    }

    v7 = v9;
    v8 = v10;
  }

  else
  {
    outlined destroy of Any?(v11 + 2);
    v7 = 0;
    v8 = 1;
  }

  v11[26] = v7;
  if (v8)
  {
    v4 = v11[25];

    v5 = *(v11[14] + 8);
    v6 = v11[14];

    return v5();
  }

  else
  {
    v11[17] = v7;
    v1 = swift_task_alloc();
    v11[27] = v1;
    *v1 = v11[14];
    v1[1] = MediaML.writeData(data:);
    v2 = v11[22];

    return MediaML.ensureDataWriter()();
  }
}

{
  v4 = *v0;
  v1 = *(*v0 + 216);
  v5 = *(*v0 + 176);
  *(v4 + 112) = *v0;

  v2 = *(v4 + 112);

  return MEMORY[0x2822009F8](MediaML.writeData(data:), v5, 0);
}

{
  v53 = v0;
  v34 = v0[26];
  v1 = v0[25];
  v30 = v0[24];
  v31 = v0[23];
  v32 = v0[21];
  v0[14] = v0;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v30 + 16))(v1, v2, v31);

  v33 = swift_allocObject();
  *(v33 + 16) = v32;

  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in MediaML.writeData(data:);
  *(v35 + 24) = v33;

  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0;
  *(v36 + 24) = v35;
  v41 = swift_allocObject();
  *(v41 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_1;
  *(v41 + 24) = v36;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for implicit closure #2 in MediaML.writeData(data:);
  *(v38 + 24) = v37;
  v44 = swift_allocObject();
  *(v44 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v44 + 24) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v45 = v3;

  *v45 = closure #1 in OSLogArguments.append(_:)partial apply;
  v45[1] = v39;

  v45[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v45[3] = v40;

  v45[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v45[5] = v41;

  v45[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v45[7] = v42;

  v45[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v45[9] = v43;

  v45[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v45[11] = v44;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v46, v47))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v27 = createStorage<A>(capacity:type:)(0);
    v28 = createStorage<A>(capacity:type:)(1);
    v48 = buf;
    v49 = v27;
    v50 = v28;
    serialize(_:at:)(2, &v48);
    serialize(_:at:)(2, &v48);
    v51 = closure #1 in OSLogArguments.append(_:)partial apply;
    v52 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    v51 = closure #1 in OSLogArguments.append(_:)partial apply;
    v52 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    v51 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
    v52 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    v51 = closure #1 in OSLogArguments.append(_:)partial apply;
    v52 = v42;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    v51 = closure #1 in OSLogArguments.append(_:)partial apply;
    v52 = v43;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    v51 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v52 = v44;
    closure #1 in osLogInternal(_:log:type:)(&v51, &v48, &v49, &v50);
    _os_log_impl(&dword_2586A4000, v46, v47, "Got data to write to SQL %s for interface=%ld", buf, 0x16u);
    destroyStorage<A>(_:count:)(v27, 0, v25);
    destroyStorage<A>(_:count:)(v28, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v21 = *(v29 + 200);
  v22 = *(v29 + 184);
  v24 = *(v29 + 168);
  v20 = *(v29 + 192);
  MEMORY[0x277D82BD8](v46);
  (*(v20 + 8))(v21, v22);
  v23 = *kMediaML_throughputTrue.unsafeMutableAddressor();

  *(v29 + 96) = v23;
  MEMORY[0x259C87380]();
  outlined destroy of String(v29 + 96);
  if (*(v29 + 72))
  {
    if (swift_dynamicCast())
    {
      v18 = *(v29 + 152);
      v19 = 0;
    }

    else
    {
      v18 = 0.0;
      v19 = 1;
    }

    v16 = v18;
    v17 = v19;
  }

  else
  {
    outlined destroy of Any?((v29 + 48));
    v16 = 0.0;
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_22;
  }

  *(v29 + 144) = v16;
  if (v16 <= 0.0)
  {
    goto LABEL_22;
  }

  v15 = *(v29 + 208);
  if (v15 == *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor())
  {
    v4 = swift_task_alloc();
    *(v29 + 224) = v4;
    *v4 = *(v29 + 112);
    v4[1] = MediaML.writeData(data:);
    v5 = *(v29 + 176);
    v6 = *(v29 + 168);

    return MediaML.writeWifiData(data:)(v6);
  }

  v14 = *(v29 + 208);
  if (v14 != *kMediaML_InterfaceType_Cellular.unsafeMutableAddressor())
  {
LABEL_22:
    v11 = *(v29 + 200);

    v12 = *(*(v29 + 112) + 8);
    v13 = *(v29 + 112);

    return v12();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v29 + 232) = v8;
    *v8 = *(v29 + 112);
    v8[1] = MediaML.writeData(data:);
    v9 = *(v29 + 176);
    v10 = *(v29 + 168);

    return MediaML.writeCellData(data:)(v10);
  }
}

{
  v5 = *v0;
  v6 = *v0;
  v1 = *(*v0 + 224);
  *(v6 + 112) = *v0;

  v2 = *(v5 + 200);

  v3 = *(*(v6 + 112) + 8);

  return v3();
}

{
  v5 = *v0;
  v6 = *v0;
  v1 = *(*v0 + 232);
  *(v6 + 112) = *v0;

  v2 = *(v5 + 200);

  v3 = *(*(v6 + 112) + 8);

  return v3();
}

uint64_t implicit closure #1 in MediaML.writeData(data:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t MediaML.validateWifiDataForPrediction(data:)(uint64_t a1)
{
  v214 = a1;
  v256 = 0;
  v255 = 0;
  v201 = 0;
  v202 = type metadata accessor for Logger();
  v203 = *(v202 - 8);
  v204 = v203;
  v209 = *(v203 + 64);
  v2 = MEMORY[0x28223BE20](v214);
  v211 = (v209 + 15) & 0xFFFFFFFFFFFFFFF0;
  v205 = &v33 - v211;
  v3 = MEMORY[0x28223BE20](v2);
  v206 = &v33 - v211;
  v4 = MEMORY[0x28223BE20](v3);
  v207 = &v33 - v211;
  v5 = MEMORY[0x28223BE20](v4);
  v208 = &v33 - v211;
  v6 = MEMORY[0x28223BE20](v5);
  v210 = &v33 - v211;
  v7 = MEMORY[0x28223BE20](v6);
  v212 = &v33 - v211;
  v256 = v7;
  v255 = v1;
  v213 = *kMediaML_ssid.unsafeMutableAddressor();

  v253 = v213;
  v215 = &v253;
  MEMORY[0x259C87380](v254);
  outlined destroy of String(v215);
  if (v254[3])
  {
    if (swift_dynamicCast())
    {
      v199 = v216;
      v200 = v217;
    }

    else
    {
      v199 = 0;
      v200 = 0;
    }

    v197 = v199;
    v198 = v200;
  }

  else
  {
    outlined destroy of Any?(v254);
    v197 = 0;
    v198 = 0;
  }

  v196 = v198;
  if (v198)
  {
    v195 = v196;

    v193 = *kMediaML_appName.unsafeMutableAddressor();

    v248 = v193;
    v194 = &v248;
    MEMORY[0x259C87380](v249);
    outlined destroy of String(v194);
    if (v249[3])
    {
      if (swift_dynamicCast())
      {
        v191 = v218;
        v192 = v219;
      }

      else
      {
        v191 = 0;
        v192 = 0;
      }

      v189 = v191;
      v190 = v192;
    }

    else
    {
      outlined destroy of Any?(v249);
      v189 = 0;
      v190 = 0;
    }

    v188 = v190;
    if (v190)
    {
      v187 = v188;

      v185 = *kMediaML_rssi.unsafeMutableAddressor();

      v243 = v185;
      v186 = &v243;
      MEMORY[0x259C87380](v244);
      outlined destroy of String(v186);
      if (v244[3])
      {
        if (swift_dynamicCast())
        {
          v183 = v220;
          v184 = 0;
        }

        else
        {
          v183 = 0;
          v184 = 1;
        }

        v181 = v183;
        v182 = v184;
      }

      else
      {
        outlined destroy of Any?(v244);
        v181 = 0;
        v182 = 1;
      }

      if (v182)
      {
        v20 = v207;
        v21 = MediaML.logger.unsafeMutableAddressor();
        (*(v204 + 16))(v20, v21, v202);
        v94 = Logger.logObject.getter();
        v91 = v94;
        v93 = static os_log_type_t.error.getter();
        v92 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v95 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v94, v93))
        {
          v22 = v201;
          v82 = static UnsafeMutablePointer.allocate(capacity:)();
          v78 = v82;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v80 = 0;
          v83 = createStorage<A>(capacity:type:)(0);
          v81 = v83;
          v84 = createStorage<A>(capacity:type:)(v80);
          v242 = v82;
          v241 = v83;
          v240 = v84;
          v85 = 0;
          v86 = &v242;
          serialize(_:at:)(0, &v242);
          serialize(_:at:)(v85, v86);
          v239[4] = v95;
          v87 = &v33;
          MEMORY[0x28223BE20](&v33);
          v88 = &v33 - 6;
          *(&v33 - 4) = v23;
          *(&v33 - 3) = &v241;
          *(&v33 - 2) = &v240;
          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v90 = v22;
          if (v22)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_2586A4000, v91, v92, "rssi in data dictionary is not of expected type Int", v78, 2u);
            v76 = 0;
            destroyStorage<A>(_:count:)(v81, 0, v79);
            destroyStorage<A>(_:count:)(v84, v76, MEMORY[0x277D84F70] + 8);
            MEMORY[0x259C87730](v78, MEMORY[0x277D84B78]);

            v77 = v90;
          }
        }

        else
        {

          v77 = v201;
        }

        v75 = v77;

        (*(v204 + 8))(v207, v202);
        v159 = 0;
        v160 = v75;
      }

      else
      {
        v179 = *kMediaML_noise.unsafeMutableAddressor();

        v238 = v179;
        v180 = &v238;
        MEMORY[0x259C87380](v239);
        outlined destroy of String(v180);
        if (v239[3])
        {
          if (swift_dynamicCast())
          {
            v177 = v221;
            v178 = 0;
          }

          else
          {
            v177 = 0;
            v178 = 1;
          }

          v175 = v177;
          v176 = v178;
        }

        else
        {
          outlined destroy of Any?(v239);
          v175 = 0;
          v176 = 1;
        }

        if (v176)
        {
          v16 = v208;
          v17 = MediaML.logger.unsafeMutableAddressor();
          (*(v204 + 16))(v16, v17, v202);
          v115 = Logger.logObject.getter();
          v112 = v115;
          v114 = static os_log_type_t.error.getter();
          v113 = v114;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v116 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v115, v114))
          {
            v18 = v201;
            v103 = static UnsafeMutablePointer.allocate(capacity:)();
            v99 = v103;
            v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v101 = 0;
            v104 = createStorage<A>(capacity:type:)(0);
            v102 = v104;
            v105 = createStorage<A>(capacity:type:)(v101);
            v237 = v103;
            v236 = v104;
            v235 = v105;
            v106 = 0;
            v107 = &v237;
            serialize(_:at:)(0, &v237);
            serialize(_:at:)(v106, v107);
            v234[4] = v116;
            v108 = &v33;
            MEMORY[0x28223BE20](&v33);
            v109 = &v33 - 6;
            *(&v33 - 4) = v19;
            *(&v33 - 3) = &v236;
            *(&v33 - 2) = &v235;
            v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
            Sequence.forEach(_:)();
            v111 = v18;
            if (v18)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_2586A4000, v112, v113, "noise in data dictionary is not of expected type Double", v99, 2u);
              v97 = 0;
              destroyStorage<A>(_:count:)(v102, 0, v100);
              destroyStorage<A>(_:count:)(v105, v97, MEMORY[0x277D84F70] + 8);
              MEMORY[0x259C87730](v99, MEMORY[0x277D84B78]);

              v98 = v111;
            }
          }

          else
          {

            v98 = v201;
          }

          v96 = v98;

          (*(v204 + 8))(v208, v202);
          v159 = 0;
          v160 = v96;
        }

        else
        {
          v173 = *kMediaML_rxRate.unsafeMutableAddressor();

          v233 = v173;
          v174 = &v233;
          MEMORY[0x259C87380](v234);
          outlined destroy of String(v174);
          if (v234[3])
          {
            if (swift_dynamicCast())
            {
              v171 = v222;
              v172 = 0;
            }

            else
            {
              v171 = 0;
              v172 = 1;
            }

            v169 = v171;
            v170 = v172;
          }

          else
          {
            outlined destroy of Any?(v234);
            v169 = 0;
            v170 = 1;
          }

          v168 = v169;
          if (v170)
          {
            v12 = v210;
            v13 = MediaML.logger.unsafeMutableAddressor();
            (*(v204 + 16))(v12, v13, v202);
            v136 = Logger.logObject.getter();
            v133 = v136;
            v135 = static os_log_type_t.error.getter();
            v134 = v135;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
            v137 = _allocateUninitializedArray<A>(_:)();
            if (os_log_type_enabled(v136, v135))
            {
              v14 = v201;
              v124 = static UnsafeMutablePointer.allocate(capacity:)();
              v120 = v124;
              v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v122 = 0;
              v125 = createStorage<A>(capacity:type:)(0);
              v123 = v125;
              v126 = createStorage<A>(capacity:type:)(v122);
              v232 = v124;
              v231 = v125;
              v230 = v126;
              v127 = 0;
              v128 = &v232;
              serialize(_:at:)(0, &v232);
              serialize(_:at:)(v127, v128);
              v229[4] = v137;
              v129 = &v33;
              MEMORY[0x28223BE20](&v33);
              v130 = &v33 - 6;
              *(&v33 - 4) = v15;
              *(&v33 - 3) = &v231;
              *(&v33 - 2) = &v230;
              v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
              lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
              Sequence.forEach(_:)();
              v132 = v14;
              if (v14)
              {
                __break(1u);
              }

              else
              {
                _os_log_impl(&dword_2586A4000, v133, v134, "rxRate in data dictionary is not of expected type Double", v120, 2u);
                v118 = 0;
                destroyStorage<A>(_:count:)(v123, 0, v121);
                destroyStorage<A>(_:count:)(v126, v118, MEMORY[0x277D84F70] + 8);
                MEMORY[0x259C87730](v120, MEMORY[0x277D84B78]);

                v119 = v132;
              }
            }

            else
            {

              v119 = v201;
            }

            v117 = v119;

            (*(v204 + 8))(v210, v202);
            v159 = 0;
            v160 = v117;
          }

          else
          {
            v166 = *kMediaML_txRate.unsafeMutableAddressor();

            v228 = v166;
            v167 = &v228;
            MEMORY[0x259C87380](v229);
            outlined destroy of String(v167);
            if (v229[3])
            {
              if (swift_dynamicCast())
              {
                v164 = v223;
                v165 = 0;
              }

              else
              {
                v164 = 0;
                v165 = 1;
              }

              v162 = v164;
              v163 = v165;
            }

            else
            {
              outlined destroy of Any?(v229);
              v162 = 0;
              v163 = 1;
            }

            v161 = v162;
            if (v163)
            {
              v8 = v212;
              v9 = MediaML.logger.unsafeMutableAddressor();
              (*(v204 + 16))(v8, v9, v202);
              v157 = Logger.logObject.getter();
              v154 = v157;
              v156 = static os_log_type_t.error.getter();
              v155 = v156;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
              v158 = _allocateUninitializedArray<A>(_:)();
              if (os_log_type_enabled(v157, v156))
              {
                v10 = v201;
                v145 = static UnsafeMutablePointer.allocate(capacity:)();
                v141 = v145;
                v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v143 = 0;
                v146 = createStorage<A>(capacity:type:)(0);
                v144 = v146;
                v147 = createStorage<A>(capacity:type:)(v143);
                v227 = v145;
                v226 = v146;
                v225 = v147;
                v148 = 0;
                v149 = &v227;
                serialize(_:at:)(0, &v227);
                serialize(_:at:)(v148, v149);
                v224 = v158;
                v150 = &v33;
                MEMORY[0x28223BE20](&v33);
                v151 = &v33 - 6;
                *(&v33 - 4) = v11;
                *(&v33 - 3) = &v226;
                *(&v33 - 2) = &v225;
                v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
                lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
                Sequence.forEach(_:)();
                v153 = v10;
                if (v10)
                {
                  __break(1u);
                }

                else
                {
                  _os_log_impl(&dword_2586A4000, v154, v155, "txRate in data dictionary is not of expected type Double", v141, 2u);
                  v139 = 0;
                  destroyStorage<A>(_:count:)(v144, 0, v142);
                  destroyStorage<A>(_:count:)(v147, v139, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x259C87730](v141, MEMORY[0x277D84B78]);

                  v140 = v153;
                }
              }

              else
              {

                v140 = v201;
              }

              v138 = v140;

              (*(v204 + 8))(v212, v202);
              v159 = 0;
              v160 = v138;
            }

            else
            {
              v159 = 1;
              v160 = v201;
            }
          }
        }
      }
    }

    else
    {
      v24 = v206;
      v25 = MediaML.logger.unsafeMutableAddressor();
      (*(v204 + 16))(v24, v25, v202);
      v73 = Logger.logObject.getter();
      v70 = v73;
      v72 = static os_log_type_t.error.getter();
      v71 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v74 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v73, v72))
      {
        v26 = v201;
        v61 = static UnsafeMutablePointer.allocate(capacity:)();
        v57 = v61;
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v59 = 0;
        v62 = createStorage<A>(capacity:type:)(0);
        v60 = v62;
        v63 = createStorage<A>(capacity:type:)(v59);
        v247 = v61;
        v246 = v62;
        v245 = v63;
        v64 = 0;
        v65 = &v247;
        serialize(_:at:)(0, &v247);
        serialize(_:at:)(v64, v65);
        v244[4] = v74;
        v66 = &v33;
        MEMORY[0x28223BE20](&v33);
        v67 = &v33 - 6;
        *(&v33 - 4) = v27;
        *(&v33 - 3) = &v246;
        *(&v33 - 2) = &v245;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v69 = v26;
        if (v26)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2586A4000, v70, v71, "appName in data dictionary is not of expected type String", v57, 2u);
          v55 = 0;
          destroyStorage<A>(_:count:)(v60, 0, v58);
          destroyStorage<A>(_:count:)(v63, v55, MEMORY[0x277D84F70] + 8);
          MEMORY[0x259C87730](v57, MEMORY[0x277D84B78]);

          v56 = v69;
        }
      }

      else
      {

        v56 = v201;
      }

      v54 = v56;

      (*(v204 + 8))(v206, v202);
      v159 = 0;
      v160 = v54;
    }
  }

  else
  {
    v28 = v205;
    v29 = MediaML.logger.unsafeMutableAddressor();
    (*(v204 + 16))(v28, v29, v202);
    v52 = Logger.logObject.getter();
    v49 = v52;
    v51 = static os_log_type_t.error.getter();
    v50 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v53 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v52, v51))
    {
      v30 = v201;
      v40 = static UnsafeMutablePointer.allocate(capacity:)();
      v36 = v40;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v38 = 0;
      v41 = createStorage<A>(capacity:type:)(0);
      v39 = v41;
      v42 = createStorage<A>(capacity:type:)(v38);
      v252 = v40;
      v251 = v41;
      v250 = v42;
      v43 = 0;
      v44 = &v252;
      serialize(_:at:)(0, &v252);
      serialize(_:at:)(v43, v44);
      v249[5] = v53;
      v45 = &v33;
      MEMORY[0x28223BE20](&v33);
      v46 = &v33 - 6;
      *(&v33 - 4) = v31;
      *(&v33 - 3) = &v251;
      *(&v33 - 2) = &v250;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v48 = v30;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2586A4000, v49, v50, "ssid in data dictionary is not of expected type String", v36, 2u);
        v34 = 0;
        destroyStorage<A>(_:count:)(v39, 0, v37);
        destroyStorage<A>(_:count:)(v42, v34, MEMORY[0x277D84F70] + 8);
        MEMORY[0x259C87730](v36, MEMORY[0x277D84B78]);

        v35 = v48;
      }
    }

    else
    {

      v35 = v201;
    }

    v33 = v35;

    (*(v204 + 8))(v205, v202);
    v159 = 0;
    v160 = v33;
  }

  return v159;
}

void *MediaML.prepareWifiDataForPrediction(data:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v82 = a1;
  v53 = "Fatal error";
  v54 = "Unexpectedly found nil while unwrapping an Optional value";
  v55 = "MediaML/MediaML.swift";
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v111 = 0;
  v112 = 0;
  v106 = 0;
  v101 = 0;
  v96 = 0;
  v91 = 0.0;
  v86 = 0.0;
  v85 = 0;
  v84 = 0;
  v57 = 0;
  v72 = type metadata accessor for Calendar.Component();
  v64 = *(v72 - 8);
  v65 = v72 - 8;
  v56 = (v64[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v75 = v10 - v56;
  v77 = type metadata accessor for Calendar();
  v66 = *(v77 - 8);
  v67 = v77 - 8;
  v58 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v76 = v10 - v58;
  v59 = type metadata accessor for Date();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v82);
  v71 = v10 - v62;
  v122 = v10 - v62;
  v121 = v2;
  v120 = v63;
  Date.init()();
  static Calendar.current.getter();
  v3 = *MEMORY[0x277CC9980];
  v70 = v64[13];
  v69 = v64 + 13;
  v70(v75, v3, v72);
  v4 = Calendar.component(_:from:)();
  v5 = v76;
  v68 = v4;
  v74 = v64[1];
  v73 = v64 + 1;
  v74(v75, v72);
  v79 = *(v66 + 8);
  v78 = v66 + 8;
  v79(v5, v77);
  v119 = v68;
  static Calendar.current.getter();
  v70(v75, *MEMORY[0x277CC99B8], v72);
  v80 = Calendar.component(_:from:)();
  v74(v75, v72);
  v79(v76, v77);
  v118 = v80;
  v81 = *kMediaML_ssid.unsafeMutableAddressor();

  v83 = &v115;
  v115 = v81;
  MEMORY[0x259C87380](v116);
  outlined destroy of String(v83);
  if (!v116[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v45 = v117;
  outlined init with take of Any(v116, v117);
  v50 = MEMORY[0x277D84F70] + 8;
  v49 = MEMORY[0x277D837D0];
  swift_dynamicCast();
  v46 = v113;
  v47 = v114;
  v111 = v113;
  v112 = v114;
  v48 = *kMediaML_appName.unsafeMutableAddressor();

  v51 = &v108;
  v108 = v48;
  MEMORY[0x259C87380](v109);
  outlined destroy of String(v51);
  if (!v109[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v39 = v110;
  outlined init with take of Any(v109, v110);
  v43 = MEMORY[0x277D84F70] + 8;
  v42 = MEMORY[0x277D837D0];
  swift_dynamicCast();
  v40 = v107;
  v106 = v107;
  v41 = *kMediaML_rssi.unsafeMutableAddressor();

  v44 = &v103;
  v103 = v41;
  MEMORY[0x259C87380](v104);
  outlined destroy of String(v44);
  if (!v104[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v34 = v105;
  outlined init with take of Any(v104, v105);
  v37 = MEMORY[0x277D84F70] + 8;
  swift_dynamicCast();
  v35 = v102;
  v101 = v102;
  v36 = *kMediaML_noise.unsafeMutableAddressor();

  v38 = &v98;
  v98 = v36;
  MEMORY[0x259C87380](v99);
  outlined destroy of String(v38);
  if (!v99[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v29 = v100;
  outlined init with take of Any(v99, v100);
  v32 = MEMORY[0x277D84F70] + 8;
  swift_dynamicCast();
  v30 = v97;
  v96 = v97;
  v31 = *kMediaML_rxRate.unsafeMutableAddressor();

  v33 = &v93;
  v93 = v31;
  MEMORY[0x259C87380](v94);
  outlined destroy of String(v33);
  if (!v94[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v24 = v95;
  outlined init with take of Any(v94, v95);
  v27 = MEMORY[0x277D84F70] + 8;
  swift_dynamicCast();
  v25 = v92;
  v91 = v92;
  v26 = *kMediaML_txRate.unsafeMutableAddressor();

  v28 = &v88;
  v88 = v26;
  MEMORY[0x259C87380](v89);
  outlined destroy of String(v28);
  if (!v89[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v22 = v90;
  outlined init with take of Any(v89, v90);
  swift_dynamicCast();
  v23 = v87;
  v86 = v87;
  if (v35 >= *rssiBucket_low_medium_boundary.unsafeMutableAddressor())
  {
    if (v35 >= *rssiBucket_low_medium_boundary.unsafeMutableAddressor() && v35 < *rssiBucket_medium_high_boundary.unsafeMutableAddressor())
    {
      v17 = *rssiBucket_medium.unsafeMutableAddressor();

      v85 = v17;
      v18 = v17;
    }

    else
    {
      v16 = *rssiBucket_high.unsafeMutableAddressor();

      v85 = v16;
      v18 = v16;
    }

    v21 = v18;
  }

  else
  {
    v20 = *rssiBucket_low.unsafeMutableAddressor();

    v85 = v20;
    v21 = v20;
  }

  v12 = v21;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", 1uLL, 1);
  v10[1] = v6._object;
  v11 = MEMORY[0x259C87450](v46, v47, v6._countAndFlagsBits);
  v13 = v7;

  v14._countAndFlagsBits = MEMORY[0x259C87450](v11, v13, v12._countAndFlagsBits, v12._object);
  v14._object = v8;

  v84 = v14;
  v15 = &v123;
  WiFiDataPointForPrediciton.init(appName:bucketedSSID:hour:dow:rssi:noise:txRate:rxRate:)(&v123, v40, v14, v68, v80, v35, v30, v23, v25);
  outlined destroy of String(&v85);

  (*(v60 + 8))(v71, v59);
  return memcpy(v52, v15, 0x50uLL);
}

uint64_t MediaML.validateCellDataForPrediction(data:)(uint64_t a1)
{
  v80 = a1;
  v98 = 0;
  v97 = 0;
  v71 = 0;
  v72 = type metadata accessor for Logger();
  v73 = *(v72 - 8);
  v74 = v73;
  v75 = *(v73 + 64);
  v2 = MEMORY[0x28223BE20](v80);
  v77 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = &v13 - v77;
  v3 = MEMORY[0x28223BE20](v2);
  v78 = &v13 - v77;
  v98 = v3;
  v97 = v1;
  v79 = *kMediaML_carrier.unsafeMutableAddressor();

  v95 = v79;
  v81 = &v95;
  MEMORY[0x259C87380](v96);
  outlined destroy of String(v81);
  if (v96[3])
  {
    if (swift_dynamicCast())
    {
      v69 = v82;
      v70 = v83;
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    v67 = v69;
    v68 = v70;
  }

  else
  {
    outlined destroy of Any?(v96);
    v67 = 0;
    v68 = 0;
  }

  v66 = v68;
  if (v68)
  {
    v65 = v66;

    v63 = *kMediaML_appName.unsafeMutableAddressor();

    v90 = v63;
    v64 = &v90;
    MEMORY[0x259C87380](v91);
    outlined destroy of String(v64);
    if (v91[3])
    {
      if (swift_dynamicCast())
      {
        v61 = v84;
        v62 = v85;
      }

      else
      {
        v61 = 0;
        v62 = 0;
      }

      v59 = v61;
      v60 = v62;
    }

    else
    {
      outlined destroy of Any?(v91);
      v59 = 0;
      v60 = 0;
    }

    v58 = v60;
    if (v60)
    {
      v57 = v58;

      v55 = 1;
      v56 = v71;
    }

    else
    {
      v4 = v78;
      v5 = MediaML.logger.unsafeMutableAddressor();
      (*(v74 + 16))(v4, v5, v72);
      v53 = Logger.logObject.getter();
      v50 = v53;
      v52 = static os_log_type_t.error.getter();
      v51 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v54 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v53, v52))
      {
        v6 = v71;
        v41 = static UnsafeMutablePointer.allocate(capacity:)();
        v37 = v41;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v39 = 0;
        v42 = createStorage<A>(capacity:type:)(0);
        v40 = v42;
        v43 = createStorage<A>(capacity:type:)(v39);
        v89 = v41;
        v88 = v42;
        v87 = v43;
        v44 = 0;
        v45 = &v89;
        serialize(_:at:)(0, &v89);
        serialize(_:at:)(v44, v45);
        v86 = v54;
        v46 = &v13;
        MEMORY[0x28223BE20](&v13);
        v47 = &v13 - 6;
        *(&v13 - 4) = v7;
        *(&v13 - 3) = &v88;
        *(&v13 - 2) = &v87;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v49 = v6;
        if (v6)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2586A4000, v50, v51, "appName in data dictionary is not of expected type String", v37, 2u);
          v35 = 0;
          destroyStorage<A>(_:count:)(v40, 0, v38);
          destroyStorage<A>(_:count:)(v43, v35, MEMORY[0x277D84F70] + 8);
          MEMORY[0x259C87730](v37, MEMORY[0x277D84B78]);

          v36 = v49;
        }
      }

      else
      {

        v36 = v71;
      }

      v34 = v36;

      (*(v74 + 8))(v78, v72);
      v55 = 0;
      v56 = v34;
    }
  }

  else
  {
    v8 = v76;
    v9 = MediaML.logger.unsafeMutableAddressor();
    (*(v74 + 16))(v8, v9, v72);
    v32 = Logger.logObject.getter();
    v29 = v32;
    v31 = static os_log_type_t.error.getter();
    v30 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v33 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v32, v31))
    {
      v10 = v71;
      v20 = static UnsafeMutablePointer.allocate(capacity:)();
      v16 = v20;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v18 = 0;
      v21 = createStorage<A>(capacity:type:)(0);
      v19 = v21;
      v22 = createStorage<A>(capacity:type:)(v18);
      v94 = v20;
      v93 = v21;
      v92 = v22;
      v23 = 0;
      v24 = &v94;
      serialize(_:at:)(0, &v94);
      serialize(_:at:)(v23, v24);
      v91[5] = v33;
      v25 = &v13;
      MEMORY[0x28223BE20](&v13);
      v26 = &v13 - 6;
      *(&v13 - 4) = v11;
      *(&v13 - 3) = &v93;
      *(&v13 - 2) = &v92;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v28 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2586A4000, v29, v30, "carrier in data dictionary is not of expected type String", v16, 2u);
        v14 = 0;
        destroyStorage<A>(_:count:)(v19, 0, v17);
        destroyStorage<A>(_:count:)(v22, v14, MEMORY[0x277D84F70] + 8);
        MEMORY[0x259C87730](v16, MEMORY[0x277D84B78]);

        v15 = v28;
      }
    }

    else
    {

      v15 = v71;
    }

    v13 = v15;

    (*(v74 + 8))(v76, v72);
    v55 = 0;
    v56 = v13;
  }

  return v55;
}

void *MediaML.prepareCellDataForPrediction(data:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v92 = 0;
  v87 = 0;
  v82 = 0;
  v77 = 0;
  v72 = 0;
  v67 = 0;
  v62 = 0;
  v57 = 0;
  v93 = a1;
  v48 = *kMediaML_carrier.unsafeMutableAddressor();

  v89 = v48;
  MEMORY[0x259C87380](v90);
  outlined destroy of String(&v89);
  if (!v90[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v90, v91);
  swift_dynamicCast();
  carrier = v88;
  v87 = v88;
  v46 = *kMediaML_appName.unsafeMutableAddressor();

  v84 = v46;
  MEMORY[0x259C87380](v85);
  outlined destroy of String(&v84);
  if (!v85[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v85, v86);
  swift_dynamicCast();
  appName = v83;
  v82 = v83;
  v44 = *kMediaML_rssi.unsafeMutableAddressor();

  v80 = v44;
  MEMORY[0x259C87380](v81);
  outlined destroy of String(&v80);
  if (v81[3])
  {
    if (swift_dynamicCast())
    {
      v41 = v49;
      v42 = 0;
    }

    else
    {
      v41 = 0;
      v42 = 1;
    }

    v39 = v41;
    v40 = v42;
  }

  else
  {
    outlined destroy of Any?(v81);
    v39 = 0;
    v40 = 1;
  }

  v78 = v39;
  v79 = v40 & 1;
  if (v40)
  {
    v38 = 0;
  }

  else
  {
    v38 = v78;
  }

  v77 = v38;
  v37 = *kMediaML_rsrp.unsafeMutableAddressor();

  v75 = v37;
  MEMORY[0x259C87380](v76);
  outlined destroy of String(&v75);
  if (v76[3])
  {
    if (swift_dynamicCast())
    {
      v35 = v50;
      v36 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 1;
    }

    v33 = v35;
    v34 = v36;
  }

  else
  {
    outlined destroy of Any?(v76);
    v33 = 0;
    v34 = 1;
  }

  v73 = v33;
  v74 = v34 & 1;
  if (v34)
  {
    v32 = 0;
  }

  else
  {
    v32 = v73;
  }

  v72 = v32;
  v31 = *kMediaML_rsrq.unsafeMutableAddressor();

  v70 = v31;
  MEMORY[0x259C87380](v71);
  outlined destroy of String(&v70);
  if (v71[3])
  {
    if (swift_dynamicCast())
    {
      v29 = v51;
      v30 = 0;
    }

    else
    {
      v29 = 0;
      v30 = 1;
    }

    v27 = v29;
    v28 = v30;
  }

  else
  {
    outlined destroy of Any?(v71);
    v27 = 0;
    v28 = 1;
  }

  v68 = v27;
  v69 = v28 & 1;
  if (v28)
  {
    v26 = 0;
  }

  else
  {
    v26 = v68;
  }

  v67 = v26;
  v25 = *kMediaML_rscp.unsafeMutableAddressor();

  v65 = v25;
  MEMORY[0x259C87380](v66);
  outlined destroy of String(&v65);
  if (v66[3])
  {
    if (swift_dynamicCast())
    {
      v23 = v52;
      v24 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 1;
    }

    v21 = v23;
    v22 = v24;
  }

  else
  {
    outlined destroy of Any?(v66);
    v21 = 0;
    v22 = 1;
  }

  v63 = v21;
  v64 = v22 & 1;
  if (v22)
  {
    v20 = 0;
  }

  else
  {
    v20 = v63;
  }

  v62 = v20;
  v19 = *kMediaML_snr.unsafeMutableAddressor();

  v60 = v19;
  MEMORY[0x259C87380](v61);
  outlined destroy of String(&v60);
  if (v61[3])
  {
    if (swift_dynamicCast())
    {
      v17 = v53;
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    v15 = v17;
    v16 = v18;
  }

  else
  {
    outlined destroy of Any?(v61);
    v15 = 0;
    v16 = 1;
  }

  v58 = v15;
  v59 = v16 & 1;
  if (v16)
  {
    v14 = 0;
  }

  else
  {
    v14 = v58;
  }

  v57 = v14;
  v13 = *kMediaML_bars.unsafeMutableAddressor();

  v55 = v13;
  MEMORY[0x259C87380](v56);
  outlined destroy of String(&v55);
  if (v56[3])
  {
    if (swift_dynamicCast())
    {
      v11 = v54;
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 1;
    }

    v9 = v11;
    v10 = v12;
  }

  else
  {
    outlined destroy of Any?(v56);
    v9 = 0;
    v10 = 1;
  }

  if (v10)
  {
    bars = 0;
  }

  else
  {
    bars = v9;
  }

  v7 = *cell_signal_binsize.unsafeMutableAddressor();
  if (!v7)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v38 == 0x8000000000000000 && v7 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v6 = *cell_signal_binsize.unsafeMutableAddressor();
  if (!v6)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v32 == 0x8000000000000000 && v6 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = *cell_signal_binsize.unsafeMutableAddressor();
  if (!v5)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v26 == 0x8000000000000000 && v5 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v4 = *cell_signal_binsize.unsafeMutableAddressor();
  if (!v4)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v20 == 0x8000000000000000 && v4 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v3 = *cell_snr_binsize.unsafeMutableAddressor();
  if (!v3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v14 == 0x8000000000000000 && v3 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  CellDataPointForPrediction.init(appName:carrier:binnedRssi:binnedRsrp:binnedRscp:binnedRsrq:binnedSnr:bars:)(&v94, appName, carrier, v38 / v7, v32 / v6, v20 / v4, v26 / v5, v14 / v3, bars);
  return memcpy(a2, &v94, 0x50uLL);
}

uint64_t MediaML.getPredictionDictionary(data:)(uint64_t a1)
{
  *(v2 + 488) = v1;
  *(v2 + 480) = a1;
  *(v2 + 368) = v2;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  *(v2 + 392) = 0;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  *(v2 + 440) = 0;
  *(v2 + 448) = 0;
  *(v2 + 464) = 0;
  v3 = type metadata accessor for Logger();
  *(v2 + 496) = v3;
  v6 = *(v3 - 8);
  *(v2 + 504) = v6;
  v7 = *(v6 + 64);
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  *(v2 + 376) = a1;
  *(v2 + 384) = v1;
  v4 = swift_task_alloc();
  *(v8 + 528) = v4;
  *v4 = *(v8 + 368);
  v4[1] = MediaML.getPredictionDictionary(data:);

  return MediaML.getPrediction(data:)(a1);
}

uint64_t MediaML.getPredictionDictionary(data:)(uint64_t a1, char a2)
{
  v15 = *v3;
  v13 = (*v3 + 16);
  v14 = *v3 + 368;
  v5 = *(*v3 + 528);
  *(v15 + 368) = *v3;
  *(v15 + 536) = v2;
  *(v15 + 544) = a1;
  *(v15 + 329) = a2;

  if (v2)
  {
    v8 = v13[63];
    v12 = v13[62];

    v10 = *(*v14 + 8);

    return v10(v9);
  }

  else
  {
    v6 = v13[59];
    v7 = *v14;

    return MEMORY[0x2822009F8](MediaML.getPredictionDictionary(data:), v6, 0);
  }
}

uint64_t MediaML.getPredictionDictionary(data:)()
{
  v1 = *(v0 + 329);
  v2 = *(v0 + 544);
  v78 = *(v0 + 480);
  *(v0 + 368) = v0;
  *(v0 + 320) = v2;
  *(v0 + 328) = v1 & 1;
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SdtMd, &_sSS_SdtMR);
  _allocateUninitializedArray<A>(_:)();
  v75 = v3;
  v4 = kMediaML_throughputPrediction.unsafeMutableAddressor();
  outlined init with copy of String(v4, v75);
  v75[2] = 0;
  v5 = kMediaML_throughputStdDev.unsafeMutableAddressor();
  outlined init with copy of String(v5, v75 + 3);
  v75[5] = 0;
  _finalizeUninitializedArray<A>(_:)();
  v76 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 560) = v76;
  *(v0 + 392) = v76;
  v77 = *kMediaML_interfaceType.unsafeMutableAddressor();

  *(v0 + 304) = v77;
  MEMORY[0x259C87380]();
  outlined destroy of String(v0 + 304);
  if (*(v0 + 200))
  {
    if (swift_dynamicCast())
    {
      v72 = *(v74 + 472);
      v73 = 0;
    }

    else
    {
      v72 = 0;
      v73 = 1;
    }

    v70 = v72;
    v71 = v73;
  }

  else
  {
    outlined destroy of Any?((v74 + 176));
    v70 = 0;
    v71 = 1;
  }

  v6 = *(v74 + 329);
  *(v74 + 336) = v70;
  *(v74 + 344) = v71 & 1;
  *(v74 + 352) = 0;
  *(v74 + 360) = 1;
  if (v6)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (*(v74 + 544) < 0.0)
  {
    v20 = *(v74 + 520);
    v37 = *(v74 + 496);
    v36 = *(v74 + 504);
    v21 = MediaML.logger.unsafeMutableAddressor();
    (*(v36 + 16))(v20, v21, v37);
    oslog = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v40 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v38))
    {
      v22 = *(v74 + 536);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = createStorage<A>(capacity:type:)(0);
      v34 = createStorage<A>(capacity:type:)(0);
      *(v74 + 400) = buf;
      *(v74 + 408) = v33;
      *(v74 + 416) = v34;
      serialize(_:at:)(0, (v74 + 400));
      serialize(_:at:)(0, (v74 + 400));
      *(v74 + 424) = v40;
      v35 = swift_task_alloc();
      v35[2] = v74 + 400;
      v35[3] = v74 + 408;
      v35[4] = v74 + 416;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v22)
      {
      }

      _os_log_impl(&dword_2586A4000, oslog, v38, "Failed to get prediction from model", buf, 2u);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v28 = *(v74 + 520);
    v29 = *(v74 + 496);
    v27 = *(v74 + 504);
    MEMORY[0x277D82BD8](oslog);
    (*(v27 + 8))(v28, v29);

    v30 = _dictionaryUpCast<A, B, C, D>(_:)();

    v58 = v30;
    goto LABEL_48;
  }

  v80 = *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor();
  if ((v71 & 1) != 0 || v80 != v70)
  {
    v79 = *kMediaML_InterfaceType_Cellular.unsafeMutableAddressor();
    if ((v71 & 1) != 0 || v79 != v70)
    {

      v41 = _dictionaryUpCast<A, B, C, D>(_:)();

      v58 = v41;
LABEL_48:
      v23 = *(v74 + 520);
      v26 = *(v74 + 512);

      v24 = *(*(v74 + 368) + 8);
      v25 = *(v74 + 368);

      return v24(v58);
    }

    v54 = *(v74 + 488);
    MediaML.prepareCellDataForPrediction(data:)(*(v74 + 480), (v74 + 16));
    swift_beginAccess();
    v55 = *(v54 + 112);

    swift_endAccess();
    *(v74 + 432) = v55;
    if (!*(v74 + 432))
    {
      outlined destroy of DataWriter?((v74 + 432));
      *(v74 + 352) = 0x3FF0000000000000;
      *(v74 + 360) = 0;
      v14 = *(v74 + 552);
      v51 = *(v74 + 329);
      v50 = *(v74 + 544);
      _allocateUninitializedArray<A>(_:)();
      v49 = v15;
      v16 = kMediaML_throughputPrediction.unsafeMutableAddressor();
      outlined init with copy of String(v16, v49);
      if (v51)
      {
        v49[2] = 0;
      }

      else
      {
        v49[2] = v50;
      }

      v18 = kMediaML_throughputStdDev.unsafeMutableAddressor();
      outlined init with copy of String(v18, v49 + 3);
      v49[5] = 0x3FF0000000000000;
      v42 = *(v74 + 560);
      v19 = *(v74 + 552);
      _finalizeUninitializedArray<A>(_:)();
      *(v74 + 440) = Dictionary.init(dictionaryLiteral:)();

      v43 = _dictionaryUpCast<A, B, C, D>(_:)();

      outlined destroy of CellDataPointForPrediction(v74 + 16);

      v58 = v43;
      goto LABEL_48;
    }

    outlined destroy of DataWriter?((v74 + 432));
    v52 = *(v74 + 488);
    swift_beginAccess();
    v53 = *(v52 + 112);
    *(v74 + 616) = v53;

    swift_endAccess();
    if (v53)
    {
      v48 = *(v74 + 16);
      v44 = *(v74 + 24);
      *(v74 + 624) = v44;

      v45 = *(v74 + 32);
      v46 = *(v74 + 40);
      *(v74 + 632) = v46;

      v47 = *(v74 + 88);
      v17 = swift_task_alloc();
      *(v74 + 640) = v17;
      *v17 = *(v74 + 368);
      v17[1] = MediaML.getPredictionDictionary(data:);

      return DataWriter.readCellStdDev(appName:carrier:bars:)(v48, v44, v45, v46, v47);
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v68 = *(v74 + 488);
  MediaML.prepareWifiDataForPrediction(data:)(*(v74 + 480), (v74 + 96));
  swift_beginAccess();
  v69 = *(v68 + 112);

  swift_endAccess();
  *(v74 + 456) = v69;
  if (!*(v74 + 456))
  {
    outlined destroy of DataWriter?((v74 + 456));
    *(v74 + 352) = 0x3FF0000000000000;
    *(v74 + 360) = 0;
    v7 = *(v74 + 552);
    v65 = *(v74 + 329);
    v64 = *(v74 + 544);
    _allocateUninitializedArray<A>(_:)();
    v63 = v8;
    v9 = kMediaML_throughputPrediction.unsafeMutableAddressor();
    outlined init with copy of String(v9, v63);
    if (v65)
    {
      v63[2] = 0;
    }

    else
    {
      v63[2] = v64;
    }

    v12 = kMediaML_throughputStdDev.unsafeMutableAddressor();
    outlined init with copy of String(v12, v63 + 3);
    v63[5] = 0x3FF0000000000000;
    v56 = *(v74 + 560);
    v13 = *(v74 + 552);
    _finalizeUninitializedArray<A>(_:)();
    *(v74 + 464) = Dictionary.init(dictionaryLiteral:)();

    v57 = _dictionaryUpCast<A, B, C, D>(_:)();

    outlined destroy of WiFiDataPointForPrediciton(v74 + 96);

    v58 = v57;
    goto LABEL_48;
  }

  outlined destroy of DataWriter?((v74 + 456));
  v66 = *(v74 + 488);
  swift_beginAccess();
  v67 = *(v66 + 112);
  *(v74 + 568) = v67;

  swift_endAccess();
  if (!v67)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v62 = *(v74 + 96);
  v59 = *(v74 + 104);
  *(v74 + 576) = v59;

  v60 = *(v74 + 112);
  v61 = *(v74 + 120);
  *(v74 + 584) = v61;

  v10 = swift_task_alloc();
  *(v74 + 592) = v10;
  *v10 = *(v74 + 368);
  v10[1] = MediaML.getPredictionDictionary(data:);

  return DataWriter.readWiFiStdDev(appName:ssid:)(v62, v59, v60, v61);
}

{
  v14 = *(v0 + 600);
  *(v0 + 368) = v0;
  *(v0 + 352) = v14;
  *(v0 + 360) = 0;
  v1 = *(v0 + 552);
  v17 = *(v0 + 329);
  v16 = *(v0 + 544);
  _allocateUninitializedArray<A>(_:)();
  v15 = v2;
  v3 = kMediaML_throughputPrediction.unsafeMutableAddressor();
  outlined init with copy of String(v3, v15);
  if (v17)
  {
    v15[2] = 0;
  }

  else
  {
    v15[2] = v16;
  }

  v4 = kMediaML_throughputStdDev.unsafeMutableAddressor();
  outlined init with copy of String(v4, v15 + 3);
  v15[5] = v14;
  v10 = v13[70];
  v5 = v13[69];
  _finalizeUninitializedArray<A>(_:)();
  v13[58] = Dictionary.init(dictionaryLiteral:)();

  v12 = _dictionaryUpCast<A, B, C, D>(_:)();

  outlined destroy of WiFiDataPointForPrediciton((v13 + 12));

  v6 = v13[65];
  v11 = v13[64];

  v7 = *(v13[46] + 8);
  v8 = v13[46];

  return v7(v12);
}

{
  v14 = *(v0 + 648);
  *(v0 + 368) = v0;
  *(v0 + 352) = v14;
  *(v0 + 360) = 0;
  v1 = *(v0 + 552);
  v17 = *(v0 + 329);
  v16 = *(v0 + 544);
  _allocateUninitializedArray<A>(_:)();
  v15 = v2;
  v3 = kMediaML_throughputPrediction.unsafeMutableAddressor();
  outlined init with copy of String(v3, v15);
  if (v17)
  {
    v15[2] = 0;
  }

  else
  {
    v15[2] = v16;
  }

  v4 = kMediaML_throughputStdDev.unsafeMutableAddressor();
  outlined init with copy of String(v4, v15 + 3);
  v15[5] = v14;
  v10 = v13[70];
  v5 = v13[69];
  _finalizeUninitializedArray<A>(_:)();
  v13[55] = Dictionary.init(dictionaryLiteral:)();

  v12 = _dictionaryUpCast<A, B, C, D>(_:)();

  outlined destroy of CellDataPointForPrediction((v13 + 2));

  v6 = v13[65];
  v11 = v13[64];

  v7 = *(v13[46] + 8);
  v8 = v13[46];

  return v7(v12);
}

{
  v39 = v0;
  v1 = v0[73];
  v20 = v0[72];
  v21 = v0[71];
  v0[46] = v0;

  outlined destroy of WiFiDataPointForPrediciton((v0 + 12));
  v24 = v0[76];
  v2 = v0[64];
  v22 = v0[63];
  v23 = v0[62];
  MEMORY[0x259C87ED0]();
  v0[56] = v24;
  v3 = MediaML.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v2, v3, v23);
  MEMORY[0x259C87ED0](v24);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #5 in MediaML.getPredictionDictionary(data:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v4;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(1);
    v18 = createStorage<A>(capacity:type:)(0);
    v34 = buf;
    v35 = v17;
    v36 = v18;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_2586A4000, oslog, v33, "Failed to get prediction from model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v17, 1, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v19[70];
  v10 = v19[64];
  v11 = v19[62];
  v9 = v19[63];
  MEMORY[0x277D82BD8](oslog);
  (*(v9 + 8))(v10, v11);

  v14 = _dictionaryUpCast<A, B, C, D>(_:)();

  MEMORY[0x259C87EC0](v24);
  MEMORY[0x259C87EC0](v24);

  v5 = v19[65];
  v13 = v19[64];

  v6 = *(v19[46] + 8);
  v7 = v19[46];

  return v6(v14);
}

{
  v39 = v0;
  v1 = v0[79];
  v20 = v0[78];
  v21 = v0[77];
  v0[46] = v0;

  outlined destroy of CellDataPointForPrediction((v0 + 2));
  v24 = v0[82];
  v2 = v0[64];
  v22 = v0[63];
  v23 = v0[62];
  MEMORY[0x259C87ED0]();
  v0[56] = v24;
  v3 = MediaML.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v2, v3, v23);
  MEMORY[0x259C87ED0](v24);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #5 in MediaML.getPredictionDictionary(data:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v4;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(1);
    v18 = createStorage<A>(capacity:type:)(0);
    v34 = buf;
    v35 = v17;
    v36 = v18;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_2586A4000, oslog, v33, "Failed to get prediction from model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v17, 1, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v19[70];
  v10 = v19[64];
  v11 = v19[62];
  v9 = v19[63];
  MEMORY[0x277D82BD8](oslog);
  (*(v9 + 8))(v10, v11);

  v14 = _dictionaryUpCast<A, B, C, D>(_:)();

  MEMORY[0x259C87EC0](v24);
  MEMORY[0x259C87EC0](v24);

  v5 = v19[65];
  v13 = v19[64];

  v6 = *(v19[46] + 8);
  v7 = v19[46];

  return v6(v14);
}

uint64_t MediaML.getPredictionDictionary(data:)(double a1)
{
  v15 = *v2;
  v13 = (*v2 + 16);
  v14 = (v15 + 368);
  v3 = *(*v2 + 592);
  *(v15 + 368) = *v2;
  *(v15 + 600) = a1;
  *(v15 + 608) = v1;

  if (v1)
  {
    v5 = v13[59];
    v8 = *v14;
    v7 = MediaML.getPredictionDictionary(data:);
  }

  else
  {
    v4 = v13[71];
    v10 = v13[70];
    v11 = v13[69];
    v12 = v13[59];

    v5 = v12;
    v6 = *v14;
    v7 = MediaML.getPredictionDictionary(data:);
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

{
  v15 = *v2;
  v13 = (*v2 + 16);
  v14 = (v15 + 368);
  v3 = *(*v2 + 640);
  *(v15 + 368) = *v2;
  *(v15 + 648) = a1;
  *(v15 + 656) = v1;

  if (v1)
  {
    v5 = v13[59];
    v8 = *v14;
    v7 = MediaML.getPredictionDictionary(data:);
  }

  else
  {
    v4 = v13[77];
    v10 = v13[76];
    v11 = v13[75];
    v12 = v13[59];

    v5 = v12;
    v6 = *v14;
    v7 = MediaML.getPredictionDictionary(data:);
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

uint64_t MediaML.getPrediction(data:)(uint64_t a1)
{
  v2[39] = v1;
  v2[38] = a1;
  v2[28] = v2;
  v2[29] = 0;
  v2[30] = 0;
  v2[35] = 0;
  v2[36] = 0;
  v3 = type metadata accessor for Logger();
  v2[40] = v3;
  v6 = *(v3 - 8);
  v2[41] = v6;
  v7 = *(v6 + 64);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[29] = a1;
  v2[30] = v8;
  v4 = v2[28];

  return MEMORY[0x2822009F8](MediaML.getPrediction(data:), v8, 0);
}

uint64_t MediaML.getPrediction(data:)()
{
  v131 = v0;
  countAndFlagsBits = v0[19]._countAndFlagsBits;
  v0[14]._countAndFlagsBits = v0;
  v113 = *kMediaML_interfaceType.unsafeMutableAddressor();

  v0[13] = v113;
  MEMORY[0x259C87380]();
  outlined destroy of String(&v0[13]);
  if (v0[12]._object)
  {
    if (swift_dynamicCast())
    {
      v110 = *(v112 + 296);
      v111 = 0;
    }

    else
    {
      v110 = 0;
      v111 = 1;
    }

    v108 = v110;
    v109 = v111;
  }

  else
  {
    outlined destroy of Any?((v112 + 176));
    v108 = 0;
    v109 = 1;
  }

  if (v109)
  {
    v22 = *(v112 + 344);
    v39 = *(v112 + 320);
    v38 = *(v112 + 328);
    v23 = MediaML.logger.unsafeMutableAddressor();
    (*(v38 + 16))(v22, v23, v39);
    v41 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v42 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v41, v40))
    {
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v35 = createStorage<A>(capacity:type:)(0);
      v36 = createStorage<A>(capacity:type:)(0);
      *(v112 + 248) = v34;
      *(v112 + 256) = v35;
      *(v112 + 264) = v36;
      serialize(_:at:)(0, (v112 + 248));
      serialize(_:at:)(0, (v112 + 248));
      *(v112 + 272) = v42;
      v37 = swift_task_alloc();
      v37[2] = v112 + 248;
      v37[3] = v112 + 256;
      v37[4] = v112 + 264;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v41, v40, "Wrong / No interface Type provided.", v34, 2u);
      destroyStorage<A>(_:count:)(v35, 0, v33);
      destroyStorage<A>(_:count:)(v36, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v34, MEMORY[0x277D84B78]);
    }

    v31 = *(v112 + 344);
    v32 = *(v112 + 320);
    v30 = *(v112 + 328);
    MEMORY[0x277D82BD8](v41);
    (*(v30 + 8))(v31, v32);
    goto LABEL_45;
  }

  *(v112 + 280) = v108;
  if (v108 != *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor() && v108 != *kMediaML_InterfaceType_Cellular.unsafeMutableAddressor())
  {
    v19 = *(v112 + 352);
    v51 = *(v112 + 320);
    v50 = *(v112 + 328);
    v20 = MediaML.logger.unsafeMutableAddressor();
    (*(v50 + 16))(v19, v20, v51);
    v52 = swift_allocObject();
    *(v52 + 16) = v108;
    log = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for implicit closure #2 in MediaML.getPrediction(data:);
    *(v53 + 24) = v52;
    v56 = swift_allocObject();
    *(v56 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v56 + 24) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v57 = v21;

    *v57 = closure #1 in OSLogArguments.append(_:)partial apply;
    v57[1] = v54;

    v57[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v57[3] = v55;

    v57[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v57[5] = v56;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v59))
    {
      v47 = static UnsafeMutablePointer.allocate(capacity:)();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v48 = createStorage<A>(capacity:type:)(0);
      v49 = createStorage<A>(capacity:type:)(0);
      v115 = v47;
      v116 = v48;
      v117 = v49;
      serialize(_:at:)(0, &v115);
      serialize(_:at:)(1, &v115);
      v118 = closure #1 in OSLogArguments.append(_:)partial apply;
      v119 = v54;
      closure #1 in osLogInternal(_:log:type:)(&v118, &v115, &v116, &v117);
      v118 = closure #1 in OSLogArguments.append(_:)partial apply;
      v119 = v55;
      closure #1 in osLogInternal(_:log:type:)(&v118, &v115, &v116, &v117);
      v118 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v119 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v118, &v115, &v116, &v117);
      _os_log_impl(&dword_2586A4000, log, v59, "Expected interfaceType to be in (3,5) but got %ld", v47, 0xCu);
      destroyStorage<A>(_:count:)(v48, 0, v46);
      destroyStorage<A>(_:count:)(v49, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v47, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v44 = *(v112 + 352);
    v45 = *(v112 + 320);
    v43 = *(v112 + 328);
    MEMORY[0x277D82BD8](log);
    (*(v43 + 8))(v44, v45);
    goto LABEL_45;
  }

  v1 = *(v112 + 360);
  v92 = *(v112 + 320);
  v93 = *(v112 + 304);
  v91 = *(v112 + 328);
  v2 = MediaML.logger.unsafeMutableAddressor();
  v3 = *(v91 + 16);
  *(v112 + 368) = v3;
  *(v112 + 376) = (v91 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v92);
  v95 = swift_allocObject();
  *(v95 + 16) = v108;

  v94 = swift_allocObject();
  *(v94 + 16) = v93;

  v97 = swift_allocObject();
  *(v97 + 16) = partial apply for implicit closure #4 in MediaML.getPrediction(data:);
  *(v97 + 24) = v94;

  oslog = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = 8;
  v96 = swift_allocObject();
  *(v96 + 16) = partial apply for implicit closure #3 in MediaML.getPrediction(data:);
  *(v96 + 24) = v95;
  v101 = swift_allocObject();
  *(v101 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v101 + 24) = v96;
  v102 = swift_allocObject();
  *(v102 + 16) = 32;
  v103 = swift_allocObject();
  *(v103 + 16) = 8;
  v98 = swift_allocObject();
  *(v98 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v98 + 24) = v97;
  v104 = swift_allocObject();
  *(v104 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v104 + 24) = v98;
  *(v112 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v105 = v4;

  *v105 = closure #1 in OSLogArguments.append(_:)partial apply;
  v105[1] = v99;

  v105[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v105[3] = v100;

  v105[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v105[5] = v101;

  v105[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v105[7] = v102;

  v105[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v105[9] = v103;

  v105[10] = closure #1 in OSLogArguments.append(_:)partial apply;
  v105[11] = v104;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v107))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v89 = createStorage<A>(capacity:type:)(0);
    v90 = createStorage<A>(capacity:type:)(1);
    v126 = buf;
    v127 = v89;
    v128 = v90;
    serialize(_:at:)(2, &v126);
    serialize(_:at:)(2, &v126);
    v129 = closure #1 in OSLogArguments.append(_:)partial apply;
    v130 = v99;
    closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
    v129 = closure #1 in OSLogArguments.append(_:)partial apply;
    v130 = v100;
    closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
    v129 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v130 = v101;
    closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
    v129 = closure #1 in OSLogArguments.append(_:)partial apply;
    v130 = v102;
    closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
    v129 = closure #1 in OSLogArguments.append(_:)partial apply;
    v130 = v103;
    closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
    v129 = closure #1 in OSLogArguments.append(_:)partial apply;
    v130 = v104;
    closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
    _os_log_impl(&dword_2586A4000, oslog, v107, "Got data for prediction interface:%ld data:%s", buf, 0x16u);
    destroyStorage<A>(_:count:)(v89, 0, v87);
    destroyStorage<A>(_:count:)(v90, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v85 = *(v112 + 360);
  v86 = *(v112 + 320);
  v84 = *(v112 + 328);
  MEMORY[0x277D82BD8](oslog);
  v5 = *(v84 + 8);
  *(v112 + 392) = v5;
  *(v112 + 400) = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v85, v86);
  if (*kMediaML_InterfaceType_WiFi.unsafeMutableAddressor() != v108)
  {
    if (*kMediaML_InterfaceType_Cellular.unsafeMutableAddressor() != v108)
    {
      goto LABEL_45;
    }

    v14 = *(v112 + 312);
    v70 = MediaML.validateCellDataForPrediction(data:)(*(v112 + 304));
    v120 = v70;
    v121 = 1;
    if (v70 == 2)
    {
      if (v121 != 2)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v122 = v70;
      if (v121 == 2 || (v122 & 1) != (v121 & 1))
      {
LABEL_45:
        v24 = *(v112 + 360);
        v27 = *(v112 + 352);
        v28 = *(v112 + 344);
        v29 = *(v112 + 336);

        v25 = *(*(v112 + 224) + 8);
        v26 = *(v112 + 224);

        return v25(0, 0);
      }
    }

    v60 = *(v112 + 312);
    MediaML.prepareCellDataForPrediction(data:)(*(v112 + 304), (v112 + 16));
    v15 = *(v60 + 128);
    *(v112 + 456) = v15;

    v69 = *(v112 + 32);
    *(v112 + 464) = *(v112 + 40);

    v63 = *(v112 + 16);
    *(v112 + 472) = *(v112 + 24);

    v64 = *(v112 + 48);
    v65 = *(v112 + 56);
    v66 = *(v112 + 72);
    v67 = *(v112 + 64);
    v61 = *(v112 + 80);
    v62 = *(v112 + 88);
    v16 = *(*v15 + 184);
    v68 = v16 + *v16;
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v112 + 480) = v18;
    *v18 = *(v112 + 224);
    v18[1] = MediaML.getPrediction(data:);
    v133 = v61;
    v134 = v62;

    __asm { BRAA            X8, X16 }
  }

  v6 = *(v112 + 312);
  v83 = MediaML.validateWifiDataForPrediction(data:)(*(v112 + 304));
  v123 = v83;
  v124 = 1;
  if (v83 == 2)
  {
    if (v124 != 2)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v125 = v83;
    if (v124 == 2 || (v125 & 1) != (v124 & 1))
    {
      goto LABEL_45;
    }
  }

  v71 = *(v112 + 312);
  MediaML.prepareWifiDataForPrediction(data:)(*(v112 + 304), (v112 + 96));
  v7 = *(v71 + 120);
  *(v112 + 408) = v7;

  v82 = *(v112 + 112);
  v72 = *(v112 + 120);
  *(v112 + 416) = v72;

  v73 = *(v112 + 96);
  v74 = *(v112 + 104);
  *(v112 + 424) = v74;

  v75 = *(v112 + 128);
  v76 = *(v112 + 136);
  v77 = *(v112 + 144);
  v78 = *(v112 + 152);
  v79 = *(v112 + 160);
  v80 = *(v112 + 168);
  v8 = *(*v7 + 184);
  v81 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v11.n128_u64[0] = v79;
  v12.n128_u64[0] = v80;
  *(v112 + 432) = v10;
  *v10 = *(v112 + 224);
  v10[1] = MediaML.getPrediction(data:);

  return v81(v82, v72, v73, v74, v75, v76, v77, v78, v11, v12);
}

{
  *(v0 + 224) = v0;
  outlined destroy of WiFiDataPointForPrediciton(v0 + 96);
  v9 = *(v0 + 504);
  v8 = *(v0 + 448);
  v1 = *(v0 + 360);
  v5 = *(v0 + 352);
  v6 = *(v0 + 344);
  v7 = *(v0 + 336);

  v2 = *(*(v0 + 224) + 8);
  v3 = *(v0 + 224);

  return v2(v8, v9 & 1);
}

{
  *(v0 + 224) = v0;
  outlined destroy of CellDataPointForPrediction(v0 + 16);
  v9 = *(v0 + 505);
  v8 = *(v0 + 496);
  v1 = *(v0 + 360);
  v5 = *(v0 + 352);
  v6 = *(v0 + 344);
  v7 = *(v0 + 336);

  v2 = *(*(v0 + 224) + 8);
  v3 = *(v0 + 224);

  return v2(v8, v9 & 1);
}

{
  v42 = v0;
  v1 = v0[53];
  v21 = v0[52];
  v22 = v0[51];
  v0[28] = v0;

  outlined destroy of WiFiDataPointForPrediciton((v0 + 12));
  v26 = v0[55];
  v34 = v0[48];
  v24 = v0[47];
  v25 = v0[46];
  v2 = v0[42];
  v23 = v0[40];
  MEMORY[0x259C87ED0]();
  v0[36] = v26;
  v3 = MediaML.logger.unsafeMutableAddressor();
  v25(v2, v3, v23);
  MEMORY[0x259C87ED0](v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = 64;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #5 in MediaML.getPrediction(data:);
  *(v28 + 24) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v29 + 24) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v32 + 24) = v29;
  _allocateUninitializedArray<A>(_:)();
  v33 = v4;

  *v33 = closure #1 in OSLogArguments.append(_:)partial apply;
  v33[1] = v30;

  v33[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v33[3] = v31;

  v33[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v33[5] = v32;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(1);
    v19 = createStorage<A>(capacity:type:)(0);
    v37 = buf;
    v38 = v18;
    v39 = v19;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = closure #1 in OSLogArguments.append(_:)partial apply;
    v41 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = closure #1 in OSLogArguments.append(_:)partial apply;
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = closure #1 in OSLogArguments.append(_:)partial apply;
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_2586A4000, v35, v36, "Failed to get prediction from model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v18, 1, v16);
    destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = v20[50];
  v12 = v20[49];
  v9 = v20[42];
  v10 = v20[40];
  MEMORY[0x277D82BD8](v35);
  v12(v9, v10);
  MEMORY[0x259C87EC0](v26);
  MEMORY[0x259C87EC0](v26);
  v5 = v20[45];
  v13 = v20[44];
  v14 = v20[43];
  v15 = v20[42];

  v6 = *(v20[28] + 8);
  v7 = v20[28];

  return v6(0, 0);
}

{
  v42 = v0;
  v1 = v0[59];
  v21 = v0[58];
  v22 = v0[57];
  v0[28] = v0;

  outlined destroy of CellDataPointForPrediction((v0 + 2));
  v26 = v0[61];
  v34 = v0[48];
  v24 = v0[47];
  v25 = v0[46];
  v2 = v0[42];
  v23 = v0[40];
  MEMORY[0x259C87ED0]();
  v0[36] = v26;
  v3 = MediaML.logger.unsafeMutableAddressor();
  v25(v2, v3, v23);
  MEMORY[0x259C87ED0](v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = 64;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #5 in MediaML.getPrediction(data:);
  *(v28 + 24) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v29 + 24) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v32 + 24) = v29;
  _allocateUninitializedArray<A>(_:)();
  v33 = v4;

  *v33 = closure #1 in OSLogArguments.append(_:)partial apply;
  v33[1] = v30;

  v33[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v33[3] = v31;

  v33[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v33[5] = v32;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(1);
    v19 = createStorage<A>(capacity:type:)(0);
    v37 = buf;
    v38 = v18;
    v39 = v19;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = closure #1 in OSLogArguments.append(_:)partial apply;
    v41 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = closure #1 in OSLogArguments.append(_:)partial apply;
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = closure #1 in OSLogArguments.append(_:)partial apply;
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_2586A4000, v35, v36, "Failed to get prediction from model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v18, 1, v16);
    destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v11 = v20[50];
  v12 = v20[49];
  v9 = v20[42];
  v10 = v20[40];
  MEMORY[0x277D82BD8](v35);
  v12(v9, v10);
  MEMORY[0x259C87EC0](v26);
  MEMORY[0x259C87EC0](v26);
  v5 = v20[45];
  v13 = v20[44];
  v14 = v20[43];
  v15 = v20[42];

  v6 = *(v20[28] + 8);
  v7 = v20[28];

  return v6(0, 0);
}

uint64_t MediaML.getPrediction(data:)(uint64_t a1, char a2)
{
  v15 = *v3;
  v5 = *(*v3 + 432);
  *(v15 + 224) = *v3;
  v16 = (v15 + 224);
  *(v15 + 440) = v2;
  *(v15 + 448) = a1;
  *(v15 + 504) = a2;

  if (v2)
  {
    v7 = *(v15 + 312);
    v10 = *v16;
    v9 = MediaML.getPrediction(data:);
  }

  else
  {
    v6 = *(v15 + 424);
    v12 = *(v15 + 416);
    v13 = *(v15 + 408);
    v14 = *(v15 + 312);

    v7 = v14;
    v8 = *v16;
    v9 = MediaML.getPrediction(data:);
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

{
  v15 = *v3;
  v5 = *(*v3 + 480);
  *(v15 + 224) = *v3;
  v16 = (v15 + 224);
  *(v15 + 488) = v2;
  *(v15 + 496) = a1;
  *(v15 + 505) = a2;

  if (v2)
  {
    v7 = *(v15 + 312);
    v10 = *v16;
    v9 = MediaML.getPrediction(data:);
  }

  else
  {
    v6 = *(v15 + 472);
    v12 = *(v15 + 464);
    v13 = *(v15 + 456);
    v14 = *(v15 + 312);

    v7 = v14;
    v8 = *v16;
    v9 = MediaML.getPrediction(data:);
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

uint64_t implicit closure #4 in MediaML.getPrediction(data:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t MediaML.getModelStats()()
{
  v1[13] = v0;
  v1[8] = v1;
  v1[9] = 0;
  v1[11] = 0;
  v1[12] = 0;
  v2 = type metadata accessor for Logger();
  v1[14] = v2;
  v6 = *(v2 - 8);
  v1[15] = v6;
  v3 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[9] = v7;
  v4 = v1[8];

  return MEMORY[0x2822009F8](MediaML.getModelStats(), v7, 0);
}

{
  v9 = v0[13];
  v0[8] = v0;
  swift_beginAccess();
  v10 = *(v9 + 112);

  swift_endAccess();
  v0[10] = v10;
  if (v0[10])
  {
    outlined destroy of DataWriter?(v8 + 10);
    v6 = v8[13];
    swift_beginAccess();
    v7 = *(v6 + 112);
    v8[17] = v7;

    swift_endAccess();
    if (v7)
    {
      v5 = swift_task_alloc();
      v8[18] = v5;
      *v5 = v8[8];
      v5[1] = MediaML.getModelStats();

      return DataWriter.readModelStatsFromDB()();
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    outlined destroy of DataWriter?(v8 + 10);
    v1 = v8[16];

    v2 = *(v8[8] + 8);
    v3 = v8[8];

    return v2(0);
  }
}

{
  v1 = v0[19];
  v0[8] = v0;
  v0[12] = v1;
  v6 = v0[19];
  v2 = v0[16];

  v3 = *(v0[8] + 8);
  v4 = v0[8];

  return v3(v6);
}

{
  v34 = v0;
  v20 = v0[20];
  v1 = v0[17];
  v2 = v0[16];
  v18 = v0[15];
  v19 = v0[14];
  v0[8] = v0;

  MEMORY[0x259C87ED0](v20);
  v0[11] = v20;
  v3 = MediaML.logger.unsafeMutableAddressor();
  (*(v18 + 16))(v2, v3, v19);
  MEMORY[0x259C87ED0](v20);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #1 in MediaML.getModelStats();
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v26 = v4;

  *v26 = closure #1 in OSLogArguments.append(_:)partial apply;
  v26[1] = v23;

  v26[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v26[3] = v24;

  v26[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v27, v28))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0);
    v16 = createStorage<A>(capacity:type:)(1);
    v29 = buf;
    v30 = v15;
    v31 = v16;
    serialize(_:at:)(2, &v29);
    serialize(_:at:)(1, &v29);
    v32 = closure #1 in OSLogArguments.append(_:)partial apply;
    v33 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = closure #1 in OSLogArguments.append(_:)partial apply;
    v33 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = closure #1 in OSLogArguments.append(_:)partial apply;
    v33 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_2586A4000, v27, v28, "Failed to get model stats with err=%s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v17[20];
  v10 = v17[16];
  v11 = v17[14];
  v9 = v17[15];
  MEMORY[0x277D82BD8](v27);
  (*(v9 + 8))(v10, v11);
  MEMORY[0x259C87EC0](v12);
  MEMORY[0x259C87EC0](v12);
  v5 = v17[16];

  v6 = *(v17[8] + 8);
  v7 = v17[8];

  return v6(0);
}

uint64_t MediaML.getModelStats()(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 144);
  v12[8] = *v2;
  v13 = v12 + 8;
  v12[19] = a1;
  v12[20] = v1;

  if (v1)
  {
    v6 = v12[13];
    v9 = *v13;
    v8 = MediaML.getModelStats();
  }

  else
  {
    v5 = v12[17];
    v11 = v12[13];

    v6 = v11;
    v7 = *v13;
    v8 = MediaML.getModelStats();
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

uint64_t MediaML.__allocating_init()()
{
  v3 = v0;
  *(v0 + 16) = v0;
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = MediaML.__allocating_init();

  return MediaML.init()();
}

uint64_t MediaML.__allocating_init()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 16) = *v2;
  v9 = v3 + 16;

  if (v1)
  {
    v6 = *(*v9 + 8);
  }

  else
  {
    v5 = a1;
    v6 = *(*v9 + 8);
  }

  return v6(v5);
}

uint64_t MediaML.init()()
{
  v8 = *MEMORY[0x277D85DE8];
  *(v1 + 56) = v0;
  *(v1 + 64) = *v0;
  *(v1 + 16) = v1;
  *(v1 + 24) = 0;
  *(v1 + 176) = 0;
  v2 = type metadata accessor for URL();
  *(v1 + 72) = v2;
  v5 = *(v2 - 8);
  *(v1 + 80) = v5;
  v6 = *(v5 + 64);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR) - 8) + 64);
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);

  return MEMORY[0x2822009F8](MediaML.init(), 0, 0);
}

{
  v94 = *MEMORY[0x277D85DE8];
  v93 = v0[17];
  v1 = v0[14];
  v90 = v0[10];
  v91 = v0[9];
  v89 = v0[7];
  v0[2] = v0;
  v0[3] = v89;
  swift_defaultActor_initialize();
  *(v89 + 112) = 0;
  v2 = mediaMLBaseDirectory.unsafeMutableAddressor();
  v92 = *(v90 + 16);
  v92(v1, v2, v91);
  type metadata accessor for NSURLResourceKey();
  _allocateUninitializedArray<A>(_:)();
  outlined init with copy of NSURLResourceKey(MEMORY[0x277CBE868], v3);
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  Set.init(arrayLiteral:)();
  URL.resourceValues(forKeys:)();
  v87 = *(v88 + 136);
  v85 = *(v88 + 112);
  v86 = *(v88 + 72);
  v84 = *(v88 + 80);

  (*(v84 + 8))(v85, v86);
  v4 = type metadata accessor for URLResourceValues();
  (*(*(v4 - 8) + 56))(v87, 0, 1);
  v80 = *(v88 + 136);
  v81 = type metadata accessor for URLResourceValues();
  v82 = *(v81 - 8);
  v83 = *(v82 + 48);
  if (v83(v80, 1) == 1)
  {
    outlined destroy of URLResourceValues?(*(v88 + 136));
    v79 = 2;
  }

  else
  {
    v77 = *(v88 + 136);
    v78 = URLResourceValues.isDirectory.getter();
    (*(v82 + 8))(v77, v81);
    v79 = v78;
  }

  if (v79 == 2 || (v79 & 1) != 1)
  {
    v66 = 0;
  }

  else
  {
    v76 = *(v88 + 128);
    v5 = *(v88 + 104);
    v75 = *(v88 + 72);
    v6 = mediaMLModelDirectory.unsafeMutableAddressor();
    v92(v5, v6, v75);
    _allocateUninitializedArray<A>(_:)();
    outlined init with copy of NSURLResourceKey(MEMORY[0x277CBE868], v7);
    _finalizeUninitializedArray<A>(_:)();
    Set.init(arrayLiteral:)();
    URL.resourceValues(forKeys:)();
    v74 = *(v88 + 128);
    v72 = *(v88 + 104);
    v73 = *(v88 + 72);
    v71 = *(v88 + 80);

    (*(v71 + 8))(v72, v73);
    (*(v82 + 56))(v74, 0, 1, v81);
    if ((v83)(*(v88 + 128), 1, v81) == 1)
    {
      outlined destroy of URLResourceValues?(*(v88 + 128));
      v70 = 2;
    }

    else
    {
      v68 = *(v88 + 128);
      v69 = URLResourceValues.isDirectory.getter();
      (*(v82 + 8))(v68, v81);
      v70 = v69;
    }

    v67 = v70 != 2 && (v70 & 1) == 1;
    v66 = v67;
  }

  if (v66)
  {
    v65 = *(v88 + 120);
    v8 = *(v88 + 96);
    v64 = *(v88 + 72);
    v9 = mediaMLDataDirectory.unsafeMutableAddressor();
    v92(v8, v9, v64);
    _allocateUninitializedArray<A>(_:)();
    outlined init with copy of NSURLResourceKey(MEMORY[0x277CBE868], v10);
    _finalizeUninitializedArray<A>(_:)();
    Set.init(arrayLiteral:)();
    URL.resourceValues(forKeys:)();
    v63 = *(v88 + 120);
    v61 = *(v88 + 96);
    v62 = *(v88 + 72);
    v60 = *(v88 + 80);

    (*(v60 + 8))(v61, v62);
    (*(v82 + 56))(v63, 0, 1, v81);
    if ((v83)(*(v88 + 120), 1, v81) == 1)
    {
      outlined destroy of URLResourceValues?(*(v88 + 120));
      v59 = 2;
    }

    else
    {
      v57 = *(v88 + 120);
      v58 = URLResourceValues.isDirectory.getter();
      (*(v82 + 8))(v57, v81);
      v59 = v58;
    }

    v56 = v59 != 2 && (v59 & 1) == 1;
    v55 = v56;
  }

  else
  {
    v55 = 0;
  }

  *(v88 + 176) = v55;
  if (v55)
  {
    goto LABEL_27;
  }

  v11 = *(v88 + 88);
  v49 = *(v88 + 72);
  v48 = *(v88 + 80);
  v53 = [objc_opt_self() defaultManager];
  v12 = mediaMLBaseDirectory.unsafeMutableAddressor();
  v92(v11, v12, v49);
  URL._bridgeToObjectiveC()(v13);
  v52 = v14;
  v50 = *(v48 + 8);
  v50(v11, v49);
  *(v88 + 32) = 0;
  v54 = [v53 createDirectoryAtURL:v52 withIntermediateDirectories:1 attributes:0 error:v88 + 32];
  v51 = *(v88 + 32);
  MEMORY[0x277D82BE0](v51);
  MEMORY[0x277D82BD8](0);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  if (v54)
  {
    v15 = *(v88 + 88);
    v43 = *(v88 + 72);
    v46 = [objc_opt_self() defaultManager];
    v16 = mediaMLDataDirectory.unsafeMutableAddressor();
    v92(v15, v16, v43);
    URL._bridgeToObjectiveC()(v17);
    v45 = v18;
    v50(v15, v43);
    *(v88 + 40) = 0;
    v47 = [v46 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:v88 + 40];
    v44 = *(v88 + 40);
    MEMORY[0x277D82BE0](v44);
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    if (v47)
    {
      v19 = *(v88 + 88);
      v38 = *(v88 + 72);
      v41 = [objc_opt_self() defaultManager];
      v20 = mediaMLModelDirectory.unsafeMutableAddressor();
      v92(v19, v20, v38);
      URL._bridgeToObjectiveC()(v21);
      v40 = v22;
      v50(v19, v38);
      *(v88 + 48) = 0;
      v42 = [v41 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:v88 + 48];
      v39 = *(v88 + 48);
      MEMORY[0x277D82BE0](v39);
      MEMORY[0x277D82BD8](0);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v41);
      if (v42)
      {
LABEL_27:
        type metadata accessor for WifiModel();
        v37 = swift_task_alloc();
        *(v88 + 144) = v37;
        *v37 = *(v88 + 16);
        v37[1] = MediaML.init();
        v23 = __OFSUB__(*MEMORY[0x277D85DE8], v94);

        return WifiModel.__allocating_init()();
      }

      _convertNSErrorToError(_:)();
      MEMORY[0x277D82BD8](v39);
      swift_willThrow();
      v36 = *(v88 + 56);
    }

    else
    {
      _convertNSErrorToError(_:)();
      MEMORY[0x277D82BD8](v44);
      swift_willThrow();
      v36 = *(v88 + 56);
    }
  }

  else
  {
    _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v51);
    swift_willThrow();
    v36 = *(v88 + 56);
  }

  v29 = *(v88 + 136);
  v30 = *(v88 + 128);
  v31 = *(v88 + 120);
  v32 = *(v88 + 112);
  v33 = *(v88 + 104);
  v34 = *(v88 + 96);
  v35 = *(v88 + 88);
  v28 = *(v88 + 64);
  outlined destroy of DataWriter?((v36 + 112));
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v25 = *MEMORY[0x277D85DE8] - v94;
  v26 = *(*(v88 + 16) + 8);
  v27 = *(v88 + 16);

  return v26();
}

{
  v5 = *MEMORY[0x277D85DE8];
  v1 = v0[19];
  v2 = v0[7];
  v0[2] = v0;
  *(v2 + 120) = v1;
  type metadata accessor for CellularModel();
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0[2];
  v4[1] = MediaML.init();
  *MEMORY[0x277D85DE8];

  return CellularModel.__allocating_init()();
}

{
  v5 = *MEMORY[0x277D85DE8];
  v1 = v0[21];
  v2 = v0[7];
  v0[2] = v0;
  *(v2 + 128) = v1;
  *MEMORY[0x277D85DE8];
  v3 = v0[2];

  return MEMORY[0x2822009F8](MediaML.init(), v2, 0);
}

{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[17];
  v7 = v0[16];
  v8 = v0[15];
  v9 = v0[14];
  v10 = v0[13];
  v11 = v0[12];
  v12 = v0[11];
  v0[2] = v0;

  v2 = *MEMORY[0x277D85DE8] - v13;
  v3 = *(v0[2] + 8);
  v4 = v0[7];
  v5 = v0[2];

  return v3(v4);
}

uint64_t MediaML.init()(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *v1;
  v3 = *(*v1 + 144);
  *(v7 + 16) = *v1;
  *(v7 + 152) = a1;

  v4 = __OFSUB__(*MEMORY[0x277D85DE8], v8);
  v5 = *(v7 + 16);

  return MEMORY[0x2822009F8](MediaML.init(), 0, 0);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *v1;
  v3 = *(*v1 + 160);
  *(v7 + 16) = *v1;
  *(v7 + 168) = a1;

  v4 = __OFSUB__(*MEMORY[0x277D85DE8], v8);
  v5 = *(v7 + 16);

  return MEMORY[0x2822009F8](MediaML.init(), 0, 0);
}

uint64_t *MediaML.deinit()
{
  v34 = 0;
  v42 = 0;
  v23 = 0;
  v31 = type metadata accessor for Logger();
  v25 = v31;
  v26 = *(v31 - 8);
  v30 = v26;
  v27 = v26;
  v28 = *(v26 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v0 = &v8 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v0;
  v42 = v1;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v30 + 16))(v0, v2, v31);
  v36 = Logger.logObject.getter();
  v32 = v36;
  v35 = static os_log_type_t.info.getter();
  v33 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v37 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v36, v35))
  {
    v3 = v23;
    v14 = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = v14;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = 0;
    v15 = createStorage<A>(capacity:type:)(0);
    v13 = v15;
    v16 = createStorage<A>(capacity:type:)(v12);
    v41 = v14;
    v40 = v15;
    v39 = v16;
    v17 = 0;
    v18 = &v41;
    serialize(_:at:)(0, &v41);
    serialize(_:at:)(v17, v18);
    v38 = v37;
    v19 = &v8;
    MEMORY[0x28223BE20](&v8);
    v20 = &v8 - 6;
    *(&v8 - 4) = v4;
    *(&v8 - 3) = &v40;
    *(&v8 - 2) = &v39;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v22 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2586A4000, v32, v33, "MediaML deinit successful!", v10, 2u);
      v8 = 0;
      destroyStorage<A>(_:count:)(v13, 0, v11);
      destroyStorage<A>(_:count:)(v16, v8, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v10, MEMORY[0x277D84B78]);

      v9 = v22;
    }
  }

  else
  {

    v9 = v23;
  }

  (*(v27 + 8))(v29, v25);
  outlined destroy of DataWriter?(v24 + 14);
  v5 = v24[15];

  v6 = v24[16];

  swift_defaultActor_destroy();
  return v24;
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance NSURLResourceKey()
{
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  lazy protocol witness table accessor for type String and conformance String();
  return _SwiftNewtypeWrapper<>._bridgeToObjectiveC()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey()
{
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey()
{
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)() & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey()
{
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)();
}

NSURLResourceKey protocol witness for RawRepresentable.init(rawValue:) in conformance NSURLResourceKey@<X0>(Swift::String *a1@<X0>, NSURLResourceKey *a2@<X8>)
{
  result = NSURLResourceKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

NSURLResourceKey __swiftcall NSURLResourceKey.init(rawValue:)(Swift::String rawValue)
{

  v3 = MEMORY[0x259C87400](rawValue._countAndFlagsBits, rawValue._object);
  MEMORY[0x277D82BE0](v3);

  MEMORY[0x277D82BD8](v3);
  return v3;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  result = NSURLResourceKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NSURLResourceKey.rawValue.getter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](a1);
  return v3;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey()
{
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

unint64_t lazy protocol witness table accessor for type DataWriter and conformance DataWriter()
{
  v2 = lazy protocol witness table cache variable for type DataWriter and conformance DataWriter;
  if (!lazy protocol witness table cache variable for type DataWriter and conformance DataWriter)
  {
    type metadata accessor for DataWriter();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DataWriter and conformance DataWriter);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

void *outlined init with copy of WiFiDataPointForWriting(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  a2[3] = a1[3];
  v4 = a1[4];

  a2[4] = v4;
  a2[5] = a1[5];
  v6 = a1[6];

  result = a2;
  a2[6] = v6;
  a2[7] = a1[7];
  a2[8] = a1[8];
  a2[9] = a1[9];
  a2[10] = a1[10];
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = a1[15];
  return result;
}

void *outlined destroy of WiFiDataPointForWriting(void *a1)
{
  v1 = a1[1];

  v2 = a1[4];

  v3 = a1[6];

  return a1;
}

void *outlined init with copy of CellDataPointForWriting(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  a2[3] = a1[3];
  v4 = a1[4];

  a2[4] = v4;
  a2[5] = a1[5];
  v6 = a1[6];

  result = a2;
  a2[6] = v6;
  a2[7] = a1[7];
  a2[8] = a1[8];
  a2[9] = a1[9];
  a2[10] = a1[10];
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = a1[15];
  return result;
}

void *outlined destroy of CellDataPointForWriting(void *a1)
{
  v1 = a1[1];

  v2 = a1[4];

  v3 = a1[6];

  return a1;
}

uint64_t *outlined destroy of DataWriter?(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t partial apply for implicit closure #1 in MediaML.ensureDataWriter()()
{
  result = *(v0 + 16);
  implicit closure #1 in MediaML.ensureDataWriter()();
  return result;
}

__n128 outlined init with take of Any(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t partial apply for implicit closure #11 in MediaML.writeWifiData(data:)()
{
  result = *(v0 + 16);
  implicit closure #11 in MediaML.writeWifiData(data:)();
  return result;
}

uint64_t partial apply for implicit closure #10 in MediaML.writeCellData(data:)()
{
  result = *(v0 + 16);
  implicit closure #10 in MediaML.writeCellData(data:)();
  return result;
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v1 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t outlined destroy of CellDataPointForPrediction(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t partial apply for implicit closure #5 in MediaML.getPredictionDictionary(data:)()
{
  result = *(v0 + 16);
  implicit closure #5 in MediaML.getPredictionDictionary(data:)();
  return result;
}

uint64_t outlined destroy of WiFiDataPointForPrediciton(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t partial apply for implicit closure #5 in MediaML.getPrediction(data:)()
{
  result = *(v0 + 16);
  implicit closure #5 in MediaML.getPrediction(data:)();
  return result;
}

uint64_t type metadata accessor for NSURLResourceKey()
{
  v4 = lazy cache variable for type metadata for NSURLResourceKey;
  if (!lazy cache variable for type metadata for NSURLResourceKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSURLResourceKey);
      return v1;
    }
  }

  return v4;
}

void *outlined init with copy of NSURLResourceKey(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0]();
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey()
{
  v2 = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    type metadata accessor for NSURLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    type metadata accessor for NSURLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    type metadata accessor for NSURLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    type metadata accessor for NSURLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    type metadata accessor for NSURLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of URLResourceValues?(uint64_t a1)
{
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for WiFiDataPointForWriting(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 128))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WiFiDataPointForWriting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CellDataPointForWriting(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 128))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CellDataPointForWriting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WiFiDataPointForPrediciton(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WiFiDataPointForPrediciton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CellDataPointForPrediction(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CellDataPointForPrediction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return MEMORY[0x2821FBE78]();
}

{
  return MEMORY[0x2821FBE80]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE68]();
}

{
  return MEMORY[0x2821FDE70]();
}