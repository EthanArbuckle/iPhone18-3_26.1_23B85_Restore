@interface CalDAVConcreteServerVersion
+ (id)prototypes;
@end

@implementation CalDAVConcreteServerVersion

+ (id)prototypes
{
  if (prototypes_onceToken != -1)
  {
    +[CalDAVConcreteServerVersion prototypes];
  }

  v3 = _calDAVServerVersionPrototypes;

  return v3;
}

uint64_t __41__CalDAVConcreteServerVersion_prototypes__block_invoke()
{
  v0 = objc_alloc_init(CalDAVConcreteServerVersion);
  v1 = _unknownServerVersionPrototype;
  _unknownServerVersionPrototype = v0;

  v2 = objc_alloc_init(CalendarServerVersion);
  v3 = _calendarServerVersionPrototype;
  _calendarServerVersionPrototype = v2;

  v4 = objc_alloc_init(GoogleCalDAVServerVersion);
  v5 = _googleServerVersionPrototype;
  _googleServerVersionPrototype = v4;

  v6 = objc_alloc_init(YahooCalDAVServerVersion);
  v7 = _yahooServerVersionPrototype;
  _yahooServerVersionPrototype = v6;

  v8 = objc_alloc_init(MobileMeCalDAVServerVersion);
  v9 = _mmeServerVersionPrototype;
  _mmeServerVersionPrototype = v8;

  v10 = objc_alloc_init(iCloudCalDAVServerVersion);
  v11 = _icloudServerVersionPrototype;
  _icloudServerVersionPrototype = v10;

  v12 = objc_alloc_init(OracleBeehiveCalDAVServerVersion);
  v13 = _oracleBeehiveServerVersionPrototype;
  _oracleBeehiveServerVersionPrototype = v12;

  v14 = objc_alloc(MEMORY[0x277CBEA60]);
  _calDAVServerVersionPrototypes = [v14 initWithObjects:{_calendarServerVersionPrototype, _googleServerVersionPrototype, _yahooServerVersionPrototype, _mmeServerVersionPrototype, _icloudServerVersionPrototype, _oracleBeehiveServerVersionPrototype, _unknownServerVersionPrototype, 0}];

  return MEMORY[0x2821F96F8]();
}

@end