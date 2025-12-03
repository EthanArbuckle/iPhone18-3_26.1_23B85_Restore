@interface INUICKPCardInterfaceSection
- (BOOL)isEqual:(id)equal;
- (BOOL)isWildCardSection;
- (INUICKPCardInterfaceSection)initWithInteractiveBehavior:(unint64_t)behavior parameters:(id)parameters;
- (unint64_t)hash;
@end

@implementation INUICKPCardInterfaceSection

- (INUICKPCardInterfaceSection)initWithInteractiveBehavior:(unint64_t)behavior parameters:(id)parameters
{
  parametersCopy = parameters;
  v11.receiver = self;
  v11.super_class = INUICKPCardInterfaceSection;
  v8 = [(INUIInterfaceSection *)&v11 initWithInteractiveBehavior:behavior parameters:parametersCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cardSectionParameters, parameters);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = INUICKPCardInterfaceSection;
    if ([(INUIInterfaceSection *)&v12 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      cardSection = [(INUICKPCardInterfaceSection *)self cardSection];
      cardSectionIdentifier = [cardSection cardSectionIdentifier];
      cardSection2 = [(INUICKPCardInterfaceSection *)v5 cardSection];

      cardSectionIdentifier2 = [cardSection2 cardSectionIdentifier];
      v10 = [cardSectionIdentifier isEqualToString:cardSectionIdentifier2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = INUICKPCardInterfaceSection;
  v3 = [(INUIInterfaceSection *)&v5 hash];
  return [(CRCardSection *)self->_cardSection hash]^ v3;
}

- (BOOL)isWildCardSection
{
  parameters = [(INUICKPCardInterfaceSection *)self parameters];
  if (parameters)
  {
    parameters2 = [(INUICKPCardInterfaceSection *)self parameters];
    v5 = [parameters2 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end