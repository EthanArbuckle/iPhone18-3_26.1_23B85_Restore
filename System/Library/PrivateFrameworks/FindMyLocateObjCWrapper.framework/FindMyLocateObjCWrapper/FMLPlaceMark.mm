@interface FMLPlaceMark
- (BOOL)isEqual:(id)a3;
- (FMLPlaceMark)initWithLocality:(id)a3 administrativeArea:(id)a4 country:(id)a5 stateCode:(id)a6 streetAddress:(id)a7 streetName:(id)a8 formattedAddressLines:(id)a9;
- (id)comparisonIdentifier;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation FMLPlaceMark

- (FMLPlaceMark)initWithLocality:(id)a3 administrativeArea:(id)a4 country:(id)a5 stateCode:(id)a6 streetAddress:(id)a7 streetName:(id)a8 formattedAddressLines:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v26.receiver = self;
  v26.super_class = FMLPlaceMark;
  v22 = [(FMLPlaceMark *)&v26 init];
  v23 = v22;
  if (v22)
  {
    [(FMLPlaceMark *)v22 setLocality:v15];
    [(FMLPlaceMark *)v23 setAdministrativeArea:v16];
    [(FMLPlaceMark *)v23 setCountry:v17];
    [(FMLPlaceMark *)v23 setStateCode:v18];
    [(FMLPlaceMark *)v23 setStreetAddress:v19];
    [(FMLPlaceMark *)v23 setStreetName:v20];
    v24 = [v21 copy];
    [(FMLPlaceMark *)v23 setFormattedAddressLines:v24];
  }

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(FMLPlaceMark *)self comparisonIdentifier];
    v7 = [v5 comparisonIdentifier];

    v8 = [v6 isEqualToString:v7];
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
  v4 = [(FMLPlaceMark *)self locality];
  v5 = [(FMLPlaceMark *)self country];
  v6 = [(FMLPlaceMark *)self stateCode];
  v7 = [(FMLPlaceMark *)self streetAddress];
  v8 = [(FMLPlaceMark *)self streetName];
  v9 = [v3 stringWithFormat:@"locality: %@, country: %@, stateCode: %@, streetAddress: %@, streetName: %@.", v4, v5, v6, v7, v8];

  return v9;
}

- (unint64_t)hash
{
  v2 = [(FMLPlaceMark *)self comparisonIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(FMLPlaceMark *)self comparisonIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, v5];

  return v6;
}

@end