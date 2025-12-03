@interface PKPassTileStateCheckIn
- (BOOL)_setUpWithDictionary:(id)dictionary;
- (BOOL)isEqualToUnresolvedState:(id)state;
- (PKDateContainer)availableFrom;
- (PKPassTileStateCheckIn)initWithCoder:(id)coder;
- (id)createResolvedStateWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileStateCheckIn

- (BOOL)_setUpWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PKPassTileStateCheckIn;
  if ([(PKPassTileState *)&v17 _setUpWithDictionary:dictionaryCopy])
  {
    v5 = [dictionaryCopy PKStringForKey:@"availableFrom"];
    v16 = 0.0;
    v6 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v5, 0, &v16);
    v7 = v6;
    if (!v5 || (v8 = 0, v6))
    {
      if (v6)
      {
        v9 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:v16];
        v10 = [[PKDateContainer alloc] initWithDate:v7 timeZone:v9];
        availableFrom = self->_availableFrom;
        self->_availableFrom = v10;
      }

      v12 = [dictionaryCopy PKDictionaryForKey:@"secondaryAccessory"];
      v8 = 1;
      if (v12)
      {
        v13 = [PKPassTileAccessory _createForDictionary:v12];
        secondaryAccessory = self->_secondaryAccessory;
        self->_secondaryAccessory = v13;

        if (!self->_secondaryAccessory)
        {
          v8 = 0;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createResolvedStateWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  v14.receiver = self;
  v14.super_class = PKPassTileStateCheckIn;
  privateBundleCopy = privateBundle;
  bundleCopy = bundle;
  v8 = [(PKPassTileState *)&v14 createResolvedStateWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v9 = [(PKPassTileAccessory *)self->_secondaryAccessory createResolvedAccessoryWithBundle:bundleCopy privateBundle:privateBundleCopy, v14.receiver, v14.super_class];

  v10 = v8[9];
  v8[9] = v9;

  v11 = [(PKDateContainer *)self->_availableFrom copy];
  v12 = v8[8];
  v8[8] = v11;

  return v8;
}

- (PKPassTileStateCheckIn)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPassTileStateCheckIn;
  v5 = [(PKPassTileState *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableFrom"];
    availableFrom = v5->_availableFrom;
    v5->_availableFrom = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryAccessory"];
    secondaryAccessory = v5->_secondaryAccessory;
    v5->_secondaryAccessory = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassTileStateCheckIn;
  coderCopy = coder;
  [(PKPassTileState *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_availableFrom forKey:{@"availableFrom", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_secondaryAccessory forKey:@"secondaryAccessory"];
}

- (BOOL)isEqualToUnresolvedState:(id)state
{
  stateCopy = state;
  v13.receiver = self;
  v13.super_class = PKPassTileStateCheckIn;
  if ([(PKPassTileState *)&v13 isEqualToUnresolvedState:stateCopy])
  {
    v5 = stateCopy;
    v6 = v5[8];
    availableFrom = self->_availableFrom;
    if (v6)
    {
      v8 = availableFrom == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (v6 == availableFrom)
      {
LABEL_11:
        v10 = v5[9];
        secondaryAccessory = self->_secondaryAccessory;
        if (v10 && secondaryAccessory)
        {
          v9 = [(PKPassTileAccessory *)v10 isEqualToUnresolvedAccessory:?];
        }

        else
        {
          v9 = v10 == secondaryAccessory;
        }

        goto LABEL_15;
      }
    }

    else if ([(PKDateContainer *)v6 isEqual:?])
    {
      goto LABEL_11;
    }

    v9 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v9 = 0;
LABEL_16:

  return v9;
}

- (PKDateContainer)availableFrom
{
  availableFrom = self->_availableFrom;
  if (availableFrom)
  {
    v3 = availableFrom;
  }

  else
  {
    actions = [(PKPassTileState *)self actions];
    if ([actions count] == 1)
    {
      firstObject = [actions firstObject];
      availableFrom = [firstObject availableFrom];
      v7 = MEMORY[0x1E695DFE8];
      [firstObject availableFromOffsetFromUTC];
      v9 = [v7 timeZoneForSecondsFromGMT:v8];
      v3 = [[PKDateContainer alloc] initWithDate:availableFrom timeZone:v9];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end