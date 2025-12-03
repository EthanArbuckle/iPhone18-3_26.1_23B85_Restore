@interface CatalogServiceServer.Server
- (void)acquireCoherenceTokenWithIdentifiers:(id)identifiers with:(id)with;
- (void)availableUseCasesWithUseCaseIdentifiers:(id)identifiers includeAssetsInformation:(BOOL)information with:(id)with;
- (void)debugInformationWithOptions:(id)options with:(id)with;
- (void)regulatoryDomainsWith:(id)with;
- (void)resourceInformationWithIdentifier:(id)identifier with:(id)with;
- (void)safetyFailuresWithUserIdentifier:(unsigned int)identifier with:(id)with;
- (void)useCaseResourceAvailabilityBy:(id)by with:(id)with;
@end

@implementation CatalogServiceServer.Server

- (void)acquireCoherenceTokenWithIdentifiers:(id)identifiers with:(id)with
{
  v5 = _Block_copy(with);
  v6 = sub_22D8B1BEC();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  CatalogServiceServer.Server.acquireCoherenceToken(identifiers:with:)(v6, sub_22D851A14, v7);
}

- (void)regulatoryDomainsWith:(id)with
{
  v4 = _Block_copy(with);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  CatalogServiceServer.Server.regulatoryDomains(with:)(sub_22D8ADE00, v5);
}

- (void)resourceInformationWithIdentifier:(id)identifier with:(id)with
{
  v5 = _Block_copy(with);
  v6 = sub_22D8B19FC();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_22D899634(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (void)useCaseResourceAvailabilityBy:(id)by with:(id)with
{
  v5 = _Block_copy(with);
  sub_22D8B113C();
  v6 = sub_22D8B1ADC();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  CatalogServiceServer.Server.useCaseResourceAvailability(by:with:)(v6, sub_22D8ADE10, v7);
}

- (void)availableUseCasesWithUseCaseIdentifiers:(id)identifiers includeAssetsInformation:(BOOL)information with:(id)with
{
  v6 = _Block_copy(with);
  sub_22D8B1ADC();
  *(swift_allocObject() + 16) = v6;
  selfCopy = self;
  CatalogServiceServer.Server.availableUseCases(useCaseIdentifiers:includeAssetsInformation:with:)();
}

- (void)debugInformationWithOptions:(id)options with:(id)with
{
  v6 = _Block_copy(with);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  optionsCopy = options;
  selfCopy = self;
  CatalogServiceServer.Server.debugInformation(options:with:)(optionsCopy, sub_22D851A14, v7);
}

- (void)safetyFailuresWithUserIdentifier:(unsigned int)identifier with:(id)with
{
  v6 = _Block_copy(with);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  CatalogServiceServer.Server.safetyFailures(userIdentifier:with:)(identifier, sub_22D8ADDF8, v7);
}

@end