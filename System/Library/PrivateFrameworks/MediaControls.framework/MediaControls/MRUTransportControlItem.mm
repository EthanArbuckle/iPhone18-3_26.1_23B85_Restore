@interface MRUTransportControlItem
- (BOOL)isEqual:(id)equal;
- (MRUTransportControlItem)initWithIdentifier:(id)identifier asset:(id)asset mainAction:(id)action holdBeganAction:(id)beganAction holdEndAction:(id)endAction;
- (id)description;
@end

@implementation MRUTransportControlItem

- (MRUTransportControlItem)initWithIdentifier:(id)identifier asset:(id)asset mainAction:(id)action holdBeganAction:(id)beganAction holdEndAction:(id)endAction
{
  identifierCopy = identifier;
  assetCopy = asset;
  actionCopy = action;
  beganActionCopy = beganAction;
  endActionCopy = endAction;
  v27.receiver = self;
  v27.super_class = MRUTransportControlItem;
  v18 = [(MRUTransportControlItem *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_asset, asset);
    v20 = _Block_copy(actionCopy);
    mainAction = v19->_mainAction;
    v19->_mainAction = v20;

    v22 = _Block_copy(beganActionCopy);
    holdBeganAction = v19->_holdBeganAction;
    v19->_holdBeganAction = v22;

    v24 = _Block_copy(endActionCopy);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(MRUTransportControlItem *)v5 identifier];
      v7 = identifier;
      if (identifier == self->_identifier)
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSString *)identifier isEqual:?];
      }

      asset = [(MRUTransportControlItem *)v5 asset];
      v11 = v8 & [asset isEqual:self->_asset];

      isEnabled = [(MRUTransportControlItem *)v5 isEnabled];
      LODWORD(asset) = isEnabled ^ [(MRUTransportControlItem *)self isEnabled];
      supportsHolding = [(MRUTransportControlItem *)v5 supportsHolding];

      v9 = v11 & ((asset | supportsHolding ^ [(MRUTransportControlItem *)self supportsHolding]) ^ 1);
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

@end