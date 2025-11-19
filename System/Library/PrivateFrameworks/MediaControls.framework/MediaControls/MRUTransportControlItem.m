@interface MRUTransportControlItem
- (BOOL)isEqual:(id)a3;
- (MRUTransportControlItem)initWithIdentifier:(id)a3 asset:(id)a4 mainAction:(id)a5 holdBeganAction:(id)a6 holdEndAction:(id)a7;
- (id)description;
@end

@implementation MRUTransportControlItem

- (MRUTransportControlItem)initWithIdentifier:(id)a3 asset:(id)a4 mainAction:(id)a5 holdBeganAction:(id)a6 holdEndAction:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v27.receiver = self;
  v27.super_class = MRUTransportControlItem;
  v18 = [(MRUTransportControlItem *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(&v19->_asset, a4);
    v20 = _Block_copy(v15);
    mainAction = v19->_mainAction;
    v19->_mainAction = v20;

    v22 = _Block_copy(v16);
    holdBeganAction = v19->_holdBeganAction;
    v19->_holdBeganAction = v22;

    v24 = _Block_copy(v17);
    holdEndAction = v19->_holdEndAction;
    v19->_holdEndAction = v24;
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = self->_identifier;
  asset = self->_asset;
  if ([(MRUTransportControlItem *)self isEnabled])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(MRUTransportControlItem *)self supportsHolding])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  return [v3 stringWithFormat:@"%@ identifier: %@ | asset: %@ | enabled: %@ | holding: %@", v4, identifier, asset, v7, v8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRUTransportControlItem *)v5 identifier];
      v7 = v6;
      if (v6 == self->_identifier)
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];
      }

      v10 = [(MRUTransportControlItem *)v5 asset];
      v11 = v8 & [v10 isEqual:self->_asset];

      v12 = [(MRUTransportControlItem *)v5 isEnabled];
      LODWORD(v10) = v12 ^ [(MRUTransportControlItem *)self isEnabled];
      v13 = [(MRUTransportControlItem *)v5 supportsHolding];

      v9 = v11 & ((v10 | v13 ^ [(MRUTransportControlItem *)self supportsHolding]) ^ 1);
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

@end