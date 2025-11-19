@interface _HDPeriodicCountryMonitorPairedBuildIdentifiers
- (_HDPeriodicCountryMonitorPairedBuildIdentifiers)initWithPairingIdentifier:(id)a3 buildIdentifier:(id)a4;
@end

@implementation _HDPeriodicCountryMonitorPairedBuildIdentifiers

- (_HDPeriodicCountryMonitorPairedBuildIdentifiers)initWithPairingIdentifier:(id)a3 buildIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _HDPeriodicCountryMonitorPairedBuildIdentifiers;
  v8 = [(_HDPeriodicCountryMonitorPairedBuildIdentifiers *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    pairingIdentifier = v8->_pairingIdentifier;
    v8->_pairingIdentifier = v9;

    v11 = [v7 copy];
    buildIdentifier = v8->_buildIdentifier;
    v8->_buildIdentifier = v11;
  }

  return v8;
}

@end