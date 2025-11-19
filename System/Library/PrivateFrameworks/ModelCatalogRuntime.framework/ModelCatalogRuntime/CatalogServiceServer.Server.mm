@interface CatalogServiceServer.Server
- (void)acquireCoherenceTokenWithIdentifiers:(id)a3 with:(id)a4;
- (void)availableUseCasesWithUseCaseIdentifiers:(id)a3 includeAssetsInformation:(BOOL)a4 with:(id)a5;
- (void)debugInformationWithOptions:(id)a3 with:(id)a4;
- (void)regulatoryDomainsWith:(id)a3;
- (void)resourceInformationWithIdentifier:(id)a3 with:(id)a4;
- (void)safetyFailuresWithUserIdentifier:(unsigned int)a3 with:(id)a4;
- (void)useCaseResourceAvailabilityBy:(id)a3 with:(id)a4;
@end

@implementation CatalogServiceServer.Server

- (void)acquireCoherenceTokenWithIdentifiers:(id)a3 with:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_22D8B1BEC();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  CatalogServiceServer.Server.acquireCoherenceToken(identifiers:with:)(v6, sub_22D851A14, v7);
}

- (void)regulatoryDomainsWith:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  CatalogServiceServer.Server.regulatoryDomains(with:)(sub_22D8ADE00, v5);
}

- (void)resourceInformationWithIdentifier:(id)a3 with:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_22D8B19FC();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_22D899634(v6, v8, v9, v5);
  _Block_release(v5);
}

- (void)useCaseResourceAvailabilityBy:(id)a3 with:(id)a4
{
  v5 = _Block_copy(a4);
  sub_22D8B113C();
  v6 = sub_22D8B1ADC();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  CatalogServiceServer.Server.useCaseResourceAvailability(by:with:)(v6, sub_22D8ADE10, v7);
}

- (void)availableUseCasesWithUseCaseIdentifiers:(id)a3 includeAssetsInformation:(BOOL)a4 with:(id)a5
{
  v6 = _Block_copy(a5);
  sub_22D8B1ADC();
  *(swift_allocObject() + 16) = v6;
  v7 = self;
  CatalogServiceServer.Server.availableUseCases(useCaseIdentifiers:includeAssetsInformation:with:)();
}

- (void)debugInformationWithOptions:(id)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  CatalogServiceServer.Server.debugInformation(options:with:)(v8, sub_22D851A14, v7);
}

- (void)safetyFailuresWithUserIdentifier:(unsigned int)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  CatalogServiceServer.Server.safetyFailures(userIdentifier:with:)(a3, sub_22D8ADDF8, v7);
}

@end