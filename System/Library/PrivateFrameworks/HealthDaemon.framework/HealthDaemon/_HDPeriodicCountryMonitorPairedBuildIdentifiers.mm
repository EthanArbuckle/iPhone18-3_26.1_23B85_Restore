@interface _HDPeriodicCountryMonitorPairedBuildIdentifiers
- (_HDPeriodicCountryMonitorPairedBuildIdentifiers)initWithPairingIdentifier:(id)identifier buildIdentifier:(id)buildIdentifier;
@end

@implementation _HDPeriodicCountryMonitorPairedBuildIdentifiers

- (_HDPeriodicCountryMonitorPairedBuildIdentifiers)initWithPairingIdentifier:(id)identifier buildIdentifier:(id)buildIdentifier
{
  identifierCopy = identifier;
  buildIdentifierCopy = buildIdentifier;
  v14.receiver = self;
  v14.super_class = _HDPeriodicCountryMonitorPairedBuildIdentifiers;
  v8 = [(_HDPeriodicCountryMonitorPairedBuildIdentifiers *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    pairingIdentifier = v8->_pairingIdentifier;
    v8->_pairingIdentifier = v9;

    v11 = [buildIdentifierCopy copy];
    buildIdentifier = v8->_buildIdentifier;
    v8->_buildIdentifier = v11;
  }

  return v8;
}

@end