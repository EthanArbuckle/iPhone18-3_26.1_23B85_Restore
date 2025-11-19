@interface INUICKPCardInterfaceSection
- (BOOL)isEqual:(id)a3;
- (BOOL)isWildCardSection;
- (INUICKPCardInterfaceSection)initWithInteractiveBehavior:(unint64_t)a3 parameters:(id)a4;
- (unint64_t)hash;
@end

@implementation INUICKPCardInterfaceSection

- (INUICKPCardInterfaceSection)initWithInteractiveBehavior:(unint64_t)a3 parameters:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = INUICKPCardInterfaceSection;
  v8 = [(INUIInterfaceSection *)&v11 initWithInteractiveBehavior:a3 parameters:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cardSectionParameters, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = INUICKPCardInterfaceSection;
    if ([(INUIInterfaceSection *)&v12 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(INUICKPCardInterfaceSection *)self cardSection];
      v7 = [v6 cardSectionIdentifier];
      v8 = [(INUICKPCardInterfaceSection *)v5 cardSection];

      v9 = [v8 cardSectionIdentifier];
      v10 = [v7 isEqualToString:v9];
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
  v3 = [(INUICKPCardInterfaceSection *)self parameters];
  if (v3)
  {
    v4 = [(INUICKPCardInterfaceSection *)self parameters];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end