@interface NDOPersistanceHelpers
+ (uint64_t)clearAllCaches;
- (_TtC8ndoagent21NDOPersistanceHelpers)init;
@end

@implementation NDOPersistanceHelpers

- (_TtC8ndoagent21NDOPersistanceHelpers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NDOPersistanceHelpers();
  return [(NDOPersistanceHelpers *)&v3 init];
}

+ (uint64_t)clearAllCaches
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v46 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  static NDOConstants.ndoDirPath.getter();
  v51 = objc_opt_self();
  v15 = [v51 defaultManager];
  v50 = v14;
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v53 = 0;
  v19 = [v15 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:4 error:&v53];

  v20 = v53;
  v52 = v7;
  if (v19)
  {
    v46 = v6;
    v47 = v1;
    v48 = v0;
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v20;

    v23 = *(v21 + 16);
    if (!v23)
    {
LABEL_7:

      v31 = sub_100049C1C();
      v32 = v46;
      v1 = v47;
      v0 = v48;
      (*(v47 + 16))(v46, v31, v48);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Sucessfully cleared cache", v35, 2u);
      }

      v7 = v52;
      goto LABEL_15;
    }

    v24 = 0;
    while (1)
    {
      if (v24 >= *(v21 + 16))
      {
        __break(1u);
      }

      v25 = v52;
      (*(v8 + 16))(v12, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, v52);
      v26 = [v51 defaultManager];
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      (*(v8 + 8))(v12, v25);
      v53 = 0;
      LODWORD(v25) = [v26 removeItemAtURL:v29 error:&v53];

      if (!v25)
      {
        break;
      }

      ++v24;
      v30 = v53;
      if (v23 == v24)
      {
        goto LABEL_7;
      }
    }

    v36 = v53;

    v1 = v47;
    v0 = v48;
    v7 = v52;
  }

  else
  {
    v36 = v53;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();
  v37 = sub_100049C1C();
  v32 = v49;
  (*(v1 + 16))(v49, v37, v0);
  swift_errorRetain();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = v1;
    v42 = swift_slowAlloc();
    *v40 = 138412290;
    swift_errorRetain();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 4) = v43;
    *v42 = v43;
    _os_log_impl(&_mh_execute_header, v38, v39, "Cache clearing error: %@", v40, 0xCu);
    sub_100020470(v42);
    v1 = v41;
    v7 = v52;
  }

LABEL_15:
  v44 = v50;
  (*(v1 + 8))(v32, v0);
  return (*(v8 + 8))(v44, v7);
}

@end