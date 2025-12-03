@interface MapsSuggestionsCompositeSourceBuilder
+ (id)buildCompositeSourceFromResourceDepot:(id)depot;
@end

@implementation MapsSuggestionsCompositeSourceBuilder

+ (id)buildCompositeSourceFromResourceDepot:(id)depot
{
  depotCopy = depot;
  v4 = depotCopy;
  if (!depotCopy)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v24 = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSourceBuilder.m";
      v26 = 1024;
      v27 = 46;
      v28 = 2082;
      v29 = "+[MapsSuggestionsCompositeSourceBuilder buildCompositeSourceFromResourceDepot:]";
      v30 = 2082;
      v31 = "nil == (resourceDepot)";
      v8 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v8, &v24, 0x26u);
    }

LABEL_11:
    v6 = 0;
    goto LABEL_42;
  }

  oneSourceDelegate = [depotCopy oneSourceDelegate];

  if (!oneSourceDelegate)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v24 = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSourceBuilder.m";
      v26 = 1024;
      v27 = 47;
      v28 = 2082;
      v29 = "+[MapsSuggestionsCompositeSourceBuilder buildCompositeSourceFromResourceDepot:]";
      v30 = 2082;
      v31 = "nil == (resourceDepot.oneSourceDelegate)";
      v8 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One SourceDelegate";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (!+[MapsSuggestionsCompositeSource isEnabled])
  {
    v6 = 0;
    goto LABEL_43;
  }

  v6 = [[MapsSuggestionsCompositeSource alloc] initFromResourceDepot:v4];
  [v4 setOneSourceDelegate:v6];
  if (+[MapsSuggestionsCalendarSource isEnabled])
  {
    v7 = [[MapsSuggestionsCalendarSource alloc] initFromResourceDepot:v4];
    [v6 addChildSource:v7];
  }

  else
  {
    v7 = 0;
  }

  if (+[MapsSuggestionsRoutineSource isEnabled])
  {
    v9 = [[MapsSuggestionsRoutineSource alloc] initFromResourceDepot:v4];

    [v6 addChildSource:v9];
    v7 = v9;
  }

  if (+[MapsSuggestionsRatingRequestSource isEnabled]&& (GEOConfigGetBOOL() & 1) == 0)
  {
    v10 = [[MapsSuggestionsRatingRequestSource alloc] initFromResourceDepot:v4];

    [v6 addChildSource:v10];
    v7 = v10;
  }

  if (+[MapsSuggestionsMapsSyncSource isEnabled])
  {
    v11 = [[MapsSuggestionsMapsSyncSource alloc] initFromResourceDepot:v4];

    [v6 addChildSource:v11];
    v7 = v11;
  }

  if (+[MapsSuggestionsPortraitSource isEnabled])
  {
    v12 = [[MapsSuggestionsPortraitSource alloc] initFromResourceDepot:v4];

    [v6 addChildSource:v12];
    v7 = v12;
  }

  if (+[MapsSuggestionsAppConnectionSource isEnabled])
  {
    v13 = [[MapsSuggestionsAppConnectionSource alloc] initFromResourceDepot:v4];

    [v6 addChildSource:v13];
    v7 = v13;
  }

  if (+[MapsSuggestionsContactActivitySource isEnabled])
  {
    v14 = [[MapsSuggestionsContactActivitySource alloc] initFromResourceDepot:v4];

    [v6 addChildSource:v14];
    v7 = v14;
  }

  if (+[MapsSuggestionsWalletSource isEnabled])
  {
    v15 = [[MapsSuggestionsWalletSource alloc] initFromResourceDepot:v4];

    [v6 addChildSource:v15];
    v7 = v15;
  }

  if (isFinanceSourceEnabled())
  {
    v16 = financeSourceFromResourceDepot();

    [v6 addChildSource:v16];
    v7 = v16;
  }

  if (+[MapsSuggestionsReservationsSource isEnabled])
  {
    v17 = [[MapsSuggestionsReservationsSource alloc] initFromResourceDepot:v4];

    [v6 addChildSource:v17];
    v7 = v17;
  }

  if (+[MapsSuggestionsVirtualGarageSource isEnabled])
  {
    v18 = [[MapsSuggestionsVirtualGarageSource alloc] initFromResourceDepot:v4];

    [v6 addChildSource:v18];
    v7 = v18;
  }

  if (+[MapsSuggestionsCarPlaySource isEnabled])
  {
    v19 = [[MapsSuggestionsCarPlaySource alloc] initFromResourceDepot:v4];

    [v6 addChildSource:v19];
    v7 = v19;
  }

  if (+[MapsSuggestionsReInjectSource isEnabled])
  {
    v20 = [[MapsSuggestionsReInjectSource alloc] initFromResourceDepot:v4];

    [v6 addChildSource:v20];
    v7 = v20;
  }

  v21 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    children = [v6 children];
    v24 = 138412290;
    v25 = children;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Instantiating compositeSource with childSources: %@", &v24, 0xCu);
  }

LABEL_42:
LABEL_43:

  return v6;
}

@end