int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "All life begins with Nu and ends with Nu…", v10, 2u);
  }

  (*(v4 + 8))(v7, v3);
  type metadata accessor for _ChronodStartupHelper();
  static _ChronodStartupHelper.bootstrap()();
  return 0;
}