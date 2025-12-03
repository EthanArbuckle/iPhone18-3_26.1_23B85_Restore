@interface FMLPlaceMark
- (BOOL)isEqual:(id)equal;
- (FMLPlaceMark)initWithLocality:(id)locality administrativeArea:(id)area country:(id)country stateCode:(id)code streetAddress:(id)address streetName:(id)name formattedAddressLines:(id)lines;
- (id)comparisonIdentifier;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation FMLPlaceMark

- (FMLPlaceMark)initWithLocality:(id)locality administrativeArea:(id)area country:(id)country stateCode:(id)code streetAddress:(id)address streetName:(id)name formattedAddressLines:(id)lines
{
  localityCopy = locality;
  areaCopy = area;
  countryCopy = country;
  codeCopy = code;
  addressCopy = address;
  nameCopy = name;
  linesCopy = lines;
  v26.receiver = self;
  v26.super_class = FMLPlaceMark;
  v22 = [(FMLPlaceMark *)&v26 init];
  v23 = v22;
  if (v22)
  {
    [(FMLPlaceMark *)v22 setLocality:localityCopy];
    [(FMLPlaceMark *)v23 setAdministrativeArea:areaCopy];
    [(FMLPlaceMark *)v23 setCountry:countryCopy];
    [(FMLPlaceMark *)v23 setStateCode:codeCopy];
    [(FMLPlaceMark *)v23 setStreetAddress:addressCopy];
    [(FMLPlaceMark *)v23 setStreetName:nameCopy];
    v24 = [linesCopy copy];
    [(FMLPlaceMark *)v23 setFormattedAddressLines:v24];
  }

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    comparisonIdentifier = [(FMLPlaceMark *)self comparisonIdentifier];
    comparisonIdentifier2 = [v5 comparisonIdentifier];

    v8 = [comparisonIdentifier isEqualToString:comparisonIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)comparisonIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  locality = [(FMLPlaceMark *)self locality];
  country = [(FMLPlaceMark *)self country];
  stateCode = [(FMLPlaceMark *)self stateCode];
  streetAddress = [(FMLPlaceMark *)self streetAddress];
  streetName = [(FMLPlaceMark *)self streetName];
  v9 = [v3 stringWithFormat:@"locality: %@, country: %@, stateCode: %@, streetAddress: %@, streetName: %@.", locality, country, stateCode, streetAddress, streetName];

  return v9;
}

- (unint64_t)hash
{
  comparisonIdentifier = [(FMLPlaceMark *)self comparisonIdentifier];
  v3 = [comparisonIdentifier hash];

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  comparisonIdentifier = [(FMLPlaceMark *)self comparisonIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, comparisonIdentifier];

  return v6;
}

@end