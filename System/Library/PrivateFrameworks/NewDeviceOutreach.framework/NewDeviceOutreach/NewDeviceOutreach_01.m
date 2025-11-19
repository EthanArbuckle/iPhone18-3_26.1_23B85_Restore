unint64_t sub_100025058()
{
  result = qword_1000A9CA0[0];
  if (!qword_1000A9CA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A9CA0);
  }

  return result;
}

unint64_t sub_1000250B0()
{
  result = qword_1000A9DB0;
  if (!qword_1000A9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A9DB0);
  }

  return result;
}

unint64_t sub_100025108()
{
  result = qword_1000A9DB8[0];
  if (!qword_1000A9DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A9DB8);
  }

  return result;
}

id sub_100025180(uint64_t a1)
{
  v4 = 0;
  if ([v1 postFollowUpItem:a1 error:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_10002522C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *v3;
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100025304;
    v7[3] = &unk_10009B6C0;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
    v5 = *v3;
  }

  [v5 addNotificationRequest:a1 withCompletionHandler:v6];
  _Block_release(v6);
}

void sub_100025304(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id LSApplicationWorkspace.open(_:)@<X0>(NSURL *a1@<X8>)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  sub_10002793C(&_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v2 openSensitiveURL:v4 withOptions:isa];

  return v6;
}

id sub_100025408@<X0>(NSURL *a1@<X8>)
{
  v2 = *v1;
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  sub_10002793C(&_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v2 openSensitiveURL:v4 withOptions:isa];

  return v6;
}

uint64_t sub_1000254A0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v157 = a2;
  v158 = a3;
  v154 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
  v156 = *(v154 - 8);
  v4 = *(v156 + 64);
  v5 = __chkstk_darwin(v154);
  v155 = (&v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v153 = &v122 - v7;
  v8 = type metadata accessor for Logger();
  v160 = *(v8 - 8);
  v161 = v8;
  v9 = *(v160 + 64);
  __chkstk_darwin(v8);
  v159 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData();
  v128 = *(v129 - 8);
  v11 = *(v128 + 64);
  __chkstk_darwin(v129);
  v127 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData();
  v132 = *(v133 - 8);
  v13 = *(v132 + 64);
  __chkstk_darwin(v133);
  v131 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData();
  v124 = *(v125 - 8);
  v15 = *(v124 + 64);
  __chkstk_darwin(v125);
  v123 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData();
  v143 = *(v17 - 8);
  v144 = v17;
  v18 = *(v143 + 64);
  __chkstk_darwin(v17);
  v142 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData();
  v146 = *(v20 - 8);
  v147 = v20;
  v21 = *(v146 + 64);
  __chkstk_darwin(v20);
  v145 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for NDORemoveWarrantyActionHandler();
  v136 = *(v137 - 8);
  v23 = *(v136 + 64);
  __chkstk_darwin(v137);
  v135 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData();
  v140 = *(v141 - 8);
  v25 = *(v140 + 64);
  __chkstk_darwin(v141);
  v139 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10001A078(&qword_1000A7380, qword_10007C1D0);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v31 = &v122 - v30;
  v150 = sub_10001A078(&qword_1000A7388, &unk_1000810B0);
  v32 = *(*(v150 - 8) + 64);
  v33 = __chkstk_darwin(v150);
  v149 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v130 = &v122 - v36;
  v37 = __chkstk_darwin(v35);
  v134 = &v122 - v38;
  v39 = __chkstk_darwin(v37);
  v126 = &v122 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v122 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v122 - v45;
  v47 = __chkstk_darwin(v44);
  v138 = &v122 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = &v122 - v50;
  __chkstk_darwin(v49);
  v53 = &v122 - v52;
  v54 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ActionType();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = __chkstk_darwin(v54);
  v148 = &v122 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v60 = &v122 - v59;
  Com_Apple_Sse_Ocean_Ndo_Api_Action.actionType.getter();
  Com_Apple_Sse_Ocean_Ndo_Api_Action.actionData.getter();
  v61 = *(v28 + 56);
  v62 = v60;
  v63 = v31;
  (*(v55 + 32))(v31, v62, v54);
  sub_100027A6C(v53, &v31[v61]);
  v151 = v55;
  v152 = v54;
  v64 = (*(v55 + 88))(v31, v54);
  if (v64 != enum case for Com_Apple_Sse_Ocean_Ndo_Api_ActionType.postFollowUp(_:))
  {
    if (v64 == enum case for Com_Apple_Sse_Ocean_Ndo_Api_ActionType.removeFollowUp(_:))
    {
      v74 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData();
      v75 = *(v74 - 8);
      v76 = (*(v75 + 48))(v63 + v61, 1, v74);
      v68 = v160;
      v69 = v155;
      v70 = v156;
      if (v76 != 1)
      {
        sub_10001CB74(v63 + v61, v43, &qword_1000A7388, &unk_1000810B0);
        if ((*(v75 + 88))(v43, v74) == enum case for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData.removeFollowUpData(_:))
        {
          (*(v75 + 96))(v43, v74);
          v78 = v142;
          v77 = v143;
          v79 = v144;
          (*(v143 + 32))(v142, v43, v144);
          if (qword_1000A9E80 != -1)
          {
            swift_once();
          }

          if (qword_1000A9E88)
          {

            dispatch thunk of NDODismissFollowUpActionHandler.handle(action:completion:)();
          }

          else
          {
            v116 = type metadata accessor for NDOErrors();
            sub_100027ADC();
            v117 = swift_allocError();
            (*(*(v116 - 8) + 104))(v118, enum case for NDOErrors.failedToInitializeFLFollowUpController(_:), v116);
            v157(v117, 1);
          }

          (*(v77 + 8))(v78, v79);
          goto LABEL_58;
        }

        (*(v75 + 8))(v43, v74);
      }

      goto LABEL_44;
    }

    v68 = v160;
    v69 = v155;
    v70 = v156;
    if (v64 == enum case for Com_Apple_Sse_Ocean_Ndo_Api_ActionType.updateCoverage(_:))
    {
      v80 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData();
      v81 = *(v80 - 8);
      if ((*(v81 + 48))(v63 + v61, 1, v80) != 1)
      {
        sub_10001CB74(v63 + v61, v51, &qword_1000A7388, &unk_1000810B0);
        if ((*(v81 + 88))(v51, v80) == enum case for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData.coverageData(_:))
        {
          (*(v81 + 96))(v51, v80);
          v82 = v140;
          v83 = v139;
          v84 = v141;
          (*(v140 + 32))(v139, v51, v141);
          if (qword_1000A9E40 != -1)
          {
            swift_once();
          }

          dispatch thunk of NDODownloadWarrantyActionHandler.handle(action:completion:)();

          (*(v82 + 8))(v83, v84);
          goto LABEL_58;
        }

        (*(v81 + 8))(v51, v80);
      }

      goto LABEL_44;
    }

    if (v64 == enum case for Com_Apple_Sse_Ocean_Ndo_Api_ActionType.deleteCoverage(_:))
    {
      v65 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData();
      v66 = *(v65 - 8);
      if ((*(v66 + 48))(v63 + v61, 1, v65) == 1)
      {
        goto LABEL_44;
      }

      v46 = v138;
      sub_10001CB74(v63 + v61, v138, &qword_1000A7388, &unk_1000810B0);
      if ((*(v66 + 88))(v46, v65) == enum case for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData.coverageData(_:))
      {
        (*(v66 + 96))(v46, v65);
        v85 = v140;
        v86 = v139;
        v87 = v141;
        (*(v140 + 32))(v139, v46, v141);
        if (qword_1000A9E50 != -1)
        {
          swift_once();
        }

        v88 = v137;
        v89 = sub_100027B34(v137, qword_1000A9E58);
        v90 = v136;
        v91 = v135;
        (*(v136 + 16))(v135, v89, v88);
        NDORemoveWarrantyActionHandler.handle(action:completion:)();
        (*(v90 + 8))(v91, v88);
        goto LABEL_57;
      }

LABEL_43:
      (*(v66 + 8))(v46, v65);
      goto LABEL_44;
    }

    if (v64 == enum case for Com_Apple_Sse_Ocean_Ndo_Api_ActionType.showNotification(_:))
    {
      v65 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData();
      v66 = *(v65 - 8);
      if ((*(v66 + 48))(v63 + v61, 1, v65) == 1)
      {
        goto LABEL_44;
      }

      v46 = v134;
      sub_10001CB74(v63 + v61, v134, &qword_1000A7388, &unk_1000810B0);
      if ((*(v66 + 88))(v46, v65) != enum case for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData.notificationData(_:))
      {
        goto LABEL_43;
      }

      (*(v66 + 96))(v46, v65);
      v85 = v132;
      v86 = v131;
      v87 = v133;
      (*(v132 + 32))(v131, v46, v133);
      if (qword_1000A9EA0 != -1)
      {
        swift_once();
      }

      dispatch thunk of NDOShowNotificationActionHandler.handle(action:completion:)();
    }

    else if (v64 == enum case for Com_Apple_Sse_Ocean_Ndo_Api_ActionType.showAlert(_:))
    {
      v65 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData();
      v66 = *(v65 - 8);
      if ((*(v66 + 48))(v63 + v61, 1, v65) == 1)
      {
        goto LABEL_44;
      }

      v46 = v130;
      sub_10001CB74(v63 + v61, v130, &qword_1000A7388, &unk_1000810B0);
      if ((*(v66 + 88))(v46, v65) != enum case for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData.alertData(_:))
      {
        goto LABEL_43;
      }

      (*(v66 + 96))(v46, v65);
      v85 = v128;
      v86 = v127;
      v87 = v129;
      (*(v128 + 32))(v127, v46, v129);
      if (qword_1000A9EB0 != -1)
      {
        swift_once();
      }

      dispatch thunk of NDOShowAlertActionHandler.handle(action:completion:)();
    }

    else
    {
      if (v64 != enum case for Com_Apple_Sse_Ocean_Ndo_Api_ActionType.reloadConfig(_:))
      {
        goto LABEL_44;
      }

      v119 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData();
      v120 = *(v119 - 8);
      if ((*(v120 + 48))(&v31[v61], 1, v119) == 1)
      {
        goto LABEL_44;
      }

      v121 = v126;
      sub_10001CB74(&v31[v61], v126, &qword_1000A7388, &unk_1000810B0);
      if ((*(v120 + 88))(v121, v119) != enum case for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData.reloadConfigData(_:))
      {
        (*(v120 + 8))(v121, v119);
        goto LABEL_44;
      }

      (*(v120 + 96))(v121, v119);
      v85 = v124;
      v86 = v123;
      v87 = v125;
      (*(v124 + 32))(v123, v121, v125);
      if (qword_1000A9E90 != -1)
      {
        swift_once();
      }

      dispatch thunk of NDOUpdateConfigActionHandler.handle(action:completion:)();
    }

LABEL_57:
    (*(v85 + 8))(v86, v87);
LABEL_58:
    sub_1000035B8(v63 + v61, &qword_1000A7388, &unk_1000810B0);
    return (*(v151 + 8))(v63, v152);
  }

  v65 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData();
  v66 = *(v65 - 8);
  v67 = (*(v66 + 48))(v63 + v61, 1, v65);
  v68 = v160;
  v69 = v155;
  v70 = v156;
  if (v67 != 1)
  {
    sub_10001CB74(v63 + v61, v46, &qword_1000A7388, &unk_1000810B0);
    if ((*(v66 + 88))(v46, v65) == enum case for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData.postFollowUpData(_:))
    {
      (*(v66 + 96))(v46, v65);
      v72 = v145;
      v71 = v146;
      v73 = v147;
      (*(v146 + 32))(v145, v46, v147);
      if (qword_1000A9E70 != -1)
      {
        swift_once();
      }

      if (qword_1000A9E78)
      {

        dispatch thunk of NDOPostFollowUpActionHandler.handle(action:completion:)();
      }

      else
      {
        v92 = type metadata accessor for NDOErrors();
        sub_100027ADC();
        v93 = swift_allocError();
        (*(*(v92 - 8) + 104))(v94, enum case for NDOErrors.failedToInitializeFLFollowUpController(_:), v92);
        v157(v93, 1);
      }

      (*(v71 + 8))(v72, v73);
      goto LABEL_58;
    }

    goto LABEL_43;
  }

LABEL_44:
  v95 = sub_100049C1C();
  v96 = v159;
  (*(v68 + 16))(v159, v95, v161);
  v97 = *(v70 + 16);
  v99 = v153;
  v98 = v154;
  v97(v153, a1, v154);
  v97(v69, a1, v98);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v156 = v63;
    v162 = v155;
    *v102 = 134218242;
    v103 = v69;
    v104 = v148;
    Com_Apple_Sse_Ocean_Ndo_Api_Action.actionType.getter();
    v105 = Com_Apple_Sse_Ocean_Ndo_Api_ActionType.rawValue.getter();
    (*(v151 + 8))(v104, v152);
    v106 = *(v70 + 8);
    v106(v99, v98);
    *(v102 + 4) = v105;
    *(v102 + 12) = 2080;
    Com_Apple_Sse_Ocean_Ndo_Api_Action.actionData.getter();
    v107 = String.init<A>(describing:)();
    v109 = v108;
    v106(v103, v98);
    v110 = sub_10001FEC8(v107, v109, &v162);

    *(v102 + 14) = v110;
    _os_log_impl(&_mh_execute_header, v100, v101, "Unexpected action type/data combination. Type: %ld data: %s", v102, 0x16u);
    sub_100001E74(v155);
    v63 = v156;

    (*(v160 + 8))(v159, v161);
  }

  else
  {
    v111 = *(v70 + 8);
    v111(v99, v98);

    v111(v69, v98);
    (*(v68 + 8))(v96, v161);
  }

  v112 = type metadata accessor for NDOErrors();
  sub_100027ADC();
  v113 = swift_allocError();
  (*(*(v112 - 8) + 104))(v114, enum case for NDOErrors.unsupportedActionType(_:), v112);
  v157(v113, 1);

  return sub_1000035B8(v63, &qword_1000A7380, qword_10007C1D0);
}

uint64_t sub_100026BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v49 = a5;
  v50 = a6;
  v47 = a4;
  v42 = a1;
  v43 = a3;
  v41 = a2;
  v6 = type metadata accessor for NDOWarrantyRequestGenerator();
  v48 = *(v6 - 8);
  v45 = *(v48 + 64);
  v7 = __chkstk_darwin(v6 - 8);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v40 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v40 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = sub_10001A078(&qword_1000A7398, &qword_10007C2D0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v40 - v23;
  v25 = *(v11 + 16);
  v25(&v40 - v23, v42, v10);
  *&v24[*(v18 + 56)] = v41;
  *&v24[*(v18 + 72)] = v43;
  sub_10001CB74(v24, v22, &qword_1000A7398, &qword_10007C2D0);
  v42 = *&v22[*(v18 + 56)];
  v26 = *&v22[*(v18 + 72)];

  v27 = v16;
  (*(v11 + 32))(v16, v22, v10);
  v28 = v40;
  v29 = v27;
  v25(v40, v27, v10);
  sub_10005D434(v51);
  v30 = v44;
  NDOWarrantyRequestGenerator.init(serialNumbers:warrantyURL:payloadProvider:)(v42, v28, v51, v44);
  sub_100001E10(v49, v51);
  v31 = v46;
  sub_100027BF4(v30, v46);
  v32 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v33 = swift_allocObject();
  sub_100027C58(v31, v33 + v32);
  v34 = sub_10001A078(&qword_1000A73A0, &qword_10007C2D8);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  v38 = v50;
  v50[3] = v34;
  v38[4] = sub_100027D20();
  *v38 = v37;
  sub_100027D84(v30);
  (*(v11 + 8))(v29, v10);
  return sub_1000035B8(v24, &qword_1000A7398, &qword_10007C2D0);
}

uint64_t sub_100026FA4@<X0>(uint64_t a1@<X8>)
{
  result = static NDOResponseMapper.Warranty.decodeSaveAndPostDarwinNotification(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100026FD4()
{
  v0 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-1] - v3;
  v5 = sub_10005BF18();
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_10005C9F4();
  swift_beginAccess();
  sub_100001E10(v6, v10);
  v7 = sub_1000276D0(v4, v10);
  sub_100001E74(v10);
  result = (*(v1 + 8))(v4, v0);
  qword_1000A9E48 = v7;
  return result;
}

uint64_t sub_100027114()
{
  v0 = type metadata accessor for NDORemoveWarrantyActionHandler();
  sub_100027DE0(v0, qword_1000A9E58);
  sub_100027B34(v0, qword_1000A9E58);
  return NDORemoveWarrantyActionHandler.init(deletionFunc:)();
}

void sub_10002717C()
{
  v0 = *sub_10005EBDC();
  if (v0)
  {
    sub_100027E88(0, &qword_1000A73B0, FLFollowUpController_ptr);
    sub_100027E44(&qword_1000A73B8, &qword_1000A73B0, FLFollowUpController_ptr);
    v1 = type metadata accessor for NDOPostFollowUpActionHandler();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    v4 = v0;
    v5 = NDOPostFollowUpActionHandler.init(controller:executeWithResolver:)();
  }

  else
  {
    v5 = 0;
  }

  qword_1000A9E78 = v5;
}

void sub_1000272A4()
{
  v0 = *sub_10005EBDC();
  if (v0)
  {
    v1 = type metadata accessor for NDODismissFollowUpActionHandler();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    v4 = v0;
    v0 = NDODismissFollowUpActionHandler.init(clearFollowUp:)();
  }

  qword_1000A9E88 = v0;
}

uint64_t sub_100027378()
{
  v0 = sub_10005DEA0();
  swift_beginAccess();
  v1 = sub_10001A078(&qword_1000A73C0, &qword_10007C2E0);
  v7[3] = v1;
  v7[4] = swift_getOpaqueTypeConformance2();
  v2 = sub_100027B84(v7);
  (*(*(v1 - 8) + 16))(v2, v0, v1);
  v3 = type metadata accessor for NDOUpdateConfigActionHandler();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = NDOUpdateConfigActionHandler.init(configLoader:)();
  qword_1000A9E98 = result;
  return result;
}

uint64_t sub_100027450()
{
  v0 = objc_allocWithZone(UNUserNotificationCenter);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBundleIdentifier:v1];

  v8[12] = sub_100027E88(0, &qword_1000A73C8, UNUserNotificationCenter_ptr);
  v8[13] = sub_100027E44(&qword_1000A73D0, &qword_1000A73C8, UNUserNotificationCenter_ptr);
  v8[9] = v2;
  v3 = sub_10005C220();
  swift_beginAccess();
  sub_10001EC4C(v3, v8);
  v4 = type metadata accessor for NDOShowNotificationActionHandler();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = NDOShowNotificationActionHandler.init(userNotificationCenter:keyValueStore:)();
  qword_1000A9EA8 = result;
  return result;
}

id sub_100027568()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v6[12] = sub_100027E88(0, &qword_1000A73D8, LSApplicationWorkspace_ptr);
    v6[13] = sub_100027E44(&qword_1000A73E0, &qword_1000A73D8, LSApplicationWorkspace_ptr);
    v6[9] = v1;
    v2 = sub_10005C220();
    swift_beginAccess();
    sub_10001EC4C(v2, v6);
    v3 = sub_10001A078(&qword_1000A73E8, &qword_10007C2E8);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    result = NDOShowAlertActionHandler.init(createNotification:waitForNotificationResponse:applicationWorkspace:keyValueStore:)();
    qword_1000A9EB8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CFUserNotificationRef sub_1000276A0@<X0>(const __CFAllocator *a1@<X0>, CFOptionFlags a2@<X1>, SInt32 *a3@<X2>, const __CFDictionary *a4@<X3>, CFUserNotificationRef *a5@<X8>, CFTimeInterval a6@<D0>)
{
  result = CFUserNotificationCreate(a1, a6, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1000276D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NDOCompositionLayer();
  v10 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v23[3] = v10;
  v23[4] = swift_getOpaqueTypeConformance2();
  v11 = sub_100027B84(v23);
  (*(*(v10 - 8) + 16))(v11, a1, v10);
  v12 = sub_100049C1C();
  (*(v5 + 16))(v8, v12, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "making NDODownloadWarrantyActionHandler", v15, 2u);
  }

  (*(v5 + 8))(v8, v4);
  sub_100001E10(a2, v22);
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  sub_100005734(v22, v16 + 24);
  sub_100001E10(v23, v22);
  v17 = type metadata accessor for NDODownloadWarrantyActionHandler();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = NDODownloadWarrantyActionHandler.init(configLoader:loaderProvider:)();
  sub_100001E74(v23);
  return v20;
}

unint64_t sub_10002793C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001A078(&qword_1000A73F0, &unk_1000810D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001CB74(v4, &v13, &qword_1000A73F8, &qword_10007C300);
      v5 = v13;
      v6 = v14;
      result = sub_10001CEA0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100027ED0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100027A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7388, &unk_1000810B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100027ADC()
{
  result = qword_1000A6F50;
  if (!qword_1000A6F50)
  {
    type metadata accessor for NDOErrors();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6F50);
  }

  return result;
}

uint64_t sub_100027B34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100027B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_100027B84(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100027BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOWarrantyRequestGenerator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOWarrantyRequestGenerator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100027CBC(Swift::Bool a1)
{
  v3 = *(type metadata accessor for NDOWarrantyRequestGenerator() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return NDOWarrantyRequestGenerator.generateRequest(isRetry:)(a1);
}

unint64_t sub_100027D20()
{
  result = qword_1000A73A8;
  if (!qword_1000A73A8)
  {
    sub_10001EFA0(&qword_1000A73A0, &qword_10007C2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A73A8);
  }

  return result;
}

uint64_t sub_100027D84(uint64_t a1)
{
  v2 = type metadata accessor for NDOWarrantyRequestGenerator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_100027DE0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100027E44(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100027E88(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100027E88(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_100027ED0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void type metadata accessor for CFUserNotification()
{
  if (!qword_1000A7400)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000A7400);
    }
  }
}

uint64_t sub_100027F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027F94@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.singularFooter.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100027FC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.singularFooter.setter();
}

uint64_t sub_100028000@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.hasSingularFooter.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100028030@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.pluralFooter.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002805C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.pluralFooter.setter();
}

uint64_t sub_10002809C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.hasPluralFooter.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000280CC(uint64_t a1)
{
  v2 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100028230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100028300@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.hasURL.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100028330@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.hasURLKey.getter();
  *a1 = result & 1;
  return result;
}

__n128 NDODWFooterModel.Link.init(label:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  *(a4 + 48) = v4;
  return result;
}

uint64_t sub_100028384()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_1000283B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10002848C(uint64_t a1)
{
  v2 = sub_100028710();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000284C8(uint64_t a1)
{
  v2 = sub_100028710();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NDODWFooterModel.Link.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 32);
    v12[0] = *(a1 + 16);
    v12[1] = v7;
    v13 = *(a1 + 48);
    v8 = *(a2 + 32);
    v10[0] = *(a2 + 16);
    v10[1] = v8;
    v11 = *(a2 + 48);
    v6 = static NDOAction.__derived_enum_equals(_:_:)(v12, v10);
  }

  return v6 & 1;
}

uint64_t NDOLinkModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7420, &qword_10007C518);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100028710();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v16 = *(v3 + 1);
    v17 = v13;
    v18 = *(v3 + 48);
    v15[15] = 1;
    sub_10001DC10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100028710()
{
  result = qword_1000AA080[0];
  if (!qword_1000AA080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA080);
  }

  return result;
}

uint64_t NDODWFooterModel.Link.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = *(v0 + 48);
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

unint64_t sub_1000287C0()
{
  result = qword_1000A7428;
  if (!qword_1000A7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7428);
  }

  return result;
}

Swift::Int NDODWFooterModel.Link.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = *(v0 + 48);
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double NDOLinkModel.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100028AD4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

Swift::Int sub_1000288D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 48);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100028954()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 48);
  String.hash(into:)();
  v6 = *(v0 + 2);
  v5 = *(v0 + 1);
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000289BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 48);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100028A50(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v13[0] = *(a1 + 1);
  v13[1] = v6;
  v14 = *(a1 + 48);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 2);
  v15[0] = *(a2 + 1);
  v15[1] = v9;
  v16 = *(a2 + 48);
  if (v4 == v7 && v5 == v8 || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), v11 = 0, (v10 & 1) != 0))
  {
    v11 = static NDOAction.__derived_enum_equals(_:_:)(v13, v15);
  }

  return v11 & 1;
}

uint64_t sub_100028AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7438, &unk_10007C870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100028710();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v20) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  sub_10001E490();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v22;
  v18 = v21;
  v19 = v20;
  result = sub_100001E74(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  v17 = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v17;
  *(a2 + 48) = v15;
  return result;
}

unint64_t sub_100028CE4()
{
  result = qword_1000A7430;
  if (!qword_1000A7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7430);
  }

  return result;
}

__n128 sub_100028D38(uint64_t a1, uint64_t a2)
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

uint64_t sub_100028D54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100028D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100028E10()
{
  result = qword_1000AA390[0];
  if (!qword_1000AA390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA390);
  }

  return result;
}

unint64_t sub_100028E68()
{
  result = qword_1000AA4A0;
  if (!qword_1000AA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AA4A0);
  }

  return result;
}

unint64_t sub_100028EC0()
{
  result = qword_1000AA4A8[0];
  if (!qword_1000AA4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA4A8);
  }

  return result;
}

uint64_t sub_100028F20@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100028F50(uint64_t a1)
{
  v2 = sub_1000290DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100028F8C(uint64_t a1)
{
  v2 = sub_1000290DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWSupportModel.encode(to:)(void *a1)
{
  v2 = sub_10001A078(&qword_1000A7440, &qword_10007C880);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_1000290DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1000290DC()
{
  result = qword_1000AA530[0];
  if (!qword_1000AA530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA530);
  }

  return result;
}

unint64_t sub_1000291C8()
{
  result = qword_1000A7448;
  if (!qword_1000A7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7448);
  }

  return result;
}

unint64_t sub_100029240()
{
  result = qword_1000AA840;
  if (!qword_1000AA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AA840);
  }

  return result;
}

unint64_t sub_100029298()
{
  result = qword_1000AA848[0];
  if (!qword_1000AA848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA848);
  }

  return result;
}

uint64_t sub_1000292EC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100029354(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1000293DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDODeviceListRequestGenerator() + 20);

  return sub_100001E10(v3, a1);
}

uint64_t type metadata accessor for NDODeviceListRequestGenerator()
{
  result = qword_1000AA8D0;
  if (!qword_1000AA8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NDODeviceListRequestGenerator.init(deviceListURL:payloadProvider:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for NDODeviceListRequestGenerator() + 20);

  return sub_100005734(a2, v7);
}

NSURLRequest_optional __swiftcall NDODeviceListRequestGenerator.generateRequest(isRetry:)(Swift::Bool isRetry)
{
  v36 = type metadata accessor for JSONEncodingOptions();
  v34 = *(v36 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v36);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(NSMutableURLRequest);
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v17 = [v13 initWithURL:v15];

  v18 = String._bridgeToObjectiveC()();
  [v17 setHTTPMethod:v18];

  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  [v17 addValue:v19 forHTTPHeaderField:v20];

  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  [v17 setValue:v21 forHTTPHeaderField:v22];

  Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.init()();
  v23 = (v1 + *(type metadata accessor for NDODeviceListRequestGenerator() + 20));
  v24 = v23[4];
  sub_100001F3C(v23, v23[3]);
  dispatch thunk of RequestPayloadProvider.requestMeta()();
  Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.meta.setter();
  v25 = v23[4];
  sub_100001F3C(v23, v23[3]);
  dispatch thunk of RequestPayloadProvider.requestCommon()();
  Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.common.setter();
  JSONEncodingOptions.init()();
  sub_100029930();
  v26 = Message.jsonUTF8Data(options:)();
  v28 = v27;
  (*(v34 + 8))(v4, v36);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100003EBC(v26, v28);
  [v17 setHTTPBody:{isa, v34}];

  v30 = v23[4];
  sub_100001F3C(v23, v23[3]);
  dispatch thunk of RequestPayloadProvider.addHeaders(to:isRetry:)();
  (*(v35 + 8))(v12, v9);
  v33 = v17;
  result.value._internal = v31;
  result.value.super.isa = v33;
  result.is_nil = v32;
  return result;
}

unint64_t sub_100029930()
{
  result = qword_1000A7450;
  if (!qword_1000A7450)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7450);
  }

  return result;
}

unint64_t sub_1000299B0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_100029A34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100029A34()
{
  result = qword_1000A74B0;
  if (!qword_1000A74B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000A74B0);
  }

  return result;
}

uint64_t sub_100029AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A74E0, &qword_10007CA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 NDOPromoModel.init(iconUrl:title:subtitle:callToActionLabel:action:deleteAction:protoHashValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12)
{
  *&v15[7] = *a11;
  *&v15[23] = *(a11 + 16);
  v15[39] = *(a11 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v12 = *a10;
  v13 = a10[1];
  *(a9 + 96) = *(a10 + 32);
  *(a9 + 64) = v12;
  *(a9 + 80) = v13;
  *(a9 + 129) = *&v15[32];
  result = *&v15[16];
  *(a9 + 113) = *&v15[16];
  *(a9 + 97) = *v15;
  *(a9 + 144) = a12;
  return result;
}

uint64_t sub_100029B8C()
{
  v1 = *v0;
  v2 = 0x6C72556E6F6369;
  v3 = 0x63416574656C6564;
  if (v1 != 5)
  {
    v3 = 0x7361486F746F7270;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
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

uint64_t sub_100029C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002A304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100029CAC(uint64_t a1)
{
  v2 = sub_10002A7EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100029CE8(uint64_t a1)
{
  v2 = sub_10002A7EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOPromoModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A74E8, &qword_10007CA48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10002A7EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v25) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v25) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v25) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v25) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 5);
    v25 = *(v3 + 4);
    v26 = v19;
    v27 = *(v3 + 96);
    v24 = 4;
    sub_10001DC10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = *(v3 + 15);
    v25 = *(v3 + 13);
    v26 = v20;
    v27 = *(v3 + 136);
    v24 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = v3[18];
    LOBYTE(v25) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NDOPromoModel.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  v7 = v0[6];
  v8 = v0[7];
  String.hash(into:)();
  v9 = *(v0 + 4);
  v11 = *(v0 + 5);
  v13 = *(v0 + 96);
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  if (*(v0 + 136) == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v10 = *(v0 + 13);
    v12 = *(v0 + 15);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
  }

  Hasher._combine(_:)(v0[18]);
}

Swift::Int NDOPromoModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  v7 = v0[6];
  v8 = v0[7];
  String.hash(into:)();
  v10 = *(v0 + 4);
  v12 = *(v0 + 5);
  v14 = *(v0 + 96);
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  if (*(v0 + 136) == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11 = *(v0 + 13);
    v13 = *(v0 + 15);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
  }

  Hasher._combine(_:)(v0[18]);
  return Hasher._finalize()();
}

double NDOPromoModel.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002A840(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

Swift::Int sub_10002A21C()
{
  Hasher.init(_seed:)();
  NDOPromoModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002A270(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return static NDOPromoModel.__derived_struct_equals(_:_:)(v11, v13) & 1;
}

uint64_t sub_10002A304(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010008BDC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63416574656C6564 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7361486F746F7270 && a2 == 0xEE0065756C615668)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

BOOL _s8ndoagent13NDOPromoModelV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v27[0] = *(a1 + 64);
  v27[1] = v6;
  v28 = *(a1 + 96);
  v7 = *(a2 + 80);
  v25[0] = *(a2 + 64);
  v25[1] = v7;
  v26 = *(a2 + 96);
  if ((static NDOAction.__derived_enum_equals(_:_:)(v27, v25) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 104);
  v8 = *(a1 + 112);
  v11 = *(a1 + 120);
  v10 = *(a1 + 128);
  v12 = *(a1 + 136);
  v14 = *(a2 + 104);
  v13 = *(a2 + 112);
  v16 = *(a2 + 120);
  v15 = *(a2 + 128);
  v17 = *(a2 + 136);
  if (v12 == 255)
  {
    if (v17 == 255)
    {
      return *(a1 + 144) == *(a2 + 144);
    }
  }

  else
  {
    v24 = *(a1 + 104);
    if (v17 != 255)
    {
      sub_100021230(v9, v8, v11, v10, v12);
      sub_100021230(v9, v8, v11, v10, v12);
      sub_10002B254();
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10002B180(v24, v8, v11, v10, v12);
      sub_10002B16C(v9, v8, v11, v10, v12);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      return *(a1 + 144) == *(a2 + 144);
    }

    v20 = *(a2 + 120);
    v21 = *(a2 + 128);
    sub_100021230(v9, v8, v11, v10, v12);
    sub_100021230(v9, v8, v11, v10, v12);
    sub_10002B180(v9, v8, v11, v10, v12);
    v16 = v20;
    v15 = v21;
  }

  v22 = v16;
  v23 = v15;
  sub_10002B240(v14, v13, v16, v15, v17);
  sub_10002B16C(v9, v8, v11, v10, v12);
  sub_10002B16C(v14, v13, v22, v23, v17);
  return 0;
}

unint64_t sub_10002A7EC()
{
  result = qword_1000AA8E0[0];
  if (!qword_1000AA8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA8E0);
  }

  return result;
}

uint64_t sub_10002A840@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = sub_10001A078(&qword_1000A74F8, &qword_10007CF18);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v45);
  v8 = &v29 - v7;
  v9 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10002A7EC();
  v46 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  v10 = v5;
  v44 = a2;
  LOBYTE(v57) = 0;
  v11 = v45;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v13;
  LOBYTE(v57) = 1;
  *&v42 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v42 + 1) = v14;
  LOBYTE(v57) = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v16;
  LOBYTE(v57) = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v18;
  v32 = v17;
  LOBYTE(v47) = 4;
  sub_10001E490();
  v35 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = v58;
  v33 = *(&v59 + 1);
  v31 = v59;
  v34 = v57;
  v75 = v60;
  LOBYTE(v47) = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = v15;
  v37 = v58;
  v38 = v57;
  v19 = *(&v59 + 1);
  v36 = v59;
  LOBYTE(v15) = v60;
  v76 = 6;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v10 + 8))(v46, v11);
  *&v47 = v12;
  *(&v47 + 1) = v43;
  v48 = v42;
  v21 = v41;
  *&v49 = v30;
  *(&v49 + 1) = v41;
  v22 = v33;
  *&v50 = v32;
  *(&v50 + 1) = v40;
  *&v51 = v34;
  *(&v51 + 1) = v39;
  *&v52 = v31;
  *(&v52 + 1) = v33;
  LOBYTE(v53) = v75;
  *(&v53 + 1) = v38;
  *&v54 = v37;
  *(&v54 + 1) = v36;
  *&v55 = v19;
  BYTE8(v55) = v15;
  v56 = v20;
  sub_10002B1D8(&v47, &v57);
  sub_100001E74(a1);
  v57 = v12;
  v58 = v43;
  v59 = v42;
  v60 = v30;
  v61 = v21;
  v62 = v32;
  v63 = v40;
  v64 = v34;
  v65 = v39;
  v66 = v31;
  v67 = v22;
  v68 = v75;
  v69 = v38;
  v70 = v37;
  v71 = v36;
  v72 = v19;
  v73 = v15;
  v74 = v20;
  result = sub_10002B210(&v57);
  v24 = v54;
  v25 = v44;
  *(v44 + 96) = v53;
  *(v25 + 112) = v24;
  *(v25 + 128) = v55;
  *(v25 + 144) = v56;
  v26 = v50;
  *(v25 + 32) = v49;
  *(v25 + 48) = v26;
  v27 = v52;
  *(v25 + 64) = v51;
  *(v25 + 80) = v27;
  v28 = v48;
  *v25 = v47;
  *(v25 + 16) = v28;
  return result;
}

unint64_t sub_10002ADBC()
{
  result = qword_1000A74F0;
  if (!qword_1000A74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74F0);
  }

  return result;
}

uint64_t sub_10002AE10(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10002AE24(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10002AE58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_10002AEA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDOPromoModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDOPromoModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002B068()
{
  result = qword_1000AABF0[0];
  if (!qword_1000AABF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AABF0);
  }

  return result;
}

unint64_t sub_10002B0C0()
{
  result = qword_1000AAD00;
  if (!qword_1000AAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAD00);
  }

  return result;
}

unint64_t sub_10002B118()
{
  result = qword_1000AAD08[0];
  if (!qword_1000AAD08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AAD08);
  }

  return result;
}

uint64_t sub_10002B16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_10002B180(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_10002B180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 6u)
  {
  }

  return result;
}

uint64_t sub_10002B240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_100021230(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_10002B254()
{
  result = qword_1000A7500;
  if (!qword_1000A7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7500);
  }

  return result;
}

uint64_t sub_10002E51C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasCoverageLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E54C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasCoverageExpirationLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E57C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasProductName.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E5AC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasSerialNumberLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E5DC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasWarrantyTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E60C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.hasLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E68C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.hasTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E6BC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.hasSubTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E6EC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.hasFooter.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E71C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.appleLogoURL.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002E748(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.appleLogoURL.setter();
}

uint64_t sub_10002E788@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasAppleLogoURL.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E7B8@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.hasContent.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E7E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v67 = a3;
  v68 = a2;
  v72 = a4;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction();
  v63 = *(v5 - 8);
  v6 = *(v63 + 64);
  __chkstk_darwin(v5);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  __chkstk_darwin(v8);
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  v13 = __chkstk_darwin(v11);
  v61 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = &v61 - v15;
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v61 - v22;
  sub_10001A078(&qword_1000A7290, &qword_10007BF10);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10007C340;
  *(v24 + 32) = swift_getKeyPath();
  sub_100032194(&qword_1000A7538, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v25 = Message.ensure(_:)();

  if ((v25 & 1) == 0)
  {
    goto LABEL_24;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10007BF00;
  *(v27 + 32) = swift_getKeyPath();
  *(v27 + 40) = swift_getKeyPath();
  v28 = Message.ensureOneOf(_:)();

  if ((v28 & 1) == 0)
  {
    goto LABEL_24;
  }

  Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
  v29 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.hasURL.getter();
  v30 = *(v17 + 8);
  v30(v23, v16);
  Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
  if (v29)
  {
    v68 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.url.getter();
    v32 = v31;
    v30(v23, v16);
  }

  else
  {
    v33 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.urlKey.getter();
    v35 = v34;
    v30(v23, v16);
    v68 = v68(v33, v35);
    v32 = v36;
  }

  Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
  v37 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.additionalHeaders.getter();
  v30(v23, v16);
  Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
  v38 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.bodyPayLoad.getter();
  v30(v21, v16);
  v39._countAndFlagsBits = v68;
  v39._object = v32;
  v40._countAndFlagsBits = v37;
  v40._object = v38;
  v73 = NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(v39, v40);
  countAndFlagsBits = v73.label._countAndFlagsBits;
  object = v73.label._object;
  v43 = v73.value._countAndFlagsBits;
  v44 = v73.value._object;
  v45 = v69;
  Com_Apple_Sse_Ocean_Ndo_Api_CTAction.type.getter();
  result = (*(v70 + 88))(v45, v71);
  if (result != enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.openPath(_:))
  {
    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.startWeb(_:))
    {
      v46 = 0;
      goto LABEL_25;
    }

    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.startAms(_:))
    {
      v46 = 1;
      goto LABEL_25;
    }

    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.openDeviceWarranty(_:))
    {
      v46 = 3;
      goto LABEL_25;
    }

    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.userDismiss(_:))
    {
      v46 = 5;
      goto LABEL_25;
    }

    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.userReject(_:))
    {
      v46 = 6;
      goto LABEL_25;
    }

    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.dismissCcPromo(_:))
    {
      v46 = 4;
      goto LABEL_25;
    }

    v47 = sub_100049C1C();
    v49 = v64;
    v48 = v65;
    (*(v64 + 16))(v66, v47, v65);
    v50 = v62;
    v51 = v63;
    v52 = v5;
    (*(v63 + 16))(v62, a1, v5);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      v56 = v61;
      Com_Apple_Sse_Ocean_Ndo_Api_CTAction.type.getter();
      v68 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.rawValue.getter();
      v57 = v50;
      v58 = v70;
      v59 = v71;
      (*(v70 + 8))(v56, v71);
      (*(v51 + 8))(v57, v52);
      *(v55 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v53, v54, "Should not hit unknown default case, action type: %ld", v55, 0xCu);
      v48 = v65;
    }

    else
    {
      (*(v51 + 8))(v50, v5);
      v58 = v70;
      v59 = v71;
    }

    (*(v49 + 8))(v66, v48);
    result = (*(v58 + 8))(v69, v59);
LABEL_24:
    countAndFlagsBits = 0;
    object = 0;
    v43 = 0;
    v44 = 0;
    v46 = -1;
    goto LABEL_25;
  }

  v46 = 2;
LABEL_25:
  v60 = v72;
  *v72 = countAndFlagsBits;
  v60[1] = object;
  v60[2] = v43;
  v60[3] = v44;
  *(v60 + 32) = v46;
  return result;
}

uint64_t sub_10002EF34@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.hasTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002EF64@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.hasSubTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002EF94@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.hasButtonTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002EFC4@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWSection.header.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002EFF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Com_Apple_Sse_Ocean_Ndo_Api_DWSection.header.setter();
}

uint64_t sub_10002F030@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWSection.hasHeader.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002F060@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWSection.footer.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002F08C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Com_Apple_Sse_Ocean_Ndo_Api_DWSection.footer.setter();
}

uint64_t sub_10002F0CC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWSection.hasFooter.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002F0FC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v265 = a2;
  v266 = a3;
  v3 = type metadata accessor for Logger();
  v219 = *(v3 - 8);
  v4 = *(v219 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v219 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v219 - v9;
  v11 = __chkstk_darwin(v8);
  v244 = &v219 - v12;
  v13 = __chkstk_darwin(v11);
  v259 = &v219 - v14;
  __chkstk_darwin(v13);
  v16 = &v219 - v15;
  v222 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction();
  countAndFlagsBits = *(v222 - 8);
  v17 = *(countAndFlagsBits + 64);
  __chkstk_darwin(v222);
  v221 = &v219 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData();
  object = *(v243 - 8);
  v19 = object[8];
  __chkstk_darwin(v243);
  v231 = &v219 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData();
  v288 = *(v270 - 8);
  v21 = *(v288 + 64);
  __chkstk_darwin(v270);
  v258 = &v219 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction();
  v285 = *(v264 - 8);
  v23 = *(v285 + 64);
  __chkstk_darwin(v264);
  v263 = &v219 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink();
  v284 = *(v274 - 8);
  v25 = *(v284 + 8);
  v26 = __chkstk_darwin(v274);
  v247 = &v219 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v261 = &v219 - v28;
  v280 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData();
  v292 = *(v280 - 8);
  v29 = *(v292 + 64);
  __chkstk_darwin(v280);
  v286 = &v219 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10001A078(&qword_1000A7560, &qword_10007D430);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v282 = &v219 - v33;
  v34 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v225 = &v219 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v230 = &v219 - v40;
  v41 = __chkstk_darwin(v39);
  v287 = &v219 - v42;
  __chkstk_darwin(v41);
  v295 = &v219 - v43;
  v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v297 = &v219 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection();
  v238 = *(v250 - 8);
  v48 = *(v238 + 64);
  __chkstk_darwin(v250);
  v255 = &v219 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.getter();
  v237 = *(result + 16);
  if (!v237)
  {

    v213 = &_swiftEmptyArrayStorage;
    goto LABEL_71;
  }

  v51 = 0;
  v236 = result + ((*(v238 + 80) + 32) & ~*(v238 + 80));
  v235 = v238 + 16;
  v291 = v45 + 16;
  v290 = (v35 + 48);
  v279 = (v35 + 32);
  v52 = (v35 + 16);
  v278 = (v35 + 88);
  v277 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data.ccBannerData(_:);
  v269 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data.ccDeviceData(_:);
  v273 = (v219 + 16);
  v254 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data.linkData(_:);
  v53 = (v35 + 8);
  v283 = (v219 + 8);
  v241 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data.ccPromoData(_:);
  v294 = v45;
  v289 = (v45 + 8);
  v275 = (v35 + 96);
  v229 = (object + 4);
  v272 = v284 + 8;
  v262 = (v285 + 8);
  v220 = (countAndFlagsBits + 8);
  v228 = (object + 1);
  v240 = v284 + 32;
  v253 = (v288 + 32);
  v252 = (v288 + 8);
  v268 = (v292 + 32);
  v271 = xmmword_10007CF30;
  v251 = xmmword_10007CF40;
  *(&v54 + 1) = 3;
  v239 = xmmword_10007C340;
  *&v54 = 136315138;
  v223 = v54;
  v267 = (v292 + 8);
  *&v54 = 134217984;
  v224 = v54;
  v232 = (v238 + 8);
  v233 = result;
  v248 = &_swiftEmptyArrayStorage;
  v260 = v3;
  v55 = v259;
  v56 = v286;
  v288 = v34;
  v285 = v44;
  v57 = v238;
  v234 = v7;
  v227 = v10;
  v242 = v16;
  v281 = v52;
  v276 = v53;
  while (1)
  {
    if (v51 >= *(result + 16))
    {
      goto LABEL_76;
    }

    v58 = *(v57 + 72);
    v249 = v51;
    (*(v57 + 16))(v255, v236 + v58 * v51, v250);
    v322 = &_swiftEmptyArrayStorage;
    result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.getter();
    countAndFlagsBits = *(result + 16);
    if (countAndFlagsBits)
    {
      break;
    }

    v284 = &_swiftEmptyArrayStorage;
    v62 = v273;
LABEL_59:

    v188 = *(v284 + 2);
    v189 = sub_100049C1C();
    v190 = *v62;
    if (v188)
    {
      v190(v244, v189, v3);
      v191 = Logger.logObject.getter();
      v192 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        *v193 = v224;
        *(v193 + 4) = *(v284 + 2);
        _os_log_impl(&_mh_execute_header, v191, v192, "Populated section with %ld items", v193, 0xCu);
      }

      (*v283)(v244, v3);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100032194(&qword_1000A7568, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
      Message.getOptional<A>(_:_:)();

      object = v311.value._object;
      countAndFlagsBits = v311.value._countAndFlagsBits;
      v194 = v284;

      LODWORD(v292) = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.isExpandable.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      v195 = v298;
      v196 = BYTE4(v298);
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      v197 = v300;
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      v321 = v196;
      v198 = v195 | (v196 << 32);
      v199.value._countAndFlagsBits = countAndFlagsBits;
      v199.value._object = object;
      NDOSection.init(header:items:isExpandable:expandThreshold:expandLabel:footer:)(&v336, v199, v194, v292 & 1, v198, v197, v310);
      v200 = v248;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v200 = sub_100031E40(0, *(v200 + 2) + 1, 1, v200);
      }

      v7 = v234;
      v34 = v288;
      v202 = *(v200 + 2);
      v201 = *(v200 + 3);
      v248 = v200;
      v55 = v259;
      v3 = v260;
      v44 = v285;
      if (v202 >= v201 >> 1)
      {
        v248 = sub_100031E40((v201 > 1), v202 + 1, 1, v248);
      }

      (*v232)(v255, v250);
      v203 = v248;
      *(v248 + 2) = v202 + 1;
      v204 = &v203[72 * v202];
      *(v204 + 2) = *&v336.isExpanded;
      v205 = *&v336.id._object;
      v206 = *&v336.header.value._object;
      v207 = *&v336.footer.value._object;
      *(v204 + 12) = v336.collapsedItems._rawValue;
      *(v204 + 4) = v206;
      *(v204 + 5) = v207;
      *(v204 + 3) = v205;

      v56 = v286;
    }

    else
    {
      v208 = v227;
      v190(v227, v189, v3);
      v209 = Logger.logObject.getter();
      v210 = static os_log_type_t.default.getter();
      v211 = os_log_type_enabled(v209, v210);
      v7 = v234;
      if (v211)
      {
        v212 = swift_slowAlloc();
        *v212 = 0;
        _os_log_impl(&_mh_execute_header, v209, v210, "Skipping section that has no valid items", v212, 2u);
        v56 = v286;
      }

      (*v283)(v208, v3);
      (*v232)(v255, v250);

      v34 = v288;
    }

    v51 = v249 + 1;
    v57 = v238;
    result = v233;
    if (v249 + 1 == v237)
    {

      v213 = v248;
LABEL_71:
      v214 = sub_100049C1C();
      v215 = v219;
      (*(v219 + 16))(v7, v214, v3);

      v216 = Logger.logObject.getter();
      v217 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        *v218 = 134217984;
        *(v218 + 4) = *(v213 + 2);

        _os_log_impl(&_mh_execute_header, v216, v217, "Populated %ld sections", v218, 0xCu);

        (*(v215 + 8))(v7, v3);
      }

      else
      {

        (*(v215 + 8))(v7, v3);
      }

      return v213;
    }
  }

  v59 = 0;
  v60 = v294;
  v292 = result + ((*(v294 + 80) + 32) & ~*(v294 + 80));
  v284 = &_swiftEmptyArrayStorage;
  v61 = v282;
  v62 = v273;
  object = result;
  while (v59 < *(result + 16))
  {
    (*(v60 + 16))(v297, v292 + *(v60 + 72) * v59, v44);
    Com_Apple_Sse_Ocean_Ndo_Api_CCItem.data.getter();
    if ((*v290)(v61, 1, v34) == 1)
    {
      sub_1000035B8(v61, &qword_1000A7560, &qword_10007D430);
      v63 = sub_100049C1C();
      (*v62)(v55, v63, v3);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Skipping item due to missing data", v66, 2u);
        v56 = v286;
      }

      (*v283)(v55, v3);
      (*v289)(v297, v44);
      v34 = v288;
      goto LABEL_9;
    }

    v67 = v295;
    (*v279)(v295, v61, v34);
    v68 = *v281;
    v69 = v287;
    (*v281)(v287, v67, v34);
    v70 = (*v278)(v69, v34);
    if (v70 == v277)
    {
      (*v275)(v69, v34);
      (*v268)(v56, v69, v280);
      sub_10001A078(&qword_1000A7290, &qword_10007BF10);
      v71 = swift_allocObject();
      *(v71 + 16) = v271;
      *(v71 + 32) = swift_getKeyPath();
      *(v71 + 40) = swift_getKeyPath();
      *(v71 + 48) = swift_getKeyPath();
      *(v71 + 56) = swift_getKeyPath();
      sub_100032194(&qword_1000A7580, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      v72 = Message.ensure(_:)();

      if ((v72 & 1) == 0)
      {
        goto LABEL_31;
      }

      v73 = v261;
      Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.link.getter();
      v74 = v263;
      Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.getter();
      v75 = *v272;
      (*v272)(v73, v274);
      sub_10002E7E8(v74, v265, v266, v323);
      v76 = v74;
      v56 = v286;
      (*v262)(v76, v264);
      if (v324 == 255)
      {
LABEL_31:
        (*v267)(v56, v280);
        v34 = v288;
        (*v276)(v295, v288);
        v44 = v285;
        (*v289)(v297, v285);
        v61 = v282;
      }

      else
      {
        v337[0] = v323[0];
        v337[1] = v323[1];
        v338 = v324;
        *&v257 = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.logoURL.getter();
        *&v256 = v77;
        v78 = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.title.getter();
        v80 = v79;
        v81 = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.subTitle.getter();
        v83 = v82;
        v84 = v261;
        Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.link.getter();
        v85 = Com_Apple_Sse_Ocean_Ndo_Api_CTLink.linkLabel.getter();
        v87 = v86;
        v75(v84, v274);
        NDOPlacardModel.init(iconUrl:title:subtitle:subtitleLinkText:action:)(v257, v256, v78, v80, v81, v83, v85, v87, &v300, v337);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v284 = sub_100031F68(0, *(v284 + 2) + 1, 1, v284);
        }

        v34 = v288;
        v89 = *(v284 + 2);
        v88 = *(v284 + 3);
        v55 = v259;
        v3 = v260;
        v61 = v282;
        v44 = v285;
        v62 = v273;
        if (v89 >= v88 >> 1)
        {
          v284 = sub_100031F68((v88 > 1), v89 + 1, 1, v284);
        }

        v315 = v304;
        v316 = v305;
        LOBYTE(v317) = v306;
        v311 = v300;
        v312 = v301;
        v313 = v302;
        v314 = v303;
        sub_1000321DC(&v311);
        v90 = v284;
        *(v284 + 2) = v89 + 1;
        v91 = &v90[152 * v89];
        v92 = v312;
        *(v91 + 2) = v311;
        *(v91 + 3) = v92;
        v93 = v313;
        v94 = v314;
        v95 = v316;
        *(v91 + 6) = v315;
        *(v91 + 7) = v95;
        *(v91 + 4) = v93;
        *(v91 + 5) = v94;
        v96 = v317;
        v97 = v318;
        v98 = v319;
        *(v91 + 22) = v320;
        *(v91 + 9) = v97;
        *(v91 + 10) = v98;
        *(v91 + 8) = v96;
        v322 = v90;
        swift_endAccess();
        v56 = v286;
        (*v267)(v286, v280);
        (*v276)(v295, v34);
        (*v289)(v297, v44);
      }

      goto LABEL_9;
    }

    if (v70 == v269)
    {
      v99 = v287;
      (*v275)(v287, v34);
      v100 = v258;
      (*v253)(v258, v99, v270);
      sub_10001A078(&qword_1000A7290, &qword_10007BF10);
      v101 = swift_allocObject();
      *(v101 + 16) = v251;
      *(v101 + 32) = swift_getKeyPath();
      *(v101 + 40) = swift_getKeyPath();
      *(v101 + 48) = swift_getKeyPath();
      sub_100032194(&qword_1000A7578, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
      v102 = v100;
      LOBYTE(v100) = Message.ensure(_:)();

      v44 = v285;
      if ((v100 & 1) == 0 || (v103 = v263, Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.action.getter(), sub_10002E7E8(v103, v265, v266, v325), (*v262)(v103, v264), v326 == 255))
      {
        (*v252)(v102, v270);
        v34 = v288;
        (*v276)(v295, v288);
        (*v289)(v297, v44);
LABEL_41:
        v56 = v286;
        v61 = v282;
LABEL_57:
        v62 = v273;
        goto LABEL_9;
      }

      v339[0] = v325[0];
      v339[1] = v325[1];
      v340 = v326;
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      *&v257 = v311.value._object;
      v104 = v311.value._countAndFlagsBits;
      *&v256 = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.title.getter();
      v246 = v105;
      v106 = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.serialNumber.getter();
      v245 = v107;
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      v108 = v310.value._countAndFlagsBits;
      v109 = v310.value._object;
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      NDODeviceModel.init(iconUrl:title:serialNumber:subtitle:callToActionLabel:action:)(v104, v257, v256, v246, v106, v245, v108, v109, &v300, v298, v299, v339);
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v284 = sub_100031F68(0, *(v284 + 2) + 1, 1, v284);
      }

      v34 = v288;
      v62 = v273;
      v111 = *(v284 + 2);
      v110 = *(v284 + 3);
      v55 = v259;
      v3 = v260;
      v61 = v282;
      v44 = v285;
      if (v111 >= v110 >> 1)
      {
        v284 = sub_100031F68((v110 > 1), v111 + 1, 1, v284);
      }

      v315 = v304;
      v316 = v305;
      v317 = v306;
      LOBYTE(v318) = v307;
      v311 = v300;
      v312 = v301;
      v313 = v302;
      v314 = v303;
      sub_100032188(&v311);
      v112 = v284;
      *(v284 + 2) = v111 + 1;
      v113 = &v112[152 * v111];
      v114 = v312;
      *(v113 + 2) = v311;
      *(v113 + 3) = v114;
      v115 = v313;
      v116 = v314;
      v117 = v316;
      *(v113 + 6) = v315;
      *(v113 + 7) = v117;
      *(v113 + 4) = v115;
      *(v113 + 5) = v116;
      v118 = v317;
      v119 = v318;
      v120 = v319;
      *(v113 + 22) = v320;
      *(v113 + 9) = v119;
      *(v113 + 10) = v120;
      *(v113 + 8) = v118;
      v322 = v112;
      swift_endAccess();
      (*v252)(v258, v270);
    }

    else
    {
      v121 = v287;
      v44 = v285;
      if (v70 == v254)
      {
        v122 = v287;
        (*v275)(v287, v34);
        v123 = v247;
        (*v240)(v247, v122, v274);
        sub_10001A078(&qword_1000A7290, &qword_10007BF10);
        v124 = swift_allocObject();
        *(v124 + 16) = v239;
        *(v124 + 32) = swift_getKeyPath();
        sub_100032194(&qword_1000A7418, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
        v125 = Message.ensure(_:)();

        if ((v125 & 1) == 0 || (v126 = v263, Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.getter(), sub_10002E7E8(v126, v265, v266, v330), (*v262)(v126, v264), v331 == 255))
        {
          (*v272)(v123, v274);
          (*v276)(v295, v34);
          (*v289)(v297, v44);
        }

        else
        {
          v343[0] = v330[0];
          v343[1] = v330[1];
          v344 = v331;
          v127 = Com_Apple_Sse_Ocean_Ndo_Api_CTLink.linkLabel.getter();
          NDODWFooterModel.Link.init(label:action:)(v127, v128, v343, v332);
          v129 = v332[0];
          v130 = v332[1];
          v256 = v333;
          v257 = v334;
          v131 = v335;
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v284 = sub_100031F68(0, *(v284 + 2) + 1, 1, v284);
          }

          v133 = *(v284 + 2);
          v132 = *(v284 + 3);
          if (v133 >= v132 >> 1)
          {
            v284 = sub_100031F68((v132 > 1), v133 + 1, 1, v284);
          }

          v311.value._countAndFlagsBits = v129;
          v311.value._object = v130;
          v312 = v256;
          v313 = v257;
          LOBYTE(v314) = v131;
          sub_100032168(&v311);
          v134 = v284;
          *(v284 + 2) = v133 + 1;
          v135 = &v134[152 * v133];
          v136 = v312;
          *(v135 + 2) = v311;
          *(v135 + 3) = v136;
          v137 = v313;
          v138 = v314;
          v139 = v316;
          *(v135 + 6) = v315;
          *(v135 + 7) = v139;
          *(v135 + 4) = v137;
          *(v135 + 5) = v138;
          v140 = v317;
          v141 = v318;
          v142 = v319;
          *(v135 + 22) = v320;
          *(v135 + 9) = v141;
          *(v135 + 10) = v142;
          *(v135 + 8) = v140;
          v322 = v134;
          swift_endAccess();
          (*v272)(v247, v274);
          v34 = v288;
          (*v276)(v295, v288);
          (*v289)(v297, v44);
          v3 = v260;
        }

        v56 = v286;
        v61 = v282;
        goto LABEL_9;
      }

      if (v70 != v241)
      {
        v173 = sub_100049C1C();
        (*v62)(v242, v173, v3);
        v174 = v230;
        v68(v230, v295, v34);
        v175 = Logger.logObject.getter();
        LODWORD(v256) = static os_log_type_t.error.getter();
        v176 = os_log_type_enabled(v175, v256);
        v177 = v276;
        *&v257 = v276 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v176)
        {
          v178 = swift_slowAlloc();
          v246 = v178;
          v179 = swift_slowAlloc();
          v311.value._countAndFlagsBits = v179;
          *v178 = v223;
          v68(v225, v174, v34);
          v180 = String.init<A>(describing:)();
          v182 = v181;
          v183 = v174;
          v184 = *v177;
          (*v177)(v183, v34);
          v185 = sub_10001FEC8(v180, v182, &v311.value._countAndFlagsBits);
          v3 = v260;

          v186 = v246;
          *(v246 + 1) = v185;
          _os_log_impl(&_mh_execute_header, v175, v256, "Should not hit unknown default case, data: %s", v186, 0xCu);
          sub_100001E74(v179);
          v56 = v286;
        }

        else
        {

          v187 = v174;
          v184 = *v177;
          (*v177)(v187, v34);
        }

        (*v283)(v242, v3);
        v184(v295, v34);
        (*v289)(v297, v285);
        v61 = v282;
        v184(v287, v34);
        v55 = v259;
        v44 = v285;
        goto LABEL_57;
      }

      (*v275)(v287, v34);
      v143 = v231;
      (*v229)(v231, v121, v243);
      sub_10001A078(&qword_1000A7290, &qword_10007BF10);
      v144 = swift_allocObject();
      *(v144 + 16) = v271;
      *(v144 + 32) = swift_getKeyPath();
      *(v144 + 40) = swift_getKeyPath();
      *(v144 + 48) = swift_getKeyPath();
      *(v144 + 56) = swift_getKeyPath();
      sub_100032194(&qword_1000A7570, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
      v145 = Message.ensure(_:)();

      if ((v145 & 1) == 0)
      {
        goto LABEL_54;
      }

      v146 = v261;
      Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.link.getter();
      v147 = v263;
      Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.getter();
      v148 = *v272;
      (*v272)(v146, v274);
      sub_10002E7E8(v147, v265, v266, v327);
      v149 = *v262;
      (*v262)(v147, v264);
      if (v328 == 255)
      {
LABEL_54:
        (*v228)(v143, v243);
        (*v276)(v295, v34);
        v44 = v285;
        (*v289)(v297, v285);
        v3 = v260;
        goto LABEL_41;
      }

      v341[0] = v327[0];
      v341[1] = v327[1];
      v342 = v328;
      *&v257 = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.logoURL.getter();
      *&v256 = v150;
      v151 = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.title.getter();
      v245 = v152;
      v246 = v151;
      v153 = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.subTitle.getter();
      v226 = v154;
      v155 = v261;
      Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.link.getter();
      v156 = Com_Apple_Sse_Ocean_Ndo_Api_CTLink.linkLabel.getter();
      v158 = v157;
      v148(v155, v274);
      v159 = v221;
      Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.dismissAction.getter();
      v160 = v263;
      Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.action.getter();
      (*v220)(v159, v222);
      sub_10002E7E8(v160, v265, v266, v329);
      v149(v160, v264);
      v161 = Com_Apple_Sse_Ocean_Ndo_Api_CCItem.hashValue.getter();
      NDOPromoModel.init(iconUrl:title:subtitle:callToActionLabel:action:deleteAction:protoHashValue:)(v257, v256, v246, v245, v153, v226, v156, v158, &v311, v341, v329, v161);
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v284 = sub_100031F68(0, *(v284 + 2) + 1, 1, v284);
      }

      v44 = v285;
      v163 = *(v284 + 2);
      v162 = *(v284 + 3);
      v55 = v259;
      v3 = v260;
      v61 = v282;
      v34 = v288;
      v62 = v273;
      if (v163 >= v162 >> 1)
      {
        v284 = sub_100031F68((v162 > 1), v163 + 1, 1, v284);
      }

      v306 = v317;
      v307 = v318;
      v308 = v319;
      v309 = v320;
      v302 = v313;
      v303 = v314;
      v304 = v315;
      v305 = v316;
      v300 = v311;
      v301 = v312;
      sub_100032178(&v300);
      v164 = v284;
      *(v284 + 2) = v163 + 1;
      v165 = &v164[152 * v163];
      v166 = v301;
      *(v165 + 2) = v300;
      *(v165 + 3) = v166;
      v167 = v302;
      v168 = v303;
      v169 = v305;
      *(v165 + 6) = v304;
      *(v165 + 7) = v169;
      *(v165 + 4) = v167;
      *(v165 + 5) = v168;
      v170 = v306;
      v171 = v307;
      v172 = v308;
      *(v165 + 22) = v309;
      *(v165 + 9) = v171;
      *(v165 + 10) = v172;
      *(v165 + 8) = v170;
      v322 = v164;
      swift_endAccess();
      (*v228)(v231, v243);
    }

    (*v276)(v295, v34);
    (*v289)(v297, v44);
    v56 = v286;
LABEL_9:
    ++v59;
    v60 = v294;
    result = object;
    if (countAndFlagsBits == v59)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_100031260@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.hasTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031290@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.hasSubTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000312C0@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.hasLogoURL.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031340@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031370@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasImageURL.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000313A0@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasSerialNumber.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000313D0@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.imageURL.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000313FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.imageURL.setter();
}

uint64_t sub_10003143C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.subTitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100031468(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.subTitle.setter();
}

uint64_t sub_1000314A8@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasSubTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000314D8@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.ctaLabel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100031504(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.ctaLabel.setter();
}

uint64_t sub_100031544@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasCtaLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031574@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.hasTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000315A4@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.hasSubTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000315D4@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.hasLogoURL.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031654@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.header.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100031680(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Com_Apple_Sse_Ocean_Ndo_Api_CCSection.header.setter();
}

uint64_t sub_1000316C0@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.hasHeader.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000316F0@<X0>(_DWORD *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandThreshold.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100031744@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.hasExpandThreshold.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031774@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandLabel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000317A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandLabel.setter();
}

uint64_t sub_1000317E0@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.hasExpandLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031810@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.footer.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003183C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Com_Apple_Sse_Ocean_Ndo_Api_CCSection.footer.setter();
}

uint64_t sub_10003187C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.hasFooter.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000318AC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CTAction.hasType.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000318DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

char *sub_1000319AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75B8, &qword_10007D978);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031AD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75A8, &qword_10007D960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031BF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A7598, &qword_10007D950);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031D20(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75B0, &unk_10007D968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031E40(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A7590, &qword_10007D948);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031F68(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A7588, &qword_10007D940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100032090()
{
  result = qword_1000A7530;
  if (!qword_1000A7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7530);
  }

  return result;
}

char *sub_1000320E4(char *a1, int64_t a2, char a3)
{
  result = sub_10003228C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_100032104()
{
  result = qword_1000A7558;
  if (!qword_1000A7558)
  {
    sub_10001EFA0(&qword_1000A7550, &qword_10007D428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7558);
  }

  return result;
}

uint64_t sub_100032194(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000321EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000321F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100032240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_10003228C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75A0, &qword_10007D958);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t static NDOAgentSwiftHelpers.getAmsProperties(for:completion:)(void *a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v7 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_10001A078(&qword_1000A75C0, &qword_10007D988);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = v3;

  v17 = a1;
  if ([v17 requestType] == 3)
  {
    v18 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_100034748(v15, 0, v17, a2, a3);

    return sub_1000035B8(v15, &qword_1000A75C0, &qword_10007D988);
  }

  else
  {
    v20 = sub_10005BF18();
    swift_beginAccess();
    (*(v8 + 16))(v11, v20, v7);
    v21 = swift_allocObject();
    v21[2] = sub_100032660;
    v21[3] = v16;
    v21[4] = v17;
    v21[5] = v3;
    v22 = v17;

    swift_getOpaqueTypeConformance2();
    dispatch thunk of NDOLoader.load(with:)();

    return (*(v8 + 8))(v11, v7);
  }
}

void sub_1000326F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id NDOAgentSwiftHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOAgentSwiftHelpers();
  return objc_msgSendSuper2(&v2, "init");
}

id NDOAgentSwiftHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOAgentSwiftHelpers();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100032810()
{
  v0 = sub_100033000();
  if (!v0)
  {
    return 0;
  }

  if (v0[2] != 2)
  {
    goto LABEL_7;
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[7];
  }

  else
  {
LABEL_7:
    v1 = 0;
  }

  return v1;
}

uint64_t sub_100032894(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, void *a4)
{
  v58 = a4;
  v62 = a3;
  v63 = a2;
  v59 = type metadata accessor for Logger();
  v61 = *(v59 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(v59);
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A078(&qword_1000A71A0, qword_10007B370);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for URL();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  __chkstk_darwin(v11);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001A078(&qword_1000A75C0, &qword_10007D988);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v53 - v16;
  v18 = sub_10001A078(&unk_1000A7EA0, &qword_10007F110);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v53 - v20);
  v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CB74(a1, v21, &unk_1000A7EA0, &qword_10007F110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = *v21;
    v27 = v64;
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    swift_willThrowTypedImpl();
    v28 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    swift_errorRetain();
    v63(v17, v27);

    return sub_1000035B8(v17, &qword_1000A75C0, &qword_10007D988);
  }

  (*(v23 + 32))(v26, v21, v22);
  v30 = v58;
  v31 = [v58 requestType];
  v53 = v23;
  v54 = v26;
  if (!v31)
  {
    v33 = v30;
    Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter();
    goto LABEL_9;
  }

  if (v31 == 1)
  {
    v33 = v30;
    Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageDetailsAmsURL.getter();
LABEL_9:
    v35 = 0;
    v32 = v59;
    goto LABEL_10;
  }

  v32 = v59;
  if (v31 != 2)
  {
    goto LABEL_12;
  }

  v33 = v30;
  sub_100035038(v30);
  v35 = v34;
LABEL_10:
  URL.init(string:)();

  v37 = v56;
  v36 = v57;
  if ((*(v56 + 48))(v10, 1, v57) != 1)
  {
    v44 = v55;
    (*(v37 + 32))(v55, v10, v36);
    v45 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
    v46 = v22;
    v47 = *(v45 + 48);
    (*(v37 + 16))(v17, v44, v36);
    v17[v47] = v35 & 1;
    (*(*(v45 - 8) + 56))(v17, 0, 1, v45);
    v63(v17, 0);
    sub_1000035B8(v17, &qword_1000A75C0, &qword_10007D988);
    (*(v37 + 8))(v44, v36);
    return (*(v53 + 8))(v54, v46);
  }

  sub_1000035B8(v10, &qword_1000A71A0, qword_10007B370);
  v30 = v33;
LABEL_12:
  v38 = sub_100049C1C();
  (*(v61 + 16))(v60, v38, v32);
  v39 = v30;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = v22;
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = [v39 requestType];

    _os_log_impl(&_mh_execute_header, v40, v41, "Unable to get %lu AMS url", v43, 0xCu);
    v22 = v42;
  }

  else
  {

    v40 = v39;
  }

  v48 = v63;

  (*(v61 + 8))(v60, v32);
  v49 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
  (*(*(v49 - 8) + 56))(v17, 1, 1, v49);
  v50 = type metadata accessor for NDOErrors();
  sub_100027ADC();
  v51 = swift_allocError();
  (*(*(v50 - 8) + 104))(v52, enum case for NDOErrors.failedToLoadAmsUrl(_:), v50);
  v48(v17, v51);

  sub_1000035B8(v17, &qword_1000A75C0, &qword_10007D988);
  return (*(v53 + 8))(v54, v22);
}

void *sub_100033000()
{
  v0 = sub_1000331D8();
  if (!v0)
  {
    return 0;
  }

  if (!v0[2])
  {

    return 0;
  }

  v1 = v0[4];
  v2 = v0[5];

  v22[0] = 47;
  v22[1] = 0xE100000000000000;
  __chkstk_darwin(v3);
  v20[2] = v22;
  v4 = sub_1000333B8(0x7FFFFFFFFFFFFFFFLL, 1, sub_10003551C, v20, v1, v2, &v21);
  v5 = v4[2];
  if (!v5)
  {

    return &_swiftEmptyArrayStorage;
  }

  v22[0] = &_swiftEmptyArrayStorage;
  result = sub_100033930(0, v5, 0);
  v7 = 0;
  v8 = v22[0];
  v9 = v4 + 7;
  while (v7 < v4[2])
  {
    v10 = *(v9 - 3);
    v11 = *(v9 - 2);
    v12 = *(v9 - 1);
    v13 = *v9;

    v14 = static String._fromSubstring(_:)();
    v16 = v15;

    v22[0] = v8;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_100033930((v17 > 1), v18 + 1, 1);
      v8 = v22[0];
    }

    ++v7;
    *(v8 + 16) = v18 + 1;
    v19 = v8 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
    v9 += 4;
    if (v5 == v7)
    {

      return v8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000331D8()
{
  v1 = [v0 universalLinkPath];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v25[0] = 63;
  v25[1] = 0xE100000000000000;
  __chkstk_darwin(v6);
  v23[2] = v25;
  v7 = sub_1000333B8(1, 1, sub_10003551C, v23, v3, v5, &v24);
  v8 = v7[2];
  if (!v8)
  {

    return &_swiftEmptyArrayStorage;
  }

  v25[0] = &_swiftEmptyArrayStorage;
  result = sub_100033930(0, v8, 0);
  v10 = 0;
  v11 = v25[0];
  v12 = v7 + 7;
  while (v10 < v7[2])
  {
    v13 = *(v12 - 3);
    v14 = *(v12 - 2);
    v15 = *(v12 - 1);
    v16 = *v12;

    v17 = static String._fromSubstring(_:)();
    v19 = v18;

    v25[0] = v11;
    v21 = *(v11 + 16);
    v20 = *(v11 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_100033930((v20 > 1), v21 + 1, 1);
      v11 = v25[0];
    }

    ++v10;
    *(v11 + 16) = v21 + 1;
    v22 = v11 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v12 += 4;
    if (v8 == v10)
    {

      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000333B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100033778(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100033778((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100033778(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100033778(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100033778((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_100033778(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75F8, &qword_10007D9D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100033884(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

char *sub_100033930(char *a1, int64_t a2, char a3)
{
  result = sub_100033950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100033950(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A6FA0, &qword_10007D9D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100033A5C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NDOAgentInternalDebugHelpers();
  v8 = static NDOAgentInternalDebugHelpers.debugAMSPayload()();
  if (v9 >> 60 == 15)
  {
    type metadata accessor for NDOCompositionLayer();
    sub_10005D434(v33);
    v32 = v33[4];
    v34 = sub_100001F3C(v33, v33[3]);
    v10 = [a1 serialNumber];
    if (v10)
    {
      v11 = v10;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v31 = 0;
    }

    v24 = [a1 additionalBody];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100032810();
    v25 = sub_1000331D8();
    if (v25)
    {
      if (v25[2] == 2)
      {
        v26 = v25[7];
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v25[6] & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v28 = v25[7];
        }
      }
    }

    v12 = dispatch thunk of RequestPayloadProvider.amsBodyPayload(serialNumber:extraPayload:ulCode:ulParams:)();

    sub_100001E74(v33);
  }

  else
  {
    v12 = v8;
    v13 = v9;
    v14 = sub_100049C1C();
    (*(v4 + 16))(v7, v14, v3);
    sub_100034F60(v12, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    sub_100035024(v12, v13);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      LODWORD(v32) = v16;
      v18 = v17;
      v31 = swift_slowAlloc();
      v33[0] = v31;
      *v18 = 136315138;
      sub_100034F60(v12, v13);
      v19 = Data.description.getter();
      v34 = v1;
      v20 = v19;
      v22 = v21;
      sub_100035024(v12, v13);
      v23 = sub_10001FEC8(v20, v22, v33);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v32, "AMS Payload override: %s", v18, 0xCu);
      sub_100001E74(v31);
    }

    (*(v4 + 8))(v7, v3);
  }

  return v12;
}

uint64_t sub_100033E2C(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = a3;
  v5 = sub_10001A078(&qword_1000A75C0, &qword_10007D988);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v42 - v7;
  v9 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v19 = sub_100033A5C(a2);
  v21 = v20;
  v22 = [objc_allocWithZone(NDORequestProperties) init];
  v43 = v19;
  v23 = v21;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v25 = [v22 signatureHeadersForBody:isa];

  if (v25)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100001F80(&_swiftEmptyArrayStorage);
  }

  sub_10001CB74(a1, v8, &qword_1000A75C0, &qword_10007D988);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000035B8(v8, &qword_1000A75C0, &qword_10007D988);
    v26 = objc_allocWithZone(NDOAMSProperties);
    v27 = v43;
    sub_100034F60(v43, v23);
    v28 = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = Data._bridgeToObjectiveC()().super.isa;
    v30 = [v26 initWithUrl:0 signatureHeaders:v28 bodyData:v29];

    sub_100003EBC(v27, v23);
    (*(v44 + 16))(v44, v30, 0);

    return sub_100003EBC(v27, v23);
  }

  else
  {
    sub_100034FB4(v8, v16);
    sub_10001CB74(v16, v14, &qword_1000A75C8, qword_10007D990);
    v32 = v16[*(v9 + 48)];
    v33 = objc_allocWithZone(NDOAMSProperties);
    v34 = v43;
    sub_100034F60(v43, v23);
    URL._bridgeToObjectiveC()(v35);
    v37 = v36;
    v38 = type metadata accessor for URL();
    (*(*(v38 - 8) + 8))(v14, v38);
    v39 = Dictionary._bridgeToObjectiveC()().super.isa;

    v40 = Data._bridgeToObjectiveC()().super.isa;
    v41 = [v33 initWithUrl:v37 signatureHeaders:v39 bodyData:v40 presentModally:v32];

    sub_100003EBC(v34, v23);
    (*(v44 + 16))(v44, v41, 0);

    sub_100003EBC(v34, v23);
    return sub_1000035B8(v16, &qword_1000A75C8, qword_10007D990);
  }
}

uint64_t sub_100034440(void *a1, uint64_t a2, const void *a3)
{
  v6 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = sub_10001A078(&qword_1000A75C0, &qword_10007D988);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = sub_100034ED8;
  v16[4] = v15;
  v16[5] = a2;
  _Block_copy(a3);

  v17 = a1;
  if ([v17 requestType] == 3)
  {
    v18 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    _Block_copy(a3);
    sub_100033E2C(v14, v17, a3);
    _Block_release(a3);

    sub_1000035B8(v14, &qword_1000A75C0, &qword_10007D988);
  }

  else
  {
    v19 = sub_10005BF18();
    swift_beginAccess();
    (*(v7 + 16))(v10, v19, v6);
    v20 = swift_allocObject();
    v20[2] = sub_100035514;
    v20[3] = v16;
    v20[4] = v17;
    v20[5] = a2;
    v21 = v17;

    swift_getOpaqueTypeConformance2();
    dispatch thunk of NDOLoader.load(with:)();

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_100034748(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v64 = a5;
  v65 = a4;
  v62 = a1;
  v63 = a3;
  v6 = sub_10001A078(&qword_1000A75C0, &qword_10007D988);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v59 - v8;
  v10 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  if (a2)
  {
    swift_errorRetain();
    v24 = sub_100049C1C();
    (*(v19 + 16))(v23, v24, v18);
    swift_errorRetain();
    v25 = v63;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    v28 = v18;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 134218242;
      *(v29 + 4) = [v25 requestType];

      *(v29 + 12) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get %lu AMS url, error: %@", v29, 0x16u);
      sub_1000035B8(v30, &qword_1000A6F40, &qword_10007E690);
    }

    else
    {

      v26 = v25;
    }

    (*(v19 + 8))(v23, v28);
    swift_errorRetain();
    v65(0, a2);
  }

  else
  {
    v60 = v11;
    v61 = v9;
    v32 = v62;
    v34 = sub_100033A5C(v63);
    v36 = v35;
    v37 = [objc_allocWithZone(NDORequestProperties) init];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v39 = [v37 signatureHeadersForBody:isa];

    if (v39)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_100001F80(&_swiftEmptyArrayStorage);
    }

    v40 = v32;
    v41 = v15;
    v43 = v60;
    v42 = v61;
    sub_10001CB74(v40, v61, &qword_1000A75C0, &qword_10007D988);
    if ((*(v43 + 48))(v42, 1, v10) == 1)
    {
      sub_1000035B8(v42, &qword_1000A75C0, &qword_10007D988);
      v44 = objc_allocWithZone(NDOAMSProperties);
      v45 = v34;
      sub_100034F60(v34, v36);
      v46 = Dictionary._bridgeToObjectiveC()().super.isa;

      v47 = Data._bridgeToObjectiveC()().super.isa;
      v48 = [v44 initWithUrl:0 signatureHeaders:v46 bodyData:v47];

      sub_100003EBC(v45, v36);
      v65(v48, 0);

      return sub_100003EBC(v45, v36);
    }

    else
    {
      sub_100034FB4(v42, v17);
      sub_10001CB74(v17, v15, &qword_1000A75C8, qword_10007D990);
      v49 = v17[*(v10 + 48)];
      v50 = objc_allocWithZone(NDOAMSProperties);
      sub_100034F60(v34, v36);
      v51 = v41;
      URL._bridgeToObjectiveC()(v52);
      v54 = v53;
      v55 = type metadata accessor for URL();
      (*(*(v55 - 8) + 8))(v51, v55);
      v56 = Dictionary._bridgeToObjectiveC()().super.isa;

      v57 = Data._bridgeToObjectiveC()().super.isa;
      v58 = [v50 initWithUrl:v54 signatureHeaders:v56 bodyData:v57 presentModally:v49];

      sub_100003EBC(v34, v36);
      v65(v58, 0);

      sub_100003EBC(v34, v36);
      return sub_1000035B8(v17, &qword_1000A75C8, qword_10007D990);
    }
  }
}

uint64_t sub_100034EE0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100034F20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100034F60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100034FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035024(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003EBC(a1, a2);
  }

  return a1;
}

uint64_t sub_100035038(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100033000();
  if (!v7)
  {
    goto LABEL_12;
  }

  if (!v7[2])
  {
    goto LABEL_11;
  }

  v9 = v7[4];
  v8 = v7[5];

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v42 = v9;
  v43 = v8;

  v11._countAndFlagsBits = 47;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);

  v12 = v43;
  if (!v43)
  {
LABEL_12:
    v19 = sub_100049C1C();
    (*(v3 + 16))(v6, v19, v2);
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136315138;
      v25 = [v20 universalLinkPath];
      if (v25)
      {
        v40 = v22;
        v26 = v25;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        LOBYTE(v22) = v40;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      v42 = v27;
      v43 = v29;
      sub_10001A078(&unk_1000A7600, &qword_10007D9E8);
      v30 = String.init<A>(describing:)();
      v32 = sub_10001FEC8(v30, v31, &v41);

      *(v23 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "Attempting to get universal properties for invalid universal link path: %s", v23, 0xCu);
      sub_100001E74(v24);
    }

    (*(v3 + 8))(v6, v2);
    return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter();
  }

  v13 = v42;
  v14 = sub_100032810();
  if (!v15)
  {
LABEL_11:

    goto LABEL_12;
  }

  v16 = v15;
  v17 = v14;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v12 == v18)
  {

    return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter();
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {

    return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter();
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v12 == v35)
  {

LABEL_25:

    return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetAmsURL.getter();
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_25;
  }

  v37 = Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetCodes.getter();
  v42 = v17;
  v43 = v16;
  __chkstk_darwin(v37);
  *&v39[-16] = &v42;
  v38 = sub_100033884(sub_1000354A0, &v39[-32], v37);

  if ((v38 & 1) == 0)
  {
    return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter();
  }

  return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetAmsURL.getter();
}

uint64_t sub_1000354BC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_100035538@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedProvider];
  v3 = type metadata accessor for NDOAPIDeviceInfoAdapter();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  a1[3] = v3;
  result = sub_10003561C();
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_1000355B0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t sub_10003561C()
{
  result = qword_1000A7610;
  if (!qword_1000A7610)
  {
    type metadata accessor for NDOAPIDeviceInfoAdapter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7610);
  }

  return result;
}

uint64_t sub_100035670(void *a1)
{
  v3 = [a1 serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(*v1 + 112))([a1 deviceType]);
  v4 = [a1 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [a1 productID];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = [a1 color];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = [a1 enclosureColor];
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = [a1 coverGlassColor];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  [a1 isAltAccountWatch];
  [a1 isActiveWatch];
  return RequestDeviceInfo.init(serialNumber:primary:deviceType:deviceName:deviceModel:deviceColor:deviceEnclosureColor:deviceCoverGlassColor:isTinkerPaired:isActiveWatch:)();
}

id sub_1000358B0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    v7 = MobileGestalt_copy_deviceClass_obj();

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (v8 == 0x447974696C616552 && v10 == 0xED00006563697665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        countAndFlagsBits = 0x4E4F49534956;
      }

      else
      {
        countAndFlagsBits = String.uppercased()()._countAndFlagsBits;
      }
    }

    else
    {
      countAndFlagsBits = 0x4E574F4E4B4E55;
      v12 = sub_100049C1C();
      (*(v1 + 16))(v4, v12, v0);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Unknown device class", v15, 2u);
      }

      (*(v1 + 8))(v4, v0);
    }

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100035AF0(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0x53444F50524941;
    }

    if (a1 == 4)
    {
      return 0x59414C50534944;
    }
  }

  else
  {
    if (!a1)
    {
      return (*(*v1 + 104))(v6);
    }

    if (a1 == 1)
    {
      return 0x4843544157;
    }
  }

  v10 = sub_100049C1C();
  (*(v4 + 16))(v8, v10, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v11, v12, "Unsupported device type: %lu", v13, 0xCu);
  }

  (*(v4 + 8))(v8, v3);
  v16 = 0;
  v17 = 0xE000000000000000;
  v14._countAndFlagsBits = 0x5F4E574F4E4B4E55;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  v15[1] = a1;
  type metadata accessor for NDODeviceType();
  _print_unlocked<A, B>(_:_:)();
  return v16;
}

void *sub_100035D44()
{
  v19 = type metadata accessor for RequestDeviceInfo();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v19);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NDOStudioDisplayProvider) init];
  v5 = [v4 devices];

  sub_100036478();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    return &_swiftEmptyArrayStorage;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v20 = &_swiftEmptyArrayStorage;
  result = sub_1000364C4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v20;
    v11 = v6;
    v18 = v6 & 0xC000000000000001;
    v12 = v6;
    v13 = v7;
    do
    {
      if (v18)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v11 + 8 * v9 + 32);
      }

      v15 = v14;
      sub_100035670(v14);

      v20 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000364C4(v16 > 1, v17 + 1, 1);
        v10 = v20;
      }

      ++v9;
      v10[2] = v17 + 1;
      (*(v0 + 32))(v10 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v17, v3, v19);
      v11 = v12;
    }

    while (v13 != v9);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100035FA0()
{
  v1 = v0;
  sub_10001A078(&qword_1000A7618, &qword_10007D9F0);
  v2 = *(type metadata accessor for RequestDeviceInfo() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10007AE00;
  v6 = *(v0 + 16);
  v7 = [v6 defaultDevice];
  sub_100035670(v7);

  v8 = [v6 pairedWatches];
  sub_100036478();
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_1000367E8(v9, v1);

  sub_1000366BC(v10);
  v11 = [v6 pairedBTDevices];
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_1000367E8(v12, v1);

  sub_1000366BC(v13);
  v14 = sub_100035D44();
  sub_1000366BC(v14);
  return v5;
}

uint64_t sub_1000361B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000361D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void type metadata accessor for NDODeviceType()
{
  if (!qword_1000A7708)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000A7708);
    }
  }
}

size_t sub_1000362A0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001A078(&qword_1000A7618, &qword_10007D9F0);
  v10 = *(type metadata accessor for RequestDeviceInfo() - 8);
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
  v15 = *(type metadata accessor for RequestDeviceInfo() - 8);
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

unint64_t sub_100036478()
{
  result = qword_1000A7620;
  if (!qword_1000A7620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A7620);
  }

  return result;
}

size_t sub_1000364C4(size_t a1, int64_t a2, char a3)
{
  result = sub_1000364E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000364E4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001A078(&qword_1000A7618, &qword_10007D9F0);
  v10 = *(type metadata accessor for RequestDeviceInfo() - 8);
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
  v15 = *(type metadata accessor for RequestDeviceInfo() - 8);
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

uint64_t sub_1000366BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1000362A0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for RequestDeviceInfo();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000367E8(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v37 = type metadata accessor for RequestDeviceInfo();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v31[1] = v2;
    v42 = &_swiftEmptyArrayStorage;
    sub_1000364C4(0, v8, 0);
    v41 = v42;
    v10 = a1 + 64;
    v11 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v12 = result;
    v13 = 0;
    v35 = v4 + 32;
    v36 = v4;
    v32 = a1 + 72;
    v33 = v8;
    v34 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v17 = *(a1 + 36);
      v39 = v13;
      v40 = v17;
      v18 = *(*(a1 + 56) + 8 * v12);
      sub_100035670(v18);

      v19 = v41;
      v42 = v41;
      v20 = a1;
      v22 = v41[2];
      v21 = v41[3];
      if (v22 >= v21 >> 1)
      {
        sub_1000364C4(v21 > 1, v22 + 1, 1);
        v19 = v42;
      }

      v19[2] = v22 + 1;
      v23 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v41 = v19;
      result = (*(v36 + 32))(v19 + v23 + *(v36 + 72) * v22, v7, v37);
      v14 = 1 << *(v20 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v34;
      v24 = *(v34 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v20;
      if (v40 != *(v20 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v33;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v15 = v33;
        v28 = (v32 + 8 * v16);
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_100036AF0(v12, v40, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_100036AF0(v12, v40, 0);
      }

LABEL_4:
      v13 = v39 + 1;
      v12 = v14;
      if (v39 + 1 == v15)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100036AF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100036B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100049C1C();
  (*(v11 + 16))(v14, v15, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *&v28 = a3;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Creating config loader", v18, 2u);
    a3 = v28;
  }

  (*(v11 + 8))(v14, v10);
  v28 = *(a3 + 24);
  v19 = v28;
  v20 = sub_100001F3C(a3, v28);
  *(&v30[1] + 8) = v28;
  v21 = sub_100027B84(v30);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  sub_100036DFC(a2, v32);
  sub_100001E74(v30);
  sub_100001E10(a2, v31);
  sub_10001EC4C(a3, v30);
  sub_100001E10(a4, v29);
  v22 = swift_allocObject();
  sub_100005734(v31, v22 + 16);
  sub_100036FF4(v30, (v22 + 56));
  sub_100005734(v29, v22 + 104);
  sub_100001E10(a1, v30);
  sub_100001E10(v32, v31);
  v23 = type metadata accessor for NDOConfigLoader();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = NDOConfigLoader.init(plistLoader:localConfigLoader:remoteConfigLoaderForUrl:)();
  result = sub_100001E74(v32);
  *a5 = v26;
  return result;
}

unint64_t sub_100036DFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_100049C1C();
  (*(v5 + 16))(v8, v9, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating local config loader", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  sub_100001E10(a1, v19);
  static NDOResponseMapper.Config.checkTTLAndDecode(keyValueReader:)();
  v13 = sub_10001A078(&qword_1000A7770, &qword_10007DAB8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  a2[3] = v13;
  result = sub_10003875C();
  a2[4] = result;
  *a2 = v16;
  return result;
}

_OWORD *sub_100036FF4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_10003704C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100049C1C();
  (*(v11 + 16))(v14, v15, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24 = a2;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Creating remote config loader", v18, 2u);
    a2 = v24;
  }

  (*(v11 + 8))(v14, v10);
  sub_100001E10(a2, v27);
  sub_10001EC4C(a3, v26);
  sub_100001E10(a4, v25);
  v19 = swift_allocObject();
  sub_100005734(v27, v19 + 16);
  sub_100036FF4(v26, (v19 + 56));
  sub_100005734(v25, v19 + 104);
  sub_100001E10(a1, v26);
  v20 = type metadata accessor for NDOConfigLoader();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  result = NDOConfigLoader.init(plistLoader:localConfigLoader:remoteConfigLoaderForUrl:)();
  *a5 = result;
  return result;
}

unint64_t sub_1000372A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v41 = a6;
  v40 = a5;
  v37 = a2;
  v38 = a1;
  v42 = a7;
  v39 = type metadata accessor for URL();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v39);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100049C1C();
  (*(v13 + 16))(v16, v17, v12);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Creating remote config loader", v20, 2u);
    v11 = v36;
  }

  (*(v13 + 8))(v16, v12);
  sub_100001E10(v37, v46);
  v21 = v39;
  (*(v9 + 16))(v11, v38, v39);
  sub_100001E10(a4, v45);
  sub_10001EC4C(a3, v44);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v9 + 32))(v24 + v22, v11, v21);
  sub_100005734(v45, v24 + v23);
  sub_100036FF4(v44, (v24 + ((v23 + 47) & 0xFFFFFFFFFFFFFFF8)));
  v25 = a3[3];
  v26 = a3[5];
  v27 = sub_100001F3C(a3, v25);
  v43[3] = v25;
  v43[4] = v26;
  v28 = sub_100027B84(v43);
  (*(*(v25 - 8) + 16))(v28, v27, v25);
  static NDOResponseMapper.Config.decodeAndSaveTTL(keyValueWriter:)();
  sub_100001E74(v43);
  v29 = sub_10001A078(&qword_1000A7770, &qword_10007DAB8);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  v33 = v42;
  v42[3] = v29;
  result = sub_10003875C();
  v33[4] = result;
  *v33 = v32;
  return result;
}

id sub_10003766C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NDOConstants.localConfigURL.getter();
  v5 = objc_allocWithZone(NSURLRequest);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v9 = [v5 initWithURL:v7];

  (*(v1 + 8))(v4, v0);
  return v9;
}

id sub_10003776C(int a1, uint64_t a2, void *a3, void *a4)
{
  v91 = a4;
  v85 = a1;
  v97 = type metadata accessor for Logger();
  v99 = *(v97 - 8);
  v5 = *(v99 + 64);
  v6 = __chkstk_darwin(v97);
  v88 = (&v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v87 = &v82 - v9;
  __chkstk_darwin(v8);
  v95 = &v82 - v10;
  v94 = type metadata accessor for JSONEncodingOptions();
  v92 = *(v94 - 8);
  v11 = *(v92 + 64);
  v12 = __chkstk_darwin(v94);
  v86 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v93 = &v82 - v14;
  v89 = type metadata accessor for NDOKeyValueStoreKey();
  v15 = *(v89 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v89);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Environment();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v90 = (&v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v101 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest();
  v96 = *(v101 - 8);
  v24 = *(v96 + 64);
  v25 = __chkstk_darwin(v101);
  v83 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v82 - v27;
  v29 = objc_allocWithZone(NSMutableURLRequest);
  URL._bridgeToObjectiveC()(v30);
  v32 = v31;
  v33 = [v29 initWithURL:v31];

  v34 = String._bridgeToObjectiveC()();
  [v33 setHTTPMethod:v34];

  v35 = String._bridgeToObjectiveC()();
  v36 = String._bridgeToObjectiveC()();
  [v33 addValue:v35 forHTTPHeaderField:v36];

  v37 = String._bridgeToObjectiveC()();
  v38 = String._bridgeToObjectiveC()();
  v98 = v33;
  [v33 addValue:v37 forHTTPHeaderField:v38];

  Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.init()();
  v39 = a3[3];
  v40 = a3[4];
  v84 = a3;
  sub_100001F3C(a3, v39);
  dispatch thunk of RequestPayloadProvider.requestMeta()();
  v100 = v28;
  Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.meta.setter();
  v41 = v91[4];
  sub_100001F3C(v91, v91[3]);
  v42 = v89;
  (*(v15 + 104))(v18, enum case for NDOKeyValueStoreKey.environment(_:), v89);
  dispatch thunk of NDOKeyValueStoreReader.object(for:)();
  (*(v15 + 8))(v18, v42);
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v43 = v102[0];
      v44 = v102[1];
      v45 = v99;
      v46 = v95;
      v47 = v93;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000035B8(v103, &qword_1000A6FD8, &unk_10007DAC0);
  }

  v45 = v99;
  v46 = v95;
  v47 = v93;
  v43 = 0;
  v44 = 0xE000000000000000;
LABEL_6:
  sub_100038330(v43, v44, v90);

  Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.env.setter();
  JSONEncodingOptions.init()();
  sub_1000387C0();
  v48 = Message.jsonUTF8Data(options:)();
  v49 = *(v92 + 8);
  v50 = v48;
  v52 = v51;
  v49(v47, v94);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100003EBC(v50, v52);
  [v98 setHTTPBody:isa];

  v54 = v84[4];
  sub_100001F3C(v84, v84[3]);
  dispatch thunk of RequestPayloadProvider.addHeaders(to:isRetry:)();
  v55 = sub_100049C1C();
  v92 = *(v45 + 16);
  v93 = v55;
  v56 = v97;
  (v92)(v46);
  v57 = Logger.logObject.getter();
  LODWORD(v91) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v91))
  {
    v90 = v49;
    v58 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v102[0] = v88;
    v89 = v58;
    *v58 = 136315138;
    v59 = v100;
    swift_beginAccess();
    v60 = v96 + 16;
    (*(v96 + 16))(v83, v59, v101);
    JSONEncodingOptions.init()();
    v61 = Message.jsonString(options:)();
    v63 = v62;
    v90(v86, v94);
    (*(v60 - 8))(v83, v101);
    v64 = sub_10001FEC8(v61, v63, v102);

    v65 = v89;
    *(v89 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v57, v91, "Config request body: %s", v65, 0xCu);
    sub_100001E74(v88);

    v66 = *(v45 + 8);
    v67 = v97;
    v66(v95, v97);
  }

  else
  {

    v66 = *(v45 + 8);
    v66(v46, v56);
    v67 = v56;
  }

  v68 = v87;
  (v92)(v87, v93, v67);
  v69 = v98;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v102[0] = v73;
    *v72 = 136315138;
    v74 = [v69 allHTTPHeaderFields];
    if (v74)
    {
      v75 = v74;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_100001F80(&_swiftEmptyArrayStorage);
    }

    v77 = Dictionary.description.getter();
    v79 = v78;

    v80 = sub_10001FEC8(v77, v79, v102);

    *(v72 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v70, v71, "Config request headers: %s", v72, 0xCu);
    sub_100001E74(v73);

    v76 = v87;
  }

  else
  {

    v76 = v68;
  }

  v66(v76, v67);
  (*(v96 + 8))(v100, v101);
  return v69;
}

uint64_t sub_100038330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Environment();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A078(&qword_1000A7788, &qword_10007DAD0);
  v9 = sub_10001A078(&qword_1000A7790, &qword_10007DAD8);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10007DA80;
  v13 = (v12 + v11);
  v14 = *(v9 + 48);
  *v13 = 29801;
  *(v13 + 1) = 0xE200000000000000;
  v31 = *(v5 + 104);
  v32 = v5 + 104;
  v31(&v13[v14], enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.it(_:), v4);
  v15 = &v13[v10];
  v16 = *(v9 + 48);
  *v15 = 29813;
  *(v15 + 1) = 0xE200000000000000;
  v31(&v13[v10 + v16], enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.uat(_:), v4);
  v17 = &v13[2 * v10];
  v18 = *(v9 + 48);
  *v17 = 0x746F6C6970;
  *(v17 + 1) = 0xE500000000000000;
  v31(&v17[v18], enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.pilot(_:), v4);
  v19 = &v13[3 * v10];
  v20 = *(v9 + 48);
  *v19 = 7759204;
  *(v19 + 1) = 0xE300000000000000;
  v31(&v19[v20], enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.dev(_:), v4);
  v21 = &v13[4 * v10];
  v22 = *(v9 + 48);
  *v21 = 1685025392;
  *(v21 + 1) = 0xE400000000000000;
  v23 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.prod(_:);
  v31(&v21[v22], enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.prod(_:), v4);
  v24 = sub_100038818(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v24 + 16) && (v25 = sub_10001CEA0(v29, v30), (v26 & 1) != 0))
  {
    (*(v5 + 16))(v8, *(v24 + 56) + *(v5 + 72) * v25, v4);

    return (*(v5 + 32))(a3, v8, v4);
  }

  else
  {

    v28 = v31;

    return v28(a3, v23, v4);
  }
}

uint64_t sub_1000386C0()
{
  sub_100001E74(v0 + 2);
  sub_100001E74(v0 + 7);
  sub_100001E74(v0 + 13);

  return _swift_deallocObject(v0, 144, 7);
}

unint64_t sub_10003875C()
{
  result = qword_1000A7778;
  if (!qword_1000A7778)
  {
    sub_10001EFA0(&qword_1000A7770, &qword_10007DAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7778);
  }

  return result;
}

unint64_t sub_1000387C0()
{
  result = qword_1000A7780;
  if (!qword_1000A7780)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7780);
  }

  return result;
}

unint64_t sub_100038818(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7790, &qword_10007DAD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10001A078(&qword_1000A7798, &qword_10007DAE0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000389F4(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10001CEA0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Environment();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000389F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7790, &qword_10007DAD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038A64()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100001E74((v0 + v5));
  sub_100001E74((v0 + v6));

  return _swift_deallocObject(v0, v6 + 48, v3 | 7);
}

id sub_100038B10(int a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_10003776C(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t NDOSection.id.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t NDOWarrantyProperties.coverageLabel.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t NDOWarrantyProperties.coverageExpirationLabel.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t NDOSection.items.getter()
{
  v1 = 64;
  if (*v0)
  {
    v1 = 56;
  }

  v2 = *&v0[v1];
}

BOOL NDOSection.isPlacardSection.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2 && (memmove(__dst, (v1 + 32), 0x98uLL), sub_100038CF0(__dst) == 2) && (sub_10000574C(__dst), v2 == 1))
  {
    return *(*(v0 + 64) + 16) == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000391CC()
{
  v1 = *v0;
  v2 = 0x646E617078457369;
  v3 = 0x7265746F6F66;
  v4 = 0x6465646E61707865;
  if (v1 != 4)
  {
    v4 = 0x657370616C6C6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0x726564616568;
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

uint64_t sub_100039290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003A8E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000392B8(uint64_t a1)
{
  v2 = sub_10003A83C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000392F4(uint64_t a1)
{
  v2 = sub_10003A83C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOSection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A77A0, &qword_10007DAE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10003A83C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    LOBYTE(v20) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v3[7];
    HIBYTE(v19) = 4;
    sub_10001A078(&qword_1000A77A8, &qword_10007DAF0);
    sub_10003B154(&qword_1000A77B0, sub_10003A890);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v3[8];
    HIBYTE(v19) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 NDOSection.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003AAE8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10003961C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

Swift::Void __swiftcall NDOSection.removeItem(with:)(Swift::Int with)
{
  v3 = *(v1 + 56);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = &_swiftEmptyArrayStorage;
    do
    {
      v8 = (v6 + 152 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v10 = v8[1];
        v66 = *v8;
        v67 = v10;
        v11 = v8[2];
        v12 = v8[3];
        v13 = v8[5];
        v70 = v8[4];
        v71 = v13;
        v68 = v11;
        v69 = v12;
        v14 = v8[6];
        v15 = v8[7];
        v16 = v8[8];
        v75 = *(v8 + 18);
        v73 = v15;
        v74 = v16;
        v72 = v14;
        v5 = v9 + 1;
        sub_10003A630(&v66, &v56);
        if (NDOItem.hashValue.getter() != with)
        {
          break;
        }

        sub_10003A68C(&v66);
        v8 = (v8 + 152);
        ++v9;
        if (v4 == v5)
        {
          goto LABEL_15;
        }
      }

      v54 = v7;
      v52 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10003A6E0(0, v7[2] + 1, 1);
        v7 = v54;
      }

      v18 = v7[2];
      v17 = v7[3];
      if (v18 >= v17 >> 1)
      {
        sub_10003A6E0((v17 > 1), v18 + 1, 1);
        v7 = v54;
      }

      v7[2] = v18 + 1;
      v19 = &v7[19 * v18];
      v20 = v67;
      *(v19 + 2) = v66;
      *(v19 + 3) = v20;
      v21 = v68;
      v22 = v69;
      v23 = v71;
      *(v19 + 6) = v70;
      *(v19 + 7) = v23;
      *(v19 + 4) = v21;
      *(v19 + 5) = v22;
      v24 = v72;
      v25 = v73;
      v26 = v74;
      *(v19 + 22) = v75;
      *(v19 + 9) = v25;
      *(v19 + 10) = v26;
      *(v19 + 8) = v24;
      v6 = v52;
    }

    while (v4 - 1 != v9);
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

LABEL_15:

  *(v1 + 56) = v7;
  v27 = *(v1 + 64);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = v27 + 32;
    v31 = &_swiftEmptyArrayStorage;
LABEL_17:
    v32 = (v30 + 152 * v29);
    v33 = v29;
    while (v33 < *(v27 + 16))
    {
      v34 = v32[1];
      v56 = *v32;
      v57 = v34;
      v35 = v32[2];
      v36 = v32[3];
      v37 = v32[5];
      v60 = v32[4];
      v61 = v37;
      v58 = v35;
      v59 = v36;
      v38 = v32[6];
      v39 = v32[7];
      v40 = v32[8];
      v65 = *(v32 + 18);
      v63 = v39;
      v64 = v40;
      v62 = v38;
      v29 = v33 + 1;
      sub_10003A630(&v56, &v54);
      if (NDOItem.hashValue.getter() != with)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v31;
        v53 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10003A6E0(0, v31[2] + 1, 1);
          v31 = v55;
        }

        v43 = v31[2];
        v42 = v31[3];
        if (v43 >= v42 >> 1)
        {
          sub_10003A6E0((v42 > 1), v43 + 1, 1);
          v31 = v55;
        }

        v31[2] = v43 + 1;
        v44 = &v31[19 * v43];
        v45 = v57;
        *(v44 + 2) = v56;
        *(v44 + 3) = v45;
        v46 = v58;
        v47 = v59;
        v48 = v61;
        *(v44 + 6) = v60;
        *(v44 + 7) = v48;
        *(v44 + 4) = v46;
        *(v44 + 5) = v47;
        v49 = v62;
        v50 = v63;
        v51 = v64;
        *(v44 + 22) = v65;
        *(v44 + 9) = v50;
        *(v44 + 10) = v51;
        *(v44 + 8) = v49;
        v30 = v53;
        if (v28 - 1 != v33)
        {
          goto LABEL_17;
        }

        goto LABEL_29;
      }

      sub_10003A68C(&v56);
      v32 = (v32 + 152);
      ++v33;
      if (v28 == v29)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    __break(1u);
  }

  else
  {
    v31 = &_swiftEmptyArrayStorage;
LABEL_29:

    *(v1 + 64) = v31;
  }
}

Swift::Int sub_100039964(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10003A828(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100039AC0(v5);
  *a1 = v2;
  return result;
}

void sub_1000399D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10001A078(&qword_1000A7588, &qword_10007D940);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 152);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

Swift::Int sub_100039AC0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100039C88(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100039BB8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100039BB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100039C88(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10003A518(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10003A264((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10003A52C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10003A52C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
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
          __break(1u);
LABEL_123:
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
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10003A264((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10003A518(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10003A48C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10003A264(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10003A48C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003A518(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10003A52C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A77D8, &qword_10007DCF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10003A6E0(char *a1, int64_t a2, char a3)
{
  result = sub_10003A700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003A700(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A7588, &qword_10007D940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10003A83C()
{
  result = qword_1000AAF90[0];
  if (!qword_1000AAF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AAF90);
  }

  return result;
}

unint64_t sub_10003A890()
{
  result = qword_1000A77B8;
  if (!qword_1000A77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A77B8);
  }

  return result;
}

uint64_t sub_10003A8E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E617078457369 && a2 == 0xEA00000000006465;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465646E61707865 && a2 == 0xED0000736D657449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657370616C6C6F63 && a2 == 0xEE00736D65744964)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10003AAE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A77C0, &qword_10007DCF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10003A83C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v42[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v42[0]) = 1;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v12;
  LOBYTE(v42[0]) = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v14;
  v32 = v13;
  LOBYTE(v42[0]) = 3;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v15;
  v16 = sub_10001A078(&qword_1000A77A8, &qword_10007DAF0);
  LOBYTE(v37) = 4;
  v17 = sub_10003B154(&qword_1000A77C8, sub_10003B1CC);
  v31 = v16;
  v30 = v17;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v42[0];
  v43 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LODWORD(v31) = v11 & 1;
  (*(v6 + 8))(v9, v5);
  v30 = v44;
  LOBYTE(v37) = v11 & 1;
  v18 = v34;
  v20 = v35;
  v19 = v36;
  *(&v37 + 1) = v34;
  *&v38 = v36;
  v21 = v32;
  *(&v38 + 1) = v32;
  *&v39 = v35;
  v22 = v29;
  v23 = v33;
  *(&v39 + 1) = v29;
  *&v40 = v33;
  *(&v40 + 1) = v28;
  v41 = v44;
  sub_10003B220(&v37, v42);
  sub_100001E74(a1);
  LOBYTE(v42[0]) = v31;
  v42[1] = v18;
  v42[2] = v19;
  v42[3] = v21;
  v42[4] = v20;
  v42[5] = v22;
  v42[6] = v23;
  v42[7] = v28;
  v42[8] = v30;
  result = sub_10003B258(v42);
  v25 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v25;
  *(a2 + 64) = v41;
  v26 = v38;
  *a2 = v37;
  *(a2 + 16) = v26;
  return result;
}

__n128 sub_10003AF70(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003AF94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10003AFDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003B050()
{
  result = qword_1000AB220[0];
  if (!qword_1000AB220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AB220);
  }

  return result;
}

unint64_t sub_10003B0A8()
{
  result = qword_1000AB330;
  if (!qword_1000AB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB330);
  }

  return result;
}

unint64_t sub_10003B100()
{
  result = qword_1000AB338[0];
  if (!qword_1000AB338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AB338);
  }

  return result;
}

uint64_t sub_10003B154(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A77A8, &qword_10007DAF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003B1CC()
{
  result = qword_1000A77D0;
  if (!qword_1000A77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A77D0);
  }

  return result;
}

uint64_t NDODWCoverageModel.warrantyTitle.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

void __swiftcall NDODWCoverageModel.init(logoUrl:coverageLabel:coverageExpirationLabel:productName:serialNumberLabel:warrantyTitle:warrantyOverview:links:)(ndoagent::NDODWCoverageModel *__return_ptr retstr, Swift::String_optional logoUrl, Swift::String coverageLabel, Swift::String coverageExpirationLabel, Swift::String productName, Swift::String serialNumberLabel, Swift::String warrantyTitle, Swift::OpaquePointer warrantyOverview, Swift::OpaquePointer links)
{
  retstr->logoUrl = logoUrl;
  retstr->coverageLabel = coverageLabel;
  retstr->coverageExpirationLabel = coverageExpirationLabel;
  retstr->productName = productName;
  retstr->serialNumberLabel = serialNumberLabel;
  retstr->warrantyTitle = warrantyTitle;
  retstr->warrantyOverview = warrantyOverview;
  retstr->links = links;
}

unint64_t sub_10003B2F4()
{
  v1 = *v0;
  v2 = 0x6C72556F676F6CLL;
  v3 = 0x736B6E696CLL;
  if (v1 == 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x79746E6172726177;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 2)
  {
    v5 = 0x4E746375646F7270;
  }

  if (*v0)
  {
    v2 = 0x6567617265766F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003B410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003D28C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003B444(uint64_t a1)
{
  v2 = sub_10003D680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003B480(uint64_t a1)
{
  v2 = sub_10003D680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003B4C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10003B590(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10003B620(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v32 = a2 + 32;
  v33 = result + 32;
  v31 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v33 + 72 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[5];
    v10 = v4[6];
    v37 = v4[7];
    v38 = v4[4];
    v11 = v4[8];
    v12 = (v32 + 72 * v3);
    v13 = v12[2];
    v14 = v12[3];
    v15 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    v35 = v12[7];
    v36 = v11;
    v34 = v12[8];
    v18 = v5 == *v12 && v6 == v12[1];
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    v19 = v7 == v13 && v8 == v14;
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    result = v38;
    if (v38 != v15 || v9 != v16)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v21 = *(v10 + 16);
    if (v21 != *(v17 + 16))
    {
      return 0;
    }

    if (v21)
    {
      v22 = v10 == v17;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v10 + 56);
      v24 = (v17 + 56);
      while (v21)
      {
        result = *(v23 - 3);
        v25 = *(v23 - 1);
        v26 = *v23;
        v27 = *(v24 - 1);
        v28 = *v24;
        if (result != *(v24 - 3) || *(v23 - 2) != *(v24 - 2))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v25 != v27 || v26 != v28)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v23 += 4;
        v24 += 4;
        if (!--v21)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
      break;
    }

LABEL_30:
    if ((v37 != v35 || v36 != v34) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    ++v3;
    result = 1;
    v2 = v31;
    if (v3 == v31)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t NDODWCoverageModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A77E0, &unk_10007DD00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10003D680();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v25) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v25) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v25) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v25) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[10];
    v22 = v3[11];
    LOBYTE(v25) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = v3[12];
    HIBYTE(v24) = 6;
    sub_10001A078(&qword_1000A7550, &qword_10007D428);
    sub_10003F788(&qword_1000A77E8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = v3[13];
    HIBYTE(v24) = 7;
    sub_10001A078(&qword_1000A77F0, &qword_10007DD10);
    sub_10003F7F4(&qword_1000A77F8, sub_10003D6D4);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NDODWCoverageModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    v4 = *v2;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = v2[2];
  v6 = v2[3];
  String.hash(into:)();
  v7 = v2[4];
  v8 = v2[5];
  String.hash(into:)();
  v9 = v2[6];
  v10 = v2[7];
  String.hash(into:)();
  v11 = v2[8];
  v12 = v2[9];
  String.hash(into:)();
  v13 = v2[10];
  v14 = v2[11];
  String.hash(into:)();
  v15 = v2[12];
  v16 = *(v15 + 16);
  Hasher._combine(_:)(v16);
  if (v16)
  {
    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      String.hash(into:)();

      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v20 = v2[13];

  sub_10003D0E0(a1, v20);
}

Swift::Int NDODWCoverageModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  NDODWCoverageModel.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 NDODWCoverageModel.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003D728(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

Swift::Int sub_10003BCE0()
{
  Hasher.init(_seed:)();
  NDODWCoverageModel.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10003BD34(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return _s8ndoagent18NDODWCoverageModelV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14) & 1;
}

void __swiftcall NDODWCoverageModel.CoverageLink.init(label:action:)(ndoagent::NDODWCoverageModel::CoverageLink *__return_ptr retstr, Swift::String label, ndoagent::NDODWCoverageModel::CoverageLink::Action *action)
{
  retstr->label = label;
  subTitle = action->subTitle;
  retstr->action.title = action->title;
  retstr->action.subTitle = subTitle;
  *&retstr->action.benefits._rawValue = *&action->benefits._rawValue;
  retstr->action.footer._object = action->footer._object;
}

uint64_t sub_10003BDC8()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_10003BDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10003BED0(uint64_t a1)
{
  v2 = sub_10003DFEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BF0C(uint64_t a1)
{
  v2 = sub_10003DFEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWCoverageModel.CoverageLink.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7808, &qword_10007DD18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8 - 8];
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10003DFEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v23[0] = *(v3 + 1);
    v23[1] = v13;
    v15 = *(v3 + 1);
    v14 = *(v3 + 2);
    v23[2] = *(v3 + 3);
    v24 = v3[8];
    v19 = v15;
    v20 = v14;
    v21 = *(v3 + 3);
    v22 = v3[8];
    v25 = 1;
    sub_10003DDD8(v23, v18);
    sub_10003E040();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NDODWCoverageModel.CoverageLink.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  return NDODWCoverageModel.CoverageLink.Action.hash(into:)();
}

Swift::Int NDODWCoverageModel.CoverageLink.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  String.hash(into:)();
  String.hash(into:)();
  v10 = *(v8 + 16);
  Hasher._combine(_:)(v10);
  if (v10)
  {
    v11 = (v8 + 56);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;

      String.hash(into:)();
      String.hash(into:)();

      v11 += 4;
      --v10;
    }

    while (v10);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

__n128 NDODWCoverageModel.CoverageLink.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003E094(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

Swift::Int sub_10003C2B8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  NDODWCoverageModel.CoverageLink.Action.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10003C328(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8ndoagent18NDODWCoverageModelV12CoverageLinkV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v9);
}

void __swiftcall NDODWCoverageModel.CoverageLink.Action.init(title:subTitle:benefits:footer:)(ndoagent::NDODWCoverageModel::CoverageLink::Action *__return_ptr retstr, Swift::String title, Swift::String subTitle, Swift::OpaquePointer benefits, Swift::String footer)
{
  retstr->title = title;
  retstr->subTitle = subTitle;
  retstr->benefits = benefits;
  retstr->footer = footer;
}

uint64_t sub_10003C3A0()
{
  v1 = 0x656C746974;
  v2 = 0x73746966656E6562;
  if (*v0 != 2)
  {
    v2 = 0x7265746F6F66;
  }

  if (*v0)
  {
    v1 = 0x656C746954627573;
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

uint64_t sub_10003C414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003E464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003C448(uint64_t a1)
{
  v2 = sub_10003E344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C484(uint64_t a1)
{
  v2 = sub_10003E344();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7818, &qword_10007DD20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10003E344();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v20 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[4];
    v18[15] = 2;
    sub_10001A078(&qword_1000A7820, &qword_10007DD28);
    sub_10003E398(&qword_1000A7828, sub_10003E410);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    v18[14] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = *(v5 + 16);
  Hasher._combine(_:)(v6);
  if (v6)
  {
    v7 = (v5 + 56);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;

      String.hash(into:)();
      String.hash(into:)();

      v7 += 4;
      --v6;
    }

    while (v6);
  }

  v12 = v0[5];
  v13 = v0[6];

  return String.hash(into:)();
}