@interface GEOSharedNavState(Testing)
+ (id)_msp_blockedTestTripIdentifiers;
+ (id)_msp_testTrip;
+ (id)_msp_testTripClosedTripInPast;
+ (id)_msp_testTripForIdentifier:()Testing;
+ (id)_msp_testTripSky;
+ (id)_msp_testTripWithMultipleStops;
+ (id)_msp_testTripWithMultipleStopsMiddleOfTrip;
+ (id)_msp_testTripsByIdentifier;
+ (id)preciseChicago;
+ (id)preciseSanFrancisco;
+ (uint64_t)_msp_blockTestTripWithIdentifier:()Testing;
+ (uint64_t)_msp_isTestTripBlockedWithIdentifier:()Testing;
+ (void)_msp_registerTestTrip:()Testing;
@end

@implementation GEOSharedNavState(Testing)

+ (id)_msp_testTrip
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__GEOSharedNavState_Testing___msp_testTrip__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_msp_testTrip_onceToken != -1)
  {
    dispatch_once(&_msp_testTrip_onceToken, block);
  }

  v1 = _msp_testTrip_trip;

  return v1;
}

+ (id)_msp_testTripWithMultipleStops
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__GEOSharedNavState_Testing___msp_testTripWithMultipleStops__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_msp_testTripWithMultipleStops_onceToken != -1)
  {
    dispatch_once(&_msp_testTripWithMultipleStops_onceToken, block);
  }

  v1 = _msp_testTripWithMultipleStops_trip;

  return v1;
}

+ (id)_msp_testTripWithMultipleStopsMiddleOfTrip
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__GEOSharedNavState_Testing___msp_testTripWithMultipleStopsMiddleOfTrip__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_msp_testTripWithMultipleStopsMiddleOfTrip_onceToken != -1)
  {
    dispatch_once(&_msp_testTripWithMultipleStopsMiddleOfTrip_onceToken, block);
  }

  v1 = _msp_testTripWithMultipleStopsMiddleOfTrip_trip;

  return v1;
}

+ (id)_msp_testTripSky
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__GEOSharedNavState_Testing___msp_testTripSky__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_msp_testTripSky_onceToken != -1)
  {
    dispatch_once(&_msp_testTripSky_onceToken, block);
  }

  v1 = _msp_testTripSky_trip;

  return v1;
}

+ (id)_msp_testTripClosedTripInPast
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__GEOSharedNavState_Testing___msp_testTripClosedTripInPast__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_msp_testTripClosedTripInPast_onceToken != -1)
  {
    dispatch_once(&_msp_testTripClosedTripInPast_onceToken, block);
  }

  v1 = _msp_testTripClosedTripInPast_trip;

  return v1;
}

+ (void)_msp_registerTestTrip:()Testing
{
  v4 = a3;
  _msp_testTripsByIdentifier = [self _msp_testTripsByIdentifier];
  groupIdentifier = [v4 groupIdentifier];
  [_msp_testTripsByIdentifier setObject:v4 forKey:groupIdentifier];
}

+ (id)_msp_testTripForIdentifier:()Testing
{
  v4 = a3;
  _msp_testTripsByIdentifier = [self _msp_testTripsByIdentifier];
  v6 = [_msp_testTripsByIdentifier objectForKeyedSubscript:v4];

  return v6;
}

+ (uint64_t)_msp_blockTestTripWithIdentifier:()Testing
{
  v4 = a3;
  _msp_testTripsByIdentifier = [self _msp_testTripsByIdentifier];
  allKeys = [_msp_testTripsByIdentifier allKeys];
  v7 = [allKeys containsObject:v4];

  if (v7)
  {
    _msp_blockedTestTripIdentifiers = [self _msp_blockedTestTripIdentifiers];
    [_msp_blockedTestTripIdentifiers addObject:v4];
  }

  return v7;
}

+ (uint64_t)_msp_isTestTripBlockedWithIdentifier:()Testing
{
  v4 = a3;
  _msp_blockedTestTripIdentifiers = [self _msp_blockedTestTripIdentifiers];
  v6 = [_msp_blockedTestTripIdentifiers containsObject:v4];

  return v6;
}

+ (id)_msp_testTripsByIdentifier
{
  if (_msp_testTripsByIdentifier_onceToken != -1)
  {
    +[GEOSharedNavState(Testing) _msp_testTripsByIdentifier];
  }

  v1 = _msp_testTripsByIdentifier_tripsByID;

  return v1;
}

+ (id)_msp_blockedTestTripIdentifiers
{
  if (_msp_blockedTestTripIdentifiers_onceToken != -1)
  {
    +[GEOSharedNavState(Testing) _msp_blockedTestTripIdentifiers];
  }

  v1 = _msp_blockedTestTripIdentifiers_set;

  return v1;
}

+ (id)preciseSanFrancisco
{
  v0 = objc_alloc(MEMORY[0x277D0EC58]);
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:@"GC0iI1VuaXRlZCBTdGF0ZXMgTWludCBvZiBTYW4gRnJhbmNpc2NvMtwCWiNVbml0ZWQgU3RhdGVzIE1pbnQgb2YgU2FuIEZyYW5jaXNjb1oOMTU1IEhlcm1hbm4gU3RaHVNhbiBGcmFuY2lzY28sIENBICA5NDEwMi02MTMwWg1Vbml0ZWQgU3RhdGVzevYBCg1Vbml0ZWQgU3RhdGVzEgJVUxoKQ2FsaWZvcm5pYSICQ0EqDVNhbiBGcmFuY2lzY28yDVNhbiBGcmFuY2lzY286BTk0MTAyQgpOb3J0aCBQYXJrUgpIZXJtYW5uIFN0WgMxNTViDjE1NSBIZXJtYW5uIFN0agQ2MTMwciNVbml0ZWQgU3RhdGVzIE1pbnQgb2YgU2FuIEZyYW5jaXNjb4oBDVNhbiBGcmFuY2lzY2+KAQhCYXkgQXJlYYoBDEhheWVzIFZhbGxleYoBD0R1Ym9jZSBUcmlhbmdsZYoBCk5vcnRoIFBhcmuiAQo5NDEwMi02MTMwShIJAxDSrp3iQkARZK2h1F6bXsBYAGISCTbpONCh4kJAEbt3Pwxfm17AcMI7" options:1];
  v2 = [v0 initWithData:v1];

  return v2;
}

+ (id)preciseChicago
{
  v0 = objc_alloc(MEMORY[0x277D0EC58]);
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:@"GC0iDFdpbGxpcyBUb3dlciokKZSwoIRn8ERAMfH7kujA6FXAOeL+85mL8ERAQYw0t/ap6FXAMuQBWgxXaWxsaXMgVG93ZXJaDzIzMyBTIFdhY2tlciBEcloXQ2hpY2FnbywgSUwgIDYwNjA2LTYzMDZaDVVuaXRlZCBTdGF0ZXN6mgEKDVVuaXRlZCBTdGF0ZXMSAlVTGghJbGxpbm9pcyICSUwqBENvb2syB0NoaWNhZ286BTYwNjA2QghUaGUgTG9vcFILUyBXYWNrZXIgRHJaAzIzM2IPMjMzIFMgV2Fja2VyIERyagQ2MzA2cgxXaWxsaXMgVG93ZXKKAQdDaGljYWdvigEIVGhlIExvb3CiAQo2MDYwNi02MzA2ShIJIRqCiHnwREARgBL69LPoVcBYBGISCTJrzmZ68ERAEfH7kujA6FXAcMI7" options:1];
  v2 = [v0 initWithData:v1];

  return v2;
}

@end