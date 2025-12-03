@interface MapsSuggestionsMLSignalAlgorithm
- (MapsSuggestionsMLSignalAlgorithm)init;
- (NSString)uniqueName;
- (char)transportModesForSignalPack:(id)pack handler:(id)handler;
- (id).cxx_construct;
@end

@implementation MapsSuggestionsMLSignalAlgorithm

- (MapsSuggestionsMLSignalAlgorithm)init
{
  v12.receiver = self;
  v12.super_class = MapsSuggestionsMLSignalAlgorithm;
  v2 = [(MapsSuggestionsMLSignalAlgorithm *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_100003654(&v10, @"MapsSuggestionsMLSignalAlgorithmQueue", v3);
    v4 = v10;
    v10 = 0;
    innerQueue = v2->_queue._innerQueue;
    v2->_queue._innerQueue = v4;

    v6 = v11;
    v11 = 0;
    name = v2->_queue._name;
    v2->_queue._name = v6;

    model = v2->_model;
    v2->_model = 0;
  }

  return v2;
}

- (char)transportModesForSignalPack:(id)pack handler:(id)handler
{
  packCopy = pack;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMLSignalAlgorithm.mm";
      v20 = 1024;
      *v21 = 120;
      *&v21[4] = 2082;
      *&v21[6] = "[MapsSuggestionsMLSignalAlgorithm transportModesForSignalPack:handler:]";
      v22 = 2082;
      v23 = "nil == (handler)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, v13, buf, 0x26u);
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if (!packCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMLSignalAlgorithm.mm";
      v20 = 1024;
      *v21 = 121;
      *&v21[4] = 2082;
      *&v21[6] = "[MapsSuggestionsMLSignalAlgorithm transportModesForSignalPack:handler:]";
      v22 = 2082;
      v23 = "nil == (signalPack)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal pack";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsMLSignalAlgorithm *)self uniqueName];
    *buf = 138412546;
    v19 = uniqueName;
    v20 = 2080;
    *v21 = "transportModesForSignalPack_ML";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v10 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "transportModesForSignalPack_ML", "", buf, 2u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001601C;
  v15[3] = &unk_100075660;
  v16 = packCopy;
  v17 = handlerCopy;
  sub_100015E74(&self->_queue, self, v15);

  v11 = 1;
  v12 = v16;
LABEL_14:

  return v11;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end